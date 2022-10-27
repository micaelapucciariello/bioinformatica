#!/usr/bin/perl

use Bio::SeqIO;
use Bio::Tools::Run::StandAloneBlastPlus;

# remote db
$remote_factory = Bio::Tools::Run::StandAloneBlastPlus->new(
    -db_name => 'nr',
    -remote => 1
);

# local db
$local_factory = Bio::Tools::Run::StandAloneBlastPlus->new(
    -db_name => 'swissprot',
    -db_dir => './swissprotdb'
);

# fasta
@fasta_files = (
    '0.fasta',
    '0-rev.fasta',
    '1.fasta',
    '1-rev.fasta',
    '2.fasta',
    '2-rev.fasta'
);

# blast generator
foreach my $fasta_file (@fasta_files) {
    $sequence = substr($fasta_file, 0, index($fasta_file, '.'));
    $fasta_file_path = "../ejercicio-1/$fasta_file";
    $local_factory->blastp( -query => $fasta_file_path, -outfile => "$sequence-blast.out");
    $remote_factory->blastp( -query => $fasta_file_path, -outfile => "$sequence-blast-remote.out");
}
