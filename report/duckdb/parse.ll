begin_hunk_0
  br i1 %i.n, label %_ZN10duckdb_re2L15LookupPerlGroupERKNS_11StringPieceE.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i: ; preds = %bb.e
  %2 = load i16, ptr %i.j, align 1
  %3 = load i16, ptr %i.e, align 1
  %4 = icmp ne i16 %2, %3
  %5 = zext i1 %4 to i32
  %i.o = icmp eq i32 %5, 0
  br i1 %i.o, label %_ZN10duckdb_re2L15LookupPerlGroupERKNS_11StringPieceE.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i, %.lr.ph.i.i
end_hunk_0
begin_hunk_1

thread-pre-split:                                 ; preds = %bb.p, %bb.o
  %.val40 = phi i64 [ %i.au, %bb.o ], [ %i.bd, %bb.p ]
  %.val = phi ptr [ %.val.pr, %bb.o ], [ %i.bc, %bb.p ] ; 5 uses
  %.135 = phi i32 [ %spec.select, %bb.o ], [ %spec.select.neg, %bb.p ] ; 5 uses
  %.8.val.fr.i = freeze i64 %.val40               ; 3 uses
  %.not.i.i = icmp eq i64 %.8.val.fr.i, 3
end_hunk_1
begin_hunk_2
  br i1 %i.be, label %.loopexit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i:  ; preds = %bb.q
  %6 = load i16, ptr %.val, align 1
  %7 = xor i16 %6, 28225
  %8 = getelementptr i8, ptr %.val, i64 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  %11 = xor i16 %10, 121
  %12 = or i16 %7, %11
  %13 = icmp ne i16 %12, 0
  %14 = zext i1 %13 to i32
  %i.bf = icmp eq i32 %14, 0
  br i1 %i.bf, label %.loopexit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.thread.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i: ; preds = %thread-pre-split
end_hunk_2
begin_hunk_3
  br i1 %i.dj, label %.thread187, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90: ; preds = %bb.ah
  %6 = load i16, ptr %i.df, align 1
  %7 = load i16, ptr %i.dc, align 1
  %8 = icmp ne i16 %6, %7
  %9 = zext i1 %8 to i32
  %i.dk = icmp eq i32 %9, 0
  br i1 %i.dk, label %.thread187, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i86, %.lr.ph.i.i.i84
end_hunk_3
begin_hunk_4
  br i1 %i.lb, label %bb.ea, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i: ; preds = %bb.dz
  %10 = load i16, ptr %i.kx, align 1
  %11 = load i16, ptr %i.ku, align 1
  %12 = icmp ne i16 %10, %11
  %13 = zext i1 %12 to i32
  %i.lc = icmp eq i32 %13, 0
  br i1 %i.lc, label %bb.ea, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i, %.lr.ph.i.i.i
end_hunk_4
