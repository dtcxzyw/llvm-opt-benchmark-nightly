begin_hunk_0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = ptrtoint ptr %.146 to i64               ; 2 uses
  %i.ae = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ugt i64 %i.af, 7
  br i1 %i.ag, label %.lr.ph.a, label %bb.l

end_hunk_0
begin_hunk_1

bb.i:                                             ; preds = %bb.g
  %i.al = icmp eq ptr %.sroa.62114.5151, %i.ab
  br i1 %i.al, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %.sroa.17.6152, 3              ; 2 uses
end_hunk_1
begin_hunk_2
  %.sroa.0.6 = load i64, ptr %.sroa.62114.6, align 1, !tbaa !25 ; 8 uses
  %i.aw = icmp ult ptr %.0.i154, %i.ai
  %i.ax = and i1 %i.aw, %.022.i
  br i1 %i.ax, label %bb.k, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit

bb.k:                                             ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.ay = and i32 %.sroa.17.8, 63
end_hunk_2
begin_hunk_3
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.do ; 2 uses
  %i.dq = icmp ugt i32 %i.dl, 64
  br i1 %i.dq, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit, label %bb.g, !prof !138, !llvm.loop !106

bb.l:                                             ; preds = %bb.f
  %.not.i67 = icmp ult ptr %i.s, %i.ac
end_hunk_3
begin_hunk_4
  %.val.i77 = load i64, ptr %i.eh, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, %bb.k, %bb.i
  %.sroa.62114.2.ph = phi ptr [ %.sroa.62114.6, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.sroa.62114.5151, %bb.i ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.k ]
  %.sroa.17.2.ph = phi i32 [ %.sroa.17.8, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.sroa.17.6152, %bb.i ], [ %i.dl, %bb.k ]
  %.sroa.0.2.ph = phi i64 [ %.sroa.0.6, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.sroa.0.5153, %bb.i ], [ %.sroa.0.6, %bb.k ]
  %.4.i.ph = phi ptr [ %.0.i154, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %.0.i154, %bb.i ], [ %i.dp, %bb.k ] ; 2 uses
  %.pre = ptrtoint ptr %.4.i.ph to i64
  %.pre163 = sub i64 %i.ad, %.pre
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit, %bb.n, %bb.o, %bb.m
  %.pre-phi164 = phi i64 [ %.pre163, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.af, %bb.n ], [ %i.af, %bb.o ], [ %i.af, %bb.m ]
  %.sroa.62114.2 = phi ptr [ %.sroa.62114.2.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.s, %bb.n ], [ %i.eh, %bb.o ], [ %i.dt, %bb.m ]
  %.sroa.17.2 = phi i32 [ %.sroa.17.2.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.aa, %bb.n ], [ %i.ej, %bb.o ], [ %i.du, %bb.m ] ; 4 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.2.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %.val.i.i, %bb.n ], [ %.val.i77, %bb.o ], [ %.val.i.i76, %bb.m ] ; 3 uses
  %.4.i = phi ptr [ %.4.i.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73.loopexit ], [ %i.p, %bb.n ], [ %i.p, %bb.o ], [ %i.p, %bb.m ] ; 3 uses
  %i.ek = icmp ugt i64 %.pre-phi164, 1
  br i1 %i.ek, label %.preheader149, label %.loopexit

.preheader149:                                    ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit73
end_hunk_4
begin_hunk_5
  %i.ab = mul nuw i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ab
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %.loopexit226, label %.preheader225, !llvm.loop !139

.preheader225:                                    ; preds = %.preheader225.lr.ph, %.loopexit
  %.sroa.17.0 = phi ptr [ %.sroa.17.0.copyload, %.preheader225.lr.ph ], [ %i.ii, %.loopexit ] ; 3 uses
end_hunk_5
begin_hunk_6
  %i.ik = or i64 %i.ij, 1
  %i.il = shl i64 %i.ik, %i.ie                    ; 3 uses
  %i.im = icmp ult ptr %i.ig, %i.ae
  br i1 %i.im, label %.preheader, label %.loopexit, !llvm.loop !139

.loopexit226:                                     ; preds = %.loopexit, %.preheader225, %bb.a
  %.sroa.17.2 = phi ptr [ %.sroa.17.0.copyload, %bb.a ], [ %i.ii, %.loopexit ], [ %.sroa.17.0, %.preheader225 ]
end_hunk_6
begin_hunk_7
bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond131 = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond131, label %.thread, label %bb.d, !llvm.loop !140

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 5 uses
end_hunk_7
begin_hunk_8
  %i.m = sub i64 %i.g, %i.l
  %.not53 = icmp ugt i64 %i.f, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.045127, i64 %i.f
  %.146 = select i1 %.not53, ptr %i.b, ptr %i.n   ; 6 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !137  ; 7 uses
  %i.q = icmp ugt ptr %i.p, %.146
