import 'package:easygit/models/canddescmodel.dart';

List<List<CnDesc>> listPages = [
  [
    CnDesc(
        command: "Introduction",
        desc:
            "This tutorial is an easy way to learn the basic of Git. kindly noe that this is not the complete reference of git but a convenient way to learn the basic of the git \n\nThere are some graphical user interfaces for git but almost all developers use Git from command line in this tutorial weare going to use CLI(Command line interface) \n\nGit is a free and open source distributed version control system designed to handle everything from small to very large project with speed and efficiency \n\nGit is easy to learn and hasa a tiny footprint with lightning fast performnace. It out classses SCM tools like Subversions,CVS,Preforce, and ClearCase with features like cheap local branching, convenient staging areas and multiple workflows"),
  ],
  [
    CnDesc(
        command: "\$ git init",
        desc:
            "Create an new local repository\n\nThe git init command create new Git repository. It can be used to convert an existing, unversioned project to a git repository or initialize a new empty repository. Most other Git commands are not available outside of an initialized repository so this is usually first command you will run in a new project "),
            CnDesc(
             command: "\$ git clone <url>",
             desc: "Clone an existing repository\n\ngit clone is a git comman line utilty which is used totarget an existing repository and create a clone or a copr of the target repository.Cloning a bare repository. using shallow options to partially clone repositories. Git URL syntax and supported protocols" 
            )
  ]
];
