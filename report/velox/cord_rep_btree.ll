inline.NumInlined: 756
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4absl12lts_2024011613cord_internal12CordRepBtree7SubTreeEmm:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  store i8 1, ptr %i.dd, align 1, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %.sroa.0115.0160, ptr %i.de, align 8, !tbaa !18
  %.081 = add i32 %.081161, 1                     ; 2 uses
  %exitcond188.not = icmp eq i32 %.081, %.177
  br i1 %exitcond188.not, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111, label %.lr.ph162, !llvm.loop !111

bb.i:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree11IndexBeforeENS2_8PositionEm.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.dg = atomicrmw add ptr %i.df, i32 2 monotonic, align 4 ; 0 uses
  %i.dh = icmp eq i64 %.06.lcssa.i.pn.lcssa, 0
  br i1 %i.dh, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = sub i64 %i.bf, %.06.lcssa.i.pn.lcssa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !28
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.k, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i100

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !85
  %i.do = add i64 %i.dn, %.06.lcssa.i.pn.lcssa    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !87, !nonnull !29, !noundef !29 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = atomicrmw add ptr %i.dr, i32 2 monotonic, align 4 ; 0 uses
  %i.dt = atomicrmw sub ptr %i.df, i32 2 acq_rel, align 4
  %.not.i.i.i104 = icmp eq i32 %i.dt, 2
  br i1 %.not.i.i.i104, label %bb.l, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i100, !prof !31

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.be)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i100

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i100: ; preds = %bb.l, %bb.k, %bb.j
  %.015.i.i101 = phi i64 [ %.06.lcssa.i.pn.lcssa, %bb.j ], [ %i.do, %bb.k ], [ %i.do, %bb.l ]
  %.0.i.i102 = phi ptr [ %i.be, %bb.j ], [ %i.dq, %bb.k ], [ %i.dq, %bb.l ]
  %i.du = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.du, i8 0, i64 16, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 2, ptr %i.dv, align 4, !tbaa !27
  store i64 %i.di, ptr %i.du, align 8, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i8 1, ptr %i.dw, align 4, !tbaa !28
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.015.i.i101, ptr %i.dx, align 8, !tbaa !85
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %.0.i.i102, ptr %i.dy, align 8, !tbaa !87
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit: ; preds = %bb.i, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i100
  %.0.i103 = phi ptr [ %i.du, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i100 ], [ %i.be, %bb.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.ea = atomicrmw add ptr %i.dz, i32 2 monotonic, align 4 ; 0 uses
  %i.eb = load i64, ptr %i.bp, align 8, !tbaa !9
  %i.ec = icmp eq i64 %.09.lcssa.i, %i.eb
  br i1 %i.ec, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit
  %i.ed = icmp eq i64 %.09.lcssa.i, 0
  br i1 %i.ed, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ee = atomicrmw sub ptr %i.dz, i32 2 acq_rel, align 4
  %.not.i.i110 = icmp eq i32 %i.ee, 2
  br i1 %.not.i.i110, label %bb.o, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.bp)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111

bb.p:                                             ; preds = %bb.m
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !28
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %bb.q, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !85 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !87, !nonnull !29, !noundef !29 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = atomicrmw add ptr %i.em, i32 2 monotonic, align 4 ; 0 uses
  %i.eo = atomicrmw sub ptr %i.dz, i32 2 acq_rel, align 4
  %.not.i.i.i109 = icmp eq i32 %i.eo, 2
  br i1 %.not.i.i.i109, label %bb.r, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105, !prof !31

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.bp)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105: ; preds = %bb.r, %bb.q, %bb.p
  %.015.i.i106 = phi i64 [ 0, %bb.p ], [ %i.ej, %bb.q ], [ %i.ej, %bb.r ]
  %.0.i.i107 = phi ptr [ %i.bp, %bb.p ], [ %i.el, %bb.q ], [ %i.el, %bb.r ]
  %i.ep = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ep, i8 0, i64 16, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 2, ptr %i.eq, align 4, !tbaa !27
  store i64 %.09.lcssa.i, ptr %i.ep, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i8 1, ptr %i.er, align 4, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %.015.i.i106, ptr %i.es, align 8, !tbaa !85
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %.0.i.i107, ptr %i.et, align 8, !tbaa !87
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit99, %.preheader, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105, %bb.o, %bb.n, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit
  %.sroa.0115.1 = phi ptr [ null, %bb.o ], [ %i.ep, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105 ], [ %i.bp, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit ], [ null, %bb.n ], [ %i.bu, %.preheader ], [ %i.cq, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit99 ]
  %.sroa.0120.1 = phi ptr [ %.0.i103, %bb.o ], [ %.0.i103, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105 ], [ %.0.i103, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit ], [ %.0.i103, %bb.n ], [ %.sroa.0120.0.lcssa, %.preheader ], [ %.sroa.0120.0.lcssa, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit99 ]
  %.2 = phi i32 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i105 ], [ 0, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEm.exit ], [ 0, %bb.n ], [ %.177, %.preheader ], [ %.177, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit99 ]
  %i.eu = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 2, ptr %i.ev, align 4, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i8 3, ptr %i.ew, align 4, !tbaa !28
  %i.ex = trunc i32 %.2 to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 13
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 14
  store i8 0, ptr %i.ez, align 2, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 15 ; 2 uses
  store i8 0, ptr %i.fa, align 1, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  store ptr %.sroa.0120.1, ptr %i.fb, align 8, !tbaa !18
  %.idx = shl i64 %.sroa.043.0.lcssa, 3
  %.idx171 = shl nuw nsw i64 %.0.lcssa.i95, 3     ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx171
  %i.fd = add i64 %.idx, 8                        ; 2 uses
  %.not84165 = icmp eq i64 %i.fd, %.idx171
  br i1 %.not84165, label %._crit_edge169, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111
  %.075164 = getelementptr i8, ptr %i.bg, i64 %i.fd
  br label %.lr.ph168

