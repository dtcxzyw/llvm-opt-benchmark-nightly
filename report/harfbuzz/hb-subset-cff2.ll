Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22cff2_instancing_plan_t6createEPKNS_22CFF2ItemVariationStoreEPK16hb_subset_plan_t:bb.a
  br label %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit

_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit: ; preds = %bb.am, %.critedge.i121
  %.sroa.0.0 = phi i1 [ false, %.critedge.i121 ], [ %i.kl, %bb.am ]
  %.sroa.18.0 = phi ptr [ null, %.critedge.i121 ], [ %.sroa.18.2216341, %bb.am ]
  %i.lt = load i32, ptr %i.ko, align 4, !tbaa !291 ; 3 uses
  %i.lu = load i32, ptr %i.kn, align 8, !tbaa !477
  %.not.i122 = icmp slt i32 %i.lt, %i.lu
  br i1 %.not.i122, label %.critedge.i126, label %bb.an

bb.an:                                            ; preds = %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit
  %i.lv = add i32 %i.lt, 1
  %i.lw = call noundef zeroext i1 @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i32 noundef %i.lv, i1 noundef zeroext false)
  br i1 %i.lw, label %..critedge_crit_edge.i124, label %bb.ao, !prof !97

..critedge_crit_edge.i124:                        ; preds = %bb.an
  %.pre.i125 = load i32, ptr %i.ko, align 4, !tbaa !291
  br label %.critedge.i126

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(48) @_hb_NullPool, i64 48, i1 false)
  br label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit

.critedge.i126:                                   ; preds = %..critedge_crit_edge.i124, %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit
  %i.lx = phi i32 [ %.pre.i125, %..critedge_crit_edge.i124 ], [ %i.lt, %_ZN11hb_vector_tIS_IfLb0EELb0EE4pushIJS0_EEEPS0_DpOT_.exit ] ; 2 uses
  %i.ly = load ptr, ptr %i.kp, align 8, !tbaa !296
  %i.lz = add i32 %i.lx, 1
  store i32 %i.lz, ptr %i.ko, align 4, !tbaa !291
  %i.ma = zext i32 %i.lx to i64
  %i.mb = getelementptr inbounds nuw [48 x i8], ptr %i.ly, i64 %i.ma ; 10 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store atomic i32 1, ptr %i.mb monotonic, align 4
  store atomic i8 1, ptr %i.mc monotonic, align 4
  store atomic ptr null, ptr %i.md monotonic, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store i8 1, ptr %i.me, align 8, !tbaa !452
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 18 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 40 ; 2 uses
  store ptr null, ptr %i.mg, align 8, !tbaa !439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.mf, i8 0, i64 18, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %.070263, i64 16
  %i.mi = load i8, ptr %i.mh, align 8, !range !121
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.ap, label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit, !prof !97

bb.ap:                                            ; preds = %.critedge.i126
  %i.mk = getelementptr inbounds nuw i8, ptr %.070263, i64 18 ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !469
  store i16 %i.ml, ptr %i.mf, align 2, !tbaa !469
  store i16 0, ptr %i.mk, align 2, !tbaa !469
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %i.mn = getelementptr inbounds nuw i8, ptr %.070263, i64 20 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !101
  store i32 %i.mo, ptr %i.mm, align 4, !tbaa !101
  store i32 0, ptr %i.mn, align 4, !tbaa !101
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mb, i64 24 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.070263, i64 24 ; 2 uses
  %i.mr = load i32, ptr %i.mp, align 8, !tbaa !101
  %i.ms = load i32, ptr %i.mq, align 8, !tbaa !101
  store i32 %i.ms, ptr %i.mp, align 8, !tbaa !101
  store i32 %i.mr, ptr %i.mq, align 8, !tbaa !101
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mb, i64 28 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.070263, i64 28 ; 2 uses
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !101
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !101
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !101
  store i32 %i.mv, ptr %i.mu, align 4, !tbaa !101
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.070263, i64 32 ; 2 uses
  %i.mz = load i32, ptr %i.mx, align 8, !tbaa !101
  %i.na = load i32, ptr %i.my, align 8, !tbaa !101
  store i32 %i.na, ptr %i.mx, align 8, !tbaa !101
  store i32 %i.mz, ptr %i.my, align 8, !tbaa !101
  %i.nb = getelementptr inbounds nuw i8, ptr %.070263, i64 40 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !470
  store ptr %i.nc, ptr %i.mg, align 8, !tbaa !470
  store ptr null, ptr %i.nb, align 8, !tbaa !470
  br label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit

_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit: ; preds = %bb.ao, %.critedge.i126, %bb.ap
  br i1 %.sroa.0.0, label %bb.aq, label %_ZN11hb_vector_tIfLb0EED2Ev.exit

bb.aq:                                            ; preds = %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit
  call void @hb_free(ptr noundef %.sroa.18.0) #16
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv281 = phi i64 [ %indvars.iv.next282.3, %scalar.ph ], [ %indvars.iv281.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv281
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !463
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv281
  store float %i.ne, ptr %i.nf, align 4, !tbaa !463
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next282
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !463
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next282
  store float %i.nh, ptr %i.ni, align 4, !tbaa !463
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next282.1
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !463
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next282.1
  store float %i.nk, ptr %i.nl, align 4, !tbaa !463
  %indvars.iv.next282.2 = add nuw nsw i64 %indvars.iv281, 3 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.next282.2
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !463
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next282.2
  store float %i.nn, ptr %i.no, align 4, !tbaa !463
  %indvars.iv.next282.3 = add nuw nsw i64 %indvars.iv281, 4 ; 2 uses
  %exitcond286.not.3 = icmp eq i64 %indvars.iv.next282.3, %wide.trip.count285
  br i1 %exitcond286.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !989

_ZN11hb_vector_tIfLb0EED2Ev.exit:                 ; preds = %bb.aq, %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit
  %i.np = getelementptr inbounds nuw i8, ptr %.070263, i64 160 ; 2 uses
  %.not88 = icmp eq ptr %i.np, %i.kh
  br i1 %.not88, label %.critedge95, label %bb.aj

.critedge95:                                      ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit, %.critedge92.thread, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb.exit.thread209
  %i.nq = load i32, ptr %i.cu, align 8, !tbaa !475
  %i.nr = icmp slt i32 %i.nq, 0
  br i1 %i.nr, label %.critedge97.sink.split, label %bb.ar, !prof !99

bb.ar:                                            ; preds = %.critedge95
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !477
  %.fr = freeze i32 %i.nt
  %i.nu = icmp slt i32 %.fr, 0
  br i1 %i.nu, label %.critedge97.sink.split, label %bb.as, !prof !143

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count291
  br i1 %exitcond292.not, label %.critedge97, label %bb.i, !llvm.loop !990

.critedge97.sink.split:                           ; preds = %.critedge92, %bb.ai, %bb.ah, %bb.ar, %.critedge95, %bb.aj, %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i154, %.critedge
  call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.critedge97

.critedge97:                                      ; preds = %bb.as, %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit, %.critedge97.sink.split, %bb.h
  %.not90252 = phi i1 [ true, %bb.h ], [ false, %.critedge97.sink.split ], [ %i.cw, %_ZNK2OT18ItemVariationStore13get_sub_tableEj.exit ], [ %i.cw, %bb.as ]
  call void @_ZN2OT18optimize_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE6resizeEi.exit.thread: ; preds = %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread20.i.i, %bb.a, %.loopexit, %.critedge97
  %.13 = phi i1 [ %.not90252, %.critedge97 ], [ false, %.loopexit ], [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE5allocEjb.exit.thread20.i.i ]
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEixEj(ptr noundef nonnull align 1 dereferenceable(6) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 1, !tbaa !346
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a)
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.b, label %.critedge, !prof !97

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !479   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 12 uses
  switch i8 %i.d, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread [
    i8 1, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread
    i8 2, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17
    i8 3, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20
    i8 4, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23
  ]

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread: ; preds = %bb.b
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !479
  %i.i = zext i8 %i.h to i32
  %i.j = add nuw i32 %1, 1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !479
  %i.n = zext i8 %i.m to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.o
  %i.q = load i16, ptr %i.p, align 1, !tbaa !276
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = add nuw i32 %1, 1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1, !tbaa !276
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.z = zext i32 %1 to i64
  %i.aa = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.z ; 3 uses
  %2 = load i8, ptr %i.aa, align 1, !tbaa !148
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 16
  %5 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !148
  %i.ab = zext i8 %6 to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %7 = or disjoint i32 %i.ac, %4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !148
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %7, %i.af
  %i.ah = add nuw i32 %1, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.ai ; 3 uses
  %8 = load i8, ptr %i.aj, align 1, !tbaa !148
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !148
  %i.ak = zext i8 %12 to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %13 = or disjoint i32 %i.al, %10
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !148
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %13, %i.ao
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.aq = zext i32 %1 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !346
  %i.at = tail call noundef i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = add nuw i32 %1, 1
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !346
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %i.ax)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.at, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23 ], [ %i.i, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread ], [ %i.s, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17 ], [ %i.ag, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.ay, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread23 ], [ %i.n, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread ], [ %i.y, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread17 ], [ %i.ap, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.az = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.az, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread, !prof !1001

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.ba = load i32, ptr %0, align 1, !tbaa !346
  %i.bb = tail call noundef i32 @llvm.bswap.i32(i32 %i.ba) ; 5 uses
  switch i8 %i.d, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !479
  %i.bf = zext i8 %i.be to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !276
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bl = zext i32 %i.bb to i64
  %i.bm = getelementptr inbounds nuw [3 x i8], ptr %i.e, i64 %i.bl ; 3 uses
  %14 = load i8, ptr %i.bm, align 1, !tbaa !148
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !148
  %i.bn = zext i8 %18 to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %19 = or disjoint i32 %i.bo, %16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !148
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %19, %i.br
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread
  %i.bt = zext i32 %i.bb to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !346
  %i.bw = tail call noundef i32 @llvm.bswap.i32(i32 %i.bv)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.bw, %bb.f ], [ %i.bf, %bb.c ], [ %i.bk, %bb.d ], [ %i.bs, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11.thread ]
  %i.bx = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.bx, label %.critedge, label %bb.g, !prof !99

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13
  %i.by = zext i8 %i.d to i32
  %i.bz = add i32 %i.bb, 1
  %i.ca = mul i32 %i.bz, %i.by
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cb
  %i.cd = zext i32 %.0.i1628 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cf to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ce, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3CFF12CFF2FDSelect6get_fdEj(ptr noundef nonnull align 1 dereferenceable(11) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, @_hb_NullPool
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !479
  switch i8 %i.b, label %bb.n [
    i8 0, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !479
  %i.g = zext i8 %i.f to i32
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.i = load i16, ptr %i.h, align 1, !tbaa !276
  %.not.i.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.not.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i, label %bb.e, !prof !99

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.0.0.copyload.i.pre.i = load i16, ptr %i.h, align 1, !tbaa !148
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i.pre.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.j, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i) ; 3 uses
  %.not3.i.i.i = icmp ugt i16 %i.k, 1
  br i1 %.not3.i.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i
  %i.l = zext i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i.i
  %.0205.i.i.i = phi i32 [ %.2.i.i.i, %bb.g ], [ %i.m, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0214.i.i.i = phi i32 [ %.223.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.n = add i32 %.0214.i.i.i, %.0205.i.i.i
  %i.o = lshr i32 %i.n, 1                         ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.q ; 3 uses
  %i.s = load i16, ptr %i.r, align 1, !tbaa !276
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %i.v = icmp ult i32 %1, %i.u
  br i1 %i.v, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.x = load i16, ptr %i.w, align 1, !tbaa !276
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  %.not2.i.i.i = icmp ult i32 %1, %i.z
  br i1 %.not2.i.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit, label %bb.f

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = add nsw i32 %i.o, -1
  br label %bb.g

bb.f:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i
  %i.ab = add nuw nsw i32 %i.o, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i
  %.223.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %.0214.i.i.i, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0205.i.i.i, %bb.f ], [ %i.aa, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !1002

.loopexit.i:                                      ; preds = %bb.g, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i
  %.not.i4.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i4.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit, label %bb.h, !prof !99

bb.h:                                             ; preds = %.loopexit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.ac = zext i16 %i.k to i64
  %i.ad = getelementptr [3 x i8], ptr %i.h, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit: ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i, %.loopexit.i, %bb.h
  %.pn.i = phi ptr [ @_hb_NullPool, %.loopexit.i ], [ %i.ae, %bb.h ], [ %i.r, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !479
  %i.ah = zext i8 %i.ag to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !346
  %.not.i.not.i5 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.not.i5, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i, label %bb.j, !prof !99

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.0.0.copyload.i.pre.i6 = load i32, ptr %i.ai, align 1, !tbaa !148
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i.i7 = phi i32 [ %.sroa.0.0.copyload.i.pre.i6, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.0.i.i8 = phi ptr [ %i.ak, %bb.j ], [ @_hb_NullPool, %bb.i ]
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i7) ; 2 uses
  %i.am = add i32 %i.al, -1                       ; 2 uses
  %.not3.i.i.i9 = icmp sgt i32 %i.am, 0
  br i1 %.not3.i.i.i9, label %.lr.ph.preheader.i.i.i13, label %.loopexit.i10

.lr.ph.preheader.i.i.i13:                         ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i
  %i.an = add i32 %i.al, -2
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.l, %.lr.ph.preheader.i.i.i13
  %.0205.i.i.i15 = phi i32 [ %.2.i.i.i19, %bb.l ], [ %i.an, %.lr.ph.preheader.i.i.i13 ] ; 2 uses
  %.0214.i.i.i16 = phi i32 [ %.223.i.i.i18, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i13 ] ; 2 uses
  %i.ao = add i32 %.0214.i.i.i16, %.0205.i.i.i15
  %i.ap = lshr i32 %i.ao, 1                       ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %i.as, align 1, !tbaa !346
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = icmp ult i32 %1, %i.au
  br i1 %i.av, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !346
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %i.ax)
  %.not2.i.i.i17 = icmp ult i32 %1, %i.ay
  br i1 %.not2.i.i.i17, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit, label %bb.k

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.az = add nsw i32 %i.ap, -1
  br label %bb.l

bb.k:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.i.i.i
  %i.ba = add nuw nsw i32 %i.ap, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i
  %.223.i.i.i18 = phi i32 [ %i.ba, %bb.k ], [ %.0214.i.i.i16, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.2.i.i.i19 = phi i32 [ %.0205.i.i.i15, %bb.k ], [ %i.az, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i ] ; 2 uses
  %.not.not.i.i.i20 = icmp sgt i32 %.223.i.i.i18, %.2.i.i.i19
  br i1 %.not.not.i.i.i20, label %.loopexit.i10, label %.lr.ph.i.i.i14, !llvm.loop !1003

.loopexit.i10:                                    ; preds = %bb.l, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit.i
  %.not.i4.not.i11 = icmp eq i32 %.sroa.0.0.copyload.i.i7, 0
  br i1 %.not.i4.not.i11, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE6get_fdEj.exit, label %bb.m, !prof !99

bb.m:                                             ; preds = %.loopexit.i10
end_hunk_0
begin_hunk_1_@_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE5allocEjb:bb.a
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !206
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !206  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, label %bb.k, !prof !99

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !205  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, label %bb.l, !prof !99

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !206
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1509
  br label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, label %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, !prof !100

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !420   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !206
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !420
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t13resolve_linksEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 11 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !169
  %.not66 = icmp eq i32 %i.b, 0
  br i1 %.not66, label %_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit, label %.loopexit, !prof !97

_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !tbaa !270 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !271
  %.not.i.i = icmp eq i32 %.val, 0
  %narrow = tail call i32 @llvm.usub.sat.i32(i32 %.val, i32 1)
  %.sroa.5.0 = zext i32 %narrow to i64
  %.sroa.0.0.copyload.i.idx = select i1 %.not.i.i, i64 0, i64 8, !prof !99
  %.sroa.0.0.copyload.i = getelementptr inbounds nuw i8, ptr %.val57, i64 %.sroa.0.0.copyload.i.idx ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.5.0, 3
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.idx
  %.not70 = icmp ult i32 %.val, 2
  br i1 %.not70, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit
  %i.f = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %.critedge
  %.05271 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph72 ], [ %i.co, %.critedge ] ; 2 uses
  %i.j = load ptr, ptr %.05271, align 8, !tbaa !263 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !239  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !237  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx73 = mul nuw nsw i64 %i.o, 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx73
  %.not5468 = icmp eq i32 %i.n, 0
  br i1 %.not5468, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.v
  %.05069 = phi ptr [ %i.l, %.lr.ph ], [ %i.cl, %bb.v ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05069, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !241  ; 2 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !270
  %.not.i = icmp ult i32 %i.s, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !271
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !263
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit: ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.g, %bb.d ], [ %.pr, %bb.e ] ; 4 uses
  %.not55.not = icmp eq ptr %i.x, null
  br i1 %.not55.not, label %bb.w, label %bb.f, !prof !99

bb.f:                                             ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit
  %i.y = load i32, ptr %.05069, align 4           ; 4 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 3
  switch i32 %i.aa, label %default.unreachable78 [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !178
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !178
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !178
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !177
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.ao = load ptr, ptr %0, align 8, !tbaa !340
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !178
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !170
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = add i64 %i.ap, %i.at
  %i.aw = add i64 %i.aq, %i.au
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  br label %bb.j

default.unreachable78:                            ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ %i.ag, %bb.g ], [ %i.am, %bb.h ], [ %i.ay, %bb.i ], [ 0, %bb.f ]
  %i.az = lshr i32 %i.y, 6
  %i.ba = sub i32 %.0, %i.az                      ; 12 uses
  %i.bb = and i32 %i.y, 8
  %.not56 = icmp eq i32 %i.bb, 0
  %i.bc = and i32 %i.y, 7                         ; 2 uses
  br i1 %.not56, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bc, 4
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !178
  %i.bf = getelementptr inbounds nuw i8, ptr %.05069, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !242
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bj, ptr %i.bi, align 1, !tbaa !148
  %i.bk = sext i32 %i.ba to i64
  %i.bl = zext i32 %i.ba to i64
  %.not.i.i.i = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i.i.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !169
  %i.bn = or i32 %i.bm, 2
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !169
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  %i.bo = trunc i32 %i.ba to i16                  ; 2 uses
  %i.bp = tail call i16 @llvm.bswap.i16(i16 %i.bo)
  store i16 %i.bp, ptr %i.bi, align 1, !tbaa !148
  %i.bq = sext i16 %i.bo to i64
  %i.br = zext i32 %i.ba to i64
  %.not.i.i.i59 = icmp eq i64 %i.bq, %i.br
  br i1 %.not.i.i.i59, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !169
  %i.bt = or i32 %i.bs, 2
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !169
  br label %bb.v

bb.p:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !178
  %i.bv = getelementptr inbounds nuw i8, ptr %.05069, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !242
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx ; 5 uses
  switch i32 %i.bc, label %bb.t [
    i32 4, label %bb.q
    i32 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bz, ptr %i.by, align 1, !tbaa !148
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ca = lshr i32 %i.ba, 16
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = lshr i32 %i.ba, 8
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = trunc i32 %i.ba to i8
  store i8 %i.cb, ptr %i.by, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.cd, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %i.ce, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !tbaa !148
  %.not.i.i.i60 = icmp ult i32 %i.ba, 16777216
  br i1 %.not.i.i.i60, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !169
  %i.cg = or i32 %i.cf, 2
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !169
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.ch = trunc i32 %i.ba to i16
  %i.ci = tail call i16 @llvm.bswap.i16(i16 %i.ch)
  store i16 %i.ci, ptr %i.by, align 1, !tbaa !148
  %.not.i.i.i61 = icmp ult i32 %i.ba, 65536
  br i1 %.not.i.i.i61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !169
  %i.ck = or i32 %i.cj, 2
  store i32 %i.ck, ptr %i.a, align 4, !tbaa !169
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.05069, i64 12 ; 2 uses
  %.not54 = icmp eq ptr %i.cl, %i.p
  br i1 %.not54, label %.critedge, label %bb.c

bb.w:                                             ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !169
  %i.cn = or i32 %i.cm, 1
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !169
  br label %.loopexit

.critedge:                                        ; preds = %bb.v, %bb.b
  %i.co = getelementptr inbounds nuw i8, ptr %.05271, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.e
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge, %_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit, %bb.w, %bb.a
  ret void
}

declare ptr @hb_blob_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hb_face_builder_add_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !617
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !538  ; 3 uses
  %.not5.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i, label %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EE13shrink_vectorEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EED2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.j, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EED2Ev.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EED2Ev.exit.i ], [ %i.d, %.lr.ph.preheader.i ]
  %i.i = add i32 %.046.i, -1                      ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.07.i, i64 -16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !127
  %i.l = add i32 %i.k, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.l, -2
  br i1 %spec.select.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EED2Ev.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds i8, ptr %.07.i, i64 -12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !126  ; 3 uses
  %.not5.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not5.i.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.q
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.t, %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i ] ; 6 uses
  %.046.i.i.i.i = phi i32 [ %i.s, %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i ], [ %i.n, %.lr.ph.preheader.i.i.i.i ]
  %i.s = add i32 %.046.i.i.i.i, -1                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -40 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131
  %i.w = add i32 %i.v, -1
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i32 %i.w, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -20
  store i32 0, ptr %i.x, align 4, !tbaa !132
  %i.y = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !133
  tail call void @hb_free(ptr noundef %i.z) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i:       ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !136
  %i.ab = add i32 %i.aa, -1
  %spec.select.i.i.i1.i.i.i.i.i = icmp ult i32 %i.ab, -2
  br i1 %spec.select.i.i.i1.i.i.i.i.i, label %bb.e, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -36
  store i32 0, ptr %i.ac, align 4, !tbaa !137
  %i.ad = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138
  tail call void @hb_free(ptr noundef %i.ae) #16
  br label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i

_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i:           ; preds = %bb.e, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13shrink_vectorEj.exit.i.i.i: ; preds = %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i.i, %bb.c
  store i32 0, ptr %i.m, align 4, !tbaa !126
  %i.af = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !128
  tail call void @hb_free(ptr noundef %i.ag) #16
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EED2Ev.exit.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EED2Ev.exit.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13shrink_vectorEj.exit.i.i.i, %.lr.ph.i
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EE13shrink_vectorEj.exit, label %.lr.ph.i, !llvm.loop !39

_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EE13shrink_vectorEj.exit: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EED2Ev.exit.i, %bb.b
  store i32 0, ptr %i.c, align 4, !tbaa !538
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !123
  tail call void @hb_free(ptr noundef %i.ai) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZN11hb_vector_tIS_IN3CFF12cs_command_tELb0EELb0EE13shrink_vectorEj.exit, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !630    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !101
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !99

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1510

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !99

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
