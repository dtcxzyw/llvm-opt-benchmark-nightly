inline.NumInlined: 102
inline.NumDeleted: 55
begin_hunk_0_@_ZN6hermes2vm9quickSortEPNS0_9SortModelEjj:bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i, i32 noundef %i.r) #10, !inline_history !20 ; 3 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm9quickSortEPNS0_9SortModelEjj:bb.a
bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i
  %i.ag = load ptr, ptr %0, align 8, !tbaa !18
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i, i32 noundef %i.r) #10, !inline_history !21
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread, label %bb.f

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm9quickSortEPNS0_9SortModelEjj:bb.a
  store i32 %i.ap, ptr %i.al, align 4, !tbaa !3
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !3
  %.not27.i = icmp eq i32 %i.r, %1
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.d, %bb.f, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i, %.preheader.i
  %.024.i = add i32 %.02441.i, 1                  ; 2 uses
  %.not.i = icmp eq i32 %.024.i, %2
  br i1 %.not.i, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread, label %.preheader.i, !llvm.loop !23

_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit: ; preds = %._crit_edge
  %i.aq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.b = add i32 %.090.lcssa, 1                   ; 4 uses
  %i.c = sub i32 %i.b, %.087.lcssa                ; 2 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.b, !prof !24

bb.b:                                             ; preds = %._crit_edge
  %i.e = add i32 %i.c, -2
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %.0.i, -1
  %.not.i = icmp eq i32 %.0.i, %.087.lcssa
  br i1 %.not.i, label %.preheader.i, label %bb.c, !llvm.loop !25

.preheader.i:                                     ; preds = %bb.d
  %i.k = zext i32 %.087.lcssa to i64
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.e:                                             ; preds = %bb.f
  %i.n = sub i32 %i.p, %.087.lcssa
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph367, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, !llvm.loop !26

.lr.ph367:                                        ; preds = %.preheader.i, %bb.e
  %.024.i366 = phi i32 [ %i.p, %bb.e ], [ %i.b, %.preheader.i ]
  %i.p = add i32 %.024.i366, -1                   ; 5 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !18
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.087.lcssa, i32 noundef %i.p) #10, !inline_history !27
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.f

end_hunk_5
begin_hunk_6_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  store i32 %i.y, ptr %i.x, align 4, !tbaa !3
  %i.aa = tail call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj(ptr noundef nonnull %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i32 noundef %.087.lcssa, i32 noundef %.087.lcssa, i32 noundef %i.p)
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.loopexit_crit_edge370, label %bb.e, !llvm.loop !26

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136
  %.084224 = phi i32 [ %.286, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136 ], [ %2, %bb.a ] ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.af = add i32 %i.ae, %.087223                 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !18
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ac, i32 noundef %i.af) #10, !inline_history !28
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.g

end_hunk_7
begin_hunk_8_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.ar = load ptr, ptr %0, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i64 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.090222, i32 noundef %i.ac) #10, !inline_history !29 ; 3 uses
  %i.av = and i64 %i.au, 4294967295
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.h
end_hunk_8
begin_hunk_9_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.k:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !18
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.090222, i32 noundef %i.ac) #10, !inline_history !28
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %_ZN6hermes2vm12_GLOBAL__N_15_swapEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit102

end_hunk_9
begin_hunk_10_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.bq = load ptr, ptr %0, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ac, i32 noundef %.087223) #10, !inline_history !29 ; 3 uses
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.m
end_hunk_10
begin_hunk_11_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.p:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit105
  %i.cf = load ptr, ptr %0, align 8, !tbaa !18
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ac, i32 noundef %.087223) #10, !inline_history !28
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %_ZN6hermes2vm12_GLOBAL__N_15_swapEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit107

end_hunk_11
begin_hunk_12_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.cp = load ptr, ptr %0, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.090222, i32 noundef %i.ac) #10, !inline_history !29 ; 3 uses
  %i.ct = and i64 %i.cs, 4294967295
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.r
end_hunk_12
begin_hunk_13_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.u:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit110
  %i.de = load ptr, ptr %0, align 8, !tbaa !18
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef i32 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.090222, i32 noundef %i.ac) #10, !inline_history !28
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %_ZN6hermes2vm12_GLOBAL__N_15_swapEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit112

end_hunk_13
begin_hunk_14_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.dp = load ptr, ptr %0, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.159.i, i32 noundef %i.ac) #10, !inline_history !30 ; 3 uses
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.x
end_hunk_14
begin_hunk_15_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.z:                                             ; preds = %bb.y, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i
  %i.ed = add i32 %.159.i, 1                      ; 3 uses
  %.not.i114 = icmp ugt i32 %i.ed, %.033.i
  br i1 %.not.i114, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %bb.y, %bb.z, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i, %bb.w
  %.1.lcssa.i = phi i32 [ %.0.i113, %bb.w ], [ %.159.i, %bb.y ], [ %i.ed, %bb.z ], [ %.159.i, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i ] ; 6 uses
