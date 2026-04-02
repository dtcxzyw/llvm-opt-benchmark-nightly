begin_hunk_0
  br i1 %i.n, label %_ZN10duckdb_re2L15LookupPerlGroupERKNS_11StringPieceE.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i: ; preds = %bb.e
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.j, ptr noundef nonnull readonly dereferenceable(2) %i.e, i64 2)
  %i.o = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.o, label %_ZN10duckdb_re2L15LookupPerlGroupERKNS_11StringPieceE.exit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i, %.lr.ph.i.i
end_hunk_0
begin_hunk_1

thread-pre-split:                                 ; preds = %bb.p, %bb.o
  %.val40 = phi i64 [ %i.au, %bb.o ], [ %i.bd, %bb.p ]
  %.val = phi ptr [ %.val.pr, %bb.o ], [ %i.bc, %bb.p ] ; 4 uses
  %.135 = phi i32 [ %spec.select, %bb.o ], [ %spec.select.neg, %bb.p ] ; 5 uses
  %.8.val.fr.i = freeze i64 %.val40               ; 3 uses
  %.not.i.i = icmp eq i64 %.8.val.fr.i, 3
end_hunk_1
begin_hunk_2
  br i1 %i.be, label %.loopexit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i:  ; preds = %bb.q
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(3) %.val, ptr noundef nonnull dereferenceable(3) @.str.10, i64 3)
  %i.bf = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bf, label %.loopexit, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.thread.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i: ; preds = %thread-pre-split
end_hunk_2
begin_hunk_3
  br i1 %i.dj, label %.thread187, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90: ; preds = %bb.ah
  %bcmp.i.i.i.i91 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.df, ptr noundef nonnull readonly dereferenceable(2) %i.dc, i64 2)
  %i.dk = icmp eq i32 %bcmp.i.i.i.i91, 0
  br i1 %i.dk, label %.thread187, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i87: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i90, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i86, %.lr.ph.i.i.i84
end_hunk_3
begin_hunk_4
  br i1 %i.lb, label %bb.ea, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i: ; preds = %bb.dz
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %i.kx, ptr noundef nonnull readonly dereferenceable(2) %i.ku, i64 2)
  %i.lc = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.lc, label %bb.ea, label %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i

_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.thread2.i.i.i: ; preds = %_ZN10duckdb_re2eqERKNS_11StringPieceES2_.exit.i.i.i, %_ZN10duckdb_re211StringPieceC2EPKc.exit.i.i.i, %.lr.ph.i.i.i
end_hunk_4
