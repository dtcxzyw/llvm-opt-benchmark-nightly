Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t30decompile_deltas_add_to_pointsILb0EEEbRPKNS1_ILb1EhLj1EEE10hb_array_tI15contour_point_tEfS8_j:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph, !llvm.loop !1118

default.unreachable:                              ; preds = %bb.c
  unreachable

.sink.split:                                      ; preds = %.lr.ph, %.lr.ph88, %.lr.ph95, %bb.i, %bb.g, %bb.e
  %.062.lcssa.sink = phi ptr [ %i.dg, %.lr.ph88 ], [ %i.bg, %.lr.ph95 ], [ %i.v, %bb.e ], [ %i.bv, %bb.g ], [ %i.dt, %bb.i ], [ %i.fb, %.lr.ph ] ; 2 uses
  %.6.ph = phi i32 [ %i.i, %.lr.ph88 ], [ %i.i, %.lr.ph95 ], [ %i.n, %bb.e ], [ %i.n, %bb.g ], [ %i.n, %bb.i ], [ %i.i, %.lr.ph ]
  store ptr %.062.lcssa.sink, ptr %0, align 8, !tbaa !353
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.c
  %i.fj = phi ptr [ %i.c, %bb.c ], [ %.062.lcssa.sink, %.sink.split ]
  %.6 = phi i32 [ %i.i, %bb.c ], [ %.6.ph, %.sink.split ] ; 2 uses
  %.not = icmp ult i32 %.6, %.sroa.4.8.extract.trunc
  br i1 %.not, label %.lr.ph101, label %.critedge, !llvm.loop !1119

.critedge:                                        ; preds = %.lr.ph101, %bb.j, %bb.d, %bb.f, %bb.h, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ true, %bb.j ], [ false, %.lr.ph101 ]
  ret i1 %.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !347    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !174
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !74

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1120

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !74

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !348
  tail call void @hb_free(ptr noundef %i.m) #15
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !348  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #15 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !224  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !348
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1124
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #15 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, !prof !158

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !347   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !348
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !347
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT9glyf_impl20CompositeGlyphRecord18compile_with_pointERK15contour_point_tPc(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !180
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32                     ; 4 uses
  %i.d = and i32 %i.c, 8
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %bb.b, label %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 64
  %.not7.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i, label %bb.c, label %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.c, 4
  %i.g = and i32 %i.f, 8
  %i.h = zext nneg i32 %i.g to i64
  br label %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit

_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sink.i = phi i64 [ %i.h, %bb.c ], [ 2, %bb.a ], [ 4, %bb.b ]
  %i.i = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.i, 0                   ; 2 uses
  %..i = select i1 %.not.i, i64 6, i64 8
  %spec.select.i = add nuw nsw i64 %.sink.i, %..i ; 4 uses
  %i.j = trunc nuw nsw i64 %spec.select.i to i32  ; 3 uses
  br i1 %.not.i, label %bb.d, label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 %spec.select.i, i1 false), !alias.scope !1143
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load float, ptr %1, align 4, !tbaa !335
  %i.m = fadd float %i.l, 5.000000e-01
  %i.n = tail call noundef float @llvm.floor.f32(float %i.m)
  %i.o = fptosi float %i.n to i16
  %i.p = tail call i16 @llvm.bswap.i16(i16 %i.o)
  store i16 %i.p, ptr %i.k, align 1, !tbaa !238
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !336
  %i.s = fadd float %i.r, 5.000000e-01
  %i.t = tail call noundef float @llvm.floor.f32(float %i.s)
  %i.u = fptosi float %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.u)
  store i16 %i.w, ptr %i.v, align 1, !tbaa !238
  br label %bb.f

bb.d:                                             ; preds = %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit
  %i.x = load <2 x float>, ptr %1, align 4, !tbaa !319
  %i.y = fadd <2 x float> %i.x, splat (float 5.000000e-01)
  %i.z = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>
  %.fr57 = freeze <2 x i32> %i.aa                 ; 5 uses
  %3 = add <2 x i32> %.fr57, splat (i32 -128)
  %4 = icmp ult <2 x i32> %3, splat (i32 -256)
  %5 = bitcast <2 x i1> %4 to i2
  %or.cond5 = icmp eq i2 %5, 0
  br i1 %or.cond5, label %_ZL9hb_memcpyPvPKvm.exit51, label %_ZL9hb_memcpyPvPKvm.exit53

