# [Doc](https://github.com/FlymeStudio/FlymeStudio-Doc/blob/master/README.md) | [Web](https://github.com/FlymeStudio/FlymeStudio-Web/blob/master/README.md) | [Server](https://github.com/FlymeStudio/FlymeStudio-Server/blob/master/README.md) | Database

---
## Configuration

- [MySQL-Server](https://dev.mysql.com/downloads/mysql/)
```
sudo apt-get install mysql-server mysql-client
```

- [MySQL Workbench 6.3.10](https://dev.mysql.com/downloads/workbench/)
```
sudo apt-get install mysql-workbench
```

---
## Params

- Host: localhost
- Port: 3306
- Database: flymestudio

---
## Tables

- user

<table width=100%>
  <tr>
    <th width=15%, bgcolor=lightgrey><center>Column</center></th>
    <th width=15%, bgcolor=lightgrey><center>Type</center></th>
    <th width="10%", bgcolor=lightgrey><center>PK</center></th>
    <th width="10%", bgcolor=lightgrey><center>FK</center></th>
    <th width="10%", bgcolor=lightgrey><center>AI</center></th>
    <th width="10%", bgcolor=lightgrey><center>NN</center></th>
    <th width="30%", bgcolor=lightgrey><center>Note</center></th>
  </tr>
  <tr>
    <td id="user_tel">tel</td>
    <td>varchar(11)</td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>固定11位</td>
  </tr>
  <tr>
    <td>name</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>2-4位中文</td>
  </tr>
  <tr>
    <td>email</td>
    <td>varchar(32)</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>password</td>
    <td>varchar(8)</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>teams</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>JSON字符串</td>
  </tr>
</table>

- team

<table width=100%>
  <tr>
    <th width=15%, bgcolor=lightgrey><center>Column</center></th>
    <th width=15%, bgcolor=lightgrey><center>Type</center></th>
    <th width="10%", bgcolor=lightgrey><center>PK</center></th>
    <th width="10%", bgcolor=lightgrey><center>FK</center></th>
    <th width="10%", bgcolor=lightgrey><center>AI</center></th>
    <th width="10%", bgcolor=lightgrey><center>NN</center></th>
    <th width="30%", bgcolor=lightgrey><center>Note</center></th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>name</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>tel</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel"><center>:ballot_box_with_check:</center></a></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>members</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>JSON字符串</td>
  </tr>
</table>

- message

<table width=100%>
  <tr>
    <th width=15%, bgcolor=lightgrey><center>Column</center></th>
    <th width=15%, bgcolor=lightgrey><center>Type</center></th>
    <th width="10%", bgcolor=lightgrey><center>PK</center></th>
    <th width="10%", bgcolor=lightgrey><center>FK</center></th>
    <th width="10%", bgcolor=lightgrey><center>AI</center></th>
    <th width="10%", bgcolor=lightgrey><center>NN</center></th>
    <th width="30%", bgcolor=lightgrey><center>Note</center></th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>type</td>
    <td>int(1)</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>1=invite；2=apply</td>
  </tr>
  <tr>
    <td>sender</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel"><center>:ballot_box_with_check:</center></a></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>receiver</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel"><center>:ballot_box_with_check:</center></a></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>teamid</td>
    <td>int(11)</td>
    <td></td>
    <td><a href="#team_id"><center>:ballot_box_with_check:</center></a></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>team.id</td>
  </tr>
</table>

- project

<table width=100%>
  <tr>
    <th width=15%, bgcolor=lightgrey><center>Column</center></th>
    <th width=15%, bgcolor=lightgrey><center>Type</center></th>
    <th width="10%", bgcolor=lightgrey><center>PK</center></th>
    <th width="10%", bgcolor=lightgrey><center>FK</center></th>
    <th width="10%", bgcolor=lightgrey><center>AI</center></th>
    <th width="10%", bgcolor=lightgrey><center>NN</center></th>
    <th width="30%", bgcolor=lightgrey><center>Note</center></th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>tel</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel"><center>:ballot_box_with_check:</center></a></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>percent</td>
    <td>int(3)</td>
    <td></td>
    <td></a></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>最大3位，默认为0</td>
  </tr>
  <tr>
    <td>type</td>
    <td>int(1)</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>1=Yearly；2=Monthly；3=Weekly；4=Daily</td>
  </tr>
  <tr>
    <td>date</td>
    <td>varchar(16)</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>title</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>content</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>Markdown内容</td>
  </tr>
  <tr>
    <td>plans</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>JSON字符串</td>
  </tr>
</table>

- summary

<table width=100%>
  <tr>
    <th width=15%, bgcolor=lightgrey><center>Column</center></th>
    <th width=15%, bgcolor=lightgrey><center>Type</center></th>
    <th width="10%", bgcolor=lightgrey><center>PK</center></th>
    <th width="10%", bgcolor=lightgrey><center>FK</center></th>
    <th width="10%", bgcolor=lightgrey><center>AI</center></th>
    <th width="10%", bgcolor=lightgrey><center>NN</center></th>
    <th width="30%", bgcolor=lightgrey><center>Note</center></th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>tel</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel"><center>:ballot_box_with_check:</center></a></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>type</td>
    <td>int(1)</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>1=Yearly；2=Monthly；3=Weekly；4=Daily</td>
  </tr>
  <tr>
    <td>date</td>
    <td>varchar(16)</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>title</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td></td>
  </tr>
  <tr>
    <td>content</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td><center>:ballot_box_with_check:</center></td>
    <td>Markdown内容</td>
  </tr>
</table>

---
## Feedback

- [Issues](https://github.com/FlymeStudio/FlymeStudio-Database/issues)
