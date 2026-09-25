Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2OT4cff136lookup_expert_subset_charset_for_sidEj:bb.a
bb.a:
  %i.a = icmp ult i32 %0, 87
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @_ZL28expert_subset_charset_to_sid, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !18
  %i.e = zext i16 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZN2OT4cff131lookup_expert_charset_for_glyphEj(i32 noundef %0) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i.i:
  %i.a = trunc i32 %0 to i16                      ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.0203.i.i.i.i = phi i32 [ 164, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %bb.e ] ; 2 uses
  %.0212.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %.223.i.i.i.i, %bb.e ] ; 2 uses
  %i.b = add i32 %.0212.i.i.i.i, %.0203.i.i.i.i
  %i.c = lshr i32 %i.b, 1                         ; 3 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr @_ZL25expert_charset_sid_to_gid, i64 %i.e
  %i.g = load i16, ptr %i.f, align 4, !tbaa !20   ; 2 uses
  %i.h = icmp ugt i16 %i.g, %i.a
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.c, -1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not28.i.i.i.i = icmp eq i16 %i.g, %i.a
  br i1 %.not28.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.c, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i.i = phi i32 [ %i.j, %bb.d ], [ %.0212.i.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0203.i.i.i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %_ZN17hb_sorted_array_tIK12sid_to_gid_tE7bsearchIjEEPS1_RKT_S4_.exit.thread, label %bb.a, !llvm.loop !0

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZL25expert_charset_sid_to_gid, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !22
  %i.n = zext i8 %i.m to i32
  br label %_ZN17hb_sorted_array_tIK12sid_to_gid_tE7bsearchIjEEPS1_RKT_S4_.exit.thread

_ZN17hb_sorted_array_tIK12sid_to_gid_tE7bsearchIjEEPS1_RKT_S4_.exit.thread: ; preds = %bb.e, %bb.f
  %i.o = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  ret i32 %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 256) i32 @_ZN2OT4cff138lookup_expert_subset_charset_for_glyphEj(i32 noundef %0) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i.i:
  %i.a = trunc i32 %0 to i16                      ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.0203.i.i.i.i = phi i32 [ 85, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %bb.e ] ; 2 uses
  %.0212.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %.223.i.i.i.i, %bb.e ] ; 2 uses
  %i.b = add i32 %.0212.i.i.i.i, %.0203.i.i.i.i
  %i.c = lshr i32 %i.b, 1                         ; 3 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr @_ZL32expert_subset_charset_sid_to_gid, i64 %i.e
  %i.g = load i16, ptr %i.f, align 4, !tbaa !20   ; 2 uses
  %i.h = icmp ugt i16 %i.g, %i.a
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.c, -1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not28.i.i.i.i = icmp eq i16 %i.g, %i.a
  br i1 %.not28.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %i.c, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i.i = phi i32 [ %i.j, %bb.d ], [ %.0212.i.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0203.i.i.i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %_ZN17hb_sorted_array_tIK12sid_to_gid_tE7bsearchIjEEPS1_RKT_S4_.exit.thread, label %bb.a, !llvm.loop !0

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZL32expert_subset_charset_sid_to_gid, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !22
  %i.n = zext i8 %i.m to i32
  br label %_ZN17hb_sorted_array_tIK12sid_to_gid_tE7bsearchIjEEPS1_RKT_S4_.exit.thread

_ZN17hb_sorted_array_tIK12sid_to_gid_tE7bsearchIjEEPS1_RKT_S4_.exit.thread: ; preds = %bb.e, %bb.f
  %i.o = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 -1, 256) i32 @_ZN2OT4cff132lookup_standard_encoding_for_sidEj(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16
  %i.e = zext i8 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff113accelerator_t11get_extentsEP9hb_font_tjP18hb_glyph_extents_tPl(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %struct.bounds_t, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.a = call fastcc noundef zeroext i1 @_ZL11_get_boundsPKN2OT4cff113accelerator_tEjR8bounds_tbPl(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false, ptr noundef %4) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.d = load double, ptr %5, align 8, !tbaa !25  ; 2 uses
  %i.e = fcmp ule double %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fadd double %i.d, 5.000000e-01
  %i.g = tail call noundef double @llvm.floor.f64(double %i.f)
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = sitofp i32 %i.h to double
  %i.j = fsub double %i.c, %i.i
  %i.k = fadd double %i.j, 5.000000e-01
  %i.l = tail call noundef double @llvm.floor.f64(double %i.k)
  %i.m = fptosi double %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %i.o = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !25 ; 2 uses
  %i.t = load double, ptr %i.q, align 8, !tbaa !25 ; 2 uses
  %i.u = fcmp ule double %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = fadd double %i.s, 5.000000e-01
  %i.w = tail call noundef double @llvm.floor.f64(double %i.v)
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %i.y = sitofp i32 %i.x to double
  %i.z = fsub double %i.t, %i.y
  %i.aa = fadd double %i.z, 5.000000e-01
  %i.ab = tail call noundef double @llvm.floor.f64(double %i.aa)
  %i.ac = fptosi double %i.ab to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink17 = phi i32 [ %i.ac, %bb.e ], [ 0, %bb.d ]
  %.sink16 = phi i32 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.ad = trunc i32 %i.o to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = trunc i32 %.sink16 to i16
  %i.ag = add nsw i32 %i.n, %i.o
  %i.ah = add nsw i32 %.sink17, %.sink16
  %i.ai = load <2 x float>, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.aj = insertelement <2 x i16> poison, i16 %i.ad, i64 0
  %i.ak = insertelement <2 x i16> %i.aj, i16 %i.af, i64 1
  %i.al = sitofp <2 x i16> %i.ak to <2 x float>
  %i.am = fmul <2 x float> %i.ai, %i.al
  %i.an = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 2 uses
  store <2 x i32> %i.ao, ptr %3, align 4, !tbaa !28
  %i.ap = trunc i32 %i.ag to i16
  %i.aq = trunc i32 %i.ah to i16
  %i.ar = insertelement <2 x i16> poison, i16 %i.ap, i64 0
  %i.as = insertelement <2 x i16> %i.ar, i16 %i.aq, i64 1
  %i.at = sitofp <2 x i16> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.ai, %i.at
  %i.av = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.au)
  %i.aw = sitofp <2 x i32> %i.ao to <2 x float>
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = fptosi <2 x float> %i.ax to <2 x i32>
  store <2 x i32> %i.ay, ptr %i.p, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL11_get_boundsPKN2OT4cff113accelerator_tEjR8bounds_tbPl(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %2, i1 noundef zeroext %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %"struct.CFF::cff1_cs_interp_env_t", align 8 ; 43 uses
  %6 = alloca %struct.cff1_extents_param_t, align 8 ; 8 uses
  store <2 x double> splat (double f0x41DFFFFFFFC00000), ptr %2, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> splat (double f0xC1E0000000000000), ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %.not29 = icmp ult i32 %1, %i.e
  br i1 %.not29, label %bb.c, label %.critedge, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 5 uses
  %i.h = icmp eq ptr %i.g, @_hb_NullPool
  br i1 %i.h, label %_ZNK3CFF8FDSelect6get_fdEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.g, align 1, !tbaa !61
  switch i8 %i.i, label %_ZNK3CFF8FDSelect6get_fdEj.exit [
    i8 0, label %bb.e
    i8 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !61
  br label %_ZNK3CFF8FDSelect6get_fdEj.exit

bb.f:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  %i.o = load i16, ptr %i.n, align 1, !tbaa !64
  %.not.i.not.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not.i.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i, label %bb.g, !prof !56

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.sroa.0.0.copyload.i.pre.i.i = load i16, ptr %i.n, align 1, !tbaa !16
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload.i.i.i = phi i16 [ %.sroa.0.0.copyload.i.pre.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i) ; 3 uses
  %.not3.i.i.i.i = icmp ugt i16 %i.q, 1
  br i1 %.not3.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i
  %i.r = zext i16 %i.q to i32
  %i.s = add nsw i32 %i.r, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i
  %.0205.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.i ], [ %i.s, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0214.i.i.i.i = phi i32 [ %.223.i.i.i.i, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.t = add i32 %.0214.i.i.i.i, %.0205.i.i.i.i
  %i.u = lshr i32 %i.t, 1                         ; 3 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.w ; 3 uses
  %i.y = load i16, ptr %i.x, align 1, !tbaa !64
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  %i.ab = icmp ult i32 %1, %i.aa
  br i1 %i.ab, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !64
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32
  %.not2.i.i.i.i = icmp ult i32 %1, %i.af
  br i1 %.not2.i.i.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i, label %bb.h

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ag = add nsw i32 %i.u, -1
  br label %bb.i

bb.h:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i
  %i.ah = add nuw nsw i32 %i.u, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i
  %.223.i.i.i.i = phi i32 [ %i.ah, %bb.h ], [ %.0214.i.i.i.i, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0205.i.i.i.i, %bb.h ], [ %i.ag, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.i, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i
  %.not.i4.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i4.not.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i, label %bb.j, !prof !56

bb.j:                                             ; preds = %.loopexit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  %i.ai = zext i16 %i.q to i64
  %i.aj = getelementptr [3 x i8], ptr %i.n, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i: ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i, %bb.j, %.loopexit.i.i
  %.pn.i.i = phi ptr [ @_hb_NullPool, %.loopexit.i.i ], [ %i.ak, %bb.j ], [ %i.x, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !61
  br label %_ZNK3CFF8FDSelect6get_fdEj.exit

_ZNK3CFF8FDSelect6get_fdEj.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i
  %.0.shrunk.i = phi i8 [ %i.am, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i ], [ 0, %bb.c ], [ %i.m, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.0.i = zext i8 %.0.shrunk.i to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.ap = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %i.ao, i32 noundef %1) ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  %.not.i.i = icmp ugt i32 %i.av, %.0.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = zext i8 %.0.shrunk.i to i64
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.ay
  %.0.i.i = select i1 %.not.i.i, ptr %i.az, ptr @_hb_NullPool, !prof !58
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !73 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4108) %i.bc, i8 0, i64 4108, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.bd, align 8
  store ptr %i.aq, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ar, ptr %.sroa.5.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  store i32 0, ptr %i.be, align 4, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 4128
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4168 ; 2 uses
  store i8 0, ptr %i.bg, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 4172
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.2.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.3.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.4.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.4.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.5.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.6.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.6.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.7.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.7.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.8.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.8.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.9.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.9.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bh, i8 0, i64 20, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 4448
  %.sroa.2.12.insert.mask.i.i = and i64 %i.ar, 4294967295
  store ptr %i.aq, ptr %i.bf, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4136
  store i64 %.sroa.2.12.insert.mask.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 4144
  store i32 0, ptr %i.bj, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4148
  store i32 0, ptr %i.bk, align 4, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 4153
  store i8 1, ptr %i.bl, align 1, !tbaa !90
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 4154
  store i8 0, ptr %i.bm, align 2, !tbaa !91
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 4156
  store i32 0, ptr %i.bn, align 4, !tbaa !92
end_hunk_0