_ZL9hb_memcpyPvPKvm.exit51:                       ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 %spec.select.i, i1 false), !alias.scope !1144
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = bitcast <2 x i32> %.fr57 to <8 x i8>
  %i.ad = extractelement <8 x i8> %i.ac, i64 0
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !238
  %i.ae = bitcast <2 x i32> %.fr57 to <8 x i8>
  %i.af = extractelement <8 x i8> %i.ae, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !238
  br label %bb.f

_ZL9hb_memcpyPvPKvm.exit53:                       ; preds = %bb.d
  %i.ah = load i32, ptr %0, align 1, !alias.scope !1145
  store i32 %i.ah, ptr %2, align 1, !alias.scope !1145
  %i.ai = load i16, ptr %0, align 1, !tbaa !180
  %i.aj = or i16 %i.ai, 256
  store i16 %i.aj, ptr %2, align 1, !tbaa !238
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = bitcast <2 x i32> %.fr57 to <4 x i16>
  %i.am = extractelement <4 x i16> %i.al, i64 0
  %i.an = tail call i16 @llvm.bswap.i16(i16 %i.am)
  store i16 %i.an, ptr %i.ak, align 1, !alias.scope !1146
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ap = bitcast <2 x i32> %.fr57 to <4 x i16>
  %i.aq = extractelement <4 x i16> %i.ap, i64 2
  %i.ar = tail call i16 @llvm.bswap.i16(i16 %i.aq)
  store i16 %i.ar, ptr %i.ao, align 1, !alias.scope !1147
  %i.as = add nuw nsw i64 %spec.select.i, 4294967290
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  %.not.i54 = icmp eq i64 %i.at, 0
  br i1 %.not.i54, label %_ZL9hb_memcpyPvPKvm.exit55, label %bb.e, !prof !74

bb.e:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit53
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.au, i64 %i.at, i1 false), !alias.scope !1148
  br label %_ZL9hb_memcpyPvPKvm.exit55

_ZL9hb_memcpyPvPKvm.exit55:                       ; preds = %_ZL9hb_memcpyPvPKvm.exit53, %bb.e
  %i.aw = add nuw nsw i32 %i.j, 2
  br label %bb.f