end_hunk_15
begin_hunk_16_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.ee = load ptr, ptr %0, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ac, i32 noundef %.13463.i) #10, !inline_history !30 ; 3 uses
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.aa
end_hunk_16
begin_hunk_17_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.ac:                                            ; preds = %bb.ab, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit41.i
  %i.es = add i32 %.13463.i, -1                   ; 3 uses
  %.not36.i = icmp ugt i32 %.1.lcssa.i, %i.es
  br i1 %.not36.i, label %._crit_edge66.i, label %.lr.ph65.i, !llvm.loop !32

._crit_edge66.i:                                  ; preds = %bb.ab, %bb.ac, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit41.i, %._crit_edge.i
  %.134.lcssa.i = phi i32 [ %.033.i, %._crit_edge.i ], [ %.13463.i, %bb.ab ], [ %i.es, %bb.ac ], [ %.13463.i, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit41.i ] ; 8 uses
end_hunk_17
begin_hunk_18_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.ad:                                            ; preds = %._crit_edge66.i
  %i.et = load ptr, ptr %0, align 8, !tbaa !18
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.1.lcssa.i, i32 noundef %.134.lcssa.i) #10, !inline_history !33
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.ae

end_hunk_18
begin_hunk_19_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !3
  %i.fe = add nuw i32 %.1.lcssa.i, 1
  %i.ff = add i32 %.134.lcssa.i, -1
  br label %bb.w, !llvm.loop !34

bb.af:                                            ; preds = %._crit_edge66.i
  %.not38.i = icmp eq i32 %.134.lcssa.i, %i.ac
end_hunk_19
begin_hunk_20_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.fg = load ptr, ptr %0, align 8, !tbaa !18
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = tail call noundef i32 %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ac, i32 noundef %.134.lcssa.i) #10, !inline_history !33
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %_ZN6hermes2vm12_GLOBAL__N_15_swapEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit43.i

end_hunk_20
begin_hunk_21_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.fz = load ptr, ptr %0, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call i64 %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i, i32 noundef %i.fy) #10, !inline_history !20 ; 3 uses
  %i.gd = and i64 %i.gc, 4294967295
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.ak
end_hunk_21
begin_hunk_22_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.am:                                            ; preds = %bb.al, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i118
  %i.go = load ptr, ptr %0, align 8, !tbaa !18
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = tail call noundef i32 %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i, i32 noundef %i.fy) #10, !inline_history !21
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.an

end_hunk_22
begin_hunk_23_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  store i32 %i.gy, ptr %i.gu, align 4, !tbaa !3
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !3
  %.not27.i = icmp eq i32 %i.fy, %.087223
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i116, !llvm.loop !22

.critedge.i:                                      ; preds = %bb.al, %bb.an, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i118, %.preheader.i115
  %.024.i119 = add i32 %.02441.i, 1               ; 2 uses
  %.not.i120 = icmp eq i32 %.024.i119, %.sroa.6.0.i
  br i1 %.not.i120, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %.preheader.i115, !llvm.loop !23

_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit: ; preds = %.critedge.i, %bb.aj, %bb.ai
  %i.gz = icmp ugt i32 %i.fr, 6
end_hunk_23
begin_hunk_24_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.hd = load ptr, ptr %0, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = tail call i64 %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i128, i32 noundef %i.hc) #10, !inline_history !20 ; 3 uses
  %i.hh = and i64 %i.hg, 4294967295
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.ap
end_hunk_24
begin_hunk_25_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.ar:                                            ; preds = %bb.aq, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i130
  %i.hs = load ptr, ptr %0, align 8, !tbaa !18
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = tail call noundef i32 %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i128, i32 noundef %i.hc) #10, !inline_history !21
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.as

end_hunk_25
begin_hunk_26_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  store i32 %i.ic, ptr %i.hy, align 4, !tbaa !3
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !3
  %.not27.i135 = icmp eq i32 %i.hc, %i.ha
  br i1 %.not27.i135, label %.critedge.i131, label %.lr.ph.i127, !llvm.loop !22

.critedge.i131:                                   ; preds = %bb.aq, %bb.as, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i130, %.preheader.i124
  %.024.i132 = add i32 %.02441.i125, 1
  %.not.i133 = icmp eq i32 %.02441.i125, %.090222
  br i1 %.not.i133, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %.preheader.i124, !llvm.loop !23

bb.at:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_118quickSortPartitionEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit
  %i.id = icmp ugt i32 %i.fr, 6
end_hunk_26
begin_hunk_27_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.il = load ptr, ptr %0, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = tail call i64 %i.in(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i144, i32 noundef %i.ik) #10, !inline_history !20 ; 3 uses
  %i.ip = and i64 %i.io, 4294967295
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.aw
end_hunk_27
begin_hunk_28_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.ay:                                            ; preds = %bb.ax, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i146
  %i.ja = load ptr, ptr %0, align 8, !tbaa !18
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = tail call noundef i32 %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i144, i32 noundef %i.ik) #10, !inline_history !21
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.az

end_hunk_28
begin_hunk_29_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  store i32 %i.jk, ptr %i.jg, align 4, !tbaa !3
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !3
  %.not27.i151 = icmp eq i32 %i.ik, %i.ii
  br i1 %.not27.i151, label %.critedge.i147, label %.lr.ph.i143, !llvm.loop !22

