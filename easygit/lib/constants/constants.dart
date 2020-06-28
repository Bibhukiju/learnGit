import 'package:easygit/models/canddescmodel.dart';

List<List<CnDesc>> listPages = [
  [
    // introduction page data
    CnDesc(
        command: "Introduction",
        desc:
            "This tutorial is an easy way to learn the basic of Git. kindly noe that this is not the complete reference of git but a convenient way to learn the basic of the git \n\nThere are some graphical user interfaces for git but almost all developers use Git from command line in this tutorial weare going to use CLI(Command line interface) \n\nGit is a free and open source distributed version control system designed to handle everything from small to very large project with speed and efficiency \n\nGit is easy to learn and hasa a tiny footprint with lightning fast performnace. It out classses SCM tools like Subversions,CVS,Preforce, and ClearCase with features like cheap local branching, convenient staging areas and multiple workflows"),
  ],
  //create page data
  [
    CnDesc(
        command: "\$ git init",
        desc:
            "Create an new local repository\n\nThe git init command create new Git repository. It can be used to convert an existing, unversioned project to a git repository or initialize a new empty repository. Most other Git commands are not available outside of an initialized repository so this is usually first command you will run in a new project "),
    CnDesc(
        command: "\$ git clone <url>",
        desc:
            "Clone an existing repository\n\ngit clone is a git comman line utilty which is used totarget an existing repository and create a clone or a copr of the target repository.Cloning a bare repository. using shallow options to partially clone repositories. Git URL syntax and supported protocols")
  ],
  //Local Changes
  [
    CnDesc(
        command: "\$ git status ",
        desc:
            "changes files in your working directory.\n\nthe git status command displays the state of working diectory and the staging area. it lets you see which changes have been staged which haven't and files are not being tracked by Git. Status out pust doent show you any information regarding the commited project history"),
    CnDesc(
        command: "\$ git diff ",
        desc:
            "changes to tracked files\n\ngit diff is a multi-use Git command that when executed runs a diff function on git data sources. These data sources can be commits, branches, files and more . The git diff command is often used along with got status and git log to analyze the current state of a Git repo"),
    CnDesc(
        command: "\$ git diff <filename|filepath>",
        desc:
            "show or list our the changes of specific file as per comparison to previous commit"),
    CnDesc(
        command: "\$git add . | \$git add ..",
        desc:
            "Add all current changes to the next commit. \n\nThis command updates the index using the current content found in the working tree, to prepare the content staged for the next commit. It typically adds the current content of existing paths as whole, but with some options it can also be used to add content with only  part of the changes made to the working tree files applied, or remove paths that do not exist in the working tree any more \n\nThe \"index\" holds a snapshot of the content s of the next commit.Thus after making any changes to the working tree and before running the commit command, you must use add command to add any new or moified files to the index\n\nThis command can be performe multiple times before a commit.It only adds the content of the specied files a h the timeadd command is run, if yyou want subsequent changes included in the next comit, then you must run git add again to add the new content to the index\n\nThe git status command can be used to obtain a summary of which files have changed that are staged to the next commit\n\nThe git add command will not ignored files by default. if any ignored files were explicitly specified on the command line, git add will fall with a list of ignored files. Ignored filesreached by directory recursion of file name globbing performed by git(quote your globsbefore te shell) will be silently ignored. the git command can be used to add ignored files with the -f(force) option"),
    CnDesc(
        command: "\$ git add \'filename\'",
        desc: "Add particular filechanges to the next commit"),
    CnDesc(
        command: "\$ git add  -p <file>",
        desc: "Add some changesin <file> to the next commit"),
    CnDesc(
        command: "\$ git commit ",
        desc:
            "Commit previously staged changes\n\ngit commit. The commit command is used to save your changes to the local repository. Note that you have to explicitly tell Git which changes you want to include in a commit before runnig the git commit command. This means that a file won't be automatically included in the next commit just brcause it as changed"),
    CnDesc(
        command: "\$ git commit -m \"our commit message \"",
        desc:
            "Add commit message for staging files(for green coloured files) \n\n use the given <msg> as the commit message. If multiple -m optoons are given, thier values are concatenated as separate paragraphs.the - m option is mutually exclusive with -c, -C and -F"),
    CnDesc(
        command: "\$ git commit -a",
        desc:
            "Commit all local changes in tracked files. \n\n Tell the command to automatically staged filesthat have been modified and deleted, but new files you you have not told to git about are not affected"),
    CnDesc(
        command: "\$ git commit --amend",
        desc:
            "change the last commit or revert \n\nDon't amend publish commits."),
    CnDesc(
        command: "\$ git commit --ammend -m <msg>",
        desc:
            "Change the last commit or update the last commit message \n\n Don't ammend publish commits"),
    CnDesc(
        command: "\$ git commit --ammend --no-edit>",
        desc:
            "The --no-edit flag will allow you to make the ammendment to your commit without changing its commit message \n\n Don't ammend publish commits"),
  ],
  //commit history
  [
    CnDesc(
        command: "\$ git log",
        desc:
            "Show all commits, starting with newest \n\nA git log is a running records of commits. A full log has the following pieces.A commit hash (SHA1 40 character checksum of the commit contents).Because it is generated based on the commit contents it is unique.Commit Author metadata: the name and email address of the author of the commit//n//nShows the commit logs //n//nThe command taes the options applicable to the git rev -list command to control what is shown and how and options applicable to the git diff-* commands to control how thw changes each commit introduces are shown"),
    CnDesc(
        command: "\$git log -p <File>",
        desc: "Show changes over time for a particular file"),
    CnDesc(
        command: "\$ git log --oneline --graph --decorate",
        desc: "show alll commit history with graph"),
  ],
  //branches and tags
  [
    CnDesc(
        command: "\$ git branch ",
        desc:
            "Show current working branch\n\n git branch. this documnent is in-depth review of the git branch command and discusiion of the overall Git branching model.Branching is a feature availablein most modern version control system Instead of copying files from directory to directory,Git stores a branch as a reference to commit "),
    CnDesc(command: "\$ git branch -av", desc: "List all existing branches"),
    CnDesc(
        command: "\$ git checkout <branch name> ",
        desc:
            "Switch Head branch or change branch \n\n Git checkout. This page is an examination of the git checkout command .. the git checkout command operates upon three distinct entities:files, commits , branches.In addition to the defination of \"checkout\" the phrase 'checking out' is commonly used to imply the act of executing the git checkout command"),
    CnDesc(
        command: "\$ git checkout -b <new branch name>",
        desc: "Create and switch new branch as per the current branch "),
    CnDesc(
        command: "\$ git checkout -b dest.ranchname sourcebranchname ",
        desc:
            "Create or check out new branch from other branch \n\nlet's say you are in 'develop' branch and you want to create new branch from another branch wthout switchinh branch so you can create new branch from other branch from develop branch \n Example: \n\$git branch \ndevelop* feature/login feature/register \n\n current branch is 'develop'\n Now ou want to create branch from 'feature/login'. Here  is you can fire it \n\n\$ git checkout -b feature/login feature/social-login\n The base branch of d=feature/social-login is feature/login "),
    CnDesc(
        command: "\$ git checkout --track <remote/branch>",
        desc:
            "Create a new tracking branch based on a remote branch\n\It willonly create 'abranch', not a branch with a different name."),
    CnDesc(
        command: "\$ git branch -m newBranchname",
        desc: "Rename current branch with newbranch name"),
    CnDesc(
        command: "\$ branch -m old-name new-name",
        desc:
            "If you are in a different branch, You can renaming other branch from this command\n\nMove/rename a branch and the corresponding reflog"),
    CnDesc(
        command: "\$ git branch -d <branchname> ",
        desc:
            "Delete local branch \n\n Delete a branch. the branch must be fully merged in its upstream branch, or in HEAD if no upstream was set with --track or --set-upstream-to."),
    CnDesc(command: "\$ git tag Yourtagversion", desc: "Create new tag"),
    CnDesc(
        command: "\$ git tag -a YourTagversion -m 'tag message'",
        desc:
            "Create tag with message.\n\nCreating an annotated tag in Git is simple. The easiest way is to specify -a when you run the tag command. The -m specifies a tagging message, which is stored with the tag. If you don't specify a message for an annotated tag, Git launches your editor so you can type it in"),
    CnDesc(
        command: "\$ git show YourtagVersion",
        desc:
            "Show tag command with commits\n\n Shows one or more objects (blobs,trees, tags and commits)\n\nThis manual page describe only the most frequently used options."),
    CnDesc(
        command: "\$ git tag | git tag -l | git tag --list ",
        desc: "Listing the available tags in git"),
    CnDesc(
        command: "\$ git tag -l 'Tag pattern '",
        desc:
            "You can also search for tags that match a particular pattern \n\nThe Git source repo, for instance, contains more than 500 tags. if you are only intrested in looking at the 1.8.5 series \, you can run this : \$ git tag -l 'v1.8.5'"),
    CnDesc(
        command: "\$ git checkout YourtagVersion ",
        desc:
            "Checkout specific tag\n\nYou can directly checkout your tag version from firing this command"),
    CnDesc(
        command: "\$ git checkout -b Nebranch yourtagversion ",
        desc: "Checkot ne branch from specific version tag"),
  ],
  //update and publish
  [
    CnDesc(
        command: "\$ git remote -v ",
        desc:
            "List all currently configured remotes.\n\n git syncing. the git remote command is one piece of the broader system which is responsible for syncing  changes. Records registered through the git remote command are used in conjuction with the git fetch, git push, and git pull commands "),
    CnDesc(
        command: "\$ git remote sho <remote>",
        desc: "show informations about remotes"),
    CnDesc(
        command: "\$ git remote add <shortname> <url>",
        desc: "Add a new repository name <remote>"),
    CnDesc(
        command: "\$git fetch <remote>",
        desc:
            "Donload all changes from <remote> but don't integrate it to HEAD"),
    CnDesc(command: "\$ git fetch all", desc: "fetch all remotes into local"),
    CnDesc(
        command: "\$ git pull <remote> <branch> | git pull",
        desc: "Download changes and directly merge into the HEAD "),
    CnDesc(
        command: "\$git push",
        desc:
            "Publish local commits to remote\n\n The git push command is used to upload local repository.Pushing is how ou transfer commits from your local repository to a remote repo.Remote repo areconfigured using the git remote  command.Pushing the the potential to overwrite changes\n\n⚠ Caution should be taken while pushing "),
    CnDesc(
        command: "\$ git push <remote/branch>",
        desc: "Publish local changes to remote"),
    CnDesc(
        command: "\$ git push origin: oldname new-name",
        desc:
            "Delete the old name remote branch and push the new branch to the local branch"),
    CnDesc(
        command: "\$ git push origin -u newname",
        desc:
            "Reset the upstream branch for the newname local branch. Sitch to the branch and then "),
    CnDesc(
        command: "\$ git branch -dr <remote/branch>",
        desc: "Delete the branch on the remote"),
    CnDesc(
        command: "\$ git push origin Yourtagversion ",
        desc: "Push tag to remote after creating it"),
  ],
];