bb.f:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit51, %_ZL9hb_memcpyPvPKvm.exit55, %_ZL9hb_memcpyPvPKvm.exit
  %.1 = phi i32 [ %i.j, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.j, %_ZL9hb_memcpyPvPKvm.exit51 ], [ %i.aw, %_ZL9hb_memcpyPvPKvm.exit55 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT9glyf_impl5Glyph10update_mtxEPK16hb_subset_plan_tiiiiRK22contour_point_vector_t(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.hb_pair_t.321, align 8      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct.hb_pair_t.321, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !272  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !357  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !358  ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = mul i32 %i.e, 506952113
  %i.k = and i32 %i.j, 1073741823
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !359
  %i.n = urem i32 %i.k, %i.m                      ; 2 uses
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = and i32 %i.r, 2
  %.not15.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = load i32, ptr %i.p, align 4, !tbaa !174
  %i.w = icmp eq i32 %i.v, %i.e
  br i1 %i.w, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = load i32, ptr %i.ah, align 4, !tbaa !174
  %i.y = icmp eq i32 %i.x, %i.e
  br i1 %i.y, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.aj, %bb.c ]
  %i.z = phi i64 [ %i.o, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.c ]
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.z
  %i.ab = trunc i32 %.lcssa10.i.i.i to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %spec.select.i.i.i = select i1 %i.ab, ptr %i.ac, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.01016.i13.i.i.i = phi i32 [ %i.af, %bb.c ], [ %i.n, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.ad, %bb.c ], [ 0, %.lr.ph.i.i.i.i ]
  %i.ad = add i32 %.017.i12.i.i.i, 1              ; 2 uses
  %i.ae = add i32 %i.ad, %.01016.i13.i.i.i
  %i.af = and i32 %i.ae, %i.u                     ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.c, !llvm.loop !4

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.b, %bb.a
  %.0.i.i = phi ptr [ @minus_1, %bb.a ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.b ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.al = load i32, ptr %.0.i.i, align 4, !tbaa !174 ; 7 uses
  %.not53 = icmp eq i32 %i.al, -1
  br i1 %.not53, label %_ZNK16hb_subset_plan_t19new_gid_for_old_gidEjPj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  store i32 %i.al, ptr %i.a, align 4, !tbaa !174
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !274
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = sub nsw i32 %3, %2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2820
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !285
  %.not.i = icmp ult i32 %i.al, %i.aq
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !175

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.ar, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2824
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !284
  %i.au = zext i32 %i.al to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.av, %bb.g ]
  store i32 %i.ao, ptr %.0.i, align 4, !tbaa !174
  %i.aw = sub nsw i32 %5, %4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2836
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !285
  %.not.i39 = icmp ult i32 %i.al, %i.ay
  br i1 %.not.i39, label %bb.i, label %bb.h, !prof !175

bb.h:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.az = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.az, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit41

bb.i:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2840
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !284
  %i.bc = zext i32 %i.al to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit41

_ZN11hb_vector_tIjLb0EEixEi.exit41:               ; preds = %bb.h, %bb.i
  %.0.i40 = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.bd, %bb.i ]
  store i32 %i.aw, ptr %.0.i40, align 4, !tbaa !174
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit41, %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !311 ; 8 uses
  %i.bg = add i32 %i.bf, -4
  %.not.i42 = icmp ugt i32 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 4 uses
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bj
  %.0.i43 = select i1 %.not.i42, ptr %i.bk, ptr @_hb_NullPool, !prof !175
  %i.bl = load float, ptr %.0.i43, align 4, !tbaa !335 ; 2 uses
  %i.bm = add i32 %i.bf, -3
  %.not.i44 = icmp ugt i32 %i.bf, 2
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bn
  %.0.i45 = select i1 %.not.i44, ptr %i.bo, ptr @_hb_NullPool, !prof !175
  %i.bp = load float, ptr %.0.i45, align 4, !tbaa !335
  %i.bq = add i32 %i.bf, -2
  %.not.i46 = icmp ugt i32 %i.bf, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.br
  %.0.i47 = select i1 %.not.i46, ptr %i.bs, ptr @_hb_NullPool, !prof !175
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i47, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !336 ; 2 uses
  %i.bv = add i32 %i.bf, -1
  %.not.i48.not = icmp eq i32 %i.bf, 0
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bw
  %.0.i49 = select i1 %.not.i48.not, ptr @_hb_NullPool, ptr %i.bx, !prof !74
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i49, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !336
  %i.ca = mul i32 %i.al, -1640531535              ; 2 uses
  %i.cb = fsub float %i.bp, %i.bl
  %i.cc = fadd float %i.cb, 5.000000e-01
  %i.cd = tail call noundef float @llvm.floor.f32(float %i.cc)
  %i.ce = fptosi float %i.cd to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cf = sitofp i32 %2 to float
  %i.cg = fsub float %i.cf, %i.bl
  %i.ch = fadd float %i.cg, 5.000000e-01
  %i.ci = tail call noundef float @llvm.floor.f32(float %i.ch)
  %i.cj = fptosi float %i.ci to i32
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !174
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 2720
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i32 %spec.store.select, ptr %7, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.b, ptr %i.cl, align 8
  %i.cm = call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIRjS0_IjRiEEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.cn = load i32, ptr %i.am, align 4, !tbaa !274
end_hunk_0
begin_hunk_1_@_ZN5graph7graph_t16update_distancesEv:bb.a
bb.al:                                            ; preds = %.critedge
  store i8 0, ptr %i.gt, align 1, !tbaa !390
  br label %_ZN5graph7graph_t13check_successEb.exit73

bb.am:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit.thread
  store i8 0, ptr %i.a, align 1, !tbaa !500
  br label %_ZN5graph7graph_t13check_successEb.exit73

