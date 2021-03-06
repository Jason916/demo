#encoding: utf-8
require File.expand_path 'app/cases/shared/action'
class ProjectHRPage < NdbPage
  include Action
	page_url "#{$config.host}project/hr/index/index"
	
	#create HR
	link :create_HR, :id=> "project_create_btn"

	#create-page project name
	text_field :HR_name, :id=> "Project_name"

	#create-page project description
	textarea :HR_description, :id=> "Project_description"

	#create-page industry
	select_list :HR_industry, :id=> "industry-selector"

	#create-page consultants requested
	text_field :HR_requested, :id=> "Project_requestedconsultants"

	#create-page consultants expected
	text_field :HR_expected, :id=> "Project_expectedconsultants"

	#create-page price
	text_field :HR_price, :id=> "Project_price"

	#create-page currency
	select_list :HR_currency, :id=> "Project_currencyunit"

	#create-page timeframe
	select_list :HR_timeframe, :id=> "Project_timeframe"

	#create-page next button
	button :HR_next, :id=> "yw1"
	
	#create-page2 choose client
	span :choose_client_input, :xpath=> "//div[@id='s2id_ProjectClient_clientid']/a/span"
	div :choose_client_content, :text=> "cash"

	#create-page2 recruit position
	text_field :recruit_position, :id=> "ProjectHrRecruiting_recruitingposition"

	#create-page2 recruite note
	textarea :recurit_note, :id=> "ProjectHrRecruiting_recruitingnote"

	#create-page2 recruite function
	ul :recruite_function_input, :xpath=> "//div[@id='s2id_ProjectHrRecruiting_functionid']/ul"
	div :recruite_function_content, :text=> "管理 / Management"

	#create-page2 annual salary
	select_list :recruit_salary, :id=> "ProjectHrRecruiting_annualsalary"

	#create-page2 gender require
	select_list :recruit_gender, :id=> "ProjectHrRecruiting_genderrequire"

	#create-page2 gender require
	text_field :recruit_workyear, :id=> "ProjectHrRecruiting_workyear"

	#create-page2 degree require
	select_list :recruit_degree, :id=> "ProjectHrRecruiting_degree"

	#create-page2 job description
	textarea :recruit_job, :id=> "ProjectHrRecruiting_jobdescription"

	#create-page2 save button
	button :recruit_save, :id=> "yw4"

	#project-list view function
	link :view_project, :xpath=> "//div[@id='project-grid']/table/tbody/tr[1]/td[11]/a[1]"

	#edit-project-information  project manager
	select_list :edit_projectmanager, :id=> "Team_pm"
	
	#search by default
	button :search_default, :name=> "yt0"

	#search by users
	select_list :search_users, :name=> "ProjectSearchForm[userid]"

	#search by participants
	select_list :search_participants, :id=> "ProjectSearchForm_participant"

	#search by industry
	select_list :search_industry, :id=> "ProjectSearchForm_industryid"

	#search by project status
	select_list :search_status, :id=> "ProjectSearchForm_status"

	#search by keywords--name
	text_field :search_name, :id=> "ProjectSearchForm_keywords"

	#project--list select first project
	checkbox :click_firstproject, :id=> "project-grid_c0_0"

	#project-list select second project
	checkbox :click_secondproject, :id=> "project-grid_c0_1"

	#project status action
	select_list :change_action, :id=> "Action_type"

	#update project status
	link :update_action, :id=> "project_update_btn"

	#change project status to onhold reason
	select_list :onhold_note, :id=> "onhold_note"

	#change project status to onhold save button
	button :onhold_save, :xpath=> "html/body/div[5]/div[3]/div/button[1]"

	#change project status to invalid reason input
	textarea :invalid_note, :id=> "invalid_note"

	#change project status to invalid save button
	button :invalid_save, :xpath=> "html/body/div[5]/div[3]/div/button[1]"

	#task-list-page select first task
	checkbox :click_firsttask, :id=> "task-grid_c0_0"

	#task-list-page select second task
	checkbox :click_secondtask, :id=> "task-grid_c0_1"

	#task status action
	select_list :change_task_action, :id=> "action"

	#update task status
	button :update_task_status, :id=> "task_update_btn"

	#recommend step1 change status
	button :recommend_change_status, :name=> "change-status"

	#recommend step1 next
	button :recommend_next, :text=> "Next"

	#recommend step2 email to
	ul :recommend_email, :xpath=> "//span[2]/div/ul"
	div :recommend_emailselect, :text=> "Admin [ dbsender@capvision.com.cn ]"

	#recommend step2 send email
	button :recommend_sendemail, :id=> "send-email"

	#arrange step1 time
	text_field :arrange_time, :xpath=> "//div/span[2]/span[2]/div/input"

	#srrange step1 change status
	button :arrange_changestatus, :name=> "change-status"

	#project-list page delete icon
	link :delete_project_link, :xpath=> "//div[@id='project-grid']/table/tbody/tr[1]/td[11]/a[2]"

	#project-info page edit basic information
	link :basic_edit_icon, :id=> "hr-basic-edit"

	#peoject-info page edit recruite icon
	link :edit_recruite_icon, :xpath=> "//div[2]/a"

	#project-info page recruite-note input
	textarea :edit_recruite_note, :xpath=> "//textarea[@id='ProjectHrRecruiting_recruitingnote']"

	#project-info page recruite save
	link :edit_recruite_icon1, :id=> "hr-recruitingRequirements-edit"

	#project-info page edit client icon
	link :edit_client_icon, :id=> "hr-clientcontact-edit"
	
	#project-info page select client---cece
	text_field :edit_client_a, :xpath=> "//div[@id='s2id_ProjectClientContact_contactid']/ul/li/input"
	div :edit_client_b, :text=> "cece"
	
	#project-info edit team icon
	link :team_edit_icon, :id=> "hr-team-edit"
	
	#project-list page click first project
	link :first_hr_project, :xpath=> "//td[2]/a"

	#task-list page add consultant
	link :add_consultant_task, :text=> "Add Consultant"

	#consultants-page search button
	button :search_consultant, :name=> "yt0"

	#consultants-page select consultant
	checkbox :select_first_consultant, :id=> "yw0_c0_0"

	#consultants-page add consultant button
	button :add_consultant_button, :id=> "btn-add-consultant"

	#consultants-page button:go to this project list
	button :go_to_this_project_list, :text=> "Go to this project list"
	
	def edit_basicinfo
		self.basic_edit_icon_element.when_present.click
		sleep 2
		self.HR_description= "edit basic information1"
		#set
		self.basic_edit_icon_element.when_present.click
		sleep 2
	end
	#编辑基本信息
	def edit_recruite
		hidden_element  
		sleep 1
		self.edit_recruite_icon_element.when_present.click
		sleep 2
		self.edit_recruite_note_element.when_present.set "edit recruite note"
		self.edit_recruite_icon1_element.when_present.click
		end
	#编辑recruite的信息
	def edit_client
		self.edit_client_icon_element.when_present.click
		sleep 3
		self.edit_client_a_element.when_present.click
		sleep 5
		self.edit_client_b_element.when_present.click
		sleep 2
		self.edit_client_icon_element.when_present.click
		sleep 2
	end
	#编辑client的信息
	def goto_project
		self.search_default_element.click
		self.first_hr_project_element.when_present.click
	end
	#跳转到搜索出来的第一个项目


	#link :add_consultant_button, :text=> "Add Consultant"
	#consultant-task页面点击add consultant
	#checkbox :first_consultant, :id=> "yw0_c0_0"
	#顾问搜索页面的第一个
	#button :add_consultant_toproject, :id=> "btn-add-consultant"
	#顾问搜索页面的添加顾问按钮
	#button :goto_project_list, :text=> "Go to this project list"
	#顾问搜索页面添加顾问成功后弹窗
	#def add_consultant
	#		self.add_consultant_button_element.when_present.click
	#		self.search_default_element.when_present.click
	#		sleep 2
	#		a = self.check_first_consultant_element.when_present.exist?
    # if a.to_s == "true"
    #    puts "顾问添加完成"
    # else
    #    puts "顾问添加失败！"
    # end
	#		self.check_first_consultant_element.when_present.click
	#		self.add_consultant_toproject_element.when_present.click
	#		self.goto_project_list_element.when_present.click
	#		sleep 1
	#end

	#add consultant task

	def add_consultant
			self.add_consultant_task_element.when_present.click
			self.search_consultant_element.when_present.click
			sleep 2
			a = self.select_first_consultant_element.exist?
        if a.to_s == "true"
            puts "顾问添加完成"
        else
            puts "顾问添加失败！"
        end
			self.select_first_consultant_element.when_present.click
			self.add_consultant_button_element.when_present.click
			self.go_to_this_project_list_element.when_present.click
	end
	  
	#def change_task_recommend
	#    sleep 1 
	 #   	self.click_firsttask.when_present.click
	  #  	self.change_task_action_element.when_present.select "Recommended"
	#   	self.update_task_status_element.when_present.click
	#     	self.recommend_change_status_element.when_present.click
	#		@browser.text.include? "Recommended"
	#end
	#def change_task_arrangd
	#    sleep 1 
	#		@browser.checkbox(:id,"task-grid_c0_0").when_present.click
	#		@browser.select_list(:id,"action").when_present.select("Arranged")
	#		@browser.button(:id,"task_update_btn").when_present.click
	#		@browser.text_field(:class,"input-small").when_present.set("23:59")
	#		@browser.button(:id,"change-status").when_present.click
	#		@browser.text.include? "Arranged"
	#end

	
	#def change_task_completed
	#		@browser.td(:text,"0.00").when_present.click
	#		@browser.text_field(:xpath,"//div[@id='task-grid']/table/tbody/tr/td[11]/div/div[2]/div/form/div/div[1]/div[1]/input").set("1000")
	#		@browser.checkbox(:id,"task-grid_c0_0").when_present.click
	#		@browser.select_list(:id,"action").select("Completed")
	#		@browser.button(:id,"task_update_btn").when_present.click
	#		@browser.text.include? "Change task status successfully."
	#end
	
	def delete_project
		project_name = first_project
		if project_name.include? "AT-HR-project1"	
		    message = self.alert do
	  	    self.delete_project_link_element.when_present.click
		end
		    message.should == "Are you sure you wish to delete this project?"
		else
		  puts "There is no new project to delete."
	    end
	end
	#删除
	
end