end_hunk_8
begin_hunk_9
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 5 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !133 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = ptrtoint ptr %.146 to i64               ; 3 uses
  %i.ae = ptrtoint ptr %i.p to i64                ; 4 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 3
  br i1 %i.ag, label %.lr.ph.a, label %bb.l
end_hunk_9
begin_hunk_10

bb.i:                                             ; preds = %bb.g
  %i.al = icmp eq ptr %.sroa.3881.4111, %i.ab
  br i1 %i.al, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %.sroa.12.5112, 3              ; 2 uses
end_hunk_10
begin_hunk_11
  %.sroa.0.5 = load i64, ptr %.sroa.3881.5, align 1, !tbaa !25 ; 7 uses
  %i.aw = icmp ult ptr %.0.i114, %i.ai
  %i.ax = and i1 %i.aw, %.022.i38.i
  br i1 %i.ax, label %bb.k, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit

bb.k:                                             ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i
  %i.ay = and i32 %.sroa.12.6, 63
end_hunk_11
begin_hunk_12
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i114, i64 4 ; 2 uses
  store i8 %i.cl, ptr %i.ce, align 1, !tbaa !7
  %i.cq = icmp ugt i32 %i.co, 64
  br i1 %i.cq, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit, label %bb.g, !prof !138, !llvm.loop !117

bb.l:                                             ; preds = %bb.f
  %.not.i.i = icmp ult ptr %i.s, %i.ac
end_hunk_12
begin_hunk_13
  %.val.i61 = load i64, ptr %i.dh, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i, %bb.k, %bb.i
  %.sroa.12.3.ph = phi i32 [ %.sroa.12.6, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.sroa.12.5112, %bb.i ], [ %i.co, %bb.k ]
  %.sroa.0.3.ph = phi i64 [ %.sroa.0.5, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.sroa.0.4113, %bb.i ], [ %.sroa.0.5, %bb.k ]
  %.3.i.ph = phi ptr [ %.0.i114, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.0.i114, %bb.i ], [ %i.cp, %bb.k ] ; 2 uses
  %.pre122 = ptrtoint ptr %.3.i.ph to i64
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit, %bb.n, %bb.m, %bb.o
  %.3.i119.pre-phi = phi i64 [ %.pre122, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.o ] ; 2 uses
  %.sroa.12.3 = phi i32 [ %.sroa.12.3.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.aa, %bb.n ], [ %i.cu, %bb.m ], [ %i.dj, %bb.o ] ; 3 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.3.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %.val.i.i, %bb.n ], [ %.val.i.i60, %bb.m ], [ %.val.i61, %bb.o ] ; 3 uses
  %.3.i = phi ptr [ %.3.i.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.p, %bb.n ], [ %i.p, %bb.m ], [ %i.p, %bb.o ] ; 5 uses
  %i.dk = icmp ult ptr %.3.i, %.146
  br i1 %i.dk, label %.lr.ph126.preheader, label %._crit_edge

.lr.ph126.preheader:                              ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %6 = sub i64 %i.ad, %.3.i119.pre-phi            ; 2 uses
  %scevgep = getelementptr i8, ptr %.3.i, i64 %6
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph126.prol.loopexit, label %.lr.ph126.prol
end_hunk_13
begin_hunk_14
.lr.ph126.prol.loopexit:                          ; preds = %.lr.ph126.prol, %.lr.ph126.preheader
  %.6.i125.unr = phi ptr [ %.3.i, %.lr.ph126.preheader ], [ %i.dv, %.lr.ph126.prol ]
  %.sroa.12.4124.unr = phi i32 [ %.sroa.12.3, %.lr.ph126.preheader ], [ %i.du, %.lr.ph126.prol ]
  %i.dw = add i64 %i.ad, -1
  %i.dx = icmp eq i64 %.3.i119.pre-phi, %i.dw
  br i1 %i.dx, label %._crit_edge.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.prol.loopexit, %.lr.ph126
end_hunk_14
begin_hunk_15
  %i.es = add i32 %i.eh, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.6.i125, i64 2 ; 2 uses
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !7
  %exitcond.not.1 = icmp eq ptr %i.et, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph126, !llvm.loop !118

._crit_edge.loopexit:                             ; preds = %.lr.ph126, %.lr.ph126.prol.loopexit
end_hunk_15
begin_hunk_16
!135 = distinct !{!135, !9}
!136 = distinct !{!136, !9}
!137 = !{!122, !122, i64 0}
!138 = !{!"branch_weights", i32 1, i32 1999}
!139 = distinct !{!139, !9}
!140 = distinct !{!140, !9}
end_hunk_16