_ZN5graph7graph_t13check_successEb.exit73:        ; preds = %.critedge, %bb.al, %_ZN5graph7graph_t13check_successEb.exit.thread, %bb.am
  %.sroa.0178.0343 = phi i32 [ %.sroa.0178.0360, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.0178.0360, %bb.am ], [ %.sroa.0178.0.lcssa, %bb.al ], [ %.sroa.0178.0.lcssa, %.critedge ]
  %.sroa.43.0339 = phi ptr [ %.sroa.43.0362, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.43.0362, %bb.am ], [ %.sroa.43.0.lcssa, %bb.al ], [ %.sroa.43.0.lcssa, %.critedge ]
  br i1 %.sroa.0158.1, label %bb.an, label %_ZN11hb_vector_tIbLb0EED2Ev.exit

bb.an:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit73
  tail call void @hb_free(ptr noundef %.sroa.15.1) #15
  br label %_ZN11hb_vector_tIbLb0EED2Ev.exit

_ZN11hb_vector_tIbLb0EED2Ev.exit:                 ; preds = %_ZN5graph7graph_t13check_successEb.exit73, %bb.an
  %i.gw = add i32 %.sroa.0178.0343, -1
  %spec.select.i.i.i.i74 = icmp ult i32 %i.gw, -2
  br i1 %spec.select.i.i.i.i74, label %bb.ao, label %_ZN19hb_priority_queue_tIlED2Ev.exit

bb.ao:                                            ; preds = %_ZN11hb_vector_tIbLb0EED2Ev.exit
  tail call void @hb_free(ptr noundef %.sroa.43.0339) #15
  br label %_ZN19hb_priority_queue_tIlED2Ev.exit

_ZN19hb_priority_queue_tIlED2Ev.exit:             ; preds = %bb.ao, %_ZN11hb_vector_tIbLb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !459    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !174
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !74

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1344

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !74

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !460
  tail call void @hb_free(ptr noundef %i.m) #15
  br label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !460  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #15 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !437  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !460
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1348
  br label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #15 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !158

_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !459   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !460
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !459
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE13set_with_hashIS2_bEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !492, !range !169, !noundef !193
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !175

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !501  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !502
  %.not36 = icmp ult i32 %i.g, %i.i
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !175

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !494
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !493  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %i.v = phi i32 [ %i.an, %bb.f ], [ %i.t, %.critedge ] ; 2 uses
  %i.w = phi ptr [ %i.al, %bb.f ], [ %i.r, %.critedge ]
  %.050 = phi i32 [ %i.ag, %bb.f ], [ 0, %.critedge ] ; 2 uses
  %.03148 = phi i32 [ %i.aj, %bb.f ], [ %i.n, %.critedge ] ; 3 uses
  %.03247 = phi i32 [ %spec.select, %bb.f ], [ -1, %.critedge ] ; 3 uses
  %i.x = lshr i32 %i.v, 2
  %i.y = icmp eq i32 %i.x, %i.k
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !496
  %i.aa = load ptr, ptr %1, align 8, !tbaa !497
  %i.ab = load <2 x i32>, ptr %i.z, align 4
  %i.ac = load <2 x i32>, ptr %i.aa, align 4
  %i.ad = icmp eq <2 x i32> %i.ab, %i.ac
  %5 = freeze <2 x i1> %i.ad
  %6 = bitcast <2 x i1> %5 to i2
  %7 = icmp eq i2 %6, -1
  br i1 %7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d, %.lr.ph
  %i.ae = trunc i32 %i.v to i1
  %i.af = icmp ne i32 %.03247, -1
  %or.cond.not = select i1 %i.ae, i1 true, i1 %i.af
  %spec.select = select i1 %or.cond.not, i32 %.03247, i32 %.03148 ; 2 uses
  %i.ag = add i32 %.050, 1                        ; 3 uses
  %i.ah = add i32 %i.ag, %.03148
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !502
  %i.aj = and i32 %i.ai, %i.ah                    ; 3 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8            ; 2 uses
  %i.ao = and i32 %i.an, 2
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1349

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03245 = phi i32 [ %.03247, %bb.e ], [ %spec.select, %bb.f ]
  %.03143 = phi i32 [ %.03148, %bb.e ], [ %i.aj, %bb.f ]
  %.03041 = phi i32 [ %.050, %bb.e ], [ %i.ag, %bb.f ]
  %.03245.fr = freeze i32 %.03245                 ; 2 uses
  %i.ap = icmp eq i32 %.03245.fr, -1
  %spec.select69 = select i1 %i.ap, i32 %.03143, i32 %.03245.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0304163 = phi i32 [ %.03041, %.loopexit ], [ 0, %.critedge ]
  %i.aq = phi i32 [ %spec.select69, %.loopexit ], [ %i.n, %.critedge ]
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 2
  %.not38 = icmp eq i32 %i.av, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !501
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.d, align 8, !tbaa !501
  %i.ay = load i32, ptr %i.at, align 8
  %i.az = and i32 %i.ay, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !503
  %i.bc = sub i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !503
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.bd = load ptr, ptr %1, align 8, !tbaa !497
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !496
  %i.be = load i8, ptr %3, align 1, !tbaa !184, !range !169, !noundef !193
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i8 %i.be, ptr %i.bf, align 4, !tbaa !1350
  %i.bg = shl nuw i32 %i.k, 2
  %i.bh = or disjoint i32 %i.bg, 3
  store i32 %i.bh, ptr %i.at, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !174
  %i.bk = add <2 x i32> %i.bj, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !174
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !504
  %i.bn = zext i16 %i.bm to i32
  %i.bo = icmp ugt i32 %.0304163, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.k, !prof !74

