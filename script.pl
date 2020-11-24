use strict;
use warnings;
use 5.012;
use Spreadsheet::Read;
use Data::Dumper;
use utf8;

my $some_dir = 'sheets';

opendir(my $dh, $some_dir) || die "Can't open $some_dir: $!";
while (readdir $dh) {
    next if ($_ =~ /^\.+$/);
    say "$some_dir/$_";
    my $spreadsheet  = ReadData ("$some_dir/$_");

    parseSheet($spreadsheet->[1])
    # say(Dumper($spreadsheet));
}
closedir $dh;

sub parseSheet {
    my ($sheet) = @_;

    my %parsedData = (
        'inscricao' => '',
        'ano' => 0,
        'descricao' => '',
        'parcela' => '',
        'valor_inicial' => '',
        'valor_atual' => ''
    );
}