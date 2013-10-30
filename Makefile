CC=gcc
CFLAGS=-g -W -Wall -O2 -finline-functions -D_FILE_OFFSET_BITS=64
GLIBS=-lm  -lz
GENERIC_SRC=Makefile string.h vector.h file_reader.h file_reader.c hashset.h list.h dna.h sort.h

all: clinsek


clinsek: $(GENERIC_SRC) filter_kmer.c sr_aln.h sr_aln.c aln_cigar.h simp_asm.h stdaln.h stdaln.c
	$(CC) $(CFLAGS) $(INCLUDE) $(LIBPATH) -o clinsek file_reader.c sr_aln.c stdaln.c filter_kmer.c $(GLIBS)

clean:
	rm -f *.o *.gcda *.gcno *.gcov gmon.out novokmer

clear:
	rm -f *.o *.gcda *.gcno *.gcov gmon.out