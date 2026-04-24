from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
import time
import json

master_list = json.loads(open("master_list.json").read())

mail_id = str(input("Enter your Username: "))
passcode = str(input("\nEnter your password: "))

driver = webdriver.Chrome("C:/ProgramData/chocolatey/lib/chromedriver/tools/Chromedriver.exe")
driver.get("https://www.gmail.com")
#Login_ID
driver.find_element_by_id("identifierId").send_keys(mail_id)
driver.find_element_by_id("identifierNext").click()
driver.implicitly_wait(5)
#Login_Password
driver.find_element_by_name("password").send_keys(passcode)
driver.find_element_by_id("passwordNext").click()
driver.implicitly_wait(30)
def sad(item):
    """Summary: search for an item from the master list and deletes every e-mail (sad = search_and_delete)
    
    Args:
        item (String): Sender's name whose thread of emails has to be deleted
    """
    #Search for a string
    driver.find_element_by_xpath("//*[@id='gs_lc50']/input[1]").send_keys(item)
    driver.find_element_by_xpath("//*[@id='aso_search_form_anchor']/button[4]").click()
    driver.implicitly_wait(10)
    #Select the check box and click
    check_box = driver.find_element_by_xpath("/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div/div[2]/div[1]/div/div/div[1]/div")
    driver.implicitly_wait(2)
    check_box.click()
    #Select all conversations and click
    try:
        mails_selector = driver.find_element_by_xpath("/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div/div[3]/div/span[2]")
        driver.implicitly_wait(2)
        mails_selector.click()
    except NoSuchElementException:
        pass
    #Delete
    delete_btn = driver.find_element_by_xpath("/html/body/div[7]/div[3]/div/div[2]/div[1]/div[2]/div/div/div/div/div[1]/div/div[2]/div[1]/div/div/div[2]/div[3]")
    driver.implicitly_wait(2)
    delete_btn.click()
    #Confirmation
    try:
        press_ok = driver.find_element_by_xpath("/html/body/div[32]/div[3]/button[1]")
        driver.implicitly_wait(2)
        press_ok.click()
    except NoSuchElementException:
        pass

start = time.time()
for item in master_list:
    try:
        sad(item)
        driver.find_element_by_xpath("/html/body/div[7]/div[3]/div/div[1]/div[3]/header/div[2]/div[2]/div[2]/form/button[3]").click() # To clear search
    except NoSuchElementException:
        pass
stop = time.time()
elapsed_time = (stop - start)/60
print("Run Time= {}min(s)".format(elapsed_time))
