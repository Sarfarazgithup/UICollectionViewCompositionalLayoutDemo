//
//  ViewController.swift
//  sarfarazali Project
//
//  Created by Sarfaraz Ali on 29/08/23.
//

import UIKit

class ViewController: UIViewController {
   
   
    private var collectionView: UICollectionView!

    override func viewDidLoad() {
            super.viewDidLoad()

            configureCollectionView()
            
        }

        private func configureCollectionView() {
            collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
            collectionView.register(UINib(nibName: "HeaderReusableView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderReusableView")
            collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            collectionView.backgroundColor = .white
            collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.reuseIdentifier)
            
            collectionView.dataSource = self
            collectionView.delegate = self
            
        view.addSubview(collectionView)
        }

        private func createLayout() -> UICollectionViewLayout {
            let layout = UICollectionViewCompositionalLayout { sectionIndex, _ -> NSCollectionLayoutSection? in
                if getVideoList[sectionIndex].isHorzotal == true {
                    return self.ShortsSection()
                } else {
                    return self.NormalVideoSection()
                }
            }
            return layout
        }

    
        private func ShortsSection() ->
    
    NSCollectionLayoutSection {
        
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)

            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(300))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .continuous
            section.interGroupSpacing = 8
           section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
            return section
        }

    private func NormalVideoSection() ->
    
    NSCollectionLayoutSection {
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(150))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8)

            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(166))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])

            let section = NSCollectionLayoutSection(group: group)
            
            section.interGroupSpacing = 8

            return section
        }
    }

    extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return getVideoList.count
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return getVideoList[section].list.count
            
        }
        
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.reuseIdentifier, for: indexPath) as! Cell
            
            cell.backgroundColor = UIColor(hexString: getVideoList[indexPath.section].list[indexPath.row].color)
            cell.layer.cornerRadius  = 15
            //cell.layer.borderWidth  = 1
            cell.label.text = getVideoList[indexPath.section].list[indexPath.row].title
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            if getVideoList[indexPath.section].isHorzotal == true {
                print("Selected short: \(getVideoList[indexPath.section].list[indexPath.item].title)")
            } else {
                print("Selected video: \(getVideoList[indexPath.section].list[indexPath.item].title)")
            }
        }
        
        func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
                switch kind {
                case UICollectionView.elementKindSectionHeader:
                   
                    let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderReusableView", for: indexPath) as! HeaderReusableView
                    header.configure(title: "Short Video")
                    return header
                default:
                    fatalError("fatal error")
                }
            }
        
         func supplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
            
            
        }
       
    }
      
    class Cell: UICollectionViewCell {
        static let reuseIdentifier = "Cell"
        
        let label: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.textColor = .white
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            contentView.addSubview(label)
            
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }


