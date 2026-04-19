inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0_@_ZN10duckdb_re212StringPrintfB5cxx11EPKcz:bb.a
          to label %bb.d unwind label %.loopexit.split-lp ; 0 uses

.preheader.i:                                     ; preds = %bb.a, %bb.c
  %.024.i = phi i32 [ %i.p, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %.0.i = phi i32 [ %.1.i, %bb.c ], [ 1024, %bb.a ]
  %i.k = icmp slt i32 %.024.i, 0
  %i.l = shl nuw nsw i32 %.0.i, 1
  %i.m = add nuw nsw i32 %.024.i, 1
  %.1.i = select i1 %i.k, i32 %i.l, i32 %i.m      ; 3 uses
  %i.n = zext nneg i32 %.1.i to i64               ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #12
end_hunk_0
