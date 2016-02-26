print '<table> <form>'
for i in range(0,5):
    print '\t\t<tr >'
    for j in range(1,6):
        print "\t\t\t<td><button name='btn' value='<%=@content.problem{0}%>'></td>".format(i * 5 + j),
    print '\n\t\t</tr>'
print '</table></form>'