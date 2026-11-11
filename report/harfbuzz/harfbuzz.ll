Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZN17hb_glyf_scratch_tD2Ev:bb.a
bb.e:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.v, align 4, !tbaa !320
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !319
  tail call void @free(ptr noundef %i.x) #59
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !318
  %i.aa = add i32 %i.z, -1
  %spec.select.i.i.i5 = icmp ult i32 %i.aa, -2
  br i1 %spec.select.i.i.i5, label %bb.f, label %_ZN11hb_vector_tIiLb0EED2Ev.exit6

bb.f:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.ab, align 4, !tbaa !320
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !319
  tail call void @free(ptr noundef %i.ad) #59
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit6

_ZN11hb_vector_tIiLb0EED2Ev.exit6:                ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1539
  %i.ag = add i32 %i.af, -1
  %spec.select.i.i.i7 = icmp ult i32 %i.ag, -2
  br i1 %spec.select.i.i.i7, label %bb.g, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8

bb.g:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.ah, align 4, !tbaa !354
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1530
  tail call void @free(ptr noundef %i.aj) #59
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8: ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit6, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1539
  %i.am = add i32 %i.al, -1
  %spec.select.i.i.i9 = icmp ult i32 %i.am, -2
  br i1 %spec.select.i.i.i9, label %bb.h, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10

bb.h:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !354
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1530
  tail call void @free(ptr noundef %i.ap) #59
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit8, %bb.h
  %i.aq = load i32, ptr %0, align 8, !tbaa !1539
  %i.ar = add i32 %i.aq, -1
  %spec.select.i.i.i11 = icmp ult i32 %i.ar, -2
  br i1 %spec.select.i.i.i11, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit12

