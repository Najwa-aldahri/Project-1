![Employee_Manager (1)](https://github.com/user-attachments/assets/16237e25-a7b5-40bc-b9b9-77f89c91a8ce)

### First project on Tuwaiq academy 
### Application to manage employees

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#contributing">Contributing</a> •
  <a href="#code-explination">Code explination</a> •
</p>
 
## Key Features
- users can add new employees
-  assign permissions
-  display their data,
- modify their salaries
- modify permissions
- modify job descriptions.

## How To Use
To clone and run this application, you'll need [Git](https://git-scm.com) and [Visual Studio Code] 

```bash
# Clone this repository
$ git clone https: url

# Go into the repository
$ cd repo-name

# Open project in vs
$ code .

# Run the project 
$ dart run
```

## Contributing
#### I would be happy to have your ideas to improving the project. Please feel free to do so.
```bash
# Fork the project

# Create your feature branch
$ git checkout -b branch-name

# Commit your changes
$ git commit -m 'Add some commit'

# Push to the branch
$ git push

# Open a Pull Request

```
## Code explination
#### here is a screenhot of the main class 
![carbon](https://github.com/user-attachments/assets/279b6fa9-750a-4a28-a30c-d225fc973ddf)

##### Start of the system
- As you can see i started to welcome the user and asking him to enter a Choose like
- add new employee - display employee info
- modify employee salary - modify employee job description - modify employee premmision

#### Switch case
Each number from 1 to 5 will represent specific task like for example
- 1 = Will let the user take the employee information (id-name-salary-job description-premmision) and store it in a map
- 2 = Display all the employees information which have been stored previously
- 3 = Modify the employee salary by the id of the employee onlly if the user have the promision (ex:admin)
- 4 = Update the employee job description by the id and also if the user have the promision 
- 3 = Modify the employee premmision by the id and will check if the user have the promision 
###### To know more about the functions check the project file (;

#### check user input
In the inputChecker function will check if the user entered a valid input 
if not an error message will be apear to alert the user


Thank you for your reading ❤️
