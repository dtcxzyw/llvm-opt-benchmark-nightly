Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZNK2OT9glyf_impl11SimpleGlyph18get_contour_pointsER22contour_point_vector_tb:bb.a
  %i.cr = icmp ult i32 %i.co, 7
  br i1 %i.cr, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.by, ptr %i.ct, align 4, !tbaa !1532
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  store i8 %i.by, ptr %i.cv, align 4, !tbaa !1532
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i8 %i.by, ptr %i.cx, align 4, !tbaa !1532
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  store i8 %i.by, ptr %i.cz, align 4, !tbaa !1532
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  store i8 %i.by, ptr %i.db, align 4, !tbaa !1532
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 68
  store i8 %i.by, ptr %i.dd, align 4, !tbaa !1532
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  store i8 %i.by, ptr %i.df, align 4, !tbaa !1532
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 92
  store i8 %i.by, ptr %i.dh, align 4, !tbaa !1532
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %lftr.wideiv.i.7 = trunc i64 %indvars.iv.next.i.7 to i32
  %exitcond.not.i.7 = icmp eq i32 %.sroa.speculated.i, %lftr.wideiv.i.7
  br i1 %exitcond.not.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3248

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.r, %bb.p
  %.167 = phi ptr [ %i.bw, %bb.p ], [ %i.ce, %bb.r ], [ %i.ce, %.lr.ph.i ], [ %i.ce, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.3.i = phi i32 [ %i.bz, %bb.p ], [ %i.bz, %bb.r ], [ %.sroa.speculated.i, %.lr.ph.i ], [ %.sroa.speculated.i, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.not31.not.i = icmp ult i32 %.3.i, %.sroa.3.0.i.in
  br i1 %.not31.not.i, label %.lr.ph42.i, label %.lr.ph.i44.preheader, !llvm.loop !3249

.lr.ph.i44.preheader:                             ; preds = %.loopexit.i
  %.idx.i = mul nuw nsw i64 %.sroa.3.0.i, 12
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader, %bb.x
  %.3 = phi ptr [ %.4, %bb.x ], [ %.167, %.lr.ph.i44.preheader ] ; 5 uses
  %.03044.i = phi ptr [ %i.ed, %bb.x ], [ %.sroa.0.0.i, %.lr.ph.i44.preheader ] ; 3 uses
  %.03143.i = phi i32 [ %.132.i, %bb.x ], [ 0, %.lr.ph.i44.preheader ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.03044.i, i64 8
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !1532
  %i.dl = zext i8 %i.dk to i32                    ; 3 uses
  %i.dm = and i32 %i.dl, 2
  %.not37.i = icmp eq i32 %i.dm, 0
  br i1 %.not37.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i44
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.do = icmp ugt ptr %i.dn, %i.bu
  br i1 %i.do, label %.critedge, label %bb.t, !prof !265

bb.t:                                             ; preds = %bb.s
  %i.dp = and i32 %i.dl, 16
  %.not39.i = icmp eq i32 %i.dp, 0
  %i.dq = load i8, ptr %.3, align 1, !tbaa !301
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = sub nsw i32 0, %i.dr
  %i.dt = select i1 %.not39.i, i32 %i.ds, i32 %i.dr
  %i.du = add i32 %i.dt, %.03143.i
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph.i44
  %i.dv = and i32 %i.dl, 16
  %.not38.i = icmp eq i32 %i.dv, 0
  br i1 %.not38.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.dx = icmp ugt ptr %i.dw, %i.bu
  br i1 %i.dx, label %.critedge, label %bb.w, !prof !265

bb.w:                                             ; preds = %bb.v
  %i.dy = load i16, ptr %.3, align 1, !tbaa !281
  %i.dz = tail call noundef i16 @llvm.bswap.i16(i16 %i.dy)
  %i.ea = sext i16 %i.dz to i32
  %i.eb = add nsw i32 %.03143.i, %i.ea
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.t
  %.4 = phi ptr [ %i.dw, %bb.w ], [ %.3, %bb.u ], [ %i.dn, %bb.t ] ; 2 uses
  %.132.i = phi i32 [ %i.eb, %bb.w ], [ %.03143.i, %bb.u ], [ %i.du, %bb.t ] ; 2 uses
  %i.ec = sitofp i32 %.132.i to float
  store float %i.ec, ptr %.03044.i, align 4, !tbaa !302
  %i.ed = getelementptr inbounds nuw i8, ptr %.03044.i, i64 12 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ed, %i.di
  br i1 %.not.i45, label %.lr.ph.i48, label %.lr.ph.i44

.lr.ph.i48:                                       ; preds = %bb.x, %bb.ad
  %.6 = phi ptr [ %.7, %bb.ad ], [ %.4, %bb.x ]   ; 5 uses
  %.03044.i49 = phi ptr [ %i.ez, %bb.ad ], [ %.sroa.0.0.i, %bb.x ] ; 3 uses
  %.03143.i50 = phi i32 [ %.132.i53, %bb.ad ], [ 0, %bb.x ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.03044.i49, i64 8
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !1532
  %i.eg = zext i8 %i.ef to i32                    ; 3 uses
  %i.eh = and i32 %i.eg, 4
  %.not37.i51 = icmp eq i32 %i.eh, 0
  br i1 %.not37.i51, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i48
  %i.ei = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.ej = icmp ugt ptr %i.ei, %i.bu
  br i1 %i.ej, label %.critedge, label %bb.z, !prof !265

bb.z:                                             ; preds = %bb.y
  %i.ek = and i32 %i.eg, 32
  %.not39.i52 = icmp eq i32 %i.ek, 0
  %i.el = load i8, ptr %.6, align 1, !tbaa !301
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %i.en = sub nsw i32 0, %i.em
  %i.eo = select i1 %.not39.i52, i32 %i.en, i32 %i.em
  %i.ep = add i32 %i.eo, %.03143.i50
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph.i48
  %i.eq = and i32 %i.eg, 32
  %.not38.i56 = icmp eq i32 %i.eq, 0
  br i1 %.not38.i56, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.er = getelementptr inbounds nuw i8, ptr %.6, i64 2 ; 2 uses
  %i.es = icmp ugt ptr %i.er, %i.bu
  br i1 %i.es, label %.critedge, label %bb.ac, !prof !265

bb.ac:                                            ; preds = %bb.ab
  %i.et = load i16, ptr %.6, align 1, !tbaa !281
  %i.eu = tail call noundef i16 @llvm.bswap.i16(i16 %i.et)
  %i.ev = sext i16 %i.eu to i32
  %i.ew = add nsw i32 %.03143.i50, %i.ev
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %.7 = phi ptr [ %i.er, %bb.ac ], [ %.6, %bb.aa ], [ %i.ei, %bb.z ]
  %.132.i53 = phi i32 [ %i.ew, %bb.ac ], [ %.03143.i50, %bb.aa ], [ %i.ep, %bb.z ] ; 2 uses
  %i.ex = sitofp i32 %.132.i53 to float
  %i.ey = getelementptr inbounds nuw i8, ptr %.03044.i49, i64 4
  store float %i.ex, ptr %i.ey, align 4, !tbaa !302
  %i.ez = getelementptr inbounds nuw i8, ptr %.03044.i49, i64 12 ; 2 uses
  %.not.i54 = icmp eq ptr %i.ez, %i.di
  br i1 %.not.i54, label %.critedge, label %.lr.ph.i48

.critedge:                                        ; preds = %bb.q, %.lr.ph42.i, %bb.v, %bb.s, %bb.ad, %bb.ab, %bb.y, %bb.o, %bb.e, %bb.d, %bb.a, %bb.b, %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit, %bb.n, %._crit_edge, %bb.c
  %.5 = phi i1 [ true, %bb.ad ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.a ], [ true, %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit ], [ false, %._crit_edge ], [ false, %bb.n ], [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.o ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.ab ], [ false, %bb.s ], [ false, %.lr.ph42.i ], [ false, %bb.q ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tI15contour_point_tLb0EE11resize_fullEibb.exit, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.b, label %bb.c, label %_ZN11hb_vector_tI15contour_point_tLb0EE11resize_fullEibb.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !354  ; 3 uses
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %_ZN11hb_vector_tI15contour_point_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = sub nuw nsw i32 %1, %i.d
  %i.g = mul i32 %i.f, 12                         ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %bb.e, !prof !265

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1530
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.j
  %i.l = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

_ZN11hb_vector_tI15contour_point_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store i32 %1, ptr %i.c, align 4, !tbaa !354
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE11resize_fullEibb.exit

_ZN11hb_vector_tI15contour_point_tLb0EE11resize_fullEibb.exit: ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tI15contour_point_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i
  %.1.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 30 uses
  %.sroa.7.8.extract.trunc = trunc i64 %5 to i32  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1565
  %.not301 = icmp ult i32 %1, %i.d
  br i1 %.not301, label %bb.b, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, !prof !266

bb.b:                                             ; preds = %bb.a
  %.not302 = icmp eq ptr %7, null
  %spec.select = select i1 %.not302, ptr @_hb_NullPool, ptr %7 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !270    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.e ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !273
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !274
  %i.j = icmp ult i32 %i.i, 20
  %spec.select.i.i1.i.i = select i1 %i.j, ptr @_hb_NullPool, ptr %i.g ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 14 ; 2 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !281
  %i.m = and i16 %i.l, 256
  %.not.i.i329 = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 20 ; 4 uses
  %i.o = zext i32 %1 to i64                       ; 2 uses
  br i1 %.not.i.i329, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !276
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %i.q)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.o
  %i.t = load i16, ptr %i.s, align 1, !tbaa !281
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i: ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.w, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.x = add nuw i32 %1, 1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.y = load i16, ptr %i.k, align 1, !tbaa !281
  %i.z = and i16 %i.y, 256
  %.not.i12.i = icmp eq i16 %i.z, 0
  %i.aa = zext i32 %i.x to i64                    ; 2 uses
  br i1 %.not.i12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !276
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i

bb.f:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aa
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !281
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i: ; preds = %bb.f, %bb.e
  %.0.i13.i = phi i32 [ %i.ai, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.aj = icmp ult i32 %.0.i13.i, %.0.i.i
  br i1 %i.aj, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit, label %bb.g, !prof !265

bb.g:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i
  %i.ak = sub nuw i32 %.0.i13.i, %.0.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !273
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !274
  %i.ap = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 16
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !276
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = add i32 %i.ar, %.0.i.i                  ; 2 uses
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ao, i32 %i.as)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.ak) ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at ; 2 uses
  %.sroa.3.8.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i to i64
  %.not.i330 = icmp ult i32 %.sroa.speculated.i.i.i, 4
  br i1 %.not.i330, label %bb.h, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit, !prof !265

bb.h:                                             ; preds = %bb.g
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit: ; preds = %bb.h, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i, %bb.g
  %.sroa.015.0.i947 = phi ptr [ %i.au, %bb.g ], [ null, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i ], [ null, %bb.h ] ; 6 uses
  %.sroa.6.0.i945 = phi i64 [ %.sroa.3.8.insert.ext.i.i.i, %bb.g ], [ 0, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i ], [ 0, %bb.h ] ; 8 uses
  %i.av = phi ptr [ %i.au, %bb.g ], [ @_hb_NullPool, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i ], [ @_hb_NullPool, %bb.h ] ; 6 uses
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !281 ; 3 uses
  %.not612 = icmp eq i16 %i.aw, 0
  br i1 %.not612, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i32 0, ptr %i.ay, align 4, !tbaa !294
  %i.az = load ptr, ptr %0, align 8, !tbaa !270   ; 2 uses
  %.not.i.i.i.i332 = icmp eq ptr %i.az, null
  %spec.select.i.i.i.i333 = select i1 %.not.i.i.i.i332, ptr @_hb_NullPool, ptr %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i333, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !273
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i333, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !274
  %i.be = icmp ult i32 %i.bd, 20
  %spec.select.i.i1.i.i334 = select i1 %i.be, ptr @_hb_NullPool, ptr %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i334, i64 4
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !281
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32
  %i.bj = and i16 %i.aw, -241                     ; 2 uses
  %i.bk = tail call i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = zext nneg i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bi, 1                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %.mask.i.i.i.i = and i16 %i.aw, 128
  %.not.i.i335 = icmp eq i16 %.mask.i.i.i.i, 0
  br i1 %.not.i.i335, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bp = load i16, ptr %i.bo, align 1, !tbaa !281 ; 2 uses
  %i.bq = icmp eq i16 %i.bp, 0
  %i.br = tail call i16 @llvm.bswap.i16(i16 %i.bp)
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i947, i64 %i.bs
  %.0.i.i.i.i = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !1567
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i947, i64 %.sroa.6.0.i945
  %i.bv = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16decompile_pointsERPKNS1_ILb1EhLj1EEER11hb_vector_tIjLb0EES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.bu)
  br i1 %i.bv, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i: ; preds = %bb.j
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !1567
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.0.i.i.i.i to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i: ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i, %bb.i
  %.sroa.16.1 = phi i32 [ 0, %bb.i ], [ %i.ca, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread10.i ]
  %i.cb = icmp eq i16 %i.bj, 0
  br i1 %i.cb, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %bb.k, !prof !265

bb.k:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.sroa.015.0.i947 to i64   ; 6 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %.not.i8.i = icmp ugt i64 %i.cf, %.sroa.6.0.i945
  br i1 %.not.i8.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %bb.l, !prof !265

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !281 ; 2 uses
  %i.ci = call noundef i16 @llvm.bswap.i16(i16 %i.ch) ; 2 uses
  %.not.i.i.i = icmp ult i16 %i.ci, 16384
  br i1 %.not.i.i.i, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit, label %bb.m, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = lshr i32 %i.cj, 15
  %i.cl = lshr i32 %i.cj, 13
  %i.cm = and i32 %i.cl, 2
  %i.cn = or disjoint i32 %i.cm, %i.ck
  %narrow = mul nuw nsw i32 %i.cn, %i.bm
  %narrow613 = add nuw nsw i32 %narrow, 4
  %i.co = zext nneg i32 %narrow613 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.co, %bb.m ], [ 4, %bb.l ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.0.i.i.i
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.ce
  %.not614 = icmp ugt i64 %i.cr, %.sroa.6.0.i945
  br i1 %.not614, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 7 uses
  store i32 0, ptr %i.ct, align 4, !tbaa !354
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1530
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 2 uses
  store i32 0, ptr %i.cx, align 4, !tbaa !354
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1530
  %i.da = load ptr, ptr %0, align 8, !tbaa !270   ; 2 uses
  %.not.i.i.i.i340 = icmp eq ptr %i.da, null
  %spec.select.i.i.i.i341 = select i1 %.not.i.i.i.i340, ptr @_hb_NullPool, ptr %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i341, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !273
  %i.dd = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i341, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !274
  %i.df = icmp ult i32 %i.de, 20
  %spec.select.i.i1.i.i342 = select i1 %i.df, ptr @_hb_NullPool, ptr %i.dc ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i342, i64 4
  %i.dh = load i16, ptr %i.dg, align 1, !tbaa !281 ; 2 uses
  %i.di = call noundef i16 @llvm.bswap.i16(i16 %i.dh) ; 4 uses
  %i.dj = zext i16 %i.di to i32                   ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i342, i64 8
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !276
  %i.dm = call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i342, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i342, i64 6
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !281
  %i.dr = call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = zext i16 %i.dr to i32
  %i.dt = mul nuw i32 %i.ds, %i.dj                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 2 uses
  %i.dy = zext i16 %i.di to i64                   ; 2 uses
  %i.dz = icmp ugt i16 %i.di, 15
  %.not763 = icmp eq i16 %i.dh, 0
  %.sroa.4.8.extract.trunc = trunc i64 %3 to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i947, i64 %.sroa.6.0.i945 ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  %.sroa.2.8.insert.ext.i.i367 = and i64 %5, 2147483647 ; 2 uses
  %i.ee = mul i32 %.sroa.7.8.extract.trunc, 12
  %i.ef = select i1 %8, i32 48, i32 %i.ee         ; 2 uses
  %.not.i369 = icmp eq i32 %i.ef, 0               ; 2 uses
  %i.eg = add i64 %5, 4294967292
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = select i1 %8, i64 %i.eh, i64 0          ; 2 uses
  %i.ej = zext i32 %i.ef to i64                   ; 2 uses
  %9 = icmp ugt i32 %.sroa.7.8.extract.trunc, 3
  %10 = add i32 %.sroa.7.8.extract.trunc, -4      ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 10 uses
  %i.eo = mul i64 %5, 12
  %i.ep = and i64 %i.eo, 4294967292               ; 2 uses
  %.not.i.i.i379 = icmp eq i64 %i.ep, 0
  %i.eq = select i1 %8, i32 %10, i32 0            ; 2 uses
  %i.er = icmp ult i32 %i.eq, %.sroa.7.8.extract.trunc ; 4 uses
  %i.es = zext i16 %i.di to i64                   ; 3 uses
  %i.et = zext i32 %i.eq to i64                   ; 18 uses
  %i.eu = and i64 %5, 4294967295                  ; 9 uses
  %i.ev = sub nsw i64 %i.eu, %i.et                ; 2 uses
  %i.ew = xor i64 %i.et, -1
  %i.ex = add nsw i64 %i.eu, %i.ew                ; 2 uses
  %xtraiter = and i64 %i.ev, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.et ; 2 uses
  %indvars.iv.next839.prol = add nuw nsw i64 %i.et, 1
  %i.ez = icmp eq i64 %i.ex, 0
  %i.fa = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check1048 = icmp ult i64 %i.fa, 5
  %i.fb = and i64 %i.fa, 3                        ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  %i.fd = select i1 %i.fc, i64 4, i64 %i.fb
  %n.vec1050 = sub nsw i64 %i.fa, %i.fd           ; 2 uses
  %i.fe = add nsw i64 %n.vec1050, %i.et
  %i.ff = sub nsw i64 %i.eu, %i.et                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ff, 5
  %i.fg = and i64 %i.ff, 3                        ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = select i1 %i.fh, i64 4, i64 %i.fg
  %n.vec = sub nsw i64 %i.ff, %i.fi               ; 2 uses
  %i.fj = add nsw i64 %n.vec, %i.et
  br label %bb.o

bb.o:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403, %bb.n
  %i.fk = phi i16 [ %i.ch, %bb.n ], [ %i.alt, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.43.0 = phi ptr [ %i.bn, %bb.n ], [ %i.alm, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.22.0.in = phi i64 [ %.0.i.i.i, %bb.n ], [ %.0.i.i401, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.16.0 = phi i32 [ %.sroa.16.1, %bb.n ], [ %i.all, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.sroa.0439.0 = phi i32 [ %i.bl, %bb.n ], [ %i.aln, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.6436.0 = phi i64 [ 0, %bb.n ], [ %.sroa.6436.5589, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 8 uses
  %.sroa.0435.0 = phi ptr [ %i.cv, %bb.n ], [ %.sroa.0435.5590, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 7 uses
  %.sroa.18.0 = phi i64 [ 0, %bb.n ], [ %.sroa.18.3591, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.sroa.0417.0 = phi ptr [ %i.cz, %bb.n ], [ %.sroa.0417.3592, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0284 = phi i8 [ 0, %bb.n ], [ %.4288593, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 3 uses
  %.0264 = phi i1 [ false, %bb.n ], [ %.2266594, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 2 uses
  %.0260 = phi i1 [ false, %bb.n ], [ %.3263595, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 2 ; 2 uses
  %i.fm = call noundef i16 @llvm.bswap.i16(i16 %i.fk) ; 3 uses
  %i.fn = zext i16 %i.fm to i32                   ; 4 uses
  %i.fo = and i32 %i.fn, 4095                     ; 10 uses
  %i.fp = and i32 %i.fn, 57343
  %i.fq = load i32, ptr %spec.select, align 4, !tbaa !478 ; 4 uses
  %i.fr = icmp ult i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.p, label %.thread512, !prof !266

bb.p:                                             ; preds = %bb.o
  %.not.i138.i = icmp ult i32 %i.fo, %i.fq
  br i1 %.not.i138.i, label %bb.q, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !266

bb.q:                                             ; preds = %bb.p
  %i.fs = zext nneg i32 %i.fo to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fs
  %i.fu = load atomic i32, ptr %i.ft monotonic, align 4 ; 2 uses
  switch i32 %i.fu, label %bb.r [
    i32 0, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
    i32 -2147483648, label %bb.s
  ], !prof !647

bb.r:                                             ; preds = %bb.q
  %i.fv = sitofp i32 %i.fu to float
  %i.fw = fmul nnan float %i.fv, f0x30800000
  %i.fx = fpext float %i.fw to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

bb.s:                                             ; preds = %bb.q
  %i.fy = and i32 %i.fn, 16384
  %i.fz = icmp ne i32 %i.fy, 0                    ; 2 uses
  %.not.i = icmp sgt i16 %i.fm, -1
  br i1 %.not.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.split, !prof !266

.thread512:                                       ; preds = %bb.o
  %i.ga = and i32 %i.fn, 16384
  %i.gb = icmp ne i32 %i.ga, 0                    ; 4 uses
  %.not.i514 = icmp sgt i16 %i.fm, -1
  br i1 %.not.i514, label %bb.t, label %.split, !prof !266

.split:                                           ; preds = %.thread512, %bb.s
  %i.gc = phi i1 [ %i.gb, %.thread512 ], [ %i.fz, %bb.s ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4 ; 2 uses
  br i1 %i.gc, label %bb.x, label %bb.y

bb.t:                                             ; preds = %.thread512
  %.not127.i = icmp eq i32 %i.fq, 0
  br i1 %.not127.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, label %.thread517

.thread517:                                       ; preds = %bb.t
  %.not.i.i = icmp samesign ult i32 %i.fo, %i.fq
  br i1 %.not.i.i, label %bb.u, label %.thread522, !prof !266

bb.u:                                             ; preds = %.thread517
  %i.ge = zext nneg i32 %i.fo to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ge
  %i.gg = load atomic i32, ptr %i.gf monotonic, align 4 ; 2 uses
  switch i32 %i.gg, label %bb.v [
    i32 0, label %.thread522
    i32 -2147483648, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  ], !prof !647

bb.v:                                             ; preds = %bb.u
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = fmul nnan float %i.gh, f0x30800000      ; 3 uses
  %i.gj = fcmp une float %i.gi, 0.000000e+00
  %i.gk = fcmp une float %i.gi, 1.000000e+00
  %i.gl = and i1 %i.gj, %i.gk
  %or.cond5.i = select i1 %i.gb, i1 %i.gl, i1 false
  br i1 %or.cond5.i, label %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, label %.thread522

.thread522:                                       ; preds = %bb.u, %.thread517, %bb.v
  %.0502.ph525 = phi float [ %i.gi, %bb.v ], [ 0.000000e+00, %.thread517 ], [ 0.000000e+00, %bb.u ]
  %i.gm = fpext float %.0502.ph525 to double
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i:        ; preds = %bb.s, %bb.u, %bb.t
  %i.gn = phi i1 [ %i.gb, %bb.u ], [ %i.gb, %bb.t ], [ %i.fz, %bb.s ]
  %i.go = add nuw nsw i32 %i.fo, 1
  %i.gp = mul nuw nsw i32 %i.go, %i.dj
  %i.gq = icmp ugt i32 %i.gp, %i.dt
  br i1 %i.gq, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.w, !prof !265

_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread: ; preds = %bb.v
  %i.gr = add nuw nsw i32 %i.fo, 1
  %i.gs = mul nuw nsw i32 %i.gr, %i.dj
  %i.gt = icmp ugt i32 %i.gs, %i.dt
  br i1 %i.gt, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %.thread, !prof !265

.thread:                                          ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread
  %i.gu = mul nuw nsw i32 %i.fo, %i.dj
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gv
  br label %bb.x

bb.w:                                             ; preds = %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i
  %i.gx = mul nuw nsw i32 %i.fo, %i.dj
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gy ; 2 uses
  br i1 %i.gn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread, %.split, %bb.w
  %.199.i535 = phi ptr [ %i.gd, %.split ], [ %i.gz, %bb.w ], [ %i.gw, %.thread ]
  %.2107.i533 = phi ptr [ null, %.split ], [ %spec.select, %bb.w ], [ null, %.thread ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 4
  %.mask.i.i = and i16 %i.fk, 128
  %.not.i352 = icmp eq i16 %.mask.i.i, 0
  %i.hb = select i1 %.not.i352, i64 0, i64 %i.dy
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.dy
  br label %bb.y

bb.y:                                             ; preds = %.split, %bb.x, %bb.w
  %.199.i534 = phi ptr [ %.199.i535, %bb.x ], [ %i.gz, %bb.w ], [ %i.gd, %.split ] ; 3 uses
  %.2107.i532 = phi ptr [ %.2107.i533, %bb.x ], [ %spec.select, %bb.w ], [ null, %.split ] ; 2 uses
  %i.he = phi i1 [ true, %bb.x ], [ false, %bb.w ], [ false, %.split ]
  %.097.i = phi ptr [ %i.hc, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  %.096.i = phi ptr [ %i.hd, %bb.x ], [ null, %bb.w ], [ null, %.split ]
  br i1 %.not763, label %.critedge7.i, label %.lr.ph668

.lr.ph668:                                        ; preds = %bb.y, %bb.an
  %.0.i667 = phi i32 [ %i.je, %bb.an ], [ 0, %bb.y ] ; 3 uses
  %.092.i666 = phi double [ %.5.i.ph, %bb.an ], [ 1.000000e+00, %bb.y ] ; 11 uses
  %.3108.i665 = phi ptr [ %.6111.i.ph, %bb.an ], [ %.2107.i532, %bb.y ] ; 7 uses
  %i.hf = zext nneg i32 %.0.i667 to i64           ; 5 uses
  br i1 %i.dz, label %.preheader636.preheader, label %.critedge7.i.thread

.preheader636.preheader:                          ; preds = %.lr.ph668
  %indvars.iv.next1040 = add nuw nsw i64 %i.hf, 4 ; 2 uses
  %.not128.i1041 = icmp samesign ugt i64 %indvars.iv.next1040, %i.es
  br i1 %.not128.i1041, label %.critedge.i, label %.lr.ph1044

.preheader636:                                    ; preds = %.lr.ph1044
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next1043, 4 ; 2 uses
  %.not128.i = icmp samesign ugt i64 %indvars.iv.next, %i.es
  br i1 %.not128.i, label %.critedge.i, label %.lr.ph1044, !llvm.loop !3254

.lr.ph1044:                                       ; preds = %.preheader636.preheader, %.preheader636
  %indvars.iv.next1043 = phi i64 [ %indvars.iv.next, %.preheader636 ], [ %indvars.iv.next1040, %.preheader636.preheader ] ; 3 uses
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %.preheader636 ], [ %i.hf, %.preheader636.preheader ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %indvars.iv1042
  %i.hh = load i64, ptr %i.hg, align 1, !tbaa !3293
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.preheader636, label %..critedge.i_crit_edge, !llvm.loop !3254

..critedge.i_crit_edge:                           ; preds = %.lr.ph1044
  br label %.critedge.i, !llvm.loop !3254

.critedge.i:                                      ; preds = %.preheader636, %..critedge.i_crit_edge, %.preheader636.preheader
  %indvars.iv.lcssa = phi i64 [ %indvars.iv1042, %..critedge.i_crit_edge ], [ %i.hf, %.preheader636.preheader ], [ %indvars.iv.next1043, %.preheader636 ] ; 2 uses
  %i.hj = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.hk = icmp ult i32 %i.hj, %i.dj
  br i1 %i.hk, label %.lr.ph, label %.critedge7.i

.lr.ph:                                           ; preds = %.critedge.i, %bb.z
  %indvars.iv809 = phi i64 [ %indvars.iv.next810, %bb.z ], [ %indvars.iv.lcssa, %.critedge.i ] ; 4 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %.199.i534, i64 %indvars.iv809
  %i.hm = load i16, ptr %i.hl, align 1, !tbaa !281 ; 3 uses
  %i.hn = icmp eq i16 %i.hm, 0
end_hunk_0
begin_hunk_1_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %.not133.i = icmp eq i16 %i.hs, %i.hy
  br i1 %.not133.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.im = sub nsw i32 %i.hv, %i.ia
  %i.in = sitofp i32 %i.im to double
  %i.io = sub nsw i32 %i.ht, %i.ia
  %i.ip = sitofp i32 %i.io to double
  %i.iq = fdiv double %i.in, %i.ip
  %i.ir = fmul double %.092.i666, %i.iq
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag
  %.not132.i = icmp eq i16 %i.hs, %i.ic
  br i1 %.not132.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.is = sub nsw i32 %i.ie, %i.hv
  %i.it = sitofp i32 %i.is to double
  %i.iu = sub nsw i32 %i.ie, %i.ht
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = fdiv double %i.it, %i.iv
  %i.ix = fmul double %.092.i666, %i.iw
  br label %bb.an

bb.al:                                            ; preds = %bb.ac
  %.sroa.speculated469 = call i32 @llvm.smin.i32(i32 %i.ht, i32 0)
  %i.iy = icmp slt i32 %i.hv, %.sroa.speculated469
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.iz = icmp sgt i32 %i.hv, %.sroa.speculated
  %or.cond624 = or i1 %i.iy, %i.iz
  br i1 %or.cond624, label %.critedge7.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ja = sitofp i32 %i.hv to double
  %i.jb = sitofp i16 %i.hr to double
  %i.jc = fdiv double %i.ja, %i.jb
  %i.jd = fmul double %.092.i666, %i.jc
  br label %bb.an

bb.an:                                            ; preds = %.critedge7.i.thread, %bb.am, %bb.ab, %bb.ah, %bb.ad, %bb.ae, %bb.ai, %bb.aj, %bb.ak
  %.3.i957 = phi i32 [ %.3.i956, %bb.ae ], [ %.3.i956, %bb.ad ], [ %.3.i956, %bb.ai ], [ %.3.i956, %bb.aj ], [ %.3.i956, %bb.ak ], [ %.3.i956, %bb.ah ], [ %.3.i956, %bb.ab ], [ %.3.i956, %bb.am ], [ %.0.i667, %.critedge7.i.thread ]
  %.6111.i.ph = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.ah ], [ %.3108.i665, %bb.ab ], [ %.3108.i665, %bb.am ], [ %.3108.i665, %.critedge7.i.thread ] ; 2 uses
  %.5.i.ph = phi double [ %.092.i666, %bb.ae ], [ %.092.i666, %bb.ad ], [ %i.ir, %bb.ai ], [ %.092.i666, %bb.aj ], [ %i.ix, %bb.ak ], [ %.092.i666, %bb.ah ], [ %.092.i666, %bb.ab ], [ %i.jd, %bb.am ], [ %.092.i666, %.critedge7.i.thread ] ; 2 uses
  %i.je = add nuw i32 %.3.i957, 1                 ; 2 uses
  %i.jf = icmp ult i32 %i.je, %i.dj
  br i1 %i.jf, label %.lr.ph668, label %.critedge7.i, !llvm.loop !3256

.critedge7.i:                                     ; preds = %bb.an, %bb.al, %bb.aa, %.critedge.i, %bb.z, %bb.y
  %.3108.i654 = phi ptr [ %.2107.i532, %bb.y ], [ %.3108.i665, %bb.z ], [ %.3108.i665, %.critedge.i ], [ %.6111.i.ph, %bb.an ], [ %.3108.i665, %bb.al ], [ %.3108.i665, %bb.aa ] ; 3 uses
  %.6.i = phi double [ 1.000000e+00, %bb.y ], [ %.092.i666, %bb.z ], [ %.092.i666, %.critedge.i ], [ %.5.i.ph, %bb.an ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.aa ] ; 4 uses
  %.not134.i = icmp eq ptr %.3108.i654, null
  br i1 %.not134.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge7.i
  %i.jg = load i32, ptr %.3108.i654, align 4, !tbaa !478
  %.not.i141.i = icmp ult i32 %i.fo, %i.jg
  br i1 %.not.i141.i, label %bb.ap, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !266

bb.ap:                                            ; preds = %bb.ao
  %i.jh = fptrunc double %.6.i to float
  %i.ji = getelementptr inbounds nuw i8, ptr %.3108.i654, i64 4
  %i.jj = zext nneg i32 %i.fo to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jj
  %i.jl = fmul float %i.jh, f0x4E800000
  %i.jm = fadd float %i.jl, 5.000000e-01
  %i.jn = call noundef float @llvm.floor.f32(float %i.jm)
  %i.jo = fptosi float %i.jn to i32
  store atomic i32 %i.jo, ptr %i.jk monotonic, align 4
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.af, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread, %bb.q, %bb.r, %bb.p, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i, %.thread522, %bb.ao, %bb.ap, %.critedge7.i
  %.4116.i = phi double [ 0.000000e+00, %bb.q ], [ %.6.i, %bb.ao ], [ %i.gm, %.thread522 ], [ %.6.i, %.critedge7.i ], [ %.6.i, %bb.ap ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i ], [ 0.000000e+00, %bb.p ], [ %i.fx, %bb.r ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit.i.thread ], [ 0.000000e+00, %bb.af ]
  %i.jp = fptrunc double %.4116.i to float        ; 8 uses
  %i.jq = fcmp oeq float %i.jp, 0.000000e+00
  br i1 %i.jq, label %.thread580, label %bb.aq

bb.aq:                                            ; preds = %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
  br i1 %.0264, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646.preheader

.preheader646.preheader:                          ; preds = %bb.aq
  %.pre880 = load i16, ptr %i.fl, align 1, !tbaa !281
  br label %.preheader646

.preheader646:                                    ; preds = %.preheader646.preheader, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit
  %i.jr = phi i16 [ %i.ka, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.pre880, %.preheader646.preheader ]
  %.sroa.14413.0 = phi ptr [ %i.jt, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.43.0, %.preheader646.preheader ]
  %.sroa.9.0 = phi i64 [ %.0.i.i361, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.22.0.in, %.preheader646.preheader ]
  %.sroa.0409.0 = phi i32 [ %i.ju, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ %.sroa.0439.0, %.preheader646.preheader ] ; 2 uses
  %i.js = and i16 %i.jr, 32
  %.not615 = icmp eq i16 %i.js, 0
  br i1 %.not615, label %bb.ar, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread

bb.ar:                                            ; preds = %.preheader646
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.14413.0, i64 %.sroa.9.0 ; 4 uses
  %i.ju = add nsw i32 %.sroa.0409.0, -1
  %i.jv = icmp slt i32 %.sroa.0409.0, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.jx, %i.ce
  %.not.i359 = icmp ugt i64 %i.jy, %.sroa.6.0.i945
  %or.cond755 = select i1 %i.jv, i1 true, i1 %.not.i359, !prof !406
  br i1 %or.cond755, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %bb.as, !prof !406

bb.as:                                            ; preds = %bb.ar
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.ka = load i16, ptr %i.jz, align 1, !tbaa !281 ; 2 uses
  %i.kb = call noundef i16 @llvm.bswap.i16(i16 %i.ka) ; 2 uses
  %.not.i.i360 = icmp ult i16 %i.kb, 16384
  br i1 %.not.i.i360, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, label %bb.at, !prof !266

bb.at:                                            ; preds = %bb.as
  %i.kc = zext i16 %i.kb to i32                   ; 2 uses
  %i.kd = lshr i32 %i.kc, 15
  %i.ke = lshr i32 %i.kc, 13
  %i.kf = and i32 %i.ke, 2
  %i.kg = or disjoint i32 %i.kf, %i.kd
  %narrow616 = mul nuw nsw i32 %i.kg, %i.bm
  %narrow617 = add nuw nsw i32 %narrow616, 4
  %i.kh = zext nneg i32 %narrow617 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit: ; preds = %bb.as, %bb.at
  %.0.i.i361 = phi i64 [ %i.kh, %bb.at ], [ 4, %bb.as ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.0.i.i361
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.kj, %i.ce
  %.not618 = icmp ugt i64 %i.kk, %.sroa.6.0.i945
  br i1 %.not618, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, label %.preheader646, !llvm.loop !3257

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread: ; preds = %bb.ar, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, %.preheader646, %bb.aq
  %.2262 = phi i1 [ %.0260, %bb.aq ], [ %.0260, %bb.ar ], [ %.0260, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ], [ true, %.preheader646 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.kl = load i16, ptr %i.ea, align 1, !tbaa !281 ; 2 uses
  %i.km = icmp eq i16 %i.kl, 0
  %i.kn = call i16 @llvm.bswap.i16(i16 %i.kl)
  %i.ko = zext i16 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i947, i64 %i.ko
  %.0.i.i.i363 = select i1 %i.km, ptr @_hb_NullPool, ptr %i.kp, !prof !265
  %i.kq = zext i32 %.sroa.16.0 to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i.i.i363, i64 %i.kq ; 4 uses
  store ptr %i.kr, ptr %i.b, align 8, !tbaa !1567
  %i.ks = load i16, ptr %.sroa.43.0, align 1, !tbaa !281
  %i.kt = call noundef i16 @llvm.bswap.i16(i16 %i.ks) ; 2 uses
  %.not.i364 = icmp ugt ptr %.sroa.015.0.i947, %i.kr
  br i1 %.not.i364, label %.thread597, label %bb.au, !prof !709

bb.au:                                            ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread
  %i.ku = zext i16 %i.kt to i32
  %.not6.i = icmp ule ptr %i.kr, %i.eb
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub i64 %i.ec, %i.kv
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = icmp ule i32 %i.ku, %i.kx
  %or.cond610 = and i1 %.not6.i, %i.ky
  br i1 %or.cond610, label %bb.av, label %.thread597, !prof !1562

bb.av:                                            ; preds = %bb.au
  %.not619 = icmp eq i64 %.sroa.18.0, 0
  br i1 %.not619, label %bb.aw, label %_ZL9hb_memsetPvij.exit

bb.aw:                                            ; preds = %bb.av
  br i1 %i.ed, label %.thread597, label %bb.ax, !prof !265

bb.ax:                                            ; preds = %bb.aw
  %i.kz = call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i32 noundef %.sroa.7.8.extract.trunc, i1 noundef zeroext false)
  br i1 %i.kz, label %bb.ay, label %.thread597, !prof !523

bb.ay:                                            ; preds = %bb.ax
  store i32 %.sroa.7.8.extract.trunc, ptr %i.cx, align 4, !tbaa !354
  %i.la = load ptr, ptr %i.cy, align 8, !tbaa !1530 ; 3 uses
  br i1 %.not.i369, label %_ZL9hb_memsetPvij.exit, label %bb.az, !prof !265

bb.az:                                            ; preds = %bb.ay
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %i.la, i64 %i.ei
  call void @llvm.memset.p0.i64(ptr align 1 %i.lb, i8 0, i64 %i.ej, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.18.1 = phi i64 [ %.sroa.18.0, %bb.av ], [ %.sroa.2.8.insert.ext.i.i367, %bb.ay ], [ %.sroa.2.8.insert.ext.i.i367, %bb.az ] ; 3 uses
  %.sroa.0417.1 = phi ptr [ %.sroa.0417.0, %bb.av ], [ %i.la, %bb.ay ], [ %i.la, %bb.az ] ; 26 uses
  %i.lc = load ptr, ptr %i.b, align 8, !tbaa !1567
  %i.ld = zext i16 %i.kt to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ld ; 11 uses
  %i.lf = load i16, ptr %i.fl, align 1, !tbaa !281
  %i.lg = and i16 %i.lf, 32
  %.not620 = icmp eq i16 %i.lg, 0
  br i1 %.not620, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZL9hb_memsetPvij.exit
  %i.lh = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16decompile_pointsERPKNS1_ILb1EhLj1EEER11hb_vector_tIjLb0EES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef %i.le)
  br i1 %i.lh, label %bb.bb, label %.thread597

bb.bb:                                            ; preds = %bb.ba, %_ZL9hb_memsetPvij.exit
  %i.li = phi ptr [ %i.du, %bb.ba ], [ %i.ax, %_ZL9hb_memsetPvij.exit ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !321 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !294 ; 6 uses
  %i.ln = icmp eq i32 %i.lm, 0                    ; 4 uses
  %.sroa.7.8.extract.trunc. = select i1 %i.ln, i32 %.sroa.7.8.extract.trunc, i32 %i.lm ; 12 uses
  %or.cond = and i1 %8, %i.ln
  %or.cond3 = select i1 %or.cond, i1 %9, i1 false
  %i.lo = select i1 %or.cond3, i32 %10, i32 0     ; 6 uses
  %.not = xor i1 %i.ln, true
  %or.cond5 = select i1 %.not, i1 true, i1 %.2262
  br i1 %or.cond5, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lp = call noundef zeroext i1 @_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t30decompile_deltas_add_to_pointsILb1EEEbRPKNS1_ILb1EhLj1EEE10hb_array_tI15contour_point_tEfS8_j(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %4, i64 %5, float noundef %i.jp, ptr noundef %i.le, i32 noundef %i.lo)
  br i1 %i.lp, label %bb.bd, label %.thread597, !prof !266

bb.bd:                                            ; preds = %bb.bc
  %i.lq = call noundef zeroext i1 @_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t30decompile_deltas_add_to_pointsILb0EEEbRPKNS1_ILb1EhLj1EEE10hb_array_tI15contour_point_tEfS8_j(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %4, i64 %5, float noundef %i.jp, ptr noundef %i.le, i32 noundef %i.lo)
  br i1 %i.lq, label %select.unfold, label %.thread597, !prof !266

bb.be:                                            ; preds = %bb.bb
  %i.lr = icmp slt i32 %.sroa.7.8.extract.trunc., 0
  br i1 %i.lr, label %.thread597, label %bb.bf, !prof !265

bb.bf:                                            ; preds = %bb.be
  %i.ls = call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i32 noundef %.sroa.7.8.extract.trunc., i1 noundef zeroext false)
  br i1 %i.ls, label %bb.bg, label %.thread597, !prof !523

bb.bg:                                            ; preds = %bb.bf
  store i32 %.sroa.7.8.extract.trunc., ptr %i.ek, align 4, !tbaa !320
  %.not764 = icmp eq i32 %.sroa.7.8.extract.trunc., 0 ; 3 uses
  br i1 %.not764, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit.thread, label %.lr.ph702.preheader

.lr.ph702.preheader:                              ; preds = %bb.bg
  %.pre882 = load ptr, ptr %i.b, align 8, !tbaa !1567
  br label %.lr.ph702

.lr.ph702:                                        ; preds = %.lr.ph702.preheader, %_ZL9hb_memsetPvij.exit373
  %i.lt = phi ptr [ %i.sq, %_ZL9hb_memsetPvij.exit373 ], [ %.pre882, %.lr.ph702.preheader ] ; 3 uses
  %.0101.i701 = phi i32 [ %.9.i, %_ZL9hb_memsetPvij.exit373 ], [ 0, %.lr.ph702.preheader ] ; 6 uses
  %i.lu = ptrtoaddr ptr %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 1 ; 9 uses
  %i.lw = icmp ugt ptr %i.lv, %i.le
  br i1 %i.lw, label %.thread597, label %bb.bh, !prof !265

bb.bh:                                            ; preds = %.lr.ph702
  store ptr %i.lv, ptr %i.b, align 8, !tbaa !1567
  %i.lx = load i8, ptr %i.lt, align 1, !tbaa !301 ; 3 uses
  %i.ly = zext i8 %i.lx to i32                    ; 2 uses
  %i.lz = and i32 %i.ly, 63                       ; 2 uses
  %i.ma = add nuw nsw i32 %i.lz, 1                ; 7 uses
  %i.mb = add nuw i32 %i.ma, %.0101.i701          ; 14 uses
  %i.mc = icmp ugt i32 %i.mb, %.sroa.7.8.extract.trunc.
  br i1 %i.mc, label %.thread597, label %bb.bi, !prof !265

bb.bi:                                            ; preds = %bb.bh
  %i.md = icmp ult i32 %.0101.i701, %i.lo
  %i.me = sub nuw i32 %i.lo, %.0101.i701
  %.sroa.speculated483 = call i32 @llvm.umin.i32(i32 %i.me, i32 %i.ma)
  %i.mf = select i1 %i.md, i32 %.sroa.speculated483, i32 0 ; 7 uses
  %i.mg = add nuw i32 %i.mf, %.0101.i701          ; 9 uses
  %i.mh = lshr i32 %i.ly, 6
  switch i32 %i.mh, label %.unreachabledefault [
    i32 2, label %bb.bj
    i32 1, label %bb.bl
    i32 3, label %bb.bo
    i32 0, label %bb.bq
  ]

bb.bj:                                            ; preds = %bb.bi
  %.not.i372 = icmp eq i32 %i.ma, %i.mf
  br i1 %.not.i372, label %_ZL9hb_memsetPvij.exit373, label %bb.bk, !prof !265

bb.bk:                                            ; preds = %bb.bj
  %i.mi = sub nsw i32 %i.ma, %i.mf
  %i.mj = shl nsw i32 %i.mi, 2
  %i.mk = load ptr, ptr %i.el, align 8, !tbaa !319
  %i.ml = zext i32 %i.mg to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ml
  %i.mn = zext i32 %i.mj to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.mm, i8 0, i64 %i.mn, i1 false)
  %.pre881 = load ptr, ptr %i.b, align 8, !tbaa !1567
  br label %_ZL9hb_memsetPvij.exit373

bb.bl:                                            ; preds = %bb.bi
  %i.mo = shl nuw nsw i32 %i.ma, 1
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mp
  %i.mr = icmp ugt ptr %i.mq, %i.le
  br i1 %i.mr, label %.thread597, label %bb.bm, !prof !265

bb.bm:                                            ; preds = %bb.bl
  %i.ms = shl nuw nsw i32 %i.mf, 1
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mt ; 3 uses
  store ptr %i.mu, ptr %i.b, align 8, !tbaa !1567
  %i.mv = add nuw i32 %i.mg, 3                    ; 2 uses
  %i.mw = icmp ult i32 %i.mv, %i.mb
  br i1 %i.mw, label %.lr.ph692, label %.preheader632

.lr.ph692:                                        ; preds = %bb.bm
  %i.mx = load ptr, ptr %i.el, align 8, !tbaa !319 ; 4 uses
  br label %bb.bn

..preheader632_crit_edge:                         ; preds = %bb.bn
  store ptr %i.ot, ptr %i.b, align 8, !tbaa !1567
  br label %.preheader632

.preheader632:                                    ; preds = %..preheader632_crit_edge, %bb.bm
  %.promoted699 = phi ptr [ %i.ot, %..preheader632_crit_edge ], [ %i.mu, %bb.bm ] ; 4 uses
  %.1102.i.lcssa = phi i32 [ %i.ou, %..preheader632_crit_edge ], [ %i.mg, %bb.bm ] ; 3 uses
  %i.my = icmp ult i32 %.1102.i.lcssa, %i.mb
  br i1 %i.my, label %.lr.ph697, label %_ZL9hb_memsetPvij.exit373

.lr.ph697:                                        ; preds = %.preheader632
  %i.mz = load ptr, ptr %i.el, align 8, !tbaa !319 ; 2 uses
  %i.na = zext i32 %.1102.i.lcssa to i64          ; 4 uses
  %wide.trip.count823 = zext nneg i32 %i.mb to i64
  %i.nb = zext nneg i32 %.0101.i701 to i64
  %i.nc = and i8 %i.lx, 63
  %i.nd = zext nneg i8 %i.nc to i64
  %i.ne = add nuw nsw i64 %i.nb, %i.nd
  %i.nf = add nuw nsw i64 %i.ne, 1
  %i.ng = sub nsw i64 %i.nf, %i.na                ; 3 uses
  %min.iters.check1099 = icmp ult i64 %i.ng, 8
  br i1 %min.iters.check1099, label %scalar.ph1098.preheader, label %vector.ph1100

vector.ph1100:                                    ; preds = %.lr.ph697
  %n.vec1101 = and i64 %i.ng, -8                  ; 4 uses
  %i.nh = add nsw i64 %n.vec1101, %i.na
  %i.ni = shl nsw i64 %n.vec1101, 1
  %i.nj = getelementptr i8, ptr %.promoted699, i64 %i.ni ; 2 uses
  %invariant.gep1229 = getelementptr [4 x i8], ptr %i.mz, i64 %i.na
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1107, %vector.body1102 ] ; 3 uses
  %i.nk = shl i64 %index1103, 1
  %next.gep1104 = getelementptr i8, ptr %.promoted699, i64 %i.nk ; 2 uses
  %i.nl = getelementptr i8, ptr %next.gep1104, i64 8
  %wide.load1105 = load <4 x i16>, ptr %next.gep1104, align 1, !tbaa !281
  %wide.load1106 = load <4 x i16>, ptr %i.nl, align 1, !tbaa !281
  %i.nm = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load1105)
  %i.nn = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load1106)
  %i.no = sext <4 x i16> %i.nm to <4 x i32>
  %i.np = sext <4 x i16> %i.nn to <4 x i32>
  %gep1230 = getelementptr [4 x i8], ptr %invariant.gep1229, i64 %index1103 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %gep1230, i64 16
  store <4 x i32> %i.no, ptr %gep1230, align 4, !tbaa !322
  store <4 x i32> %i.np, ptr %i.nq, align 4, !tbaa !322
  %index.next1107 = add nuw i64 %index1103, 8     ; 2 uses
  %i.nr = icmp eq i64 %index.next1107, %n.vec1101
  br i1 %i.nr, label %middle.block1108, label %vector.body1102, !llvm.loop !3258

middle.block1108:                                 ; preds = %vector.body1102
  %cmp.n1109 = icmp eq i64 %i.ng, %n.vec1101
  br i1 %cmp.n1109, label %._ZL9hb_memsetPvij.exit373.loopexit_crit_edge, label %scalar.ph1098.preheader

scalar.ph1098.preheader:                          ; preds = %.lr.ph697, %middle.block1108
  %indvars.iv820.ph = phi i64 [ %i.na, %.lr.ph697 ], [ %i.nh, %middle.block1108 ]
  %.ph1146 = phi ptr [ %.promoted699, %.lr.ph697 ], [ %i.nj, %middle.block1108 ]
  br label %scalar.ph1098

bb.bn:                                            ; preds = %.lr.ph692, %bb.bn
  %i.ns = phi ptr [ %i.mu, %.lr.ph692 ], [ %i.ot, %bb.bn ] ; 5 uses
  %i.nt = phi i32 [ %i.mv, %.lr.ph692 ], [ %i.ov, %bb.bn ]
  %.1102.i691 = phi i32 [ %i.mg, %.lr.ph692 ], [ %i.ou, %bb.bn ] ; 5 uses
  %i.nu = load i16, ptr %i.ns, align 1, !tbaa !281
  %i.nv = call noundef i16 @llvm.bswap.i16(i16 %i.nu)
  %i.nw = sext i16 %i.nv to i32
  %i.nx = zext i32 %.1102.i691 to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.nx
  store i32 %i.nw, ptr %i.ny, align 4, !tbaa !322
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  %i.oa = load i16, ptr %i.nz, align 1, !tbaa !281
  %i.ob = call noundef i16 @llvm.bswap.i16(i16 %i.oa)
  %i.oc = sext i16 %i.ob to i32
  %i.od = add i32 %.1102.i691, 1
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.oe
  store i32 %i.oc, ptr %i.of, align 4, !tbaa !322
  %i.og = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.oh = load i16, ptr %i.og, align 1, !tbaa !281
  %i.oi = call noundef i16 @llvm.bswap.i16(i16 %i.oh)
  %i.oj = sext i16 %i.oi to i32
  %i.ok = add i32 %.1102.i691, 2
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ol
  store i32 %i.oj, ptr %i.om, align 4, !tbaa !322
  %i.on = getelementptr inbounds nuw i8, ptr %i.ns, i64 6
  %i.oo = load i16, ptr %i.on, align 1, !tbaa !281
  %i.op = call noundef i16 @llvm.bswap.i16(i16 %i.oo)
  %i.oq = sext i16 %i.op to i32
  %i.or = zext i32 %i.nt to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.or
  store i32 %i.oq, ptr %i.os, align 4, !tbaa !322
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 3 uses
  %i.ou = add i32 %.1102.i691, 4                  ; 2 uses
  %i.ov = add i32 %.1102.i691, 7                  ; 2 uses
  %i.ow = icmp ult i32 %i.ov, %i.mb
  br i1 %i.ow, label %bb.bn, label %..preheader632_crit_edge, !llvm.loop !3259

scalar.ph1098:                                    ; preds = %scalar.ph1098.preheader, %scalar.ph1098
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %scalar.ph1098 ], [ %indvars.iv820.ph, %scalar.ph1098.preheader ] ; 2 uses
  %i.ox = phi ptr [ %i.pc, %scalar.ph1098 ], [ %.ph1146, %scalar.ph1098.preheader ] ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 1, !tbaa !281
  %i.oz = call noundef i16 @llvm.bswap.i16(i16 %i.oy)
  %i.pa = sext i16 %i.oz to i32
end_hunk_1
begin_hunk_2_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %i.aae = getelementptr inbounds nuw [12 x i8], ptr %i.aab, i64 %i.aad
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aae, ptr readonly align 1 %4, i64 %i.ep, i1 false), !alias.scope !3294
  %.pr.pre = load i32, ptr %i.cs, align 8, !tbaa !1539
  %i.aaf = icmp slt i32 %.pr.pre, 0
  %i.aag = load i32, ptr %i.ct, align 4, !tbaa !354
  %i.aah = add i32 %i.aag, %.sroa.7.8.extract.trunc ; 2 uses
  store i32 %i.aah, ptr %i.ct, align 4, !tbaa !354
  br i1 %i.aaf, label %.thread597, label %bb.ci, !prof !316

bb.ci:                                            ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE6extendE10hb_array_tIS0_Eb.exit.thread, %_ZN11hb_vector_tI15contour_point_tLb0EE6extendE10hb_array_tIS0_Eb.exit
  %i.aai = phi i32 [ %i.aaa, %_ZN11hb_vector_tI15contour_point_tLb0EE6extendE10hb_array_tIS0_Eb.exit.thread ], [ %i.aah, %_ZN11hb_vector_tI15contour_point_tLb0EE6extendE10hb_array_tIS0_Eb.exit ]
  %i.aaj = load ptr, ptr %i.cu, align 8, !tbaa !1530
  %.sroa.2.8.insert.ext.i.i381 = zext i32 %i.aai to i64
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cf
  %.sroa.6436.1 = phi i64 [ %.sroa.6436.0, %bb.cf ], [ %.sroa.2.8.insert.ext.i.i381, %bb.ci ] ; 3 uses
  %.sroa.0435.1 = phi ptr [ %.sroa.0435.0, %bb.cf ], [ %i.aaj, %bb.ci ] ; 6 uses
  %i.aak = trunc nuw i8 %.0284 to i1
  %brmerge.not = select i1 %i.aak, i1 %i.er, i1 false
  br i1 %brmerge.not, label %.lr.ph731.preheader, label %.loopexit644

.lr.ph731.preheader:                              ; preds = %bb.cj
  br i1 %lcmp.mod.not, label %.lr.ph731.prol.loopexit, label %.lr.ph731.prol

.lr.ph731.prol:                                   ; preds = %.lr.ph731.preheader
  %i.aal = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.et
  %i.aam = load <2 x float>, ptr %i.aal, align 4, !tbaa !302
  %i.aan = load <2 x float>, ptr %i.ey, align 4, !tbaa !302
  %i.aao = fadd <2 x float> %i.aam, %i.aan
  store <2 x float> %i.aao, ptr %i.ey, align 4, !tbaa !302
  br label %.lr.ph731.prol.loopexit

.lr.ph731.prol.loopexit:                          ; preds = %.lr.ph731.prol, %.lr.ph731.preheader
  %indvars.iv838.unr = phi i64 [ %i.et, %.lr.ph731.preheader ], [ %indvars.iv.next839.prol, %.lr.ph731.prol ]
  br i1 %i.ez, label %.loopexit644, label %.lr.ph731

.lr.ph731:                                        ; preds = %.lr.ph731.prol.loopexit, %.lr.ph731
  %indvars.iv838 = phi i64 [ %indvars.iv.next839.1, %.lr.ph731 ], [ %indvars.iv838.unr, %.lr.ph731.prol.loopexit ] ; 4 uses
  %i.aap = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv838 ; 2 uses
  %i.aaq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv838
  %i.aar = load <2 x float>, ptr %i.aaq, align 4, !tbaa !302
  %i.aas = load <2 x float>, ptr %i.aap, align 4, !tbaa !302
  %i.aat = fadd <2 x float> %i.aar, %i.aas
  store <2 x float> %i.aat, ptr %i.aap, align 4, !tbaa !302
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %i.aau = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next839 ; 2 uses
  %i.aav = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv.next839
  %i.aaw = load <2 x float>, ptr %i.aav, align 4, !tbaa !302
  %i.aax = load <2 x float>, ptr %i.aau, align 4, !tbaa !302
  %i.aay = fadd <2 x float> %i.aaw, %i.aax
  store <2 x float> %i.aay, ptr %i.aau, align 4, !tbaa !302
  %indvars.iv.next839.1 = add nuw nsw i64 %indvars.iv838, 2 ; 2 uses
  %exitcond842.not.1 = icmp eq i64 %indvars.iv.next839.1, %i.eu
  br i1 %exitcond842.not.1, label %.loopexit644, label %.lr.ph731, !llvm.loop !3276

.loopexit644:                                     ; preds = %.lr.ph731.prol.loopexit, %.lr.ph731, %bb.cj
  br i1 %.not.i369, label %_ZL9hb_memsetPvij.exit384, label %bb.ck, !prof !265

bb.ck:                                            ; preds = %.loopexit644
  %i.aaz = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.ei
  call void @llvm.memset.p0.i64(ptr align 1 %i.aaz, i8 0, i64 %i.ej, i1 false)
  br label %_ZL9hb_memsetPvij.exit384

_ZL9hb_memsetPvij.exit384:                        ; preds = %bb.ck, %.loopexit644
  %i.aba = fcmp une float %i.jp, 1.000000e+00
  br i1 %i.aba, label %.preheader640, label %.preheader642

.preheader642:                                    ; preds = %_ZL9hb_memsetPvij.exit384
  br i1 %.not764, label %.loopexit638, label %.lr.ph733

.lr.ph733:                                        ; preds = %.preheader642
  %.sroa.18.8.extract.trunc = trunc nuw nsw i64 %.sroa.18.1 to i32
  %i.abb = zext i32 %i.lm to i64
  %wide.trip.count846 = zext nneg i32 %i.lm to i64
  br label %bb.cq

.preheader640:                                    ; preds = %_ZL9hb_memsetPvij.exit384
  br i1 %.not764, label %.loopexit638, label %.lr.ph735

.lr.ph735:                                        ; preds = %.preheader640
  %.sroa.18.8.extract.trunc432 = trunc nuw nsw i64 %.sroa.18.1 to i32
  %i.abc = zext i32 %i.lm to i64
  %wide.trip.count851 = zext nneg i32 %i.lm to i64
  %i.abd = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.abe = shufflevector <2 x float> %i.abd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cl

_ZL9hb_memsetPvij.exit384.thread:                 ; preds = %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit328
  %i.abf = fcmp une float %i.jp, 1.000000e+00
  br i1 %i.abf, label %.thread567, label %.thread572

.thread567:                                       ; preds = %_ZL9hb_memsetPvij.exit384.thread
  br i1 %i.er, label %.lr.ph739, label %select.unfold

.lr.ph739:                                        ; preds = %.thread567
  %i.abg = load ptr, ptr %i.el, align 8, !tbaa !319 ; 2 uses
  %i.abh = load ptr, ptr %i.en, align 8, !tbaa !319 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph739
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abi = add nuw i64 %index, %i.et              ; 6 uses
  %i.abj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.abi ; 3 uses
  %i.abk = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.abi ; 2 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 12   ; 2 uses
  %i.abm = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.abi ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abm, i64 24   ; 2 uses
  %i.abo = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.abi ; 2 uses
  %i.abp = getelementptr i8, ptr %i.abo, i64 36   ; 2 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %i.abi
  %wide.load = load <4 x i32>, ptr %i.abq, align 4, !tbaa !322
  %i.abr = sitofp <4 x i32> %wide.load to <4 x float>
  %i.abs = fmul <4 x float> %broadcast.splat, %i.abr
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %i.abi
  %wide.load1046 = load <4 x i32>, ptr %i.abt, align 4, !tbaa !322
  %i.abu = sitofp <4 x i32> %wide.load1046 to <4 x float>
  %i.abv = fmul <4 x float> %broadcast.splat, %i.abu
  %i.abw = load float, ptr %i.abj, align 4, !tbaa !1556
  %i.abx = load float, ptr %i.abl, align 4, !tbaa !1556
  %i.aby = load float, ptr %i.abn, align 4, !tbaa !1556
  %i.abz = load float, ptr %i.abp, align 4, !tbaa !1556
  %i.aca = insertelement <4 x float> poison, float %i.abw, i64 0
  %i.acb = insertelement <4 x float> %i.aca, float %i.abx, i64 1
  %i.acc = insertelement <4 x float> %i.acb, float %i.aby, i64 2
  %i.acd = insertelement <4 x float> %i.acc, float %i.abz, i64 3
  %i.ace = fadd <4 x float> %i.abs, %i.acd        ; 4 uses
  %i.acf = extractelement <4 x float> %i.ace, i64 0
  store float %i.acf, ptr %i.abj, align 4, !tbaa !1556
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abj, i64 4 ; 2 uses
  %i.ach = getelementptr i8, ptr %i.abk, i64 16
  %i.aci = getelementptr i8, ptr %i.abm, i64 28
  %i.acj = getelementptr i8, ptr %i.abo, i64 40
  %i.ack = load float, ptr %i.acg, align 4, !tbaa !1557
  %i.acl = load float, ptr %i.ach, align 4, !tbaa !1557
  %i.acm = load float, ptr %i.aci, align 4, !tbaa !1557
  %i.acn = load float, ptr %i.acj, align 4, !tbaa !1557
  %i.aco = insertelement <4 x float> poison, float %i.ack, i64 0
  %i.acp = insertelement <4 x float> %i.aco, float %i.acl, i64 1
  %i.acq = insertelement <4 x float> %i.acp, float %i.acm, i64 2
  %i.acr = insertelement <4 x float> %i.acq, float %i.acn, i64 3
  %i.acs = fadd <4 x float> %i.abv, %i.acr        ; 4 uses
  %i.act = extractelement <4 x float> %i.acs, i64 0
  store float %i.act, ptr %i.acg, align 4, !tbaa !1557
  %i.acu = shufflevector <4 x float> %i.ace, <4 x float> %i.acs, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.acu, ptr %i.abl, align 4, !tbaa !302
  %i.acv = shufflevector <4 x float> %i.ace, <4 x float> %i.acs, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.acv, ptr %i.abn, align 4, !tbaa !302
  %i.acw = shufflevector <4 x float> %i.ace, <4 x float> %i.acs, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.acw, ptr %i.abp, align 4, !tbaa !302
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.acx = icmp eq i64 %index.next, %n.vec
  br i1 %i.acx, label %scalar.ph.preheader, label %vector.body, !llvm.loop !3277

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph739
  %indvars.iv858.ph = phi i64 [ %i.et, %.lr.ph739 ], [ %i.fj, %vector.body ]
  %i.acy = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %scalar.ph ], [ %indvars.iv858.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ada = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv858 ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %indvars.iv858
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !322
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %indvars.iv858
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !322
  %i.adf = insertelement <2 x i32> poison, i32 %i.adc, i64 0
  %i.adg = insertelement <2 x i32> %i.adf, i32 %i.ade, i64 1
  %i.adh = sitofp <2 x i32> %i.adg to <2 x float>
  %i.adi = fmul <2 x float> %i.acz, %i.adh
  %i.adj = load <2 x float>, ptr %i.ada, align 4, !tbaa !302
  %i.adk = fadd <2 x float> %i.adi, %i.adj
  store <2 x float> %i.adk, ptr %i.ada, align 4, !tbaa !302
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 1 ; 2 uses
  %exitcond862.not = icmp eq i64 %indvars.iv.next859, %i.eu
  br i1 %exitcond862.not, label %select.unfold, label %scalar.ph, !llvm.loop !3278

bb.cl:                                            ; preds = %.lr.ph735, %bb.cp
  %indvars.iv848 = phi i64 [ 0, %.lr.ph735 ], [ %indvars.iv.next849, %bb.cp ] ; 5 uses
  %.not.i.i385 = icmp samesign ult i64 %indvars.iv848, %i.abc
  br i1 %.not.i.i385, label %bb.cn, label %bb.cm, !prof !266

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit

bb.cn:                                            ; preds = %bb.cl
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv848
  %.pre887 = load i32, ptr %i.adl, align 4, !tbaa !322
  br label %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit

_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit:       ; preds = %bb.cm, %bb.cn
  %i.adm = phi i32 [ 0, %bb.cm ], [ %.pre887, %bb.cn ] ; 3 uses
  %.not304 = icmp uge i32 %i.adm, %.sroa.18.8.extract.trunc432
  %i.adn = icmp ult i32 %i.adm, %10
  %or.cond310 = select i1 %8, i1 %i.adn, i1 false
  %or.cond756 = select i1 %.not304, i1 true, i1 %or.cond310, !prof !325
  br i1 %or.cond756, label %bb.cp, label %bb.co, !prof !325

bb.co:                                            ; preds = %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit
  %i.ado = zext nneg i32 %i.adm to i64
  %i.adp = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.ado ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  store i8 1, ptr %i.adq, align 4, !tbaa !1532
  %i.adr = load ptr, ptr %i.el, align 8, !tbaa !319
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %indvars.iv848
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !322
  %i.adu = load ptr, ptr %i.en, align 8, !tbaa !319
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adu, i64 %indvars.iv848
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !322
  %i.adx = insertelement <2 x i32> poison, i32 %i.adt, i64 0
  %i.ady = insertelement <2 x i32> %i.adx, i32 %i.adw, i64 1
  %i.adz = sitofp <2 x i32> %i.ady to <2 x float>
  %i.aea = fmul <2 x float> %i.abe, %i.adz
  %i.aeb = load <2 x float>, ptr %i.adp, align 4, !tbaa !302
  %i.aec = fadd <2 x float> %i.aea, %i.aeb
  store <2 x float> %i.aec, ptr %i.adp, align 4, !tbaa !302
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit, %bb.co
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %exitcond852.not = icmp eq i64 %indvars.iv.next849, %wide.trip.count851
  br i1 %exitcond852.not, label %.loopexit638, label %bb.cl, !llvm.loop !3279

.thread572:                                       ; preds = %_ZL9hb_memsetPvij.exit384.thread
  br i1 %i.er, label %.lr.ph737, label %select.unfold

.lr.ph737:                                        ; preds = %.thread572
  %i.aed = load ptr, ptr %i.el, align 8, !tbaa !319 ; 2 uses
  %i.aee = load ptr, ptr %i.en, align 8, !tbaa !319 ; 2 uses
  br i1 %min.iters.check1048, label %scalar.ph1047.preheader, label %vector.body1051

vector.body1051:                                  ; preds = %.lr.ph737, %vector.body1051
  %index1052 = phi i64 [ %index.next1055, %vector.body1051 ], [ 0, %.lr.ph737 ] ; 2 uses
  %i.aef = add nuw i64 %index1052, %i.et          ; 6 uses
  %i.aeg = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.aef ; 3 uses
  %i.aeh = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.aef ; 2 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 12   ; 2 uses
  %i.aej = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.aef ; 2 uses
  %i.aek = getelementptr i8, ptr %i.aej, i64 24   ; 2 uses
  %i.ael = getelementptr [12 x i8], ptr %.sroa.0417.1, i64 %i.aef ; 2 uses
  %i.aem = getelementptr i8, ptr %i.ael, i64 36   ; 2 uses
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.aef
  %wide.load1053 = load <4 x i32>, ptr %i.aen, align 4, !tbaa !322
  %i.aeo = sitofp <4 x i32> %wide.load1053 to <4 x float>
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %i.aef
  %wide.load1054 = load <4 x i32>, ptr %i.aep, align 4, !tbaa !322
  %i.aeq = sitofp <4 x i32> %wide.load1054 to <4 x float>
  %i.aer = load float, ptr %i.aeg, align 4, !tbaa !1556
  %i.aes = load float, ptr %i.aei, align 4, !tbaa !1556
  %i.aet = load float, ptr %i.aek, align 4, !tbaa !1556
  %i.aeu = load float, ptr %i.aem, align 4, !tbaa !1556
  %i.aev = insertelement <4 x float> poison, float %i.aer, i64 0
  %i.aew = insertelement <4 x float> %i.aev, float %i.aes, i64 1
  %i.aex = insertelement <4 x float> %i.aew, float %i.aet, i64 2
  %i.aey = insertelement <4 x float> %i.aex, float %i.aeu, i64 3
  %i.aez = fadd <4 x float> %i.aey, %i.aeo        ; 4 uses
  %i.afa = extractelement <4 x float> %i.aez, i64 0
  store float %i.afa, ptr %i.aeg, align 4, !tbaa !1556
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4 ; 2 uses
  %i.afc = getelementptr i8, ptr %i.aeh, i64 16
  %i.afd = getelementptr i8, ptr %i.aej, i64 28
  %i.afe = getelementptr i8, ptr %i.ael, i64 40
  %i.aff = load float, ptr %i.afb, align 4, !tbaa !1557
  %i.afg = load float, ptr %i.afc, align 4, !tbaa !1557
  %i.afh = load float, ptr %i.afd, align 4, !tbaa !1557
  %i.afi = load float, ptr %i.afe, align 4, !tbaa !1557
  %i.afj = insertelement <4 x float> poison, float %i.aff, i64 0
  %i.afk = insertelement <4 x float> %i.afj, float %i.afg, i64 1
  %i.afl = insertelement <4 x float> %i.afk, float %i.afh, i64 2
  %i.afm = insertelement <4 x float> %i.afl, float %i.afi, i64 3
  %i.afn = fadd <4 x float> %i.afm, %i.aeq        ; 4 uses
  %i.afo = extractelement <4 x float> %i.afn, i64 0
  store float %i.afo, ptr %i.afb, align 4, !tbaa !1557
  %i.afp = shufflevector <4 x float> %i.aez, <4 x float> %i.afn, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.afp, ptr %i.aei, align 4, !tbaa !302
  %i.afq = shufflevector <4 x float> %i.aez, <4 x float> %i.afn, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.afq, ptr %i.aek, align 4, !tbaa !302
  %i.afr = shufflevector <4 x float> %i.aez, <4 x float> %i.afn, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.afr, ptr %i.aem, align 4, !tbaa !302
  %index.next1055 = add nuw i64 %index1052, 4     ; 2 uses
  %i.afs = icmp eq i64 %index.next1055, %n.vec1050
  br i1 %i.afs, label %scalar.ph1047.preheader, label %vector.body1051, !llvm.loop !3280

scalar.ph1047.preheader:                          ; preds = %vector.body1051, %.lr.ph737
  %indvars.iv853.ph = phi i64 [ %i.et, %.lr.ph737 ], [ %i.fe, %vector.body1051 ]
  br label %scalar.ph1047

scalar.ph1047:                                    ; preds = %scalar.ph1047.preheader, %scalar.ph1047
  %indvars.iv853 = phi i64 [ %indvars.iv.next854, %scalar.ph1047 ], [ %indvars.iv853.ph, %scalar.ph1047.preheader ] ; 4 uses
  %i.aft = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv853 ; 2 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %indvars.iv853
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !322
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %indvars.iv853
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !322
  %i.afy = insertelement <2 x i32> poison, i32 %i.afv, i64 0
  %i.afz = insertelement <2 x i32> %i.afy, i32 %i.afx, i64 1
  %i.aga = sitofp <2 x i32> %i.afz to <2 x float>
  %i.agb = load <2 x float>, ptr %i.aft, align 4, !tbaa !302
  %i.agc = fadd <2 x float> %i.agb, %i.aga
  store <2 x float> %i.agc, ptr %i.aft, align 4, !tbaa !302
  %indvars.iv.next854 = add nuw nsw i64 %indvars.iv853, 1 ; 2 uses
  %exitcond857.not = icmp eq i64 %indvars.iv.next854, %i.eu
  br i1 %exitcond857.not, label %select.unfold, label %scalar.ph1047, !llvm.loop !3281

bb.cq:                                            ; preds = %.lr.ph733, %bb.cu
  %indvars.iv843 = phi i64 [ 0, %.lr.ph733 ], [ %indvars.iv.next844, %bb.cu ] ; 5 uses
  %.not.i.i387 = icmp samesign ult i64 %indvars.iv843, %i.abb
  br i1 %.not.i.i387, label %bb.cs, label %bb.cr, !prof !266

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389

bb.cs:                                            ; preds = %bb.cq
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv843
  %.pre886 = load i32, ptr %i.agd, align 4, !tbaa !322
  br label %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389

_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389:    ; preds = %bb.cr, %bb.cs
  %i.age = phi i32 [ 0, %bb.cr ], [ %.pre886, %bb.cs ] ; 3 uses
  %.not303 = icmp uge i32 %i.age, %.sroa.18.8.extract.trunc
  %i.agf = icmp ult i32 %i.age, %10
  %or.cond312 = select i1 %8, i1 %i.agf, i1 false
  %or.cond757 = select i1 %.not303, i1 true, i1 %or.cond312, !prof !325
  br i1 %or.cond757, label %bb.cu, label %bb.ct, !prof !325

bb.ct:                                            ; preds = %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389
  %i.agg = zext nneg i32 %i.age to i64
  %i.agh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.agg ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  store i8 1, ptr %i.agi, align 4, !tbaa !1532
  %i.agj = load ptr, ptr %i.el, align 8, !tbaa !319
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %indvars.iv843
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !322
  %i.agm = load ptr, ptr %i.en, align 8, !tbaa !319
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv843
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !322
  %i.agp = insertelement <2 x i32> poison, i32 %i.agl, i64 0
  %i.agq = insertelement <2 x i32> %i.agp, i32 %i.ago, i64 1
  %i.agr = sitofp <2 x i32> %i.agq to <2 x float>
  %i.ags = load <2 x float>, ptr %i.agh, align 4, !tbaa !302
  %i.agt = fadd <2 x float> %i.ags, %i.agr
  store <2 x float> %i.agt, ptr %i.agh, align 4, !tbaa !302
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNK9hb_iter_tI10hb_array_tIjERjEixEj.exit389, %bb.ct
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %exitcond847.not = icmp eq i64 %indvars.iv.next844, %wide.trip.count846
  br i1 %exitcond847.not, label %.loopexit638, label %bb.cq, !llvm.loop !3282

.loopexit638:                                     ; preds = %bb.cu, %bb.cp, %.preheader642, %.preheader640
  br i1 %8, label %select.unfold, label %.preheader637

.preheader637:                                    ; preds = %.loopexit638, %.thread577
  %.0276 = phi i32 [ %i.ahc, %.thread577 ], [ 0, %.loopexit638 ] ; 10 uses
  %i.agu = icmp ult i32 %.0276, %.sroa.7.8.extract.trunc
  br i1 %i.agu, label %.lr.ph741.preheader, label %.critedge

.lr.ph741.preheader:                              ; preds = %.preheader637
  %i.agv = zext i32 %.0276 to i64
  br label %.lr.ph741

.lr.ph741:                                        ; preds = %.lr.ph741.preheader, %bb.cv
  %indvars.iv863 = phi i64 [ %i.agv, %.lr.ph741.preheader ], [ %indvars.iv.next864, %bb.cv ] ; 3 uses
  %i.agw = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv863
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 9
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !1537, !range !378, !noundef !291
  %i.agz = trunc nuw i8 %i.agy to i1
  br i1 %i.agz, label %.critedge.loopexit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph741
  %indvars.iv.next864 = add nuw nsw i64 %indvars.iv863, 1 ; 2 uses
  %exitcond866.not = icmp eq i64 %indvars.iv.next864, %i.eu
  br i1 %exitcond866.not, label %select.unfold, label %.lr.ph741, !llvm.loop !3283

.critedge.loopexit:                               ; preds = %.lr.ph741
  %i.aha = trunc nuw i64 %indvars.iv863 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader637
  %.1277.lcssa = phi i32 [ %.0276, %.preheader637 ], [ %i.aha, %.critedge.loopexit ] ; 6 uses
  %i.ahb = icmp eq i32 %.1277.lcssa, %.sroa.7.8.extract.trunc
  br i1 %i.ahb, label %select.unfold, label %.preheader627, !prof !316

.preheader627:                                    ; preds = %.critedge
  %i.ahc = add i32 %.1277.lcssa, 1                ; 3 uses
  %i.ahd = icmp ult i32 %.0276, %i.ahc
  br i1 %i.ahd, label %.lr.ph747.preheader, label %._crit_edge

.lr.ph747.preheader:                              ; preds = %.preheader627
  %i.ahe = zext i32 %.0276 to i64                 ; 4 uses
  %wide.trip.count870 = zext i32 %i.ahc to i64    ; 2 uses
  %i.ahf = sub nsw i64 %wide.trip.count870, %i.ahe ; 2 uses
  %xtraiter1188 = and i64 %i.ahf, 3               ; 3 uses
  %i.ahg = sub nsw i64 %i.ahe, %wide.trip.count870
  %i.ahh = icmp ugt i64 %i.ahg, -4
  br i1 %i.ahh, label %.lr.ph747.epil.preheader, label %.lr.ph747.preheader.new

.lr.ph747.preheader.new:                          ; preds = %.lr.ph747.preheader
  %unroll_iter = and i64 %i.ahf, -4
  br label %.lr.ph747

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph747
  %lcmp.mod1189.not = icmp eq i64 %xtraiter1188, 0
  br i1 %lcmp.mod1189.not, label %._crit_edge, label %.lr.ph747.epil.preheader

.lr.ph747.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph747.preheader
  %indvars.iv867.epil.init = phi i64 [ %i.ahe, %.lr.ph747.preheader ], [ %indvars.iv.next868.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0272745.epil.init = phi i32 [ 0, %.lr.ph747.preheader ], [ %i.aik, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1191 = icmp ne i64 %xtraiter1188, 0
  call void @llvm.assume(i1 %lcmp.mod1191)
  br label %.lr.ph747.epil

.lr.ph747.epil:                                   ; preds = %.lr.ph747.epil, %.lr.ph747.epil.preheader
  %indvars.iv867.epil = phi i64 [ %indvars.iv867.epil.init, %.lr.ph747.epil.preheader ], [ %indvars.iv.next868.epil, %.lr.ph747.epil ] ; 2 uses
  %.0272745.epil = phi i32 [ %.0272745.epil.init, %.lr.ph747.epil.preheader ], [ %i.ahm, %.lr.ph747.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph747.epil.preheader ], [ %epil.iter.next, %.lr.ph747.epil ]
  %i.ahi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv867.epil
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahk = load i8, ptr %i.ahj, align 4, !tbaa !1532
  %i.ahl = zext i8 %i.ahk to i32
  %i.ahm = add i32 %.0272745.epil, %i.ahl         ; 2 uses
  %indvars.iv.next868.epil = add nuw nsw i64 %indvars.iv867.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1188
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph747.epil, !llvm.loop !3284

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph747.epil, %.preheader627
  %.0272.lcssa = phi i32 [ 0, %.preheader627 ], [ %i.aik, %._crit_edge.loopexit.unr-lcssa ], [ %i.ahm, %.lr.ph747.epil ]
  %i.ahn = sub nuw i32 %.1277.lcssa, %.0276       ; 2 uses
  %i.aho = add i32 %i.ahn, 1
  %i.ahp = sub i32 %i.aho, %.0272.lcssa           ; 2 uses
  %i.ahq = add i32 %i.ahp, -1
  %or.cond313.not = icmp ult i32 %i.ahq, %i.ahn
  br i1 %or.cond313.not, label %.preheader626, label %.thread577

.lr.ph747:                                        ; preds = %.lr.ph747, %.lr.ph747.preheader.new
  %indvars.iv867 = phi i64 [ %i.ahe, %.lr.ph747.preheader.new ], [ %indvars.iv.next868.3, %.lr.ph747 ] ; 5 uses
  %.0272745 = phi i32 [ 0, %.lr.ph747.preheader.new ], [ %i.aik, %.lr.ph747 ]
  %niter = phi i64 [ 0, %.lr.ph747.preheader.new ], [ %niter.next.3, %.lr.ph747 ]
  %i.ahr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv867
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = load i8, ptr %i.ahs, align 4, !tbaa !1532
  %i.ahu = zext i8 %i.aht to i32
  %i.ahv = add i32 %.0272745, %i.ahu
  %i.ahw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv867
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 20
  %i.ahy = load i8, ptr %i.ahx, align 4, !tbaa !1532
  %i.ahz = zext i8 %i.ahy to i32
  %i.aia = add i32 %i.ahv, %i.ahz
  %i.aib = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv867
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 32
  %i.aid = load i8, ptr %i.aic, align 4, !tbaa !1532
  %i.aie = zext i8 %i.aid to i32
  %i.aif = add i32 %i.aia, %i.aie
  %i.aig = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %indvars.iv867
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 44
  %i.aii = load i8, ptr %i.aih, align 4, !tbaa !1532
  %i.aij = zext i8 %i.aii to i32
  %i.aik = add i32 %i.aif, %i.aij                 ; 3 uses
  %indvars.iv.next868.3 = add nuw nsw i64 %indvars.iv867, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph747, !llvm.loop !3285

.preheader626:                                    ; preds = %bb.cz, %._crit_edge
  %.1273 = phi i32 [ %i.ahp, %._crit_edge ], [ %.2274, %bb.cz ]
  %.0268 = phi i32 [ %.0276, %._crit_edge ], [ %i.aix, %bb.cz ]
  br label %bb.cw

bb.cw:                                            ; preds = %.backedge, %.preheader626
  %.1269 = phi i32 [ %.0268, %.preheader626 ], [ %i.aim, %.backedge ] ; 5 uses
  %.not.i390 = icmp ult i32 %.1269, %.1277.lcssa
  %i.ail = add nuw i32 %.1269, 1
  %i.aim = select i1 %.not.i390, i32 %i.ail, i32 %.0276 ; 2 uses
  %i.ain = zext i32 %.1269 to i64                 ; 2 uses
  %i.aio = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.ain ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.aiq = load i8, ptr %i.aip, align 4, !tbaa !1532
  %.not305 = icmp eq i8 %i.aiq, 0
  br i1 %.not305, label %.backedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.air = zext i32 %i.aim to i64
  %i.ais = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.air
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  %i.aiu = load i8, ptr %i.ait, align 4, !tbaa !1532
  %.not306 = icmp eq i8 %i.aiu, 0
  br i1 %.not306, label %.preheader625, label %.backedge

.backedge:                                        ; preds = %bb.cx, %bb.cw
  br label %bb.cw, !llvm.loop !3286

.preheader625:                                    ; preds = %bb.cx, %.preheader625.backedge
  %i.aiv = phi i8 [ %.be, %.preheader625.backedge ], [ 1, %bb.cx ]
  %.2270 = phi i32 [ %i.aix, %.preheader625.backedge ], [ %.1269, %bb.cx ] ; 2 uses
  %.not.i391 = icmp ult i32 %.2270, %.1277.lcssa
  %i.aiw = add nuw i32 %.2270, 1
  %i.aix = select i1 %.not.i391, i32 %i.aiw, i32 %.0276 ; 4 uses
  %.not307 = icmp eq i8 %i.aiv, 0
  %i.aiy = zext i32 %i.aix to i64                 ; 2 uses
  %i.aiz = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.1, i64 %i.aiy ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.ajb = load i8, ptr %i.aja, align 4, !tbaa !1532 ; 2 uses
  br i1 %.not307, label %bb.cy, label %.preheader625.backedge

.preheader625.backedge:                           ; preds = %.preheader625, %bb.cy
  %.be = phi i8 [ %i.ajb, %.preheader625 ], [ 0, %bb.cy ]
  br label %.preheader625, !llvm.loop !3287

bb.cy:                                            ; preds = %.preheader625
  %.not308 = icmp eq i8 %i.ajb, 0
  br i1 %.not308, label %.preheader625.backedge, label %.preheader

.preheader:                                       ; preds = %bb.cy
  %i.ajc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0435.1, i64 %i.ain ; 2 uses
  %i.ajd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0435.1, i64 %i.aiy ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 4
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aio, i64 4
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aiz, i64 4
  br label %bb.cz
end_hunk_2
