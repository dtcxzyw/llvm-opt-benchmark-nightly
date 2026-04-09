inline.NumInlined: 605
inline.NumDeleted: 134
begin_hunk_0_@bytearray_expandtabs:bb.a

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %.val69.i.i = load ptr, ptr %i.n, align 8, !tbaa !23 ; 5 uses
  %.val6996.i.i = ptrtoint ptr %.val69.i.i to i64 ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val70.i.i = load i64, ptr %i.o, align 8, !tbaa !25 ; 4 uses
  %i.p = getelementptr i8, ptr %.val69.i.i, i64 %.val70.i.i ; 4 uses
  %i.q = icmp ult ptr %.val69.i.i, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread:                                          ; preds = %.thread32.i
  %i.r = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val69.i.i33 = load ptr, ptr %i.r, align 8, !tbaa !23 ; 4 uses
  %.val6996.i.i31 = ptrtoint ptr %.val69.i.i33 to i64 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val70.i.i34 = load i64, ptr %i.s, align 8, !tbaa !25 ; 3 uses
  %i.t = getelementptr i8, ptr %.val69.i.i33, i64 %.val70.i.i34 ; 3 uses
  %i.u = icmp ult ptr %.val69.i.i33, %i.t
  br i1 %i.u, label %.lr.ph.split.us.i.i.preheader, label %._crit_edge.i.i

.thread57.i:                                      ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val69.i59.i = load ptr, ptr %i.v, align 8, !tbaa !23 ; 4 uses
  %.val6996.i60.i = ptrtoint ptr %.val69.i59.i to i64 ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 16
  %.val70.i60.i = load i64, ptr %i.w, align 8, !tbaa !25 ; 3 uses
  %i.x = getelementptr i8, ptr %.val69.i59.i, i64 %.val70.i60.i ; 3 uses
  %i.y = icmp ult ptr %.val69.i59.i, %i.x
  br i1 %i.y, label %.lr.ph.split.i.preheader.i, label %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@bytearray_expandtabs:bb.a
  %.0.i3540 = phi i32 [ %i.k, %.lr.ph.i.i ], [ 8, %.thread ]
  %i.ac = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.r, %.thread ]
  %.val69.i.i3639 = phi ptr [ %.val69.i.i, %.lr.ph.i.i ], [ %.val69.i.i33, %.thread ]
  %.val6996.i.i3542 = phi i64 [ %.val6996.i.i, %.lr.ph.i.i ], [ %.val6996.i.i31, %.thread ]
  %.val70.i.i3641 = phi i64 [ %.val70.i.i, %.lr.ph.i.i ], [ %.val70.i.i34, %.thread ]
  %i.ad = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.t, %.thread ] ; 2 uses
  br label %.lr.ph.split.us.i.i

end_hunk_1
begin_hunk_2_@bytearray_expandtabs:bb.a
  %.06267.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ -1, %.thread57.i ]
  %i.ae = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.v, %.thread57.i ]
  %.val69.i6366.i = phi ptr [ %.val69.i.i, %.lr.ph.i.i ], [ %.val69.i59.i, %.thread57.i ]
  %.val6996.i6674.i = phi i64 [ %.val6996.i.i, %.lr.ph.i.i ], [ %.val6996.i60.i, %.thread57.i ]
  %.val70.i6873.i = phi i64 [ %.val70.i.i, %.lr.ph.i.i ], [ %.val70.i60.i, %.thread57.i ]
  %i.af = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.x, %.thread57.i ] ; 2 uses
  br label %.lr.ph.split.i.i

end_hunk_2
begin_hunk_3_@bytearray_expandtabs:bb.a
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !103

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.l, %.thread, %.thread57.i, %bb.f
  %i.bb = phi ptr [ %i.p, %bb.f ], [ %i.x, %.thread57.i ], [ %i.t, %.thread ], [ %i.ad, %bb.l ], [ %i.af, %bb.q ]
  %.val70.i67.i = phi i64 [ %.val70.i.i, %bb.f ], [ %.val70.i60.i, %.thread57.i ], [ %.val70.i.i34, %.thread ], [ %.val70.i.i3641, %bb.l ], [ %.val70.i6873.i, %bb.q ] ; 2 uses
  %.val6996.i65.i = phi i64 [ %.val6996.i.i, %bb.f ], [ %.val6996.i60.i, %.thread57.i ], [ %.val6996.i.i31, %.thread ], [ %.val6996.i.i3542, %bb.l ], [ %.val6996.i6674.i, %bb.q ] ; 2 uses
  %i.bc = phi ptr [ %i.n, %bb.f ], [ %i.v, %.thread57.i ], [ %i.r, %.thread ], [ %i.ac, %bb.l ], [ %i.ae, %bb.q ]
  %.061.i = phi i32 [ %i.k, %bb.f ], [ -1, %.thread57.i ], [ 8, %.thread ], [ %.0.i3540, %bb.l ], [ %.06267.i, %bb.q ] ; 2 uses
  %.053.lcssa.i.i = phi i64 [ 0, %bb.f ], [ 0, %.thread57.i ], [ 0, %.thread ], [ %.154.us.i.i, %bb.l ], [ %.154.i.i, %bb.q ] ; 2 uses
  %.051.lcssa.i.i = phi i64 [ 0, %bb.f ], [ 0, %.thread57.i ], [ 0, %.thread ], [ %.2.us.i.i, %bb.l ], [ %.2.i.i, %bb.q ] ; 2 uses
  %i.bd = sub i64 9223372036854775807, %.051.lcssa.i.i
  %i.be = icmp sgt i64 %.053.lcssa.i.i, %i.bd
  br i1 %i.be, label %.loopexit73.i.i, label %bb.r
