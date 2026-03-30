begin_hunk_0

.lr.ph299:                                        ; preds = %bb.a, %addbyte.exit
  %i.c = phi i8 [ %i.ack, %addbyte.exit ], [ %i.a, %bb.a ] ; 10 uses
  %.sroa.0.0298 = phi <2 x i32> [ %.sroa.0.2, %addbyte.exit ], [ undef, %bb.a ] ; 39 uses
  %.0296 = phi ptr [ %.8, %addbyte.exit ], [ %0, %bb.a ] ; 25 uses
  %i.d = load i8, ptr @load_str, align 1, !tbaa !11
  %.not26.a = icmp eq i8 %i.d, 0
end_hunk_0
begin_hunk_1
  br label %.loopexit, !llvm.loop !38

bb.bt:                                            ; preds = %.loopexit
  %.sroa.0.0.copyload = load <2 x i32>, ptr @load_adr, align 8
  store i32 %.09.in.i102, ptr @load_adr, align 8, !tbaa !8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @load_adr, i64 4), align 4, !tbaa !10
  br label %addbyte.exit94
end_hunk_1
begin_hunk_2
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [168 x i8], ptr %i.mz, i64 %i.nb
  store i8 1, ptr %i.nc, align 8, !tbaa !39
  store <2 x i32> %.sroa.0.0298, ptr @load_adr, align 8
  br label %addbyte.exit94

bb.bv:                                            ; preds = %bb.ag
end_hunk_2
begin_hunk_3

addbyte.exit94:                                   ; preds = %bb.ef, %bb.ax, %bb.ex, %bb.eu, %bb.ep, %bb.em, %addbyte.exit233, %bb.ee, %bb.eb, %bb.dz, %bb.dm, %bb.dj, %addbyte.exit187, %bb.dc, %bb.cz, %._crit_edge, %bb.bh, %bb.be, %addbyte.exit87, %bb.eq, %bb.er, %bb.es, %addbyte.exit201, %bb.bu, %bb.bt, %def_label.exit, %bb.ah, %bb.ag
  %.7 = phi ptr [ %.22, %bb.ep ], [ %.0296, %bb.ah ], [ %.10, %def_label.exit ], [ %.0296, %bb.ag ], [ %.3, %bb.bt ], [ %.0296, %bb.bu ], [ %.12, %bb.bh ], [ %.6.lcssa, %bb.dc ], [ %.0296, %addbyte.exit201 ], [ %i.tx, %bb.dm ], [ %.22, %bb.ee ], [ %i.abk, %bb.eq ], [ %i.abk, %bb.er ], [ %i.abk, %bb.es ], [ %.0296, %bb.ex ], [ %.12, %addbyte.exit87 ], [ %.12, %bb.be ], [ %.6.lcssa, %._crit_edge ], [ %.6.lcssa, %bb.cz ], [ %i.tx, %addbyte.exit187 ], [ %i.tx, %bb.dj ], [ %.22, %bb.dz ], [ %.22, %bb.eb ], [ %.12, %bb.ax ], [ %.22, %addbyte.exit233 ], [ %.22, %bb.em ], [ %.0296, %bb.eu ], [ %.22, %bb.ef ]
  %.sroa.0.1 = phi <2 x i32> [ %.sroa.0.0298, %bb.ep ], [ %.sroa.0.0298, %bb.ah ], [ %.sroa.0.0298, %def_label.exit ], [ %.sroa.0.0298, %bb.ag ], [ %.sroa.0.0.copyload, %bb.bt ], [ %.sroa.0.0298, %bb.bu ], [ %.sroa.0.0298, %bb.bh ], [ %.sroa.0.0298, %bb.dc ], [ %.sroa.0.0298, %addbyte.exit201 ], [ %.sroa.0.0298, %bb.dm ], [ %.sroa.0.0298, %bb.ee ], [ %.sroa.0.0298, %bb.eq ], [ %.sroa.0.0298, %bb.er ], [ %.sroa.0.0298, %bb.es ], [ %.sroa.0.0298, %bb.ex ], [ %.sroa.0.0298, %addbyte.exit87 ], [ %.sroa.0.0298, %bb.be ], [ %.sroa.0.0298, %._crit_edge ], [ %.sroa.0.0298, %bb.cz ], [ %.sroa.0.0298, %addbyte.exit187 ], [ %.sroa.0.0298, %bb.dj ], [ %.sroa.0.0298, %bb.dz ], [ %.sroa.0.0298, %bb.eb ], [ %.sroa.0.0298, %bb.ax ], [ %.sroa.0.0298, %addbyte.exit233 ], [ %.sroa.0.0298, %bb.em ], [ %.sroa.0.0298, %bb.eu ], [ %.sroa.0.0298, %bb.ef ]
  %i.acj = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %addbyte.exit

addbyte.exit:                                     ; preds = %bb.af, %bb.ac, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.p, %bb.m, %bb.h, %bb.e, %addbyte.exit94, %bb.k
  %.8 = phi ptr [ %i.acj, %addbyte.exit94 ], [ %i.bf, %bb.u ], [ %i.ce, %bb.aa ], [ %i.af, %bb.k ], [ %i.g, %bb.h ], [ %i.ag, %bb.p ], [ %i.g, %bb.e ], [ %i.ag, %bb.m ], [ %i.bf, %bb.r ], [ %i.ce, %bb.x ], [ %i.ce, %bb.ac ], [ %i.ce, %bb.af ] ; 2 uses
  %.sroa.0.2 = phi <2 x i32> [ %.sroa.0.1, %addbyte.exit94 ], [ %.sroa.0.0298, %bb.u ], [ %.sroa.0.0298, %bb.aa ], [ %.sroa.0.0298, %bb.k ], [ %.sroa.0.0298, %bb.h ], [ %.sroa.0.0298, %bb.p ], [ %.sroa.0.0298, %bb.e ], [ %.sroa.0.0298, %bb.m ], [ %.sroa.0.0298, %bb.r ], [ %.sroa.0.0298, %bb.x ], [ %.sroa.0.0298, %bb.ac ], [ %.sroa.0.0298, %bb.af ]
  %i.ack = load i8, ptr %.8, align 1, !tbaa !11   ; 2 uses
  %.not = icmp ne i8 %i.ack, 0
  %i.acl = load i32, ptr @had_error, align 4
end_hunk_3
