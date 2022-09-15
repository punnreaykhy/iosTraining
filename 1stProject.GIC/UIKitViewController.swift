//
//  UIKitViewController.swift
//  1stProject.GIC
//
//  Created by Khy Punnreay on 27/8/22.
//

import UIKit

class UIKitViewController: UIViewController {

    // MARK: - Properties
    private let sections = [["🐼 UIView", "🐰 Collection Views", "🐭 Table Views", "🐮 UIStackView", "🐥 UIScrollView"], ["🍏 UIActivityIndicatorView", "🍐 UICalendarView", "🥝 UIImageView", "🍓 UIPickerView", "🥭 UIProgressView"], ["🐒 UIControl", "🐣 UIButton", "🦄 UIColorWell", "🦅 UIDatePicker", "🦉 UIPageControl", "🐗 UISegmentedControl", "🦕 UISlider", "🐑 UIStepper", "🕊 UISwitch"], ["🍀 UILabel", "🌿 UITextField", "🎄 UITextView", "🍁 Drag and Drop Customization"], ["🪸 UISearchTextField", "🍄 UISearchToken"], ["⛅️ UIVisualEffect", "🌧 UIVisualEffectView", "⛈ UIVibrancyEffect", "❄️ UIBlurEffect"], ["☃️ UIBarItem", "⛄️ UIBarButtonItem", "☀️ UIBarButtonItemGroup", "🏀 UINavigationBar", "🎾 UISearchBar", "⚽️ UIToolbar", "⚾️ UITabBar", "🏐 UITabBarItem"]]
    private lazy var tableView: UITableView = {
        let tb = UITableView(frame: .zero, style: .insetGrouped)
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tb
    }()
    
    
    
    // MARK: - Life cycle
    override func loadView() {
        super.loadView()
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        
        title = "Welcome"
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIKitViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = sections[indexPath.section][indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
}

// MAEK: - Table view delegate
extension UIKitViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(sections[indexPath.section][indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0:
                return "View Fundamentals"
            case 1:
                return "Content Views"
            case 2:
                return "Controls"
            case 3:
                return "Text Views"
            case 4:
                return "Search Field"
            case 5:
                return "Visual Effects"
            case 6:
                return "Bars"
        default:
            break
        }
        return nil
    }
}
