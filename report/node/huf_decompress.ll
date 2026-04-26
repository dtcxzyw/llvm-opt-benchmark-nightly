inline.NumInlined: 722
inline.NumDeleted: 36
begin_hunk_0_@HUF_decompress4X2_usingDTable_internal_fast:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = ptrtoint ptr %.146 to i64               ; 2 uses
  %i.ae = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ugt i64 %i.af, 7
  br i1 %i.ag, label %.lr.ph.a, label %bb.l

end_hunk_0
begin_hunk_1_@HUF_decompress4X2_usingDTable_internal_fast:bb.a

bb.i:                                             ; preds = %bb.g
  %i.al = icmp eq ptr %.sroa.62114.5151, %i.ab
  br i1 %i.al, label %BIT_reloadDStream.exit73, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %.sroa.17.6152, 3              ; 2 uses
end_hunk_1
begin_hunk_2_@HUF_decompress4X2_usingDTable_internal_fast:bb.a
  %.sroa.0.6 = load i64, ptr %.sroa.62114.6, align 1, !tbaa !27 ; 8 uses
  %i.aw = icmp ult ptr %.0.i154, %i.ai
  %i.ax = and i1 %i.aw, %.022.i
  br i1 %i.ax, label %bb.k, label %BIT_reloadDStream.exit73

bb.k:                                             ; preds = %BIT_reloadDStream.exit
  %i.ay = and i32 %.sroa.17.8, 63
end_hunk_2
begin_hunk_3_@HUF_decompress4X2_usingDTable_internal_fast:bb.a
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.do ; 2 uses
  %i.dq = icmp ugt i32 %i.dl, 64
  br i1 %i.dq, label %BIT_reloadDStream.exit73, label %bb.g, !prof !112, !llvm.loop !113

bb.l:                                             ; preds = %bb.f
  %.not.i67 = icmp ult ptr %i.s, %i.ac
end_hunk_3
begin_hunk_4_@HUF_decompress4X2_usingDTable_internal_fast:bb.a
  %.val.i77 = load i64, ptr %i.eh, align 1, !tbaa !27
  br label %BIT_reloadDStream.exit73

BIT_reloadDStream.exit73:                         ; preds = %BIT_reloadDStream.exit, %bb.k, %bb.i, %bb.n, %bb.o, %bb.m
  %.sroa.62114.2 = phi ptr [ %i.s, %bb.n ], [ %i.eh, %bb.o ], [ %i.dt, %bb.m ], [ %.sroa.62114.6, %BIT_reloadDStream.exit ], [ @BIT_reloadDStream.zeroFilled, %bb.k ], [ %.sroa.62114.5151, %bb.i ]
  %.sroa.17.2 = phi i32 [ %i.aa, %bb.n ], [ %i.ej, %bb.o ], [ %i.du, %bb.m ], [ %.sroa.17.8, %BIT_reloadDStream.exit ], [ %i.dl, %bb.k ], [ %.sroa.17.6152, %bb.i ] ; 4 uses
  %.sroa.0.2 = phi i64 [ %.val.i.i, %bb.n ], [ %.val.i77, %bb.o ], [ %.val.i.i76, %bb.m ], [ %.sroa.0.6, %BIT_reloadDStream.exit ], [ %.sroa.0.6, %bb.k ], [ %.sroa.0.5153, %bb.i ] ; 3 uses
  %.4.i = phi ptr [ %i.p, %bb.n ], [ %i.p, %bb.o ], [ %i.p, %bb.m ], [ %.0.i154, %BIT_reloadDStream.exit ], [ %i.dp, %bb.k ], [ %.0.i154, %bb.i ] ; 4 uses
  %6 = ptrtoint ptr %.4.i to i64
  %7 = sub i64 %i.ad, %6
  %i.ek = icmp ugt i64 %7, 1
  br i1 %i.ek, label %.preheader149, label %.loopexit

.preheader149:                                    ; preds = %BIT_reloadDStream.exit73
end_hunk_4
begin_hunk_5_@HUF_decompress4X1_usingDTable_internal_fast_c_loop:bb.a
  br label %bb.b

.loopexit:                                        ; preds = %.preheader
  br label %bb.b, !llvm.loop !145

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.sroa.16.0 = phi ptr [ %.sroa.16.0.copyload, %bb.a ], [ %i.hx, %.loopexit ] ; 3 uses
end_hunk_5
begin_hunk_6_@HUF_decompress4X1_usingDTable_internal_fast_c_loop:bb.a
  %i.hz = or i64 %i.hy, 1
  %i.ia = shl i64 %i.hz, %i.ht                    ; 2 uses
  %i.ib = icmp ult ptr %i.hv, %i.s
  br i1 %i.ib, label %.preheader, label %.loopexit, !llvm.loop !145

.loopexit232:                                     ; preds = %bb.b
  store i64 %.sroa.0146.0, ptr %i.g, align 8
