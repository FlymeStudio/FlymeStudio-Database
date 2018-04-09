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

### *user*

<table>
  <tr>
    <th width=15%, bgcolor=lightgrey>Column</th>
    <th width=15%, bgcolor=lightgrey>Type</th>
    <th width="10%", bgcolor=lightgrey>PK</th>
    <th width="10%", bgcolor=lightgrey>FK</th>
    <th width="10%", bgcolor=lightgrey>AI</th>
    <th width="10%", bgcolor=lightgrey>NN</th>
    <th width="30%", bgcolor=lightgrey>Note</th>
  </tr>
  <tr>
    <td id="user_tel">tel</td>
    <td>varchar(11)</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>固定11位</td>
  </tr>
  <tr>
    <td>name</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>2-4位中文</td>
  </tr>
  <tr>
    <td>email</td>
    <td>varchar(32)</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>最大32位字符</td>
  </tr>
  <tr>
    <td>password</td>
    <td>varchar(8)</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>最大8位字符</td>
  </tr>
  <tr>
    <td>teams</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>JSON数组字符串</td>
  </tr>
</table>

** **
### *team*

<table>
  <tr>
    <th width=15%, bgcolor=lightgrey>Column</th>
    <th width=15%, bgcolor=lightgrey>Type</th>
    <th width="10%", bgcolor=lightgrey>PK</th>
    <th width="10%", bgcolor=lightgrey>FK</th>
    <th width="10%", bgcolor=lightgrey>AI</th>
    <th width="10%", bgcolor=lightgrey>NN</th>
    <th width="30%", bgcolor=lightgrey>Note</th>
  </tr>
  <tr>
    <td id="team_id">id</td>
    <td>int(11)</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
  </tr>
  <tr>
    <td>name</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>最大8位汉字</td>
  </tr>
  <tr>
    <td>tel</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel">:ballot_box_with_check:</a></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>members</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>JSON数组字符串</td>
  </tr>
</table>

** **
### *message*

<table>
  <tr>
    <th width=15%, bgcolor=lightgrey>Column</th>
    <th width=15%, bgcolor=lightgrey>Type</th>
    <th width="10%", bgcolor=lightgrey>PK</th>
    <th width="10%", bgcolor=lightgrey>FK</th>
    <th width="10%", bgcolor=lightgrey>AI</th>
    <th width="10%", bgcolor=lightgrey>NN</th>
    <th width="30%", bgcolor=lightgrey>Note</th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
  </tr>
  <tr>
    <td>type</td>
    <td>int(1)</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>1=invite；2=apply</td>
  </tr>
  <tr>
    <td>sender</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel">:ballot_box_with_check:</a></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>receiver</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel">:ballot_box_with_check:</a></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>teamid</td>
    <td>int(11)</td>
    <td></td>
    <td><a href="#team_id">:ballot_box_with_check:</a></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>team.id</td>
  </tr>
</table>

** **
### *project*

<table>
  <tr>
    <th width=15%, bgcolor=lightgrey>Column</th>
    <th width=15%, bgcolor=lightgrey>Type</th>
    <th width="10%", bgcolor=lightgrey>PK</th>
    <th width="10%", bgcolor=lightgrey>FK</th>
    <th width="10%", bgcolor=lightgrey>AI</th>
    <th width="10%", bgcolor=lightgrey>NN</th>
    <th width="30%", bgcolor=lightgrey>Note</th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
  </tr>
  <tr>
    <td>tel</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel">:ballot_box_with_check:</a></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>type</td>
    <td>int(1)</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>1=Yearly；2=Monthly；3=Weekly；4=Daily</td>
  </tr>
  <tr>
    <td>date</td>
    <td>varchar(16)</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td></td>
  </tr>
  <tr>
    <td>title</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>最大16为字符</td>
  </tr>
  <tr>
    <td>content</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>Markdown内容</td>
  </tr>
  <tr>
    <td>plans</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>JSON字符串</td>
  </tr>
</table>

** **
### *summary*

<table>
  <tr>
    <th width=15%, bgcolor=lightgrey>Column</th>
    <th width=15%, bgcolor=lightgrey>Type</th>
    <th width="10%", bgcolor=lightgrey>PK</th>
    <th width="10%", bgcolor=lightgrey>FK</th>
    <th width="10%", bgcolor=lightgrey>AI</th>
    <th width="10%", bgcolor=lightgrey>NN</th>
    <th width="30%", bgcolor=lightgrey>Note</th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>:ballot_box_with_check:</td>
    <td></td>
  </tr>
  <tr>
    <td>tel</td>
    <td>varchar(11)</td>
    <td></td>
    <td><a href="#user_tel">:ballot_box_with_check:</a></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>user.tel</td>
  </tr>
  <tr>
    <td>type</td>
    <td>int(1)</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>1=Yearly；2=Monthly；3=Weekly；4=Daily</td>
  </tr>
  <tr>
    <td>date</td>
    <td>varchar(16)</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td></td>
  </tr>
  <tr>
    <td>title</td>
    <td>tinytext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>最大16为字符</td>
  </tr>
  <tr>
    <td>content</td>
    <td>longtext</td>
    <td></td>
    <td></td>
    <td></td>
    <td>:ballot_box_with_check:</td>
    <td>Markdown内容</td>
  </tr>
</table>

---
## Feedback

- [Issues](https://github.com/FlymeStudio/FlymeStudio-Database/issues)
