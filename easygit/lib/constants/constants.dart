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
  ]
];