end_hunk_6
begin_hunk_7_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond131 = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond131, label %.thread, label %bb.d, !llvm.loop !146

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 5 uses
end_hunk_7
begin_hunk_8_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
  %i.m = sub i64 %i.g, %i.l
  %.not53 = icmp ugt i64 %i.f, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.045127, i64 %i.f
  %.146 = select i1 %.not53, ptr %i.b, ptr %i.n   ; 8 uses
  %.1461 = ptrtoint ptr %.146 to i64              ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144  ; 7 uses
  %i.q = icmp ugt ptr %i.p, %.146
end_hunk_8
begin_hunk_9_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 5 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !140 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = ptrtoint ptr %.146 to i64
  %i.ae = ptrtoint ptr %i.p to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 3
  br i1 %i.ag, label %.lr.ph.a, label %bb.l
end_hunk_9
begin_hunk_10_@HUF_decompress4X1_usingDTable_internal_fast:bb.a

bb.i:                                             ; preds = %bb.g
  %i.al = icmp eq ptr %.sroa.3881.4111, %i.ab
  br i1 %i.al, label %BIT_reloadDStream.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %.sroa.12.5112, 3              ; 2 uses
end_hunk_10
begin_hunk_11_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
  %.sroa.0.5 = load i64, ptr %.sroa.3881.5, align 1, !tbaa !27 ; 7 uses
  %i.aw = icmp ult ptr %.0.i114, %i.ai
  %i.ax = and i1 %i.aw, %.022.i38.i
  br i1 %i.ax, label %bb.k, label %BIT_reloadDStream.exit.i

bb.k:                                             ; preds = %BIT_reloadDStream.exit43.i
  %i.ay = and i32 %.sroa.12.6, 63
end_hunk_11
begin_hunk_12_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i114, i64 4 ; 2 uses
  store i8 %i.cl, ptr %i.ce, align 1, !tbaa !9
  %i.cq = icmp ugt i32 %i.co, 64
  br i1 %i.cq, label %BIT_reloadDStream.exit.i, label %bb.g, !prof !112, !llvm.loop !124

bb.l:                                             ; preds = %bb.f
  %.not.i.i = icmp ult ptr %i.s, %i.ac
end_hunk_12
begin_hunk_13_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
  %.val.i61 = load i64, ptr %i.dh, align 1, !tbaa !27
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %BIT_reloadDStream.exit43.i, %bb.k, %bb.i, %bb.n, %bb.m, %bb.o
  %.sroa.12.3 = phi i32 [ %i.aa, %bb.n ], [ %i.dj, %bb.o ], [ %i.cu, %bb.m ], [ %.sroa.12.6, %BIT_reloadDStream.exit43.i ], [ %i.co, %bb.k ], [ %.sroa.12.5112, %bb.i ] ; 3 uses
  %.sroa.0.3 = phi i64 [ %.val.i.i, %bb.n ], [ %.val.i61, %bb.o ], [ %.val.i.i60, %bb.m ], [ %.sroa.0.5, %BIT_reloadDStream.exit43.i ], [ %.sroa.0.5, %bb.k ], [ %.sroa.0.4113, %bb.i ] ; 3 uses
  %.3.i = phi ptr [ %i.p, %bb.n ], [ %i.p, %bb.o ], [ %i.p, %bb.m ], [ %.0.i114, %BIT_reloadDStream.exit43.i ], [ %i.cp, %bb.k ], [ %.0.i114, %bb.i ] ; 5 uses
  %i.dk = icmp ult ptr %.3.i, %.146
  br i1 %i.dk, label %.lr.ph126.preheader, label %._crit_edge

.lr.ph126.preheader:                              ; preds = %BIT_reloadDStream.exit.i
  %.3.i2 = ptrtoint ptr %.3.i to i64              ; 2 uses
  %6 = sub i64 %.1461, %.3.i2
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph126.prol.loopexit, label %.lr.ph126.prol
end_hunk_13
begin_hunk_14_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
.lr.ph126.prol.loopexit:                          ; preds = %.lr.ph126.prol, %.lr.ph126.preheader
  %.6.i125.unr = phi ptr [ %.3.i, %.lr.ph126.preheader ], [ %i.dv, %.lr.ph126.prol ]
  %.sroa.12.4124.unr = phi i32 [ %.sroa.12.3, %.lr.ph126.preheader ], [ %i.du, %.lr.ph126.prol ]
  %i.dw = add i64 %.1461, -1
  %i.dx = icmp eq i64 %i.dw, %.3.i2
  br i1 %i.dx, label %._crit_edge.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.prol.loopexit, %.lr.ph126
end_hunk_14
begin_hunk_15_@HUF_decompress4X1_usingDTable_internal_fast:bb.a
  %i.es = add i32 %i.eh, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.6.i125, i64 2 ; 2 uses
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !9
  %exitcond.not.1 = icmp eq ptr %i.et, %.146
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph126, !llvm.loop !125

._crit_edge.loopexit:                             ; preds = %.lr.ph126, %.lr.ph126.prol.loopexit
end_hunk_15
begin_hunk_16_@llvm.assume
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = !{!129, !129, i64 0}
!145 = distinct !{!145, !11}
!146 = distinct !{!146, !11}
end_hunk_16