end_hunk_3
begin_hunk_4_@bytearray_expandtabs:bb.a
  store i64 %i.bf, ptr %i.bu, align 8, !tbaa !25
  %i.bv = getelementptr i8, ptr %i.bi, i64 24
  store i64 %i.bf, ptr %i.bv, align 8, !tbaa !26
  %.val.i.i = load ptr, ptr %i.bc, align 8, !tbaa !23 ; 6 uses
  %i.bw = icmp ult ptr %.val.i.i, %i.bb
  br i1 %i.bw, label %.lr.ph91.i.i, label %stringlib_expandtabs.exit

.lr.ph91.i.i:                                     ; preds = %bb.y
  %.val97.i.i = ptrtoint ptr %.val.i.i to i64     ; 2 uses
  %i.bx = icmp sgt i32 %.061.i, 0
  %i.by = zext i32 %.061.i to i64                 ; 3 uses
  %4 = add i64 %.val6996.i65.i, %.val70.i67.i
  %5 = sub i64 %4, %.val97.i.i                    ; 2 uses
  %scevgep101.i.i = getelementptr i8, ptr %.val.i.i, i64 %5 ; 2 uses
  br i1 %i.bx, label %.lr.ph91.split.us.i.i, label %.lr.ph91.split.i.i.preheader

.lr.ph91.split.i.i.preheader:                     ; preds = %.lr.ph91.i.i
  %6 = add i64 %.val6996.i65.i, %.val70.i67.i
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.split.i.i.prol.loopexit, label %.lr.ph91.split.i.i.prol
end_hunk_4
begin_hunk_5_@bytearray_expandtabs:bb.a
.lr.ph91.split.i.i.prol.loopexit:                 ; preds = %bb.aa, %.lr.ph91.split.i.i.preheader
  %.189.i.i.unr = phi ptr [ %.val.i.i, %.lr.ph91.split.i.i.preheader ], [ %i.cc, %bb.aa ]
  %.05687.i.i.unr = phi ptr [ %i.br, %.lr.ph91.split.i.i.preheader ], [ %.258.i.i.prol, %bb.aa ]
  %i.cd = sub i64 %.val97.i.i, %6
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %stringlib_expandtabs.exit, label %.lr.ph91.split.i.i

end_hunk_5
begin_hunk_6_@bytearray_expandtabs:bb.a
  %.258.us.i.i = phi ptr [ %i.ch, %bb.ab ], [ %i.ch, %bb.ac ], [ %scevgep96.i.i, %.lr.ph85.us.preheader.i.i ]
  %.4.us.i.i = phi i64 [ %i.cj, %bb.ab ], [ 0, %bb.ac ], [ %i.cm, %.lr.ph85.us.preheader.i.i ]
  %i.co = getelementptr i8, ptr %.189.us.i.i, i64 1 ; 2 uses
  %exitcond12.not = icmp eq ptr %i.co, %scevgep101.i.i
  br i1 %exitcond12.not, label %stringlib_expandtabs.exit, label %.lr.ph91.split.us.i.i, !llvm.loop !106

.lr.ph91.split.i.i:                               ; preds = %.lr.ph91.split.i.i.prol.loopexit, %bb.ah
end_hunk_6
begin_hunk_7_@bytearray_expandtabs:bb.a
bb.ah:                                            ; preds = %bb.ag, %.lr.ph91.split.i.i.3
  %.258.i.i.3 = phi ptr [ %i.dd, %bb.ag ], [ %.258.i.i.2, %.lr.ph91.split.i.i.3 ]
  %i.de = getelementptr i8, ptr %.189.i.i, i64 4  ; 2 uses
  %exitcond.not.3 = icmp eq ptr %i.de, %scevgep101.i.i
  br i1 %exitcond.not.3, label %stringlib_expandtabs.exit, label %.lr.ph91.split.i.i, !llvm.loop !106

.loopexit73.i.i:                                  ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i
end_hunk_7
