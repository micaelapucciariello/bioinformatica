use Bio::SeqIO;

my $infile = shift;

my $input_sequence_io = Bio::SeqIO->new( -file   => "$infile",
                             -format => 'Genbank',
                           );

while (my $inseq = $input_sequence_io->next_seq) {
   my @frames = (0..2);
   for $frame (@frames) {
     my $output_sequence_io = Bio::SeqIO->new( -file   => ">$frame.fasta",
                                   -format => 'Fasta',
                                 );
     $translated_sequence = $inseq->translate(-frame => $frame, -complete => 1);
     $output_sequence_io->write_seq($translated_sequence);

     $output_sequence_io = Bio::SeqIO->new( -file   => ">$frame-rev.fasta",
                                   -format => 'Fasta',
                                 );
     $translated_sequence = $inseq->revcom->translate(-frame => $frame, -complete => 1);

     $output_sequence_io->write_seq($translated_sequence);
   }
}