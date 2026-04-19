inline.NumInlined: 102
inline.NumDeleted: 47
begin_hunk_0_@duckdb_je_psset_pick_alloc:bb.a
  br i1 %i.ab, label %.lr.ph, label %fb_ffs.exit

fb_ffs.exit:                                      ; preds = %.lr.ph, %sz_psz2ind.exit
  %.141.i.lcssa.i = phi i64 [ %.040.i.i, %sz_psz2ind.exit ], [ %i.aa, %.lr.ph ]
  %.039.i.lcssa.i = phi i64 [ %i.s, %sz_psz2ind.exit ], [ %i.y, %.lr.ph ]
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i, i1 true)
  %i.ad = shl i64 %.039.i.lcssa.i, 6
  %.masked = and i64 %i.ad, 4294967232
  %i.ae = or disjoint i64 %.masked, %i.ac         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 64
  br i1 %i.af, label %fb_ffs.exit.thread, label %bb.c

end_hunk_0