.critedge.i147:                                   ; preds = %bb.ax, %bb.az, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i146, %.preheader.i140
  %.024.i148 = add i32 %.02441.i141, 1
  %.not.i149 = icmp eq i32 %.02441.i141, %.090222
  br i1 %.not.i149, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit152, label %.preheader.i140, !llvm.loop !23

_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit152: ; preds = %.critedge.i147, %bb.av, %bb.au
  %i.jl = icmp ugt i32 %i.fq, 6
end_hunk_29
begin_hunk_30_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  %i.jp = load ptr, ptr %0, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = tail call i64 %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i160, i32 noundef %i.jo) #10, !inline_history !20 ; 3 uses
  %i.jt = and i64 %i.js, 4294967295
  %i.ju = icmp eq i64 %i.jt, 0
  br i1 %i.ju, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.bc
end_hunk_30
begin_hunk_31_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
bb.be:                                            ; preds = %bb.bd, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i162
  %i.ke = load ptr, ptr %0, align 8, !tbaa !18
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = tail call noundef i32 %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i160, i32 noundef %i.jo) #10, !inline_history !21
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.bf

end_hunk_31
begin_hunk_32_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  store i32 %i.ko, ptr %i.kk, align 4, !tbaa !3
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !3
  %.not27.i167 = icmp eq i32 %i.jo, %.087223
  br i1 %.not27.i167, label %.critedge.i163, label %.lr.ph.i159, !llvm.loop !22

.critedge.i163:                                   ; preds = %bb.bd, %bb.bf, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i162, %.preheader.i156
  %.024.i164 = add i32 %.02441.i157, 1            ; 2 uses
  %.not.i165 = icmp eq i32 %.024.i164, %.sroa.6.0.i
  br i1 %.not.i165, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %.preheader.i156, !llvm.loop !23

_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136: ; preds = %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, %bb.ba
  %.292 = phi i32 [ %i.jm, %bb.ba ], [ %.090222, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit ] ; 2 uses
end_hunk_32
begin_hunk_33_@_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj:bb.a
  br i1 %i.kp, label %._crit_edge, label %.lr.ph

._ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.loopexit_crit_edge370: ; preds = %bb.f
  br label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, !llvm.loop !26

_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit: ; preds = %bb.ag, %bb.q, %bb.l, %bb.g, %bb.ai, %bb.au, %bb.u, %bb.p, %bb.k, %.lr.ph, %bb.ad, %.lr.ph.i, %.lr.ph65.i, %bb.am, %.lr.ph.i116, %bb.ay, %.lr.ph.i143, %.critedge.i131, %bb.ar, %.lr.ph.i127, %.critedge.i163, %bb.be, %.lr.ph.i159, %bb.c, %bb.e, %.lr.ph367, %.preheader.i, %._ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.loopexit_crit_edge370, %bb.ao, %bb.bb, %._crit_edge
  %.3 = phi i32 [ 0, %bb.ad ], [ 1, %bb.ao ], [ 1, %.critedge.i163 ], [ 0, %bb.ay ], [ 1, %bb.bb ], [ 0, %bb.am ], [ 0, %._ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.loopexit_crit_edge370 ], [ 0, %.lr.ph65.i ], [ 1, %._crit_edge ], [ 0, %bb.c ], [ 0, %.lr.ph367 ], [ 0, %bb.be ], [ 0, %bb.ar ], [ 1, %.critedge.i131 ], [ 0, %.lr.ph.i ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 0, %.lr.ph.i159 ], [ 0, %.lr.ph.i127 ], [ 0, %.lr.ph.i143 ], [ 0, %.lr.ph.i116 ], [ 0, %.lr.ph ], [ 0, %bb.k ], [ 0, %bb.p ], [ 0, %bb.u ], [ 0, %bb.au ], [ 0, %bb.ai ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %bb.q ], [ 0, %bb.ag ]
end_hunk_33
begin_hunk_34_@_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj:bb.a
bb.a:
  %i.a = sub i32 %4, %3
  %i.b = icmp ult i32 %i.a, 2
  br i1 %i.b, label %.thread44, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub i32 %4, %2
end_hunk_34
begin_hunk_35_@_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj:bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.i, i32 noundef %i.j) #10, !inline_history !29 ; 3 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.thread44, label %bb.e
end_hunk_35
begin_hunk_36_@_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj:bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.03152, i32 noundef %.033) #10, !inline_history !29 ; 3 uses
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.thread44, label %bb.i
end_hunk_36
begin_hunk_37_@_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj:bb.a
bb.l:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit37
  %i.ar = load ptr, ptr %0, align 8, !tbaa !18
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.03152, i32 noundef %.033) #10, !inline_history !28
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread44, label %bb.m

end_hunk_37
begin_hunk_38_@llvm.memset.p0.i64
!17 = distinct !{!17, !14, !16, !15}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = distinct !{null, null}
!21 = distinct !{null, null}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{null, null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{null, null}
!34 = distinct !{!34, !14}
end_hunk_38