bb.i:                                             ; preds = %bb.h
  %i.bp = extractelement <2 x i32> %i.bk, i64 1
  %i.bq = shl i32 %i.bp, 3
  %i.br = load i32, ptr %i.h, align 4, !tbaa !502 ; 2 uses
  %i.bs = icmp ugt i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = add i32 %i.br, -8
  %i.bu = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bt) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.134 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.134
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !492, !range !169, !noundef !193
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !175

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !502
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !503
  %.sroa.speculated35 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated35, 1           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 4 uses
  %i.m = shl nuw i32 1, %narrow.i                 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = tail call noundef ptr @hb_malloc(i64 noundef %i.o) #15 ; 3 uses
  %.not29.not = icmp eq ptr %i.p, null
  br i1 %.not29.not, label %bb.e, label %bb.f, !prof !74

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !492
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %.not.i31 = icmp ugt i32 %i.k, 134217727
  br i1 %.not.i31, label %_ZL9hb_memsetPvij.exit, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.q = shl i32 16, %narrow.i
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !502  ; 2 uses
  %.not.i32 = icmp eq i32 %i.t, 0
  %i.u = add i32 %i.t, 1
  %spec.select.i = select i1 %.not.i32, i32 0, i32 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !493  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !501
  store i32 0, ptr %i.i, align 4, !tbaa !503
  %i.y = add i32 %i.m, -1
  store i32 %i.y, ptr %i.s, align 4, !tbaa !502
  %i.z = icmp eq i32 %i.l, 0
  br i1 %i.z, label %_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE9prime_forEj.exit, label %bb.h, !prof !74

bb.h:                                             ; preds = %_ZL9hb_memsetPvij.exit
  %i.aa = zext nneg i32 %narrow.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE9prime_forEj.prime_mod, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !174
  br label %_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE9prime_forEj.exit: ; preds = %_ZL9hb_memsetPvij.exit, %bb.h
  %.0.i = phi i32 [ %i.ac, %bb.h ], [ 2147483647, %_ZL9hb_memsetPvij.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ad, align 8, !tbaa !494
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ae = shl nuw nsw i16 %.tr, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !504
  store ptr %i.p, ptr %i.v, align 8, !tbaa !493
  %.not43 = icmp eq i32 %spec.select.i, 0
  br i1 %.not43, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.j, %_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.w) #15
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ak = lshr i32 %i.ai, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.am = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPN5graph17overflow_record_tEbLb0EE13set_with_hashIS2_bEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.al, i1 noundef zeroext true) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !1351

end_hunk_1
