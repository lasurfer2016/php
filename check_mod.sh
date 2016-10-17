echo "Changing owner..."
chown -R $USER.idev $1

echo "Change dirs mode to 775..."
fn=`find $1 -type d`
for i in $fn; do
    echo "chmod 775 $i"
    chmod 775 $i
done

echo "Change all to 664..."
fn=`find $1 -type f \( -not -path '*.svn*' \)`
for i in $fn; do
    echo "chmod 664 $i"
    chmod 664 $i
done

echo "Change perl script mode to 775"
fn=`find $1 -type f \( -not -path '*.svn*' \) | grep -E '\.pl$|\.cgi$|\.fcgi$'`
for i in $fn; do
    echo "chmod 775 $i"
    chmod 775 $i
done

echo "Change perl script mode to 775"
fn=`find $1 -type f \( -not -path '*.svn*' \) | grep -E '\.sh$|\.csh$'`
for i in $fn; do
    echo "chmod 775 $i"
    chmod 775 $i
done

#*** How to use 
# ./check_mod.sh path

