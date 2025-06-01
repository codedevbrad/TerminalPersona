<div align="center">
  
# 🧠 Persona Terminal
Welcome to your custom **PowerShell terminal persona system** — a fully animated, mode-switching, project-launching experience using PowerShell scripts and [Oh My Posh](https://ohmyposh.dev/).

</div>

---

<div align="center">
    <img src="https://github.com/user-attachments/assets/b32cf733-d86c-47a3-bda2-380e5316016e" />
</div>

<div align="center">
  <h1> 🎭 Features </h1>
  <ul style="list-style: none; padding-left: 0;">
    <li> 🎨 Customize boot sequences for each persona (e.g. <code>jarvis</code>, <code>mrrobot</code>) </li>
    <li> 🔁 Switch personas on-the-fly with <code>ChangePersona</code> </li>
    <li> 🚀 Auto-launch projects with animation via <code>Boot-Into</code> </li>
    <li> 📝 Manage terminal mood with <code>current_mode.txt</code> configuration </li>
  </ul>
</div>

---

<div align="center">

<h1> 📦 Prerequisites </h1>

| 🛠 Tool              | 📥 Install Instructions |
|----------------------|------------------------|
| **PowerShell 7+**     | [Install PowerShell](https://github.com/PowerShell/PowerShell) |
| **Oh My Posh**        | `winget install JanDeDobbeleer.OhMyPosh -s winget` |
| **Visual Studio Code**| Required for `code` command to launch projects |

</div>

---

<div align="center">

<h1> 🔧 Custom Commands </h1> 
💡 Use these commands to interact with your persona terminal setup.

| Command                      | Description                                      |
|------------------------------|--------------------------------------------------|
| `ChangePersona "jarvis"`     | Switch to JARVIS persona                         |
| `ChangePersona "mrrobot"`    | Switch to Mr. Robot persona                      |
| `Boot-Into "bootcamp"`       | Launch the Coding Bootcamp project               |
| `Boot-Into "projectb"`       | Launch Project B                                 |
| `notepad $PROFILE`           | Edit your PowerShell profile                     |

</div>

---

<div align="center">
  
<h1> ✅ TODO</h1>

> Improve developer onboarding and command isolation.

- [ ] 📥 **Easy Installer Script**: Provide a setup script to install dependencies and clone/setup the terminal repo.
- [ ] 📂 **Project Path Config**: Add clear instructions or a prompt system to define `$projectPath` for each persona.
- [ ] 🧠 **Command Isolation**: Refactor `Boot-Into` and `ChangePersona` to be **persona-scoped** (each persona script has its own).
- [ ] 📘 **Usage Docs**: Include example `.ps1` files for each persona and a walkthrough in the README.
- [ ] - **Feature implementation**
    -  [ ] Boot-Into opens vscode but ideally I want to CD into that directory from the terminal too. 

</div>

---

<div align="center">

🧠 Now go build... or destroy.

</div>


</div>