bb.i:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !354
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1530
  tail call void @free(ptr noundef %i.au) #59
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit12

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit12: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit10, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9glyf_impl11GlyphHeader30get_extents_without_var_scaledINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_jP18hb_glyph_extents_t(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.c = load i16, ptr %i.a, align 1, !tbaa !281  ; 2 uses
  %i.d = load i16, ptr %i.b, align 1, !tbaa !281  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1540 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1544 ; 3 uses
  %i.h = icmp ult i32 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !270  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !273
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !281
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = sext i16 %i.q to i32
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1545
  %.not.i8 = icmp ult i32 %3, %i.t
  br i1 %.not.i8, label %bb.d, label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit, !prof !266

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !270  ; 2 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.v, null
  %spec.select.i.i.i.i9.i = select i1 %.not.i.i.i.i8.i, ptr @_hb_NullPool, ptr %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i9.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !273
  %i.y = zext i32 %i.g to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = sub nuw i32 %3, %i.g
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !281
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = sext i16 %i.ae to i32
  br label %_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit

_ZNK2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_t40get_leading_bearing_without_var_unscaledEjPi.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink.i = phi i32 [ %i.af, %bb.d ], [ %i.r, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.d) ; 2 uses
  %.not.i = icmp sgt i16 %i.ag, %i.ah
  %i.ai = select i1 %.not.i, i16 %i.d, i16 %i.c
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  store i32 %.sink.i, ptr %4, align 4, !tbaa !370
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i16, ptr %i.ak, align 1, !tbaa !281 ; 2 uses
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am) ; 2 uses
  %i.ao = load i16, ptr %i.al, align 1, !tbaa !281 ; 2 uses
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao) ; 2 uses
  %.not.i9 = icmp slt i16 %i.an, %i.ap
  %i.aq = select i1 %.not.i9, i16 %i.ao, i16 %i.am
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq) ; 2 uses
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !371
  %.not.i10 = icmp slt i16 %i.ag, %i.ah
  %i.au = select i1 %.not.i10, ptr %i.b, ptr %i.a
  %i.av = load i16, ptr %i.au, align 1, !tbaa !281
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = sext i16 %i.aw to i32
  %i.ay = sext i16 %i.aj to i32
  %i.az = sub nsw i32 %i.ax, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !372
  %.not.i12 = icmp sgt i16 %i.an, %i.ap
  %.val = load i16, ptr %i.al, align 1
  %.val16 = load i16, ptr %i.ak, align 1
  %i.bb = select i1 %.not.i12, i16 %.val, i16 %.val16
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = trunc nsw i32 %.sink.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bf = add nsw i32 %i.az, %.sink.i
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = load <2 x float>, ptr %i.be, align 8, !tbaa !302 ; 2 uses
  %i.bi = insertelement <2 x i16> poison, i16 %i.bd, i64 0
  %i.bj = insertelement <2 x i16> %i.bi, i16 %i.ar, i64 1
  %i.bk = sitofp <2 x i16> %i.bj to <2 x float>
  %i.bl = fmul <2 x float> %i.bh, %i.bk
  %i.bm = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bl)
  %i.bn = fptosi <2 x float> %i.bm to <2 x i32>   ; 2 uses
  store <2 x i32> %i.bn, ptr %4, align 4, !tbaa !322
  %i.bo = insertelement <2 x i16> poison, i16 %i.bg, i64 0
  %i.bp = insertelement <2 x i16> %i.bo, i16 %i.bc, i64 1
  %i.bq = sitofp <2 x i16> %i.bp to <2 x float>
  %i.br = fmul <2 x float> %i.bh, %i.bq
  %i.bs = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.br)
  %i.bt = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bu = fsub <2 x float> %i.bs, %i.bt
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>
  store <2 x i32> %i.bv, ptr %i.ba, align 4, !tbaa !322
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #38

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL23_hb_grapheme_group_funcRK15hb_glyph_info_tS1_(ptr nofree nonnull readnone align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) #39 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i16, ptr %i.a, align 4, !tbaa !278
  %i.b = and i16 %.val, 128
  %i.c = icmp ne i16 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK3AAT9TrackData12get_trackingEPKvff(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !281
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !276
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i16, ptr %i.i, align 1, !tbaa !281
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %.sroa.2.8.insert.ext.i.i = zext i16 %i.k to i64 ; 4 uses
  switch i16 %i.b, label %.preheader [
    i16 0, label %bb.g
    i16 1, label %bb.b
  ]

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %4 = add nsw i32 %i.c, -1                       ; 4 uses
  %wide.trip.count = zext i32 %4 to i64
  %exitcond.not57 = icmp eq i32 %4, 0
  br i1 %exitcond.not57, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.m, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !3346

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv58 = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.p = load i32, ptr %i.o, align 1, !tbaa !276
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul nnan float %i.r, f0x37800000
  %i.t = fcmp ugt float %i.s, %3
  br i1 %i.t, label %.critedge.split.loop.exit54, label %bb.c, !llvm.loop !3346

.critedge.split.loop.exit54:                      ; preds = %.lr.ph
  %i.u = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %.critedge.split.loop.exit54
  %.044.lcssa = phi i32 [ %i.u, %.critedge.split.loop.exit54 ], [ %4, %.preheader ], [ %4, %bb.c ] ; 2 uses
  %.04559 = add nsw i32 %i.c, -1                  ; 3 uses
  %.not4860 = icmp eq i32 %.04559, 0
  br i1 %.not4860, label %.critedge2, label %.lr.ph63

bb.d:                                             ; preds = %.lr.ph63
  %.045 = add nsw i32 %.04562, -1                 ; 3 uses
  %.not48 = icmp eq i32 %.045, 0
  br i1 %.not48, label %.critedge2, label %.lr.ph63, !llvm.loop !3347

.lr.ph63:                                         ; preds = %.critedge, %bb.d
  %.04562 = phi i32 [ %.045, %bb.d ], [ %.04559, %.critedge ] ; 3 uses
  %.045.in61 = phi i32 [ %.04562, %bb.d ], [ %i.c, %.critedge ]
  %i.v = add nsw i32 %.045.in61, -2
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1, !tbaa !276
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fmul nnan float %i.aa, f0x37800000
  %i.ac = fcmp ult float %i.ab, %3
  br i1 %i.ac, label %..critedge2_crit_edge64, label %bb.d, !llvm.loop !3347

..critedge2_crit_edge64:                          ; preds = %.lr.ph63
  br label %.critedge2, !llvm.loop !3347

.critedge2:                                       ; preds = %bb.d, %..critedge2_crit_edge64, %.critedge
  %.045.lcssa = phi i32 [ %.04559, %.critedge ], [ %.04562, %..critedge2_crit_edge64 ], [ %.045, %bb.d ] ; 2 uses
  %i.ad = icmp eq i32 %.044.lcssa, %.045.lcssa
  %i.ae = zext i32 %.044.lcssa to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ae ; 3 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  %i.ag = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.af, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  br label %bb.g

bb.f:                                             ; preds = %.critedge2
  %i.ah = load i32, ptr %i.af, align 1, !tbaa !276
  %i.ai = tail call noundef i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fmul nnan float %i.aj, f0x37800000      ; 2 uses
  %i.al = zext i32 %.045.lcssa to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 1, !tbaa !276
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fmul nnan float %i.ap, f0x37800000
  %i.ar = fsub float %3, %i.ak
  %i.as = fsub float %i.aq, %i.ak
  %i.at = fdiv float %i.ar, %i.as
  %i.au = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.af, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i) ; 2 uses
  %i.av = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.am, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  %i.aw = fsub float %i.av, %i.au
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.at, float %i.aw, float %i.au)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  %.1 = phi float [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.ag, %bb.e ], [ %i.ax, %bb.f ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %0, float noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.8.extract.trunc = trunc i64 %4 to i32  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 1, !tbaa !281
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 6 uses
  switch i32 %.sroa.4.8.extract.trunc, label %.lr.ph.preheader [
    i32 0, label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit
    i32 1, label %bb.b
  ]

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %4, 4294967295
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %i.e, align 1, !tbaa !281
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = sitofp i16 %i.g to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 1, !tbaa !276
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = sitofp i32 %i.k to float
  %i.m = fmul nnan float %i.l, f0x37800000
  %i.n = fcmp ult float %i.m, %1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !3348

bb.d:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %indvars.iv, 0
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = load i16, ptr %i.e, align 1, !tbaa !281
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = sitofp i16 %i.q to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

.thread:                                          ; preds = %bb.c, %bb.d
  %.02131.in = phi i64 [ %indvars.iv, %bb.d ], [ %4, %bb.c ] ; 2 uses
  %.02131 = trunc i64 %.02131.in to i32           ; 3 uses
  %i.s = icmp eq i32 %.02131, %.sroa.4.8.extract.trunc
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.t = add i64 %4, 4294967295
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1, !tbaa !281
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = sitofp i16 %i.x to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.g:                                             ; preds = %.thread
  %i.z = and i64 %.02131.in, 4294967295           ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !276
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = fmul nnan float %i.ad, f0x37800000
  %i.af = fcmp oeq float %i.ae, %1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.z
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !281
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = sitofp i16 %i.ai to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = add i32 %.02131, -1                     ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.ak, %.sroa.4.8.extract.trunc
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.am, ptr @_hb_NullPool, !prof !266
  %i.an = load i32, ptr %.0.i.i.i, align 1, !tbaa !276
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fmul nnan float %i.ap, f0x37800000      ; 4 uses
  %.not.i.i14.i = icmp ult i32 %.02131, %.sroa.4.8.extract.trunc
  %.0.i.i15.i = select i1 %.not.i.i14.i, ptr %i.aa, ptr @_hb_NullPool, !prof !266
  %i.ar = load i32, ptr %.0.i.i15.i, align 1, !tbaa !276
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = sitofp i32 %i.as to float
  %i.au = fmul nnan float %i.at, f0x37800000      ; 4 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.al
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !281
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = sext i16 %i.ax to i32                   ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.z
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !281
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = sext i16 %i.bb to i32                   ; 3 uses
  %i.bd = fcmp olt float %i.au, %i.aq
  br i1 %i.bd, label %bb.j, label %bb.k, !prof !265

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.034.i = phi float [ %i.au, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %.033.i = phi float [ %i.aq, %bb.j ], [ %i.au, %bb.i ] ; 2 uses
  %.032.i = phi i32 [ %i.bc, %bb.j ], [ %i.ay, %bb.i ] ; 3 uses
  %.031.i = phi i32 [ %i.ay, %bb.j ], [ %i.bc, %bb.i ] ; 2 uses
  %i.be = fcmp olt float %1, %.034.i
  br i1 %i.be, label %bb.l, label %bb.m, !prof !265

bb.l:                                             ; preds = %bb.k
  %i.bf = sitofp i32 %.032.i to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.m:                                             ; preds = %bb.k
  %i.bg = fcmp ogt float %1, %.033.i
  br i1 %i.bg, label %bb.n, label %bb.o, !prof !265

bb.n:                                             ; preds = %bb.m
  %i.bh = sitofp i32 %.031.i to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.o:                                             ; preds = %bb.m
  %i.bi = fcmp oeq float %i.au, %i.aq
  br i1 %i.bi, label %bb.p, label %bb.q, !prof !265

bb.p:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %i.bc, %i.ay
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = fmul nnan float %i.bk, 5.000000e-01
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.q:                                             ; preds = %bb.o
  %i.bm = fsub float %1, %.034.i
  %i.bn = fsub float %.033.i, %.034.i
  %i.bo = fdiv float %i.bm, %i.bn
  %i.bp = sitofp i32 %.032.i to float
  %i.bq = sub nsw i32 %.031.i, %.032.i
  %i.br = sitofp i32 %i.bq to float
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.br, float %i.bp)
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.e, %bb.f, %bb.h, %bb.a, %bb.b
end_hunk_0
