begin_hunk_0_@case_map:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.g, %bb.i, %bb.l, %bb.h, %bb.c, %bb.e, %bb.d
  %.039 = phi i8 [ %i.n, %bb.c ], [ 115, %bb.e ], [ -33, %bb.d ], [ %i.y, %bb.g ], [ -94, %bb.h ], [ %i.h, %bb.i ], [ %spec.select52, %bb.k ], [ %i.ag, %bb.l ]
  %.138 = phi ptr [ %i.l, %bb.c ], [ %i.q, %bb.e ], [ %.03753, %bb.d ], [ %.03753, %bb.g ], [ %.03753, %bb.h ], [ %.03753, %bb.i ], [ %.03753, %bb.k ], [ %.03753, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.k, %bb.c ], [ %i.p, %bb.e ], [ %.054, %bb.d ], [ %i.w, %bb.g ], [ %.054, %bb.h ], [ %.054, %bb.i ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.138, i64 1 ; 3 uses
  store i8 %.039, ptr %.138, align 1, !tbaa !13
  %i.ai = and i32 %.1, 32768
  %.not49 = icmp eq i32 %i.ai, 0
  %i.aj = xor i32 %.1, 57344
end_hunk_0
