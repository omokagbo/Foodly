//
//  OnboardingViewController.swift
//  Foodly
//
//  Created by Emmanuel Omokagbo on 30/05/2021.
//

import UIKit
import FirebaseFirestore
import  FirebaseAuth

class OnboardingViewController: UIViewController {
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    private let viewModel = OnboardingViewModel()
    var kpk = [Restaurants]()
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = viewModel.slides.count
        viewModel.updateButton = { [weak self] title, currentPage, btnTitle in
            self?.pageControl.currentPage = currentPage
            self?.nextBtn.setTitle(title, for: .normal)
            self?.skipBtn.setTitle(btnTitle, for: .normal)
        }
        
    }
    
    @IBAction func skipBtnTapped(_ sender: UIButton) {
        skippedToLogin()
    }
    @IBAction func nextBtnTapped(_ sender: UIButton) {
        if viewModel.currentPage == viewModel.slides.count - 1 {
            skippedToLogin()
        } else {
            viewModel.currentPage += 1
            let indexPath = IndexPath(item: viewModel.currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
    private func skippedToLogin() {
        let newStoryboard = UIStoryboard(name: "Login", bundle: nil)
        let newController = newStoryboard
            .instantiateViewController(identifier: "LoginViewController") as LoginViewController
        newController.modalTransitionStyle = .crossDissolve
        newController.modalPresentationStyle = .fullScreen
        present(newController, animated: true, completion: nil)
    }
}

extension OnboardingViewController: UICollectionViewDelegate,
                                    UICollectionViewDataSource,
                                    UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView
                .dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as?
                OnboardingCollectionViewCell else {
                    return UICollectionViewCell()
                }
        cell.setUp(viewModel.slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        viewModel.currentPage = Int(scrollView.contentOffset.x/width)
    }
}
