//
//  HocLuatController.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/9/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//
import UIKit

class HocLuatController: UIViewController, UIScrollViewDelegate {
    
    // MARK: - Properties
    
    var colors:[UIColor] = [UIColor.red, UIColor.blue, UIColor.green, UIColor.yellow]
    var images = [1, 2, 3, 4]
    var frame: CGRect = CGRect(x: 0, y: 0 , width: 0, height: 0)
    
    lazy var pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.translatesAutoresizingMaskIntoConstraints = false
        pc.currentPageIndicatorTintColor = .red
        pc.pageIndicatorTintColor = .gray
        pc.backgroundColor = .white
        pc.numberOfPages = 4
        return pc
    }()
    
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        sv.isPagingEnabled = true
        return sv
    }()
    
    // MARK: - Init
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        configureUI()
        setupView()

        scrollView.backgroundColor = .white
        scrollView.isScrollEnabled = true
        scrollView.delegate = self
        view.addSubview(scrollView)

        let slides:[Slide] = createSlides()
        setupSlideScrollView(slides: slides)
        
    }
    
    
    // MARK: - Handler
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    func configureUI() {
        //view.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 42/255, green: 210/255, blue: 201/255, alpha: 1.0)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Học Luật 111"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back.png")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
//    func configurePageControl() {
//        // The total number of pages that are available is based on how many available colors we have.
//        self.pageControl.numberOfPages = colors.count
//        self.pageControl.currentPage = 0
//        self.pageControl.tintColor = UIColor.red
//        self.pageControl.pageIndicatorTintColor = UIColor.black
//        self.pageControl.currentPageIndicatorTintColor = UIColor.green
//        self.view.addSubview(pageControl)
//
//    }
    
    
    fileprivate func setupView() {
        view.addSubview(scrollView)
        //view.addSubview(pageControl)
        
//        NSLayoutConstraint.activate([
//            pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            pageControl.leftAnchor.constraint(equalTo: view.leftAnchor),
//            pageControl.rightAnchor.constraint(equalTo: view.rightAnchor),
//            pageControl.heightAnchor.constraint(equalToConstant: 50)
//        ])
    }
    
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
//        pageControl.currentPage = Int(pageNumber)
//    }
    
    func createSlides() -> [Slide] {

        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.questionName.text = "Slide1 Slide1 Slide1 Slide1 Slide1 Slide1 Slide1 Slide1 Slide1 Slide1 Slide1"
        slide1.questionName.numberOfLines = 0
        slide1.favoriteButton.setImage(UIImage(named: "back.png"), for: .normal)
        slide1.favoriteButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.questionName.text = "Slide2"
       slide2.favoriteButton.setImage(UIImage(named: "back.png"), for: .normal)

        return [slide1, slide2]
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Click")
    }
    

    func setupSlideScrollView(slides: [Slide]) {
        //scrollView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
        //scrollView.contentSize = CGSize(width: self.view.bounds.size.width * CGFloat(slides.count), height: self.view.bounds.size.width)
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)

        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y != 0 {
            scrollView.contentOffset.y = 0
        }
    }
    
}