._crit_edge169:                                   ; preds = %.lr.ph168, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111
  %.078.lcssa = phi i64 [ 1, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit111 ], [ %i.fk, %.lr.ph168 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.078.lcssa
  store ptr %.sroa.0115.1, ptr %i.fe, align 8, !tbaa !18
  %i.ff = trunc i64 %.078.lcssa to i8
  %i.fg = add i8 %i.ff, 1
  store i8 %i.fg, ptr %i.fa, align 1, !tbaa !8
  store i64 %2, ptr %i.eu, align 8, !tbaa !9
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %.lr.ph168
  %.075167 = phi ptr [ %.075, %.lr.ph168 ], [ %.075164, %.lr.ph168.preheader ] ; 2 uses
  %.078166 = phi i64 [ %i.fk, %.lr.ph168 ], [ 1, %.lr.ph168.preheader ] ; 2 uses
  %i.fh = load ptr, ptr %.075167, align 8, !tbaa !18, !nonnull !29, !noundef !29 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = atomicrmw add ptr %i.fi, i32 2 monotonic, align 4 ; 0 uses
  %i.fk = add nuw nsw i64 %.078166, 1             ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.078166
  store ptr %i.fh, ptr %i.fl, align 8, !tbaa !18
  %.075 = getelementptr i8, ptr %.075167, i64 8   ; 2 uses
  %.not84 = icmp eq ptr %.075, %i.fc
  br i1 %.not84, label %._crit_edge169, label %.lr.ph168

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i, %.lr.ph._crit_edge, %._crit_edge169, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.eu, %._crit_edge169 ], [ %i.aj, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i ], [ %.079146.lcssa, %.lr.ph._crit_edge ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8
  %.not = icmp ult i8 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_(ptr noundef nonnull %1, ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"struct.absl::lts_20240116::cord_internal::(anonymous namespace)::StackOperations.0", align 8 ; 7 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8     ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.t, %bb.c ] ; 4 uses
  %i.l = getelementptr i8, ptr %.01416.i, i64 8   ; 2 uses
  %i.m = load atomic i32, ptr %i.l acquire, align 4
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %.critedge.loopexit.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i, i64 15
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.l, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.b, !llvm.loop !34

.critedge.thread.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp eq i32 %i.v, 2
  %i.x = zext i1 %i.w to i32
  %i.y = add nuw nsw i32 %i.i, %i.x               ; 2 uses
  store i32 %i.y, ptr %2, align 8, !tbaa !35
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.b
  %i.z = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.014.lcssa.i = phi ptr [ %0, %bb.a ], [ %.01416.i, %.critedge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.z, %.critedge.loopexit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.ab = load atomic i32, ptr %i.aa acquire, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  %i.ad = zext i1 %i.ac to i32
  %i.ae = add nuw nsw i32 %.0.lcssa.i, %i.ad      ; 3 uses
  store i32 %i.ae, ptr %2, align 8, !tbaa !35
  %i.af = icmp slt i32 %.0.lcssa.i, %i.i
  br i1 %i.af, label %.prol.preheader, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.prol.preheader:                                  ; preds = %.critedge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = zext i32 %.0.lcssa.i to i64
  %sext = sext i32 %i.i to i64
  br label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.lr.ph24.i.new, %.prol.preheader
  %indvars.iv27.i = phi i64 [ %i.ah, %.prol.preheader ], [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ] ; 2 uses
  %.11522.i = phi ptr [ %.014.lcssa.i, %.prol.preheader ], [ %i.ao, %.lr.ph24.i.new ] ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %.11522.i, i64 15
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr i8, ptr %.11522.i, i64 8
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next28.i.3, %sext
  br i1 %3, label %.lr.ph24.i.new, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, !llvm.loop !38

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit: ; preds = %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %.val = phi i32 [ %i.ae, %.critedge.i ], [ %i.y, %.critedge.thread.i ], [ %i.ae, %.lr.ph24.i.new ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.t, %.critedge.thread.i ], [ %i.ao, %.lr.ph24.i.new ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8   ; 3 uses
  %i.ax = zext i8 %i.aw to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !8   ; 3 uses
  %i.ba = zext i8 %i.az to i64                    ; 3 uses
  %i.bb = add nuw nsw i64 %i.ar, %i.ax
  %i.bc = add nuw nsw i64 %i.au, %i.ba
  %i.bd = sub nsw i64 %i.bb, %i.bc
  %i.be = icmp ult i64 %i.bd, 7
  br i1 %i.be, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %i.bf = icmp slt i32 %i.i, %.val
  br i1 %i.bf, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %.115.lcssa.i, align 8, !tbaa !9
  %i.bh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 2, ptr %i.bi, align 4, !tbaa !27
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.bj, ptr noundef nonnull align 4 dereferenceable(52) %i.bk, i64 52, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.bm = load i8, ptr %i.as, align 2, !tbaa !8   ; 2 uses
  %i.bn = load i8, ptr %i.ap, align 1, !tbaa !8   ; 2 uses
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bo
  %.not10.i.i = icmp eq i8 %i.bm, %i.bn
  br i1 %.not10.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.bq = zext i8 %i.bm to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bq
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.br, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bs = load ptr, ptr %.011.i.i, align 8, !tbaa !18, !nonnull !29, !noundef !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = atomicrmw add ptr %i.bt, i32 2 monotonic, align 4 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.bp
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, label %.lr.ph.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i8, ptr %i.ay, align 2, !tbaa !8   ; 2 uses
  %.pre68 = load i8, ptr %i.av, align 1, !tbaa !8 ; 2 uses
  %.pre69 = zext i8 %.pre to i64
  %.pre70 = zext i8 %.pre68 to i64
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, %bb.d, %bb.e
  %.pre-phi71 = phi i64 [ %.pre70, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ax, %bb.d ], [ %i.ax, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre69, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ba, %bb.d ], [ %i.ba, %bb.e ] ; 4 uses
  %i.bw = phi i8 [ %.pre68, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.aw, %bb.d ], [ %i.aw, %bb.e ]
  %i.bx = phi i8 [ %.pre, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.az, %bb.d ], [ %i.az, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.bh, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %.115.lcssa.i, %bb.d ], [ %i.bh, %bb.e ] ; 11 uses
  %.sroa.3.0.i = phi i32 [ 1, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ 0, %bb.d ], [ 1, %bb.e ] ; 3 uses
  %.sroa.0.0.i83 = ptrtoaddr ptr %.sroa.0.0.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.pre-phi ; 7 uses
  %i.ca = sub nsw i64 %.pre-phi71, %.pre-phi
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 14 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8   ; 3 uses
  %i.cd = zext i8 %i.cc to i64                    ; 3 uses
  %.not.i.i46 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i46, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %bb.f, !prof !39

bb.f:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8   ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = sub nsw i64 %i.cg, %i.cd                ; 6 uses
  store i8 0, ptr %i.cb, align 1, !tbaa !8
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !8
  %i.cj = icmp ult i64 %i.ch, 7
  tail call void @llvm.assume(i1 %i.cj)
  %.not12.i.i = icmp eq i8 %i.cf, %i.cc
  br i1 %.not12.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ch, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i47
  %n.vec = and i64 %i.ch, 4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %i.cd
  %wide.load = load <4 x ptr>, ptr %i.cm, align 8, !tbaa !18
  store <4 x ptr> %wide.load, ptr %i.cl, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i47, %middle.block
  %.011.i.i48.ph = phi i64 [ 0, %.lr.ph.i.i47 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i48 = phi i64 [ %i.cr, %scalar.ph ], [ %.011.i.i48.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.ck, i64 %.011.i.i48 ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.cd
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !18
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !18
  %i.cr = add nuw nsw i64 %.011.i.i48, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cr, %i.ch
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %scalar.ph, !llvm.loop !113

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i: ; preds = %scalar.ph, %middle.block, %bb.f, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ca, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i
  %.not11.i = icmp eq i8 %i.bw, %i.bx
  br i1 %.not11.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i
  %i.cv = zext i8 %i.ct to i64                    ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 3 uses
  %i.cx = shl nuw nsw i64 %.pre-phi71, 3
  %i.cy = add nsw i64 %i.cx, -8
  %i.cz = shl nuw nsw i64 %.pre-phi, 3
  %i.da = sub nsw i64 %i.cy, %i.cz                ; 3 uses
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 5 uses
  %min.iters.check85 = icmp ult i64 %i.da, 24
  br i1 %min.iters.check85, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dd = shl nuw nsw i64 %i.cv, 3
  %i.de = add i64 %i.dd, %.sroa.0.0.i83
  %i.df = shl nuw nsw i64 %.pre-phi, 3
  %i.dg = add i64 %i.df, %i.a
  %i.dh = sub i64 %i.dg, %i.de
  %diff.check = icmp ugt i64 %i.dh, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check86 = icmp ult i64 %i.da, 120
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph87

vector.ph87:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf88 = and i64 %i.dc, 12
  %n.vec89 = and i64 %i.dc, 4611686018427387888   ; 5 uses
  %i.di = add nuw nsw i64 %n.vec89, %i.cv         ; 2 uses
  %i.dj = shl i64 %n.vec89, 3
  %i.dk = getelementptr i8, ptr %i.bz, i64 %i.dj
  %invariant.gep = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph87
  %index91 = phi i64 [ 0, %vector.ph87 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %i.dl = shl i64 %index91, 3
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.dl ; 4 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 32
  %i.dn = getelementptr i8, ptr %next.gep, i64 64
  %i.do = getelementptr i8, ptr %next.gep, i64 96
  %wide.load92 = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !18
  %wide.load93 = load <4 x ptr>, ptr %i.dm, align 8, !tbaa !18
  %wide.load94 = load <4 x ptr>, ptr %i.dn, align 8, !tbaa !18
  %wide.load95 = load <4 x ptr>, ptr %i.do, align 8, !tbaa !18
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index91 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x ptr> %wide.load92, ptr %gep, align 8, !tbaa !18
  store <4 x ptr> %wide.load93, ptr %i.dp, align 8, !tbaa !18
  store <4 x ptr> %wide.load94, ptr %i.dq, align 8, !tbaa !18
  store <4 x ptr> %wide.load95, ptr %i.dr, align 8, !tbaa !18
  %index.next96 = add nuw i64 %index91, 16        ; 2 uses
  %i.ds = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.ds, label %middle.block97, label %vector.body90, !llvm.loop !114

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.dc, %n.vec89
  br i1 %cmp.n98, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block97
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf88, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec89, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.dc, 4611686018427387900  ; 4 uses
  %i.dt = add nuw nsw i64 %n.vec102, %i.cv        ; 2 uses
  %i.du = shl i64 %n.vec102, 3
  %i.dv = getelementptr i8, ptr %i.bz, i64 %i.du
  %invariant.gep121 = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %i.dw = shl i64 %index103, 3
  %next.gep104 = getelementptr i8, ptr %i.bz, i64 %i.dw
  %wide.load105 = load <4 x ptr>, ptr %next.gep104, align 8, !tbaa !18
  %gep122 = getelementptr [8 x i8], ptr %invariant.gep121, i64 %index103
  store <4 x ptr> %wide.load105, ptr %gep122, align 8, !tbaa !18
  %index.next106 = add nuw i64 %index103, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.dc, %n.vec102
  br i1 %cmp.n107, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.ph = phi i64 [ %i.cv, %iter.check ], [ %i.cv, %vector.memcheck ], [ %i.di, %vec.epilog.iter.check ], [ %i.dt, %vec.epilog.middle.block ]
  %.0912.i.ph = phi ptr [ %i.bz, %iter.check ], [ %i.bz, %vector.memcheck ], [ %i.dk, %vec.epilog.iter.check ], [ %i.dv, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit.i:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block97
  %.lcssa = phi i64 [ %i.dt, %vec.epilog.middle.block ], [ %i.di, %middle.block97 ], [ %i.ea, %vec.epilog.scalar.ph ]
  %i.dy = trunc i64 %.lcssa to i8
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013.i = phi i64 [ %i.ea, %vec.epilog.scalar.ph ], [ %.013.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0912.i = phi ptr [ %i.ec, %vec.epilog.scalar.ph ], [ %.0912.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dz = load ptr, ptr %.0912.i, align 8, !tbaa !18
  %i.ea = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.013.i
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.cu
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph, !llvm.loop !117

_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i, %._crit_edge.loopexit.i
  %.0.lcssa.i50 = phi i8 [ %i.ct, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AlignBeginEv.exit.i ], [ %i.dy, %._crit_edge.loopexit.i ]
  store i8 %.0.lcssa.i50, ptr %i.cs, align 1, !tbaa !8
  %i.ed = load i64, ptr %1, align 8, !tbaa !9
  %i.ee = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !9
  %i.ef = add i64 %i.ee, %i.ed
  store i64 %i.ef, ptr %.sroa.0.0.i, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eh = load atomic i32, ptr %i.eg acquire, align 8
  %i.ei = icmp eq i32 %i.eh, 2
  br i1 %i.ei, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %bb.g

_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #22
  br label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  %i.ej = load i8, ptr %i.ay, align 2, !tbaa !8   ; 2 uses
  %i.ek = load i8, ptr %i.av, align 1, !tbaa !8   ; 2 uses
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.el
  %.not61 = icmp eq i8 %i.ej, %i.ek
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.en = zext i8 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.en
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.ep = atomicrmw sub ptr %i.eg, i32 2 acq_rel, align 4
  %.not.i53 = icmp eq i32 %i.ep, 2
  br i1 %.not.i53, label %bb.h, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit, !prof !31

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04162 = phi ptr [ %i.et, %.lr.ph ], [ %i.eo, %.lr.ph.preheader ] ; 2 uses
  %i.eq = load ptr, ptr %.04162, align 8, !tbaa !18, !nonnull !29, !noundef !29
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = atomicrmw add ptr %i.er, i32 2 monotonic, align 4 ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.04162, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.et, %i.em
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.h, %._crit_edge, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit
  %.sroa.016.0 = phi ptr [ %.sroa.0.0.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ %1, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ], [ %.sroa.0.0.i, %._crit_edge ], [ %.sroa.0.0.i, %bb.h ] ; 6 uses
  %.sroa.8.0 = phi i32 [ %.sroa.3.0.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ 2, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ], [ %.sroa.3.0.i, %._crit_edge ], [ %.sroa.3.0.i, %bb.h ] ; 2 uses
  %.not43 = icmp eq i8 %i.d, %i.g
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit
  %i.eu = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %0, i32 noundef %i.i, i64 noundef %i.b, ptr nonnull %.sroa.016.0, i32 %.sroa.8.0)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit
  switch i32 %.sroa.8.0, label %default.unreachable [
    i32 2, label %bb.k
    i32 1, label %bb.n
    i32 0, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.ev = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 2, ptr %i.ew, align 4, !tbaa !27
  %i.ex = load i64, ptr %0, align 8, !tbaa !9
  %i.ey = load i64, ptr %.sroa.016.0, align 8, !tbaa !9
  %i.ez = add i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.ev, align 8, !tbaa !9
  %i.fa = load i8, ptr %i.c, align 1, !tbaa !8
  %i.fb = add i8 %i.fa, 1                         ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i8 3, ptr %i.fc, align 4, !tbaa !28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 13
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 14
  store i8 0, ptr %i.fe, align 2, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 15
  store i8 2, ptr %i.ff, align 1, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %0, ptr %i.fg, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store ptr %.sroa.016.0, ptr %i.fh, align 8, !tbaa !18
  %i.fi = icmp ugt i8 %i.fb, 11
  br i1 %i.fi, label %bb.l, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.fj = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef nonnull %i.ev) ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 13
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.fm = icmp ugt i8 %i.fl, 11
  br i1 %i.fm, label %bb.m, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 71), i32 noundef 280, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44)
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = atomicrmw sub ptr %i.fn, i32 2 acq_rel, align 4
  %.not.i.i54 = icmp eq i32 %i.fo, 2
  br i1 %.not.i.i54, label %bb.o, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit

default.unreachable:                              ; preds = %bb.j
  unreachable

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit: ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i
  %.0 = phi ptr [ %i.eu, %bb.i ], [ %i.ev, %bb.k ], [ %i.fj, %bb.l ], [ %.sroa.016.0, %bb.j ], [ %.sroa.016.0, %bb.n ], [ %.sroa.016.0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"struct.absl::lts_20240116::cord_internal::(anonymous namespace)::StackOperations", align 8 ; 7 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8     ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.u, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.m = load atomic i32, ptr %i.l acquire, align 4
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %.critedge.loopexit.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i, i64 14
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.b, !llvm.loop !20

.critedge.thread.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %i.x = icmp eq i32 %i.w, 2
  %i.y = zext i1 %i.x to i32
  %i.z = add nuw nsw i32 %i.i, %i.y               ; 2 uses
  store i32 %i.z, ptr %2, align 8, !tbaa !22
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.014.lcssa.i = phi ptr [ %0, %bb.a ], [ %.01416.i, %.critedge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.aa, %.critedge.loopexit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.ac = load atomic i32, ptr %i.ab acquire, align 4
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nuw nsw i32 %.0.lcssa.i, %i.ae      ; 3 uses
  store i32 %i.af, ptr %2, align 8, !tbaa !22
  %i.ag = icmp slt i32 %.0.lcssa.i, %i.i
  br i1 %i.ag, label %.prol.preheader, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.prol.preheader:                                  ; preds = %.critedge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = zext i32 %.0.lcssa.i to i64
  %sext = sext i32 %i.i to i64
  br label %.lr.ph24.i.new

.lr.ph24.i.new:                                   ; preds = %.lr.ph24.i.new, %.prol.preheader
  %indvars.iv27.i = phi i64 [ %i.ai, %.prol.preheader ], [ %indvars.iv.next28.i.3, %.lr.ph24.i.new ] ; 2 uses
  %.11522.i = phi ptr [ %.014.lcssa.i, %.prol.preheader ], [ %i.ap, %.lr.ph24.i.new ] ; 3 uses
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.11522.i, i64 14
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.11522.i, i64 16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18 ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next28.i.3, %sext
  br i1 %3, label %.lr.ph24.i.new, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, !llvm.loop !26

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit: ; preds = %.lr.ph24.i.new, %.critedge.thread.i, %.critedge.i
  %.val = phi i32 [ %i.af, %.critedge.i ], [ %i.z, %.critedge.thread.i ], [ %i.af, %.lr.ph24.i.new ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.u, %.critedge.thread.i ], [ %i.ap, %.lr.ph24.i.new ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8   ; 3 uses
  %i.ay = zext i8 %i.ax to i64                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !8   ; 3 uses
  %i.bb = zext i8 %i.ba to i64                    ; 3 uses
  %i.bc = add nuw nsw i64 %i.as, %i.ay
  %i.bd = add nuw nsw i64 %i.av, %i.bb
  %i.be = sub nsw i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 7
  br i1 %i.bf, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %i.bg = icmp slt i32 %i.i, %.val
  br i1 %i.bg, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %.115.lcssa.i, align 8, !tbaa !9
  %i.bi = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 2, ptr %i.bj, align 4, !tbaa !27
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.bk, ptr noundef nonnull align 4 dereferenceable(52) %i.bl, i64 52, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.bn = load i8, ptr %i.at, align 2, !tbaa !8   ; 2 uses
  %i.bo = load i8, ptr %i.aq, align 1, !tbaa !8   ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %.not10.i.i = icmp eq i8 %i.bn, %i.bo
  br i1 %.not10.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.br = zext i8 %i.bn to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.br
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.bs, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bt = load ptr, ptr %.011.i.i, align 8, !tbaa !18, !nonnull !29, !noundef !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i32 2 monotonic, align 4 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.bq
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, label %.lr.ph.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i8, ptr %i.az, align 2, !tbaa !8   ; 2 uses
  %.pre65 = load i8, ptr %i.aw, align 1, !tbaa !8 ; 2 uses
  %.pre66 = zext i8 %.pre to i64
  %.pre67 = zext i8 %.pre65 to i64
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, %bb.d, %bb.e
  %.pre-phi68 = phi i64 [ %.pre67, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ay, %bb.d ], [ %i.ay, %bb.e ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre66, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.bb, %bb.d ], [ %i.bb, %bb.e ] ; 3 uses
  %i.bx = phi i8 [ %.pre65, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ax, %bb.d ], [ %i.ax, %bb.e ]
  %i.by = phi i8 [ %.pre, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ba, %bb.d ], [ %i.ba, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.bi, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %.115.lcssa.i, %bb.d ], [ %i.bi, %bb.e ] ; 10 uses
  %.sroa.3.0.i = phi i32 [ 1, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ 0, %bb.d ], [ 1, %bb.e ] ; 3 uses
  %.sroa.0.0.i78 = ptrtoaddr ptr %.sroa.0.0.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.pre-phi ; 7 uses
  %i.cb = sub nsw i64 %.pre-phi68, %.pre-phi      ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8   ; 2 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = sub nsw i64 6, %i.ce                    ; 2 uses
  %.not.i.i46 = icmp eq i8 %i.cd, 6
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 14 ; 2 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !8 ; 2 uses
  br i1 %.not.i.i46, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cg = zext i8 %.pre.i to i64
  %i.ch = add nsw i64 %i.cf, %i.cg                ; 3 uses
  %i.ci = trunc i64 %i.ch to i8                   ; 2 uses
  store i8 6, ptr %i.cc, align 1, !tbaa !8
  %.not1415.i.i = icmp ugt i64 %i.ch, 5
  br i1 %.not1415.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit.i, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i47
  %.016.i.i = phi i64 [ 5, %.lr.ph.i.i47 ], [ %.0.i.i, %bb.g ] ; 3 uses
  %i.ck = sub i64 %.016.i.i, %i.cf
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.016.i.i
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !18
  %.0.i.i = add nsw i64 %.016.i.i, -1             ; 2 uses
  %.not14.i.i = icmp ult i64 %.0.i.i, %i.ch
  br i1 %.not14.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit.i, label %bb.g, !llvm.loop !30

_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit.i: ; preds = %bb.g, %bb.f, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.co = phi i8 [ %.pre.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10ToOpResultEb.exit ], [ %i.ci, %bb.f ], [ %i.ci, %bb.g ]
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %i.cq = sub nsw i64 %i.cp, %i.cb                ; 7 uses
  %i.cr = trunc i64 %i.cq to i8
  store i8 %i.cr, ptr %.phi.trans.insert.i, align 1, !tbaa !8
  %.idx.i = shl nuw nsw i64 %i.cb, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i
  %.not12.i = icmp eq i8 %i.bx, %i.by
  br i1 %.not12.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 3 uses
  %i.cu = shl nuw nsw i64 %.pre-phi68, 3
  %i.cv = add nsw i64 %i.cu, -8
  %i.cw = shl nuw nsw i64 %.pre-phi, 3
  %i.cx = sub nsw i64 %i.cv, %i.cw                ; 3 uses
  %i.cy = lshr exact i64 %i.cx, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cx, 24
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.da = shl nuw nsw i64 %i.cp, 3
  %i.db = add i64 %i.da, %.sroa.0.0.i78
  %i.dc = shl nuw nsw i64 %.pre-phi68, 3
  %i.dd = add i64 %i.dc, %i.a
  %i.de = sub i64 %i.dd, %i.db
  %diff.check = icmp ugt i64 %i.de, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check79 = icmp ult i64 %i.cx, 120
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cz, 12
  %n.vec = and i64 %i.cz, 4611686018427387888     ; 5 uses
  %i.df = add nsw i64 %i.cq, %n.vec
  %i.dg = shl i64 %n.vec, 3
  %i.dh = getelementptr i8, ptr %i.ca, i64 %i.dg
  %i.di = getelementptr [8 x i8], ptr %i.ct, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.dj ; 4 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 32
  %i.dl = getelementptr i8, ptr %next.gep, i64 64
  %i.dm = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !18
  %wide.load80 = load <4 x ptr>, ptr %i.dk, align 8, !tbaa !18
  %wide.load81 = load <4 x ptr>, ptr %i.dl, align 8, !tbaa !18
  %wide.load82 = load <4 x ptr>, ptr %i.dm, align 8, !tbaa !18
  %i.dn = getelementptr [8 x i8], ptr %i.di, i64 %index ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  store <4 x ptr> %wide.load, ptr %i.dn, align 8, !tbaa !18
  store <4 x ptr> %wide.load80, ptr %i.do, align 8, !tbaa !18
  store <4 x ptr> %wide.load81, ptr %i.dp, align 8, !tbaa !18
  store <4 x ptr> %wide.load82, ptr %i.dq, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.cz, 4611686018427387900   ; 4 uses
  %i.ds = add nsw i64 %i.cq, %n.vec85
  %i.dt = shl i64 %n.vec85, 3
  %i.du = getelementptr i8, ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr [8 x i8], ptr %i.ct, i64 %i.cq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 3 uses
  %i.dw = shl i64 %index86, 3
  %next.gep87 = getelementptr i8, ptr %i.ca, i64 %i.dw
  %wide.load88 = load <4 x ptr>, ptr %next.gep87, align 8, !tbaa !18
  %i.dx = getelementptr [8 x i8], ptr %i.dv, i64 %index86
  store <4 x ptr> %wide.load88, ptr %i.dx, align 8, !tbaa !18
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.dy = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.dy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.cz, %n.vec85
  br i1 %cmp.n90, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.ph = phi i64 [ %i.cq, %iter.check ], [ %i.cq, %vector.memcheck ], [ %i.df, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  %.0913.i.ph = phi ptr [ %i.ca, %iter.check ], [ %i.ca, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.du, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.014.i = phi i64 [ %i.ea, %vec.epilog.scalar.ph ], [ %.014.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0913.i = phi ptr [ %i.ec, %vec.epilog.scalar.ph ], [ %.0913.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dz = load ptr, ptr %.0913.i, align 8, !tbaa !18
  %i.ea = add nsw i64 %.014.i, 1
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.014.i
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0913.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ec, %i.cs
  br i1 %.not.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !120

_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree8AlignEndEv.exit.i
  %i.ed = load i64, ptr %1, align 8, !tbaa !9
  %i.ee = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !9
  %i.ef = add i64 %i.ee, %i.ed
  store i64 %i.ef, ptr %.sroa.0.0.i, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eh = load atomic i32, ptr %i.eg acquire, align 8
  %i.ei = icmp eq i32 %i.eh, 2
  br i1 %i.ei, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %bb.h

_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #22
  br label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  %i.ej = load i8, ptr %i.az, align 2, !tbaa !8   ; 2 uses
  %i.ek = load i8, ptr %i.aw, align 1, !tbaa !8   ; 2 uses
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.el
  %.not58 = icmp eq i8 %i.ej, %i.ek
  br i1 %.not58, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.en = zext i8 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.en
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.ep = atomicrmw sub ptr %i.eg, i32 2 acq_rel, align 4
  %.not.i51 = icmp eq i32 %i.ep, 2
  br i1 %.not.i51, label %bb.i, label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit, !prof !31

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04159 = phi ptr [ %i.et, %.lr.ph ], [ %i.eo, %.lr.ph.preheader ] ; 2 uses
  %i.eq = load ptr, ptr %.04159, align 8, !tbaa !18, !nonnull !29, !noundef !29
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = atomicrmw add ptr %i.er, i32 2 monotonic, align 4 ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.04159, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.et, %i.em
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.i, %._crit_edge, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit
  %.sroa.016.0 = phi ptr [ %.sroa.0.0.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ %1, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ], [ %.sroa.0.0.i, %._crit_edge ], [ %.sroa.0.0.i, %bb.i ] ; 7 uses
  %.sroa.8.0 = phi i32 [ %.sroa.3.0.i, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ 2, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ], [ %.sroa.3.0.i, %._crit_edge ], [ %.sroa.3.0.i, %bb.i ] ; 2 uses
  %.not43 = icmp eq i8 %i.d, %i.g
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit
  %i.eu = call fastcc noundef ptr @_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %0, i32 noundef %i.i, i64 noundef %i.b, ptr nonnull %.sroa.016.0, i32 %.sroa.8.0)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal7CordRep5UnrefEPS2_.exit
  switch i32 %.sroa.8.0, label %default.unreachable [
    i32 2, label %bb.l
    i32 1, label %bb.o
    i32 0, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.ev = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 2, ptr %i.ew, align 4, !tbaa !27
  %i.ex = load i64, ptr %.sroa.016.0, align 8, !tbaa !9
  %i.ey = load i64, ptr %0, align 8, !tbaa !9
  %i.ez = add i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.ev, align 8, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 13
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !8
  %i.fc = add i8 %i.fb, 1                         ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i8 3, ptr %i.fd, align 4, !tbaa !28
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 13
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 14
  store i8 0, ptr %i.ff, align 2, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 15
  store i8 2, ptr %i.fg, align 1, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %.sroa.016.0, ptr %i.fh, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store ptr %0, ptr %i.fi, align 8, !tbaa !18
  %i.fj = icmp ugt i8 %i.fc, 11
  br i1 %i.fj, label %bb.m, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !31

bb.m:                                             ; preds = %bb.l
  %i.fk = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef nonnull %i.ev) ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 13
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !8
  %i.fn = icmp ugt i8 %i.fm, 11
  br i1 %i.fn, label %bb.n, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !31

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 71), i32 noundef 280, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44)
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = atomicrmw sub ptr %i.fo, i32 2 acq_rel, align 4
  %.not.i.i52 = icmp eq i32 %i.fp, 2
  br i1 %.not.i.i52, label %bb.p, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !31

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit

default.unreachable:                              ; preds = %bb.k
  unreachable

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j
  %.0 = phi ptr [ %i.eu, %bb.j ], [ %i.ev, %bb.l ], [ %i.fk, %bb.m ], [ %.sroa.016.0, %bb.k ], [ %.sroa.016.0, %bb.o ], [ %.sroa.016.0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2024011613cord_internal12CordRepBtree6IsFlatEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.h = load i8, ptr %i.g, align 2, !tbaa !8
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = load i8, ptr %i.p, align 4, !tbaa !28    ; 2 uses
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i8 [ %.pre.i.i, %bb.e ], [ %i.q, %bb.d ]
  %.010.i.i = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ]
  %.0.i.i = phi ptr [ %i.v, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.x = icmp ugt i8 %i.w, 5
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 13
  br label %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree4DataEm.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88
  br label %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree4DataEm.exit

_ZNK4absl12lts_2024011613cord_internal12CordRepBtree4DataEm.exit: ; preds = %bb.g, %bb.h
  %.pn.i.i = phi ptr [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.010.i.i
  store i64 %i.o, ptr %1, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.3.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !122
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree4DataEm.exit
  %.0 = phi i1 [ true, %bb.c ], [ true, %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree4DataEm.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2024011613cord_internal12CordRepBtree6IsFlatEmmPSt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.thread, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  %i.d = zext i8 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023 = phi ptr [ %0, %bb.b ], [ %i.s, %bb.d ]  ; 2 uses
  %.021 = phi i32 [ %i.d, %bb.b ], [ %i.v, %bb.d ] ; 2 uses
  %.018 = phi i64 [ %1, %bb.b ], [ %.06.lcssa.i, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.023, i64 14
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9    ; 3 uses
  %.not8.i = icmp ult i64 %.018, %i.k
  br i1 %.not8.i, label %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %i.q, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.010.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.g, %bb.c ]
  %.069.i = phi i64 [ %i.n, %.lr.ph.i ], [ %.018, %bb.c ]
  %i.m = add i64 %.010.i, 1                       ; 2 uses
  %i.n = sub nuw i64 %.069.i, %i.l                ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9    ; 3 uses
  %.not.i = icmp ult i64 %i.n, %i.q
  br i1 %.not.i, label %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i, !llvm.loop !101

_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit: ; preds = %.lr.ph.i, %bb.c
  %i.r = phi i64 [ %i.k, %bb.c ], [ %i.q, %.lr.ph.i ] ; 4 uses
  %i.s = phi ptr [ %i.j, %bb.c ], [ %i.p, %.lr.ph.i ] ; 5 uses
  %.06.lcssa.i = phi i64 [ %.018, %bb.c ], [ %i.n, %.lr.ph.i ] ; 6 uses
  %i.t = add i64 %.06.lcssa.i, %2
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit
  %i.v = add nsw i32 %.021, -1
  %i.w = icmp slt i32 %.021, 1
  br i1 %i.w, label %bb.e, label %bb.c, !llvm.loop !123

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.y = load i8, ptr %i.x, align 4, !tbaa !28    ; 2 uses
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = phi i8 [ %.pre.i, %bb.g ], [ %i.y, %bb.f ]
  %.010.i29 = phi i64 [ %i.ab, %bb.g ], [ 0, %bb.f ]
  %.0.i = phi ptr [ %i.ad, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %i.af = icmp ugt i8 %i.ae, 5
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 13
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !88
  br label %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit

_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit: ; preds = %bb.i, %bb.j
  %.pn.i = phi ptr [ %i.ag, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp ugt i64 %.06.lcssa.i, %i.r
  br i1 %i.aj, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i64 noundef %.06.lcssa.i, i64 noundef %i.r) #21
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN4absl12lts_2024011613cord_internal8EdgeDataEPKNS1_7CordRepE.exit
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %.010.i29
  %i.ak = sub nuw i64 %i.r, %.06.lcssa.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %2)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 %.06.lcssa.i
  store i64 %.sroa.speculated.i, ptr %3, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !122
  br label %.thread

.thread:                                          ; preds = %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.e, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ true, %bb.e ], [ false, %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext i8 @_ZNK4absl12lts_2024011613cord_internal12CordRepBtree12GetCharacterEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %i.c = zext i8 %i.b to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit, %bb.a
  %.014 = phi ptr [ %0, %bb.a ], [ %i.q, %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit ] ; 2 uses
  %.013 = phi i32 [ %i.c, %bb.a ], [ %i.s, %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit ] ; 2 uses
  %.011 = phi i64 [ %1, %bb.a ], [ %.06.lcssa.i, %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 14
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %.not8.i = icmp ult i64 %.011, %i.j
  br i1 %.not8.i, label %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.k = phi i64 [ %i.p, %.lr.ph.i ], [ %i.j, %bb.b ]
  %.010.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.f, %bb.b ]
  %.069.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.011, %bb.b ]
  %i.l = add i64 %.010.i, 1                       ; 2 uses
  %i.m = sub nuw i64 %.069.i, %i.k                ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9    ; 2 uses
  %.not.i = icmp ult i64 %i.m, %i.p
  br i1 %.not.i, label %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i, !llvm.loop !101

_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit: ; preds = %.lr.ph.i, %bb.b
  %i.q = phi ptr [ %i.i, %bb.b ], [ %i.o, %.lr.ph.i ] ; 5 uses
  %.06.lcssa.i = phi i64 [ %.011, %bb.b ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.r = icmp sgt i32 %.013, 0
  %i.s = add nsw i32 %.013, -1
  br i1 %i.r, label %bb.b, label %bb.c, !llvm.loop !124

bb.c:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal12CordRepBtree7IndexOfEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !28    ; 2 uses
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !85
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi i8 [ %.pre.i.i, %bb.d ], [ %i.u, %bb.c ]
  %.010.i.i = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  %.0.i.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.ab = icmp ugt i8 %i.aa, 5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.ae, %bb.g ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.010.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 %.06.lcssa.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  ret i8 %i.ag
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define { ptr, i64 } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree19GetAppendBufferSlowEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = alloca [12 x ptr], align 16              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not33.not = icmp eq i8 %i.c, 0                ; 2 uses
  br i1 %.not33.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i8 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02435 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02435, i64 15
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr i8, ptr %.02435, i64 8
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j acquire, align 4
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.i, ptr %i.m, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.024.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.024.lcssa, i64 15
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %.024.lcssa, i64 8
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load atomic i32, ptr %i.t acquire, align 4
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.c, label %.thread

bb.c:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.x = load i8, ptr %i.w, align 4, !tbaa !28    ; 4 uses
  %i.y = icmp ult i8 %i.x, 6
  br i1 %i.y, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext i8 %i.x to i32
  %i.aa = icmp ult i8 %i.x, 67                    ; 2 uses
  %i.ab = icmp ult i8 %i.x, -69                   ; 2 uses
  %..i.i.i = select i1 %i.ab, i32 6, i32 12
  %.sink6.i.i.i = select i1 %i.aa, i32 3, i32 %..i.i.i
  %i.ac = shl nuw nsw i32 %i.z, %.sink6.i.i.i
  %i.ad = select i1 %i.ab, i32 -3725, i32 -753677
  %i.ae = select i1 %i.aa, i32 -29, i32 %i.ad
  %narrow.i.i = add nsw i32 %i.ac, %i.ae
  %i.af = sext i32 %narrow.i.i to i64             ; 2 uses
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !9   ; 4 uses
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = sub i64 %i.af, %i.ag
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %1) ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag ; 3 uses
  %i.al = add i64 %.sroa.speculated, %i.ag
  store i64 %i.al, ptr %i.s, align 8, !tbaa !9
  %i.am = load i64, ptr %0, align 8, !tbaa !9
  %i.an = add i64 %i.am, %.sroa.speculated
  store i64 %i.an, ptr %0, align 8, !tbaa !9
  br i1 %.not33.not, label %.thread, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %bb.e
  %wide.trip.count46 = zext i8 %i.c to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count46, 3       ; 3 uses
  %i.ao = icmp ult i8 %i.c, 4
  br i1 %i.ao, label %.lr.ph38.epil.preheader, label %.lr.ph38.preheader.new

.lr.ph38.preheader.new:                           ; preds = %.lr.ph38.preheader
  %unroll_iter = and i64 %wide.trip.count46, 252
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38, %.lr.ph38.preheader.new
  %indvars.iv43 = phi i64 [ 0, %.lr.ph38.preheader.new ], [ %indvars.iv.next44.3, %.lr.ph38 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph38.preheader.new ], [ %niter.next.3, %.lr.ph38 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv43
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !15 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !9
  %i.as = add i64 %i.ar, %.sroa.speculated
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv43
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9
  %i.ax = add i64 %i.aw, %.sroa.speculated
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !15 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9
  %i.bc = add i64 %i.bb, %.sroa.speculated
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv43
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !9
  %i.bh = add i64 %i.bg, %.sroa.speculated
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !9
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.loopexit.unr-lcssa, label %.lr.ph38, !llvm.loop !126

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph38
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.lr.ph38.epil.preheader

.lr.ph38.epil.preheader:                          ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph38.preheader
  %indvars.iv43.epil.init = phi i64 [ 0, %.lr.ph38.preheader ], [ %indvars.iv.next44.3, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph38.epil

.lr.ph38.epil:                                    ; preds = %.lr.ph38.epil, %.lr.ph38.epil.preheader
  %indvars.iv43.epil = phi i64 [ %indvars.iv43.epil.init, %.lr.ph38.epil.preheader ], [ %indvars.iv.next44.epil, %.lr.ph38.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph38.epil.preheader ], [ %epil.iter.next, %.lr.ph38.epil ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv43.epil
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9
  %i.bl = add i64 %i.bk, %.sroa.speculated
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !9
  %indvars.iv.next44.epil = add nuw nsw i64 %indvars.iv43.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread, label %.lr.ph38.epil, !llvm.loop !127

.thread:                                          ; preds = %.lr.ph, %.thread.loopexit.unr-lcssa, %.lr.ph38.epil, %bb.e, %bb.d, %._crit_edge, %bb.c
  %.sroa.5.2 = phi i64 [ 0, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.c ], [ %.sroa.speculated, %bb.e ], [ %.sroa.speculated, %.thread.loopexit.unr-lcssa ], [ %.sroa.speculated, %.lr.ph38.epil ], [ 0, %.lr.ph ]
  %.sroa.0.2 = phi ptr [ null, %bb.d ], [ null, %._crit_edge ], [ null, %bb.c ], [ %i.ak, %bb.e ], [ %i.ak, %.thread.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph38.epil ], [ null, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %class.anon, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !28
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %i.a, ptr %1, align 8, !tbaa !128
  call void @_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull @"_ZN4absl12lts_2024011619functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10CreateSlowEPNS3_7CordRepEE3$_0vJS6_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

declare void @_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %class.anon.4, align 8              ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !28
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %.not.i = icmp ult i8 %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_(ptr noundef nonnull %1, ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.a, ptr %2, align 8, !tbaa !128
  call void @_ZN4absl12lts_2024011613cord_internal7ConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull @"_ZN4absl12lts_2024011619functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10AppendSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi ptr [ %i.k, %bb.e ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree11PrependSlowEPS2_PNS1_7CordRepE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %class.anon.5, align 8              ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !28
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %.not.i = icmp ult i8 %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_(ptr noundef nonnull %1, ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.a, ptr %2, align 8, !tbaa !128
  call void @_ZN4absl12lts_2024011613cord_internal14ReverseConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull @"_ZN4absl12lts_2024011619functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree11PrependSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit

_ZN4absl12lts_2024011613cord_internal12CordRepBtree10MergeTreesEPS2_S3_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi ptr [ %i.k, %bb.e ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0
}

declare void @_ZN4absl12lts_2024011613cord_internal14ReverseConsumeEPNS1_7CordRepENS0_11FunctionRefIFvS3_mmEEE(ptr noundef, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree6AppendEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE1EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7PrependEPS2_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddDataILNS2_8EdgeTypeE0EEEPS2_S5_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7RebuildEPPS2_S3_b(ptr nofree noundef captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i32, ptr %i.a acquire, align 4
  %i.c = icmp eq i32 %i.b, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ false, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = icmp eq i8 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8     ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m ; 2 uses
  %.not5685 = icmp eq i8 %i.j, %i.l               ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  br i1 %.not5685, label %.loopexit, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %bb.d
  %i.o = zext i8 %i.j to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %._crit_edge
  %.086 = phi ptr [ %i.eg, %._crit_edge ], [ %i.p, %.lr.ph88.preheader ] ; 2 uses
  %i.r = load ptr, ptr %.086, align 8, !tbaa !18  ; 8 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw add ptr %i.s, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph88
  %i.u = load i64, ptr %i.r, align 8, !tbaa !9    ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !15     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 15 ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 3 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 14 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8    ; 3 uses
  %i.ab = zext i8 %i.aa to i64                    ; 3 uses
  %i.ac = sub nsw i64 %i.y, %i.ab                 ; 6 uses
  %i.ad = icmp ugt i64 %i.ac, 5
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 2, ptr %i.af, align 4, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !28
  %i.ai = icmp eq i8 %i.ah, 3
  br i1 %i.ai, label %bb.h, label %.lr.ph82.preheader

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = add i8 %i.ak, 1
  br label %.lr.ph82.preheader

bb.i:                                             ; preds = %bb.f
  %.not.i.i5.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i5.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit, label %bb.j, !prof !39

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.z, align 1, !tbaa !8
  %i.am = trunc nuw nsw i64 %i.ac to i8           ; 2 uses
  store i8 %i.am, ptr %i.w, align 1, !tbaa !8
  %.not12.i.i.i = icmp eq i8 %i.x, %i.aa
  br i1 %.not12.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit, label %.lr.ph.i.i6.i

.lr.ph.i.i6.i:                                    ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph.i.i6.i
  %n.vec151 = and i64 %i.ac, 4                    ; 3 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph149
  %index153 = phi i64 [ 0, %vector.ph149 ], [ %index.next155, %vector.body152 ] ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %index153 ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.ab
  %wide.load154 = load <4 x ptr>, ptr %i.ap, align 8, !tbaa !18
  store <4 x ptr> %wide.load154, ptr %i.ao, align 8, !tbaa !18
  %index.next155 = add nuw i64 %index153, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.aq, label %middle.block156, label %vector.body152, !llvm.loop !131

middle.block156:                                  ; preds = %vector.body152
  %cmp.n157 = icmp eq i64 %i.ac, %n.vec151
  br i1 %cmp.n157, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.loopexit, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %.lr.ph.i.i6.i, %middle.block156
  %.011.i.i7.i.ph = phi i64 [ 0, %.lr.ph.i.i6.i ], [ %n.vec151, %middle.block156 ]
  br label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %.011.i.i7.i = phi i64 [ %i.au, %scalar.ph147 ], [ %.011.i.i7.i.ph, %scalar.ph147.preheader ] ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.an, i64 %.011.i.i7.i ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.ab
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !18
  %i.au = add nuw nsw i64 %.011.i.i7.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.au, %i.ac
  br i1 %exitcond.not.i.i.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.loopexit, label %scalar.ph147, !llvm.loop !132

_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.loopexit: ; preds = %scalar.ph147, %middle.block156
  %.pre = load i8, ptr %i.w, align 1, !tbaa !8
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit: ; preds = %bb.i, %bb.j, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.loopexit
  %i.av = phi i8 [ %.pre, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i.loopexit ], [ %i.am, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ax = zext i8 %i.av to i64
  %i.ay = add i8 %i.av, 1
  store i8 %i.ay, ptr %i.w, align 1, !tbaa !8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  store ptr %i.r, ptr %i.az, align 8, !tbaa !18
  %i.ba = load i64, ptr %i.v, align 8, !tbaa !9
  %i.bb = add i64 %i.ba, %i.u
  store i64 %i.bb, ptr %i.v, align 8, !tbaa !9
  br label %.preheader

.lr.ph82.preheader:                               ; preds = %bb.g, %bb.h
  %i.bc = phi i8 [ %i.al, %bb.h ], [ 0, %bb.g ]
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !9
  store i64 %i.bd, ptr %i.ae, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i8 3, ptr %i.be, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 13
  store i8 %i.bc, ptr %i.bf, align 1, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  store i8 0, ptr %i.bg, align 2, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 15
  store i8 1, ptr %i.bh, align 1, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.r, ptr %i.bi, align 8, !tbaa !18
  store ptr %i.ae, ptr %0, align 8, !tbaa !15
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !15  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.lr.ph82._crit_edge, label %.lr.ph142

.preheader.loopexit:                              ; preds = %.lr.ph82._crit_edge, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63
  %.05181134 = phi i64 [ %.05181.lcssa, %.lr.ph82._crit_edge ], [ %.05181141, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63 ]
  %i.bl = add i64 %.05181134, 2
  br label %.preheader

.preheader:                                       ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit, %.preheader.loopexit
  %.051.lcssa = phi i64 [ 1, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit ], [ %i.bl, %.preheader.loopexit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.051.lcssa
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15 ; 2 uses
  %.not5783 = icmp eq ptr %i.bn, null
  br i1 %.not5783, label %._crit_edge, label %.lr.ph84

.lr.ph82._crit_edge:                              ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69, %.lr.ph82.preheader
  %.sink126.lcssa = phi ptr [ %i.ae, %.lr.ph82.preheader ], [ %i.cn, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ] ; 2 uses
  %.05181.lcssa = phi i64 [ 0, %.lr.ph82.preheader ], [ %i.ce, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ]
  %.05280.lcssa = phi ptr [ %i.v, %.lr.ph82.preheader ], [ %i.cd, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ] ; 3 uses
  %.lcssa130 = phi i64 [ 1, %.lr.ph82.preheader ], [ %i.dv, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa130
  %i.bp = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 2, ptr %i.bq, align 4, !tbaa !27
  %i.br = load i64, ptr %.05280.lcssa, align 8, !tbaa !9
  %i.bs = load i64, ptr %.sink126.lcssa, align 8, !tbaa !9
  %i.bt = add i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %.05280.lcssa, i64 13
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = add i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i8 3, ptr %i.bx, align 4, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 13
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 14
  store i8 0, ptr %i.bz, align 2, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 15
  store i8 2, ptr %i.ca, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %.05280.lcssa, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %.sink126.lcssa, ptr %i.cc, align 8, !tbaa !18
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !15
  br label %.preheader.loopexit

.lr.ph142:                                        ; preds = %.lr.ph82.preheader, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69
  %i.cd = phi ptr [ %i.dx, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ], [ %i.bj, %.lr.ph82.preheader ] ; 9 uses
  %i.ce = phi i64 [ %i.dv, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ], [ 1, %.lr.ph82.preheader ] ; 4 uses
  %.05181141 = phi i64 [ %i.ce, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ], [ 0, %.lr.ph82.preheader ]
  %.sink126140 = phi ptr [ %i.cn, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69 ], [ %i.ae, %.lr.ph82.preheader ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !8   ; 3 uses
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 14
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8   ; 3 uses
  %i.ck = zext i8 %i.cj to i64                    ; 3 uses
  %i.cl = sub nsw i64 %i.ch, %i.ck                ; 6 uses
  %i.cm = icmp ugt i64 %i.cl, 5
  br i1 %i.cm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph142
  %i.cn = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 2, ptr %i.co, align 4, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %.sink126140, i64 12
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !28
  %i.cr = icmp eq i8 %i.cq, 3
  br i1 %i.cr, label %bb.l, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69

bb.l:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink126140, i64 13
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8
  %i.cu = add i8 %i.ct, 1
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69

bb.m:                                             ; preds = %.lr.ph142
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 15 ; 3 uses
  %.not.i.i5.i58 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i5.i58, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63, label %bb.n, !prof !39

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 14
  store i8 0, ptr %i.cw, align 1, !tbaa !8
  %i.cx = trunc nuw nsw i64 %i.cl to i8           ; 2 uses
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !8
  %.not12.i.i.i59 = icmp eq i8 %i.cg, %i.cj
  br i1 %.not12.i.i.i59, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63, label %.lr.ph.i.i6.i60

.lr.ph.i.i6.i60:                                  ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i6.i60
  %n.vec = and i64 %i.cl, 4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %index ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %i.ck
  %wide.load = load <4 x ptr>, ptr %i.da, align 8, !tbaa !18
  store <4 x ptr> %wide.load, ptr %i.cz, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i6.i60, %middle.block
  %.011.i.i7.i61.ph = phi i64 [ 0, %.lr.ph.i.i6.i60 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i7.i61 = phi i64 [ %i.df, %scalar.ph ], [ %.011.i.i7.i61.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cy, i64 %.011.i.i7.i61 ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.ck
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !18
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !18
  %i.df = add nuw nsw i64 %.011.i.i7.i61, 1       ; 2 uses
  %exitcond.not.i.i.i62 = icmp eq i64 %i.df, %i.cl
  br i1 %exitcond.not.i.i.i62, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit, label %scalar.ph, !llvm.loop !134

_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit: ; preds = %scalar.ph, %middle.block
  %.pre90 = load i8, ptr %i.cv, align 1, !tbaa !8
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63

_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63: ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit, %bb.n, %bb.m
  %i.dg = phi i8 [ %.pre90, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit ], [ %i.cx, %bb.n ], [ %i.cg, %bb.m ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.di = zext i8 %i.dg to i64
  %i.dj = add i8 %i.dg, 1
  store i8 %i.dj, ptr %i.cv, align 1, !tbaa !8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di
  store ptr %.sink126140, ptr %i.dk, align 8, !tbaa !18
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !9
  %i.dm = add i64 %i.dl, %i.u
  store i64 %i.dm, ptr %i.cd, align 8, !tbaa !9
  br label %.preheader.loopexit

_ZN4absl12lts_2024011613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69: ; preds = %bb.k, %bb.l
  %i.dn = phi i8 [ %i.cu, %bb.l ], [ 0, %bb.k ]
  %i.do = load i64, ptr %.sink126140, align 8, !tbaa !9
  store i64 %i.do, ptr %i.cn, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i8 3, ptr %i.dp, align 4, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cn, i64 13
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 14
  store i8 0, ptr %i.dr, align 2, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  store i8 1, ptr %i.ds, align 1, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %.sink126140, ptr %i.dt, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  store ptr %i.cn, ptr %i.du, align 8, !tbaa !15
  %i.dv = add i64 %i.ce, 1                        ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !15 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.lr.ph82._crit_edge, label %.lr.ph142, !llvm.loop !135

.lr.ph84:                                         ; preds = %.preheader, %.lr.ph84
  %i.dz = phi ptr [ %i.ef, %.lr.ph84 ], [ %i.bn, %.preheader ] ; 2 uses
  %i.ea = phi i64 [ %i.ed, %.lr.ph84 ], [ %.051.lcssa, %.preheader ]
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !9
  %i.ec = add i64 %i.eb, %i.u
  store i64 %i.ec, ptr %i.dz, align 8, !tbaa !9
  %i.ed = add i64 %i.ea, 1                        ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !15 ; 2 uses
  %.not57 = icmp eq ptr %i.ef, null
  br i1 %.not57, label %._crit_edge, label %.lr.ph84, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph84, %.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %.086, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.eg, %i.n
  br i1 %.not56, label %.loopexit, label %.lr.ph88

bb.o:                                             ; preds = %bb.c
  br i1 %.not5685, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.eh = zext i8 %i.j to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.eh
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05078 = phi ptr [ %i.ek, %.lr.ph ], [ %i.ei, %.lr.ph.preheader ] ; 2 uses
  %i.ej = load ptr, ptr %.05078, align 8, !tbaa !18
  tail call void @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7RebuildEPPS2_S3_b(ptr noundef %0, ptr noundef %i.ej, i1 noundef zeroext %i.d)
  %i.ek = getelementptr inbounds nuw i8, ptr %.05078, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ek, %i.n
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.o, %bb.d
  br i1 %2, label %bb.p, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit

bb.p:                                             ; preds = %.loopexit
  br i1 %i.d, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.el = icmp eq ptr %1, null
  br i1 %i.el, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #22
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit

bb.s:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = atomicrmw sub ptr %i.em, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.en, 2
  br i1 %.not.i, label %bb.t, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit, !prof !31

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit

_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [13 x ptr], align 16              ; 18 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 4, !tbaa !27
  store i64 0, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 0>, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  store ptr %i.b, ptr %i.a, align 16, !tbaa !15
  call void @_ZN4absl12lts_2024011613cord_internal12CordRepBtree7RebuildEPPS2_S3_b(ptr noundef nonnull %i.a, ptr noundef %0, i1 noundef zeroext true)
  %i.e = load ptr, ptr %i.a, align 16, !tbaa !15  ; 2 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.018.ptr.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %.018.ptr.1, align 8, !tbaa !15 ; 2 uses
  %.not20.1 = icmp eq ptr %i.f, null
  br i1 %.not20.1, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.018.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %.018.ptr.2, align 16, !tbaa !15 ; 2 uses
  %.not20.2 = icmp eq ptr %i.g, null
  br i1 %.not20.2, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.018.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %.018.ptr.3, align 8, !tbaa !15 ; 2 uses
  %.not20.3 = icmp eq ptr %i.h, null
  br i1 %.not20.3, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.018.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %.018.ptr.4, align 16, !tbaa !15 ; 2 uses
  %.not20.4 = icmp eq ptr %i.i, null
  br i1 %.not20.4, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.018.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %.018.ptr.5, align 8, !tbaa !15 ; 2 uses
  %.not20.5 = icmp eq ptr %i.j, null
  br i1 %.not20.5, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.018.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load ptr, ptr %.018.ptr.6, align 16, !tbaa !15 ; 2 uses
  %.not20.6 = icmp eq ptr %i.k, null
  br i1 %.not20.6, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.018.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.l = load ptr, ptr %.018.ptr.7, align 8, !tbaa !15 ; 2 uses
  %.not20.7 = icmp eq ptr %i.l, null
  br i1 %.not20.7, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.018.ptr.8 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = load ptr, ptr %.018.ptr.8, align 16, !tbaa !15 ; 2 uses
  %.not20.8 = icmp eq ptr %i.m, null
  br i1 %.not20.8, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.018.ptr.9 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.n = load ptr, ptr %.018.ptr.9, align 8, !tbaa !15 ; 2 uses
  %.not20.9 = icmp eq ptr %i.n, null
  br i1 %.not20.9, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.018.ptr.10 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = load ptr, ptr %.018.ptr.10, align 16, !tbaa !15 ; 2 uses
  %.not20.10 = icmp eq ptr %i.o, null
  br i1 %.not20.10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.018.ptr.11 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.p = load ptr, ptr %.018.ptr.11, align 8, !tbaa !15 ; 2 uses
  %.not20.11 = icmp eq ptr %i.p, null
  br i1 %.not20.11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.018.ptr.12 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = load ptr, ptr %.018.ptr.12, align 16, !tbaa !15
  %.not20.12 = icmp eq ptr %i.q, null
  %spec.select34 = select i1 %.not20.12, ptr %i.p, ptr null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %spec.select = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.a ], [ %i.e, %bb.b ], [ %spec.select34, %bb.m ], [ %i.f, %bb.c ], [ %i.k, %bb.h ], [ %i.g, %bb.d ], [ %i.o, %bb.l ], [ %i.h, %bb.e ], [ %i.m, %bb.j ], [ %i.i, %bb.f ], [ %i.n, %bb.k ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define { ptr, ptr } @_ZN4absl12lts_2024011613cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [12 x ptr], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  %.not4657 = icmp eq i8 %i.c, 0
  br i1 %.not4657, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.059 = phi ptr [ %i.l, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %i.d = getelementptr i8, ptr %.059, i64 8       ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.059, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %.059, i64 15
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %.not46 = icmp eq i8 %i.n, 0
  br i1 %.not46, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !137

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.o = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 5 uses
  %i.p = getelementptr i8, ptr %.0.lcssa, i64 8   ; 2 uses
  %i.q = load atomic i32, ptr %i.p acquire, align 4
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.c, label %.thread

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 15 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !28
  %i.z = icmp ugt i8 %i.y, 5
  br i1 %i.z, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load atomic i32, ptr %i.aa acquire, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !9   ; 7 uses
  %i.ae = load i8, ptr %i.x, align 4, !tbaa !28   ; 3 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = icmp ult i8 %i.ae, 67                   ; 2 uses
  %i.ah = icmp ult i8 %i.ae, -69                  ; 2 uses
  %..i.i.i = select i1 %i.ah, i32 6, i32 12
  %.sink6.i.i.i = select i1 %i.ag, i32 3, i32 %..i.i.i
  %i.ai = shl nuw nsw i32 %i.af, %.sink6.i.i.i
  %i.aj = select i1 %i.ah, i32 -3725, i32 -753677
  %i.ak = select i1 %i.ag, i32 -29, i32 %i.aj
  %narrow.i.i = add nsw i32 %i.ai, %i.ak
  %i.al = sext i32 %narrow.i.i to i64
  %i.am = sub i64 %i.al, %i.ad
  %i.an = icmp ugt i64 %1, %i.am
  br i1 %i.an, label %.thread, label %.preheader47

.preheader47:                                     ; preds = %bb.e
  %i.ao = load i8, ptr %i.s, align 1, !tbaa !8    ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 14
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !8
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i64 %i.ap, %i.as
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader, label %._crit_edge64

_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader: ; preds = %.preheader47
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.lcssa, i64 noundef 64) #22
  %i.av = icmp slt i32 %.038.lcssa, 1
  br i1 %i.av, label %.thread, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader
  %i.aw = zext nneg i32 %.038.lcssa to i64
  br label %bb.f

_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #22
  %i.ax = trunc nuw i64 %i.az to i32
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %.thread, label %bb.f, !llvm.loop !138

bb.f:                                             ; preds = %.lr.ph103, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit
  %indvars.iv82102 = phi i64 [ %i.aw, %.lr.ph103 ], [ %i.az, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit ]
  %i.az = add nsw i64 %indvars.iv82102, -1        ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 15
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8   ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 14
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = zext i8 %i.bg to i64
  %i.bi = sub nsw i64 %i.be, %i.bh
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %._crit_edge64.loopexit, !llvm.loop !138

._crit_edge64.loopexit:                           ; preds = %bb.f
  %i.bk = trunc i64 %i.az to i32
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.preheader47
  %.1.lcssa61 = phi ptr [ %.0.lcssa, %.preheader47 ], [ %i.bb, %._crit_edge64.loopexit ] ; 4 uses
  %.139.lcssa = phi i32 [ %.038.lcssa, %.preheader47 ], [ %i.bk, %._crit_edge64.loopexit ] ; 3 uses
  %.lcssa = phi i8 [ %i.ao, %.preheader47 ], [ %i.bd, %._crit_edge64.loopexit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.lcssa61, i64 15
  %i.bm = add i8 %.lcssa, -1
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !8
  %i.bn = load i64, ptr %.1.lcssa61, align 8, !tbaa !9
  %i.bo = sub i64 %i.bn, %i.ad
  store i64 %i.bo, ptr %.1.lcssa61, align 8, !tbaa !9
  %i.bp = icmp sgt i32 %.139.lcssa, 0
  br i1 %i.bp, label %.lr.ph71.preheader, label %.preheader.preheader

.lr.ph71.preheader:                               ; preds = %._crit_edge64
  %i.bq = zext nneg i32 %.139.lcssa to i64        ; 3 uses
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol

.lr.ph71.prol:                                    ; preds = %.lr.ph71.preheader, %.lr.ph71.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %.lr.ph71.prol ], [ %i.bq, %.lr.ph71.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph71.prol ], [ 0, %.lr.ph71.preheader ]
  %indvars.iv.next86.prol = add nsw i64 %indvars.iv85.prol, -1 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next86.prol
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !15 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !9
  %i.bu = sub i64 %i.bt, %i.ad
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !9
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol, !llvm.loop !139

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %indvars.iv85.unr = phi i64 [ %i.bq, %.lr.ph71.preheader ], [ %indvars.iv.next86.prol, %.lr.ph71.prol ]
  %.lcssa104.unr = phi ptr [ poison, %.lr.ph71.preheader ], [ %i.bs, %.lr.ph71.prol ]
  %i.bv = icmp ult i32 %.139.lcssa, 4
  br i1 %i.bv, label %.preheader.preheader, label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph71 ], [ %indvars.iv85.unr, %.lr.ph71.prol.loopexit ] ; 5 uses
  %i.bw = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !9
  %i.ca = sub i64 %i.bz, %i.ad
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !9
  %i.cb = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.cc = getelementptr i8, ptr %i.cb, i64 -16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !15 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !9
  %i.cf = sub i64 %i.ce, %i.ad
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !9
  %i.cg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !15 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !9
  %i.ck = sub i64 %i.cj, %i.ad
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !9
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, -4 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next86.3
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !9
  %i.co = sub i64 %i.cn, %i.ad
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !9
  %i.cp = icmp sgt i64 %indvars.iv85, 4
  br i1 %i.cp, label %.lr.ph71, label %.preheader.preheader, !llvm.loop !140

.preheader.preheader:                             ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71, %._crit_edge64
  %.3.ph = phi ptr [ %.1.lcssa61, %._crit_edge64 ], [ %.lcssa104.unr, %.lr.ph71.prol.loopexit ], [ %i.cm, %.lr.ph71 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit43
  %.3 = phi ptr [ %i.dc, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit43 ], [ %.3.ph, %.preheader.preheader ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.3, i64 15
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = zext i8 %i.cr to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.3, i64 14
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cv = zext i8 %i.cu to i64
  %i.cw = sub nsw i64 %i.cs, %i.cv
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit43, label %.thread

_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit43: ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.3, i64 13
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = getelementptr i8, ptr %.3, i64 8
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %i.cs
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !18 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 64) #22
  %.not = icmp eq i8 %i.cz, 0
  br i1 %.not, label %.thread, label %.preheader, !llvm.loop !141

.thread:                                          ; preds = %.lr.ph, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit43, %.preheader, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader, %bb.d, %bb.c, %bb.e, %._crit_edge
  %.sroa.0.4 = phi ptr [ null, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ %0, %._crit_edge ], [ %0, %bb.c ], [ %0, %bb.d ], [ null, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader ], [ %0, %bb.e ], [ %.3, %.preheader ], [ %i.dc, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit43 ], [ %0, %.lr.ph ]
  %.sroa.5.2 = phi ptr [ %i.w, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ null, %._crit_edge ], [ null, %bb.c ], [ null, %bb.d ], [ %i.w, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader ], [ null, %bb.e ], [ %i.w, %_ZN4absl12lts_2024011613cord_internal12CordRepBtree6DeleteEPS2_.exit43 ], [ %i.w, %.preheader ], [ null, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.5.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_202401166StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4absl12lts_202401166StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2024011616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

declare void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare void @_ZN4absl12lts_2024011616strings_internal15SingleArgStrCatB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2024011619functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10CreateSlowEPNS3_7CordRepEE3$_0vJS6_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = icmp eq i64 %3, %i.a
  br i1 %i.b, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !28
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.f, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !85
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87, !nonnull !29, !noundef !29 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw add ptr %i.n, i32 2 monotonic, align 4 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = atomicrmw sub ptr %i.p, i32 2 acq_rel, align 4
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i, !prof !31

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.015.i.i.i.i.i.i = phi i64 [ %2, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  %.0.i.i.i.i.i.i = phi ptr [ %1, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 2, ptr %i.s, align 4, !tbaa !27
  store i64 %3, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i8 1, ptr %i.t, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.015.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.0.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !87
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i, %bb.d, %bb.c, %bb.a
  %.0.i.i.i.i.i = phi ptr [ %i.r, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i ], [ %1, %bb.a ], [ null, %bb.c ], [ null, %bb.d ] ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !142, !nonnull !29, !align !144 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i
  %i.z = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 2, ptr %i.aa, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !28
  %i.ad = icmp eq i8 %i.ac, 3
  br i1 %i.ad, label %bb.i, label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = add i8 %i.af, 1
  br label %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ah = phi i8 [ %i.ag, %bb.i ], [ 0, %bb.h ]
  %i.ai = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !9
  store i64 %i.ai, ptr %i.z, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i8 3, ptr %i.aj, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  store i8 0, ptr %i.al, align 2, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  store i8 1, ptr %i.am, align 1, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.an, align 8, !tbaa !18
  store ptr %i.z, ptr %i.w, align 8, !tbaa !15
  br label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10CreateSlowEPNS2_7CordRepEE3$_0JS5_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSA_DpOSB_.exit"

bb.j:                                             ; preds = %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_113MakeSubstringEPNS1_7CordRepEmm.exit.i.i.i.i
  %i.ao = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef nonnull %i.x, ptr noundef %.0.i.i.i.i.i)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !142, !nonnull !29, !align !144
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !15
  br label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10CreateSlowEPNS2_7CordRepEE3$_0JS5_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSA_DpOSB_.exit"

"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10CreateSlowEPNS2_7CordRepEE3$_0JS5_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSA_DpOSB_.exit": ; preds = %_ZN4absl12lts_2024011613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2024011619functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree10AppendSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = icmp eq i64 %3, %i.a
  br i1 %i.b, label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10AppendSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10AppendSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit", !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10AppendSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit"

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !28
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.f, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !85
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87, !nonnull !29, !noundef !29 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw add ptr %i.n, i32 2 monotonic, align 4 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = atomicrmw sub ptr %i.p, i32 2 acq_rel, align 4
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i, !prof !31

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.015.i.i.i.i.i.i = phi i64 [ %2, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  %.0.i.i.i.i.i.i = phi ptr [ %1, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 2, ptr %i.s, align 4, !tbaa !27
  store i64 %3, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i8 1, ptr %i.t, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.015.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.0.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !87
  br label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10AppendSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit"

"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree10AppendSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.c, %bb.d, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.r, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i ], [ %1, %bb.a ], [ null, %bb.c ], [ null, %bb.d ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !145, !nonnull !29, !align !144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %i.x, ptr noundef %.0.i.i.i.i.i)
  %i.z = load ptr, ptr %0, align 8, !tbaa !145, !nonnull !29, !align !144
  store ptr %i.y, ptr %i.z, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2024011619functional_internal12InvokeObjectIZNS0_13cord_internal12CordRepBtree11PrependSlowEPS4_PNS3_7CordRepEE3$_0vJS7_mmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = icmp eq i64 %3, %i.a
  br i1 %i.b, label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree11PrependSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree11PrependSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit", !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree11PrependSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit"

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !28
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.f, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !85
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87, !nonnull !29, !noundef !29 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw add ptr %i.n, i32 2 monotonic, align 4 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = atomicrmw sub ptr %i.p, i32 2 acq_rel, align 4
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i, !prof !31

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2024011613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i

_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.015.i.i.i.i.i.i = phi i64 [ %2, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ]
  %.0.i.i.i.i.i.i = phi ptr [ %1, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 2, ptr %i.s, align 4, !tbaa !27
  store i64 %3, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i8 1, ptr %i.t, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.015.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.0.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !87
  br label %"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree11PrependSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit"

"_ZSt6invokeIRKZN4absl12lts_2024011613cord_internal12CordRepBtree11PrependSlowEPS3_PNS2_7CordRepEE3$_0JS6_mmEENSt13invoke_resultIT_JDpT0_EE4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.c, %bb.d, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.r, %_ZN4absl12lts_2024011613cord_internal12_GLOBAL__N_115CreateSubstringEPNS1_7CordRepEmm.exit.i.i.i.i.i ], [ %1, %bb.a ], [ null, %bb.c ], [ null, %bb.d ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !29, !align !144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = tail call noundef ptr @_ZN4absl12lts_2024011613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE0EEEPS2_S5_PNS1_7CordRepE(ptr noundef %i.x, ptr noundef %.0.i.i.i.i.i)
  %i.z = load ptr, ptr %0, align 8, !tbaa !147, !nonnull !29, !align !144
  store ptr %i.y, ptr %i.z, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { allocsize(0) }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN4absl12lts_2024011613cord_internal7CordRepE", !11, i64 0, !12, i64 8, !6, i64 12, !6, i64 13}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTSN4absl12lts_2024011613cord_internal16RefcountAndFlagsE", !13, i64 0}
!13 = !{!"_ZTSSt6atomicIiE", !14, i64 0}
!14 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN4absl12lts_2024011613cord_internal12CordRepBtreeE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN4absl12lts_2024011613cord_internal7CordRepE", !17, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !5, i64 0}
!23 = !{!"_ZTSN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EEE", !5, i64 0, !6, i64 8}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !21}
!27 = !{!14, !5, i64 0}
!28 = !{!10, !6, i64 12}
!29 = !{}
!30 = distinct !{!30, !21, !25}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = !{!36, !5, i64 0}
!36 = !{!"_ZTSN4absl12lts_2024011613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EEE", !5, i64 0, !6, i64 8}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !21}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = distinct !{!40, !21, !25, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !21, !25, !41}
!44 = distinct !{!44, !21, !25, !41, !42}
!45 = distinct !{!45, !21, !25, !41}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !21, !25, !41, !42}
!62 = distinct !{!62, !21, !25, !41}
!63 = distinct !{!63, !21}
!64 = !{i8 0, i8 2}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !7, i64 0}
!67 = !{!68, !11, i64 16}
!68 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !69, i64 24, !70, i64 28, !70, i64 32, !71, i64 40, !72, i64 48, !6, i64 64, !5, i64 192, !73, i64 200, !74, i64 208}
!69 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!70 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!71 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!72 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !11, i64 8}
!73 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!74 = !{!"_ZTSSt6locale", !75, i64 0}
!75 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !78, i64 0}
!78 = !{!"p1 omnipotent char", !17, i64 0}
!79 = !{!80, !11, i64 8}
!80 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !77, i64 0, !11, i64 8, !6, i64 16}
!81 = !{!82, !11, i64 0}
!82 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !11, i64 0, !78, i64 8}
!83 = !{!82, !78, i64 8}
!84 = !{!80, !78, i64 0}
!85 = !{!86, !11, i64 16}
!86 = !{!"_ZTSN4absl12lts_2024011613cord_internal16CordRepSubstringE", !10, i64 0, !11, i64 16, !19, i64 24}
!87 = !{!86, !19, i64 24}
!88 = !{!89, !78, i64 16}
!89 = !{!"_ZTSN4absl12lts_2024011613cord_internal15CordRepExternalE", !10, i64 0, !78, i64 16, !17, i64 24}
!90 = !{!17, !17, i64 0}
!91 = distinct !{null, null}
!92 = !{!89, !17, i64 24}
!93 = distinct !{null, null, null}
!94 = distinct !{null, null, null}
!95 = distinct !{null, null, null, null}
!96 = distinct !{null}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = !{!"branch_weights", i32 1073205, i32 2146410443}
!104 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21, !25, !41, !42}
!113 = distinct !{!113, !21, !25, !41}
!114 = distinct !{!114, !41, !42}
!115 = !{!"branch_weights", i32 4, i32 12}
!116 = distinct !{!116, !41, !42}
!117 = distinct !{!117, !41}
!118 = distinct !{!118, !41, !42}
!119 = distinct !{!119, !41, !42}
!120 = distinct !{!120, !41}
!121 = !{!11, !11, i64 0}
!122 = !{!78, !78, i64 0}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !25}
!128 = !{!129, !129, i64 0}
!129 = !{!"p2 _ZTSN4absl12lts_2024011613cord_internal12CordRepBtreeE", !130, i64 0}
!130 = !{!"any p2 pointer", !17, i64 0}
!131 = distinct !{!131, !21, !25, !41, !42}
!132 = distinct !{!132, !21, !25, !41}
!133 = distinct !{!133, !21, !25, !41, !42}
!134 = distinct !{!134, !21, !25, !41}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = distinct !{!137, !21}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !25}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = !{!143, !129, i64 0}
!143 = !{!"_ZTSZN4absl12lts_2024011613cord_internal12CordRepBtree10CreateSlowEPNS1_7CordRepEE3$_0", !129, i64 0}
!144 = !{i64 8}
!145 = !{!146, !129, i64 0}
!146 = !{!"_ZTSZN4absl12lts_2024011613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepEE3$_0", !129, i64 0}
!147 = !{!148, !129, i64 0}
!148 = !{!"_ZTSZN4absl12lts_2024011613cord_internal12CordRepBtree11PrependSlowEPS2_PNS1_7CordRepEE3$_0", !129, i64 0}
end_hunk_0
