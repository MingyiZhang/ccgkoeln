# 科隆华人基督教会网站代码

# CCG Köln Repository

This repository contains the codebase for the CCG Köln project. In this README, you'll find instructions on how to clone the repository, make changes, commit those changes, and deploy updates.

## Prerequisites

- Git installed
- Shell access (Bash, Zsh, etc.)
- Hugo installed (See below for installation instructions)

## Initial Setup

### Installing Hugo

#### On Windows:

\`\`\`cmd
choco install hugo
\`\`\`

#### On Ubuntu:

Using apt package manager:

\`\`\`bash
sudo apt update
sudo apt install hugo
\`\`\`

Or using snap:

\`\`\`bash
sudo snap install hugo
\`\`\`

Confirm the installation by running:

\`\`\`bash
hugo version
\`\`\`

### Clone the Repository

To clone this repository along with all its submodules, run the following command in your terminal:

\`\`\`bash
git clone --recursive https://github.com/ccgkoeln/ccgkoeln
\`\`\`

Navigate into the directory after cloning:

\`\`\`bash
cd ccgkoeln
\`\`\`

## Workflow

### Make Changes

Go ahead and make the desired changes to the files or code.

### Commit and Push Changes

After making your changes, you can execute the \`commit.sh\` script to commit and push these changes.

First, make sure the script is executable:

\`\`\`bash
chmod +x commit.sh
\`\`\`

Then run the script:

\`\`\`bash
./commit.sh
\`\`\`

This will commit the changes in your local repository and then push them to the remote repository.

### Deploy Updates

To deploy the changes to the live server, you can execute the \`deploy.sh\` script.

Make sure the script is executable:

\`\`\`bash
chmod +x deploy.sh
\`\`\`

Then run the script:

\`\`\`bash
./deploy.sh
\`\`\`

This will perform all necessary actions to deploy your updates.

## Adding Articles

You can add content under the `content` folder. The `posts` folder within it is specifically for notifications related to the meeting activities.

To add an article, you can use the following shell command:

\`\`\`shell script
hugo new posts/<postname>.zh.md
\`\`\`

Here, `zh` represents articles in Chinese and `de` represents articles in German.
