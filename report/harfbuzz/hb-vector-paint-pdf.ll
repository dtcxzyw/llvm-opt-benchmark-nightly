Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-pdf?download=true
inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hb_paint_funcs_set_push_clip_path_end_func
declare void @hb_paint_funcs_set_push_clip_path_end_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31hb_pdf_paint_push_clip_path_endP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.36) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_pop_clip_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL21hb_pdf_paint_pop_clipP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ]
  %i.i = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.34) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  ret void
}

declare void @hb_paint_funcs_set_color_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL18hb_pdf_paint_colorP16hb_paint_funcs_tPvijS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 %2, i32 noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.not.i.i.i, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit.i

_ZN17hb_vector_paint_t12current_bodyEv.exit.i:    ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = bitcast i32 %3 to <4 x i8>
  %i.j = shufflevector <4 x i8> %i.i, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.k = uitofp <4 x i8> %i.j to <4 x float>
  %i.l = fdiv <4 x float> %i.k, splat (float 2.550000e+02) ; 4 uses
  %i.m = extractelement <4 x float> %i.l, i64 3   ; 3 uses
  %i.n = fcmp olt float %i.m, f0x3B808081
  br i1 %i.n, label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit.i
  %i.o = fcmp olt float %i.m, f0x3F7F8000
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_alphaEf(ptr noundef nonnull align 8 dereferenceable(100) %i.p, float noundef %i.m)
  %i.r = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.12) ; 0 uses
  %i.s = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i32 noundef %i.q) ; 0 uses
  %i.t = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.13) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.u = extractelement <4 x float> %i.l, i64 0
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.u, i32 noundef 4)
  %i.v = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.w = extractelement <4 x float> %i.l, i64 1
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.w, i32 noundef 4)
  %i.x = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.y = extractelement <4 x float> %i.l, i64 2
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, float noundef %i.y, i32 noundef 4)
  %i.z = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.14) ; 0 uses
  %i.aa = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i, ptr noundef nonnull @.str.38) ; 0 uses
  br label %_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit

_ZL24hb_pdf_paint_solid_colorP17hb_vector_paint_tj.exit: ; preds = %bb.h, %_ZN17hb_vector_paint_t12current_bodyEv.exit.i, %bb.a
  ret void
}

declare void @hb_paint_funcs_set_image_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL18hb_pdf_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree readnone captures(none) %8) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i32 %5, 1886283552
  br i1 %.not, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %7, null
  %i.c = icmp ne i32 %3, 0
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne i32 %4, 0
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.e, label %bb.d, label %bb.z, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 2 uses
  %.not145 = icmp eq ptr %i.f, null
  br i1 %.not145, label %bb.z, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !61
  %i.g = call ptr @hb_blob_get_data(ptr noundef %2, ptr noundef nonnull %i.a) #12 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = load i32, ptr %i.a, align 4              ; 2 uses
  %i.j = icmp ult i32 %i.i, 8
  %or.cond5 = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond5, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.g, align 1
  %i.l = icmp ne i64 %i.k, 727905341920923785
  %i.m = zext i1 %i.l to i32
  %.not146 = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.i, -8                         ; 2 uses
  %i.o = icmp ugt i32 %i.n, 11
  %or.cond286 = select i1 %.not146, i1 %i.o, i1 false
  br i1 %or.cond286, label %.lr.ph, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

.lr.ph:                                           ; preds = %bb.f, %.thread
  %i.p = phi i32 [ %i.bc, %.thread ], [ %i.n, %bb.f ]
  %.093218 = phi i32 [ %.194, %.thread ], [ 0, %bb.f ] ; 9 uses
  %.098217 = phi i32 [ %i.ba, %.thread ], [ 8, %bb.f ] ; 2 uses
  %.0101216 = phi i32 [ %.1102, %.thread ], [ 0, %bb.f ] ; 12 uses
  %.0106215 = phi ptr [ %.1107, %.thread ], [ null, %bb.f ] ; 12 uses
  %.0111214 = phi i32 [ %.1112, %.thread ], [ 0, %bb.f ] ; 12 uses
  %.0116213 = phi ptr [ %.1117, %.thread ], [ null, %bb.f ] ; 12 uses
  %.0121212 = phi i1 [ %.3124, %.thread ], [ false, %bb.f ] ; 9 uses
  %.0128211 = phi i32 [ %.3131, %.thread ], [ 3, %bb.f ] ; 9 uses
  %.0135210 = phi i32 [ %.1136, %.thread ], [ 0, %bb.f ] ; 9 uses
  %.sroa.13.0209 = phi ptr [ %.sroa.13.1, %.thread ], [ null, %bb.f ] ; 18 uses
  %.sroa.0.0208 = phi i32 [ %.sroa.0.1, %.thread ], [ 0, %bb.f ] ; 19 uses
  %.sroa.8.0207 = phi i32 [ %.sroa.8.1, %.thread ], [ 0, %bb.f ] ; 15 uses
  %i.q = zext i32 %.098217 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q ; 12 uses
  %i.s = load i32, ptr %i.r, align 1              ; 2 uses
  %i.t = call i32 @llvm.bswap.i32(i32 %i.s)       ; 7 uses
  %i.u = add i32 %i.p, -12
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %.thread179, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 1
  %i.y = call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  switch i32 %i.y, label %.fold.split [
    i32 1229472850, label %bb.h
    i32 1347179589, label %.thread
    i32 1951551059, label %bb.n
    i32 1229209940, label %bb.o
    i32 1229278788, label %.thread179
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ult i32 %i.t, 13
  br i1 %i.aa, label %.thread164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %9 = load i8, ptr %i.z, align 1, !tbaa !63
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %13 = load i8, ptr %12, align 1, !tbaa !63
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %18 = load i8, ptr %17, align 1, !tbaa !63
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %23 = load i8, ptr %22, align 1, !tbaa !63
  %24 = zext i8 %23 to i32
  %25 = or disjoint i32 %21, %24                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %26 = load i8, ptr %i.ab, align 1, !tbaa !63
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %30 = load i8, ptr %29, align 1, !tbaa !63
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or disjoint i32 %32, %28
  %34 = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %35 = load i8, ptr %34, align 1, !tbaa !63
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = or disjoint i32 %33, %37
  %39 = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  %40 = load i8, ptr %39, align 1, !tbaa !63
  %41 = zext i8 %40 to i32
  %42 = or disjoint i32 %38, %41                  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63
  %.not147 = icmp eq i8 %i.ad, 8
  br i1 %.not147, label %bb.j, label %.thread164

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !63
  switch i8 %i.af, label %.thread164 [
    i8 0, label %bb.m
    i8 2, label %.thread
    i8 3, label %bb.m
    i8 4, label %bb.k
    i8 6, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %.thread

bb.l:                                             ; preds = %bb.j
  br label %.thread

bb.m:                                             ; preds = %bb.j, %bb.j
  br label %.thread

bb.n:                                             ; preds = %bb.g
  br label %.thread

bb.o:                                             ; preds = %bb.g
  %i.ag = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.sroa.8.0207, i32 %i.t) ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  %i.ai = extractvalue { i32, i1 } %i.ag, 0       ; 5 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %or.cond.i = or i1 %i.ah, %i.aj
  %i.ak = icmp slt i32 %.sroa.0.0208, 0
  %or.cond193 = select i1 %or.cond.i, i1 true, i1 %i.ak, !prof !64
  br i1 %or.cond193, label %.thread, label %bb.p, !prof !64

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i = icmp samesign ugt i32 %i.ai, %.sroa.0.0208
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !23

.preheader.i.i.i:                                 ; preds = %bb.p, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.an, %.preheader.i.i.i ], [ %.sroa.0.0208, %bb.p ] ; 2 uses
  %i.al = lshr i32 %.053.i.i.i, 1
  %i.am = add nuw i32 %.053.i.i.i, 8
  %i.an = add nuw i32 %i.am, %i.al                ; 7 uses
  %i.ao = icmp ugt i32 %i.ai, %i.an
  br i1 %i.ao, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !0

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %.sroa.0.0208, 0
  br i1 %.not8.i.i.i.i.i, label %bb.q, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.q:                                             ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %.sroa.13.0209, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = zext i32 %i.an to i64
  %i.aq = call ptr @hb_malloc(i64 noundef %i.ap) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.s, !prof !23

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.8.0207, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, label %bb.t, !prof !23

bb.t:                                             ; preds = %bb.s
  %i.ar = zext nneg i32 %.sroa.8.0207 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %.sroa.13.0209, i64 range(i64 0, 103079215081) %i.ar, i1 false), !alias.scope !486
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.q, %.thread39.i.i.i
  %i.as = phi ptr [ null, %bb.q ], [ %.sroa.13.0209, %.thread39.i.i.i ]
  %i.at = zext i32 %i.an to i64
  %i.au = call ptr @hb_realloc(ptr noundef %i.as, i64 noundef %i.at) #12 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.r
  %i.av = xor i32 %.sroa.0.0208, -1
  br label %.thread

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i: ; preds = %bb.s, %bb.t, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.p
  %.sroa.0.5 = phi i32 [ %i.an, %bb.s ], [ %.sroa.0.0208, %bb.p ], [ %i.an, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.an, %bb.t ] ; 2 uses
  %.sroa.13.5 = phi ptr [ %i.aq, %bb.s ], [ %.sroa.13.0209, %bb.p ], [ %i.au, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.aq, %bb.t ] ; 3 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %.thread, label %bb.u, !prof !23

bb.u:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i
  %i.aw = zext i32 %i.t to i64
  %i.ax = zext nneg i32 %.sroa.8.0207 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.13.5, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr nonnull readonly align 1 %i.z, i64 range(i64 0, 103079215081) %i.aw, i1 false), !alias.scope !487
  br label %.thread

.fold.split:                                      ; preds = %bb.g
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.m, %bb.k, %bb.l, %bb.n, %.fold.split, %bb.g, %bb.o, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, %bb.u
  %.sroa.8.1 = phi i32 [ %.sroa.8.0207, %.fold.split ], [ %i.ai, %bb.u ], [ %.sroa.8.0207, %bb.g ], [ %.sroa.8.0207, %bb.n ], [ %.sroa.8.0207, %bb.o ], [ %.sroa.8.0207, %bb.j ], [ %.sroa.8.0207, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %i.ai, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %.sroa.8.0207, %bb.l ], [ %.sroa.8.0207, %bb.k ], [ %.sroa.8.0207, %bb.m ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.0208, %.fold.split ], [ %.sroa.0.5, %bb.u ], [ %.sroa.0.0208, %bb.g ], [ %.sroa.0.0208, %bb.n ], [ %.sroa.0.0208, %bb.o ], [ %.sroa.0.0208, %bb.j ], [ %i.av, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.sroa.0.5, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %.sroa.0.0208, %bb.l ], [ %.sroa.0.0208, %bb.k ], [ %.sroa.0.0208, %bb.m ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0209, %.fold.split ], [ %.sroa.13.5, %bb.u ], [ %.sroa.13.0209, %bb.g ], [ %.sroa.13.0209, %bb.n ], [ %.sroa.13.0209, %bb.o ], [ %.sroa.13.0209, %bb.j ], [ %.sroa.13.0209, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.sroa.13.5, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %.sroa.13.0209, %bb.l ], [ %.sroa.13.0209, %bb.k ], [ %.sroa.13.0209, %bb.m ] ; 2 uses
  %.1136 = phi i32 [ %.0135210, %.fold.split ], [ %.0135210, %bb.u ], [ %.0135210, %bb.g ], [ %.0135210, %bb.n ], [ %.0135210, %bb.o ], [ %42, %bb.j ], [ %.0135210, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.0135210, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %42, %bb.l ], [ %42, %bb.k ], [ %42, %bb.m ] ; 2 uses
  %.3131 = phi i32 [ %.0128211, %.fold.split ], [ %.0128211, %bb.u ], [ %.0128211, %bb.g ], [ %.0128211, %bb.n ], [ %.0128211, %bb.o ], [ 3, %bb.j ], [ %.0128211, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.0128211, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ 4, %bb.l ], [ 2, %bb.k ], [ 1, %bb.m ] ; 2 uses
  %.3124 = phi i1 [ %.0121212, %.fold.split ], [ %.0121212, %bb.u ], [ %.0121212, %bb.g ], [ %.0121212, %bb.n ], [ %.0121212, %bb.o ], [ false, %bb.j ], [ %.0121212, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.0121212, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ true, %bb.l ], [ true, %bb.k ], [ false, %bb.m ] ; 2 uses
  %.1117 = phi ptr [ %.0116213, %.fold.split ], [ %.0116213, %bb.u ], [ %i.z, %bb.g ], [ %.0116213, %bb.n ], [ %.0116213, %bb.o ], [ %.0116213, %bb.j ], [ %.0116213, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.0116213, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %.0116213, %bb.l ], [ %.0116213, %bb.k ], [ %.0116213, %bb.m ] ; 2 uses
  %.1112 = phi i32 [ %.0111214, %.fold.split ], [ %.0111214, %bb.u ], [ %i.t, %bb.g ], [ %.0111214, %bb.n ], [ %.0111214, %bb.o ], [ %.0111214, %bb.j ], [ %.0111214, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.0111214, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %.0111214, %bb.l ], [ %.0111214, %bb.k ], [ %.0111214, %bb.m ] ; 2 uses
  %.1107 = phi ptr [ %.0106215, %.fold.split ], [ %.0106215, %bb.u ], [ %.0106215, %bb.g ], [ %i.z, %bb.n ], [ %.0106215, %bb.o ], [ %.0106215, %bb.j ], [ %.0106215, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.0106215, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %.0106215, %bb.l ], [ %.0106215, %bb.k ], [ %.0106215, %bb.m ] ; 2 uses
  %.1102 = phi i32 [ %.0101216, %.fold.split ], [ %.0101216, %bb.u ], [ %.0101216, %bb.g ], [ %i.t, %bb.n ], [ %.0101216, %bb.o ], [ %.0101216, %bb.j ], [ %.0101216, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.0101216, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %.0101216, %bb.l ], [ %.0101216, %bb.k ], [ %.0101216, %bb.m ] ; 2 uses
  %.194 = phi i32 [ %.093218, %.fold.split ], [ %.093218, %bb.u ], [ %.093218, %bb.g ], [ %.093218, %bb.n ], [ %.093218, %bb.o ], [ %25, %bb.j ], [ %.093218, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i ], [ %.093218, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i ], [ %25, %bb.l ], [ %25, %bb.k ], [ %25, %bb.m ] ; 2 uses
  %i.az = add i32 %.098217, 12
  %i.ba = add i32 %i.az, %i.t                     ; 2 uses
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !61
  %i.bc = sub i32 %i.bb, %i.ba                    ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, 11
  br i1 %i.bd, label %.lr.ph, label %.thread179

.thread179:                                       ; preds = %.thread, %.lr.ph, %bb.g
  %.sroa.8.0.lcssa = phi i32 [ %.sroa.8.0207, %bb.g ], [ %.sroa.8.1, %.thread ], [ %.sroa.8.0207, %.lr.ph ] ; 2 uses
  %.sroa.0.0.lcssa = phi i32 [ %.sroa.0.0208, %bb.g ], [ %.sroa.0.1, %.thread ], [ %.sroa.0.0208, %.lr.ph ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.13.0209, %bb.g ], [ %.sroa.13.1, %.thread ], [ %.sroa.13.0209, %.lr.ph ] ; 3 uses
  %.0135.lcssa = phi i32 [ %.0135210, %bb.g ], [ %.1136, %.thread ], [ %.0135210, %.lr.ph ] ; 2 uses
  %.0128.lcssa = phi i32 [ %.0128211, %bb.g ], [ %.3131, %.thread ], [ %.0128211, %.lr.ph ]
  %.0121.lcssa = phi i1 [ %.0121212, %bb.g ], [ %.3124, %.thread ], [ %.0121212, %.lr.ph ]
  %.0116.lcssa = phi ptr [ %.0116213, %bb.g ], [ %.1117, %.thread ], [ %.0116213, %.lr.ph ]
  %.0111.lcssa = phi i32 [ %.0111214, %bb.g ], [ %.1112, %.thread ], [ %.0111214, %.lr.ph ]
  %.0106.lcssa = phi ptr [ %.0106215, %bb.g ], [ %.1107, %.thread ], [ %.0106215, %.lr.ph ]
  %.0101.lcssa = phi i32 [ %.0101216, %bb.g ], [ %.1102, %.thread ], [ %.0101216, %.lr.ph ]
  %.093.lcssa = phi i32 [ %.093218, %bb.g ], [ %.194, %.thread ], [ %.093218, %.lr.ph ] ; 2 uses
  %i.be = icmp ne i32 %.093.lcssa, 0
  %i.bf = icmp ne i32 %.0135.lcssa, 0
  %or.cond7 = select i1 %i.be, i1 %i.bf, i1 false
  %i.bg = icmp ne i32 %.sroa.8.0.lcssa, 0
  %or.cond10 = select i1 %or.cond7, i1 %i.bg, i1 false
  br i1 %or.cond10, label %bb.v, label %.thread164

bb.v:                                             ; preds = %.thread179
  %i.bh = call noundef i32 @_ZN18hb_pdf_resources_t21add_xobject_png_imageEPKcjjjjbPKhjS3_j(ptr noundef nonnull align 8 dereferenceable(100) %i.f, ptr noundef %.sroa.13.0.lcssa, i32 noundef %.sroa.8.0.lcssa, i32 noundef %.093.lcssa, i32 noundef %.0135.lcssa, i32 noundef %.0128.lcssa, i1 noundef zeroext %.0121.lcssa, ptr noundef %.0116.lcssa, i32 noundef %.0111.lcssa, ptr noundef %.0106.lcssa, i32 noundef %.0101.lcssa)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !69 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.not.i.i, label %bb.w, label %bb.x, !prof !23

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

bb.x:                                             ; preds = %bb.v
  %i.bk = add i32 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !70
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bn
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.w, %bb.x
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.bo, %bb.x ] ; 13 uses
  %i.bp = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.32) ; 0 uses
  %i.bq = load i32, ptr %7, align 4, !tbaa !489
  %i.br = sitofp i32 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !490
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !491 ; 2 uses
  %i.bx = sitofp i32 %i.bw to float
  %i.by = fadd float %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !492
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = sub nsw i32 0, %i.bw
  %i.cd = sitofp i32 %i.cc to float
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !71
  %i.cg = fdiv float %i.cb, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !53
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.cg, i32 noundef %i.ci)
  %i.cj = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.39) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !72
  %i.cm = fdiv float %i.cd, %i.cl
  %i.cn = load i32, ptr %i.ch, align 8, !tbaa !53
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.cm, i32 noundef %i.cn)
  %i.co = call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.cp = load float, ptr %i.ce, align 4, !tbaa !71
  %i.cq = fdiv float %i.br, %i.cp
  %i.cr = load i32, ptr %i.ch, align 8, !tbaa !53
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.cq, i32 noundef %i.cr)
  %i.cs = call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i8 noundef signext 32) ; 0 uses
  %i.ct = load float, ptr %i.ck, align 8, !tbaa !72
  %i.cu = fdiv float %i.by, %i.ct
  %i.cv = load i32, ptr %i.ch, align 8, !tbaa !53
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, float noundef %i.cu, i32 noundef %i.cv)
  %i.cw = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.33) ; 0 uses
  %i.cx = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.40) ; 0 uses
  %i.cy = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, i32 noundef %i.bh) ; 0 uses
  %i.cz = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.41) ; 0 uses
  br label %.thread164

.thread164:                                       ; preds = %bb.i, %bb.j, %bb.h, %.thread179, %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %.sroa.0.0205 = phi i32 [ %.sroa.0.0.lcssa, %.thread179 ], [ %.sroa.0.0.lcssa, %_ZN17hb_vector_paint_t12current_bodyEv.exit ], [ %.sroa.0.0208, %bb.h ], [ %.sroa.0.0208, %bb.j ], [ %.sroa.0.0208, %bb.i ]
  %.sroa.13.0203 = phi ptr [ %.sroa.13.0.lcssa, %.thread179 ], [ %.sroa.13.0.lcssa, %_ZN17hb_vector_paint_t12current_bodyEv.exit ], [ %.sroa.13.0209, %bb.h ], [ %.sroa.13.0209, %bb.j ], [ %.sroa.13.0209, %bb.i ]
  %.5 = phi i32 [ 0, %.thread179 ], [ 1, %_ZN17hb_vector_paint_t12current_bodyEv.exit ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.da = add i32 %.sroa.0.0205, -1
  %spec.select.i.i.i = icmp ult i32 %i.da, -2
  br i1 %spec.select.i.i.i, label %bb.y, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.y:                                             ; preds = %.thread164
  call void @hb_free(ptr noundef %.sroa.13.0203) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %bb.y, %.thread164, %bb.f, %bb.e
  %.6 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ %.5, %.thread164 ], [ %.5, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %bb.d, %_ZN11hb_vector_tIcLb0EED2Ev.exit, %bb.b, %bb.a
  %.9 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %.6, %_ZN11hb_vector_tIcLb0EED2Ev.exit ], [ 0, %bb.d ]
  ret i32 %.9
}

declare void @hb_paint_funcs_set_linear_gradient_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28hb_pdf_paint_linear_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float %7, float %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %10 = alloca %struct.hb_vector_buf_t, align 8   ; 49 uses
  %11 = alloca %struct.hb_vector_buf_t, align 8   ; 49 uses
  %i.d = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.d, label %bb.b, label %bb.dt, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %1) ; 21 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.dt, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.f = tail call i32 @hb_color_line_get_color_stops(ptr noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null) #12 ; 6 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !61
  %or.cond.i = icmp slt i32 %i.f, 1
  br i1 %or.cond.i, label %.thread.i, label %bb.d, !prof !62

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.h = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.f, i1 noundef zeroext false)
  br i1 %i.h, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 300 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 3 uses
  %i.k = icmp ugt i32 %i.f, %i.j
  br i1 %i.k, label %bb.f, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i32 %i.f, %i.j
  %i.m = mul i32 %i.l, 12                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.p = zext nneg i32 %i.j to i64
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.p
  %i.r = zext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 %i.r, i1 false)
  br label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.t = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.t, label %bb.h, label %_ZN17hb_vector_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread

bb.h:                                             ; preds = %.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 300
  store i32 0, ptr %i.u, align 4, !tbaa !75
  br label %_ZN17hb_vector_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread

_ZN17hb_vector_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread: ; preds = %.thread.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.dt

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %bb.e, %bb.f, %bb.g
  store i32 %i.f, ptr %i.i, align 4, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.x = call i32 @hb_color_line_get_color_stops(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef %i.w) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.z = load i32, ptr %i.i, align 4, !tbaa !75
  call void @hb_paint_normalize_color_line(ptr noundef %i.y, i32 noundef %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.aa = load float, ptr %i.b, align 4, !tbaa !74
  %i.ab = load float, ptr %i.c, align 4, !tbaa !74
  %i.ac = call fastcc noundef i32 @_ZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_t(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.ad = call i32 @hb_color_line_get_extend(ptr noundef %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store i32 2, ptr %i.ae, align 8, !tbaa !53
  %i.af = insertelement <2 x float> poison, float %5, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %6, i64 1
  %i.ah = insertelement <2 x float> poison, float %3, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %4, i64 1 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN18hb_pdf_resources_t19add_extgstate_blendEPKc:_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %i.k = icmp slt i32 %i.j, 0
  %or.cond = or i1 %i.h, %i.k
  br i1 %or.cond, label %_ZN15hb_vector_buf_t10append_strEPKc.exit22, label %bb.a, !prof !64

bb.a:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit
  %.not.i.i.i.i5 = icmp samesign ugt i32 %i.i, %.sroa.0.1
  br i1 %.not.i.i.i.i5, label %.preheader.i.i.i.i8, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14, !prof !23

.preheader.i.i.i.i8:                              ; preds = %bb.a, %.preheader.i.i.i.i8
  %.053.i.i.i.i9 = phi i32 [ %i.n, %.preheader.i.i.i.i8 ], [ %.sroa.0.1, %bb.a ] ; 2 uses
  %i.l = lshr i32 %.053.i.i.i.i9, 1
  %i.m = add nuw i32 %.053.i.i.i.i9, 8
  %i.n = add nuw i32 %i.m, %i.l                   ; 4 uses
  %i.o = icmp ugt i32 %i.i, %i.n
  br i1 %i.o, label %.preheader.i.i.i.i8, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12, !llvm.loop !0

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12: ; preds = %.preheader.i.i.i.i8
  %i.p = zext i32 %i.n to i64
  %i.q = tail call ptr @hb_realloc(ptr noundef %i.d, i64 noundef %i.p) #12 ; 2 uses
  %.not22.i.i.i.i13 = icmp eq ptr %i.q, null
  br i1 %.not22.i.i.i.i13, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14, !prof !59

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18:    ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12
  %i.r = xor i32 %.sroa.0.1, -1
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit22

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12, %bb.a
  %.sroa.0.2 = phi i32 [ %i.n, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12 ], [ %.sroa.0.1, %bb.a ] ; 2 uses
  %.sroa.30.2 = phi ptr [ %i.q, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i12 ], [ %i.d, %bb.a ] ; 3 uses
  %.not.i.i.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i6, label %_ZN15hb_vector_buf_t10append_strEPKc.exit22, label %bb.b, !prof !23

bb.b:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14
  %i.s = and i64 %i.e, 4294967295
  %i.t = zext nneg i32 %.sroa.18.0 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.30.2, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull readonly align 1 %1, i64 range(i64 0, 103079215081) %i.s, i1 false), !alias.scope !1465
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit22

_ZN15hb_vector_buf_t10append_strEPKc.exit22:      ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14, %bb.b
  %.sroa.18.1 = phi i32 [ %.sroa.18.0, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %i.i, %bb.b ], [ %.sroa.18.0, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18 ], [ %i.i, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14 ] ; 6 uses
  %.sroa.0.3 = phi i32 [ %.sroa.0.1, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %.sroa.0.2, %bb.b ], [ %i.r, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18 ], [ %.sroa.0.2, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14 ] ; 7 uses
  %.sroa.30.3 = phi ptr [ %i.d, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %.sroa.30.2, %bb.b ], [ %i.d, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i18 ], [ %.sroa.30.2, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i14 ] ; 6 uses
  %i.v = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.sroa.18.1, i32 3) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = extractvalue { i32, i1 } %i.v, 0         ; 4 uses
  %i.y = or i32 %i.x, %.sroa.0.3
  %i.z = icmp slt i32 %i.y, 0
  %or.cond80 = or i1 %i.w, %i.z
  br i1 %or.cond80, label %_ZN15hb_vector_buf_t10append_strEPKc.exit41, label %bb.c, !prof !64

bb.c:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit22
  %.not.i.i.i.i24 = icmp samesign ugt i32 %i.x, %.sroa.0.3
  br i1 %.not.i.i.i.i24, label %.preheader.i.i.i.i27, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33, !prof !23

.preheader.i.i.i.i27:                             ; preds = %bb.c, %.preheader.i.i.i.i27
  %.053.i.i.i.i28 = phi i32 [ %i.ac, %.preheader.i.i.i.i27 ], [ %.sroa.0.3, %bb.c ] ; 2 uses
  %i.aa = lshr i32 %.053.i.i.i.i28, 1
  %i.ab = add nuw i32 %.053.i.i.i.i28, 8
  %i.ac = add nuw i32 %i.ab, %i.aa                ; 6 uses
  %i.ad = icmp ugt i32 %i.x, %i.ac
  br i1 %i.ad, label %.preheader.i.i.i.i27, label %.thread39.i.i.i.i29, !llvm.loop !0

.thread39.i.i.i.i29:                              ; preds = %.preheader.i.i.i.i27
  %.not8.i.i.i.i.i.i30 = icmp ne i32 %.sroa.0.3, 0
  %.not9.i.i.i.i.i.i38 = icmp eq ptr %.sroa.30.3, null
  %or.cond81 = or i1 %.not8.i.i.i.i.i.i30, %.not9.i.i.i.i.i.i38
  %i.ae = zext i32 %i.ac to i64                   ; 2 uses
  br i1 %or.cond81, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31, label %bb.d

bb.d:                                             ; preds = %.thread39.i.i.i.i29
  %i.af = tail call ptr @hb_malloc(i64 noundef %i.ae) #12 ; 4 uses
  %.not10.i.i.i.i.i.i39 = icmp eq ptr %i.af, null
  br i1 %.not10.i.i.i.i.i.i39, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i40 = icmp eq i32 %.sroa.18.1, 0
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i32 %.sroa.18.1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %.sroa.30.3, i64 range(i64 0, 103079215081) %i.ag, i1 false), !alias.scope !1466
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31: ; preds = %.thread39.i.i.i.i29
  %i.ah = tail call ptr @hb_realloc(ptr noundef %.sroa.30.3, i64 noundef %i.ae) #12 ; 2 uses
  %.not22.i.i.i.i32 = icmp eq ptr %i.ah, null
  br i1 %.not22.i.i.i.i32, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33, !prof !59

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37:    ; preds = %bb.d, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31
  %i.ai = xor i32 %.sroa.0.3, -1
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit41

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33: ; preds = %bb.c, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31, %bb.f, %bb.e
  %.sroa.0.4 = phi i32 [ %i.ac, %bb.e ], [ %.sroa.0.3, %bb.c ], [ %i.ac, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31 ], [ %i.ac, %bb.f ]
  %.sroa.30.4 = phi ptr [ %i.af, %bb.e ], [ %.sroa.30.3, %bb.c ], [ %i.ah, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i31 ], [ %i.af, %bb.f ] ; 2 uses
  %i.aj = zext nneg i32 %.sroa.18.1 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.30.4, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.10, i64 range(i64 0, 103079215081) 3, i1 false), !alias.scope !1467
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit41

_ZN15hb_vector_buf_t10append_strEPKc.exit41:      ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit22, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33
  %.sroa.18.2 = phi i32 [ %.sroa.18.1, %_ZN15hb_vector_buf_t10append_strEPKc.exit22 ], [ %i.x, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33 ], [ %.sroa.18.1, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37 ]
  %.sroa.0.5 = phi i32 [ %.sroa.0.3, %_ZN15hb_vector_buf_t10append_strEPKc.exit22 ], [ %.sroa.0.4, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33 ], [ %i.ai, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37 ] ; 2 uses
  %.sroa.30.5 = phi ptr [ %.sroa.30.3, %_ZN15hb_vector_buf_t10append_strEPKc.exit22 ], [ %.sroa.30.4, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i33 ], [ %.sroa.30.3, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i37 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52 ; 3 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i = icmp slt i32 %i.am, %i.an
  br i1 %.not.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit41
  %i.ao = add i32 %i.am, 1                        ; 2 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i42 = icmp ugt i32 %i.ao, %i.an
  br i1 %.not.i.i.i42, label %.preheader.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, !prof !23

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.i
  %.039.i.i.i = phi i32 [ %i.as, %.preheader.i.i.i ], [ %i.an, %bb.h ] ; 2 uses
  %i.aq = lshr i32 %.039.i.i.i, 1
  %i.ar = add i32 %.039.i.i.i, 8
  %i.as = add i32 %i.ar, %i.aq                    ; 6 uses
  %i.at = icmp ugt i32 %i.ao, %i.as
  br i1 %i.at, label %.preheader.i.i.i, label %.thread.i.i.i, !llvm.loop !2

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.au = icmp ugt i32 %i.as, 178956970
  br i1 %i.au, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %.thread.i.i.i
  %i.av = tail call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.as) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not22.i.i.i, label %bb.j, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.as, %i.aw
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i: ; preds = %bb.j, %.thread.i.i.i
  %.sink.i.ph.in.i.i = phi i32 [ %i.an, %.thread.i.i.i ], [ %i.aw, %bb.j ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !21
  store i32 %i.as, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, %bb.j, %bb.h, %_ZN15hb_vector_buf_t10append_strEPKc.exit41
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = load i32, ptr %i.al, align 4, !tbaa !20 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.al, align 4, !tbaa !20
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.bc ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %.sroa.0.5, ptr %i.bd, align 8, !tbaa !16
  store i32 %.sroa.18.2, ptr %i.be, align 4, !tbaa !14
  store ptr %.sroa.30.5, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i32 2, ptr %i.bg, align 8, !tbaa !53
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.bh = add i32 %.sroa.0.5, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.bh, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.k:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  tail call void @hb_free(ptr noundef %.sroa.30.5) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %bb.k, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i
  %i.bi = add i32 %i.am, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bk = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, ptr noundef nonnull @.str.12) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, i32 noundef %i.b) ; 0 uses
  %i.bm = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, i8 noundef signext 32) ; 0 uses
  %i.bn = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, i32 noundef %i.bi) ; 0 uses
  %i.bo = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.bj, ptr noundef nonnull @.str.29) ; 0 uses
  ret i32 %i.b
}

declare void @hb_paint_funcs_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTS11hb_vector_tIcLb0EE", !8, i64 0, !8, i64 4, !12, i64 8}
!14 = !{!13, !8, i64 4}
!15 = !{!13, !12, i64 8}
!16 = !{!13, !8, i64 0}
!17 = !{!"p1 _ZTS12hb_pdf_obj_t", !11, i64 0}
!18 = !{!"_ZTS11hb_vector_tI12hb_pdf_obj_tLb0EE", !8, i64 0, !8, i64 4, !17, i64 8}
!19 = !{!18, !8, i64 0}
!20 = !{!18, !8, i64 4}
!21 = !{!18, !17, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!"_ZTS11hb_atomic_tIiE", !8, i64 0}
!26 = !{!"_ZTS20hb_reference_count_t", !25, i64 0}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"_ZTS11hb_atomic_tIbE", !27, i64 0}
!29 = !{!"p1 _ZTS20hb_user_data_array_t", !11, i64 0}
!30 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !29, i64 0}
!31 = !{!"_ZTS18hb_object_header_t", !26, i64 0, !28, i64 4, !30, i64 8}
!32 = !{!"_ZTS18hb_vector_format_t", !7, i64 0}
!33 = !{!"float", !7, i64 0}
!34 = !{!"_ZTS14hb_transform_tIfE", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!35 = !{!"_ZTS19hb_vector_extents_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12}
!36 = !{!"short", !7, i64 0}
!37 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb0EE6item_tE", !11, i64 0}
!38 = !{!"_ZTS12hb_hashmap_tIjjLb0EE", !31, i64 0, !27, i64 16, !36, i64 18, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !37, i64 40}
!39 = !{!"_ZTS15hb_vector_buf_t", !13, i64 0, !8, i64 16}
!40 = !{!"p1 _ZTS15hb_vector_buf_t", !11, i64 0}
!41 = !{!"_ZTS11hb_vector_tI15hb_vector_buf_tLb0EE", !8, i64 0, !8, i64 4, !40, i64 8}
!42 = !{!"long", !7, i64 0}
!43 = !{!"_ZTS21hb_vector_path_sink_t", !40, i64 0, !8, i64 8, !33, i64 12, !33, i64 16}
!44 = !{!"p1 _ZTS8hb_set_t", !11, i64 0}
!45 = !{!"_ZTS11hb_vector_tI15hb_color_stop_tLb0EE", !8, i64 0, !8, i64 4, !11, i64 8}
!46 = !{!"p1 _ZTS9hb_blob_t", !11, i64 0}
!47 = !{!"_ZTS17hb_vector_paint_t", !31, i64 0, !32, i64 16, !34, i64 20, !33, i64 44, !33, i64 48, !35, i64 52, !27, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !38, i64 88, !12, i64 136, !8, i64 144, !39, i64 152, !39, i64 176, !41, i64 200, !42, i64 216, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !42, i64 240, !43, i64 248, !8, i64 272, !8, i64 276, !8, i64 280, !44, i64 288, !45, i64 296, !39, i64 312, !46, i64 336}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!47, !8, i64 204}
!51 = !{!"_ZTS18hb_pdf_resources_t", !18, i64 0, !39, i64 16, !39, i64 40, !39, i64 64, !8, i64 88, !8, i64 92, !8, i64 96}
!52 = !{!51, !8, i64 4}
!53 = !{!39, !8, i64 16}
!54 = !{!"_ZTS21hb_vector_blob_meta_t", !12, i64 0, !8, i64 8, !27, i64 12, !27, i64 13}
!55 = !{!54, !27, i64 12}
!56 = !{!54, !12, i64 0}
!57 = !{!54, !8, i64 8}
!58 = !{!"branch_weights", i32 2000, i32 4002001}
!59 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!60 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!61 = !{!8, !8, i64 0}
!62 = !{!"branch_weights", i32 4001, i32 4000000}
!63 = !{!7, !7, i64 0}
!64 = !{!"branch_weights", i32 6003000, i32 -294967296}
!65 = !{!54, !27, i64 13}
!66 = !{!51, !8, i64 92}
!67 = !{!51, !8, i64 88}
!68 = !{!12, !12, i64 0}
!69 = !{!41, !8, i64 4}
!70 = !{!41, !40, i64 8}
!71 = !{!47, !33, i64 44}
!72 = !{!47, !33, i64 48}
!73 = !{!47, !8, i64 192}
!74 = !{!33, !33, i64 0}
!75 = !{!45, !8, i64 4}
!76 = !{!45, !11, i64 8}
!77 = !{!47, !11, i64 304}
!78 = !{!"_ZTS15hb_color_stop_t", !33, i64 0, !8, i64 4, !8, i64 8}
!79 = !{!78, !8, i64 8}
!80 = !{!"p1 _ZTS18hb_pdf_resources_t", !11, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!78, !33, i64 0}
!83 = !{i64 0, i64 4, !74, i64 4, i64 4, !61, i64 8, i64 4, !61}
!84 = !{!"_ZTS18hb_pdf_sweep_ctx_t", !40, i64 0, !40, i64 8, !33, i64 16, !33, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !33, i64 36}
!85 = !{!84, !40, i64 0}
!86 = !{!84, !40, i64 8}
!87 = !{!"p1 float", !11, i64 0}
!88 = !{!"any p2 pointer", !11, i64 0}
!89 = !{!"p2 _ZTS18hb_pdf_resources_t", !88, i64 0}
!90 = !{!41, !8, i64 0}
!91 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!92 = !{!47, !8, i64 300}
!93 = distinct !{!93, !22}
!94 = !{!"branch_weights", i32 1, i32 1999}
!95 = !{!"branch_weights", i32 0, i32 1}
!96 = distinct !{!96, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!97 = distinct !{!97, !96, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!98 = distinct !{!98, !96, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!99 = distinct !{!99, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!100 = distinct !{!100, !99, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!101 = distinct !{!101, !99, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!102 = distinct !{!102, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!103 = distinct !{!103, !102, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!104 = distinct !{!104, !102, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!105 = distinct !{!105, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!106 = distinct !{!106, !105, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!107 = distinct !{!107, !105, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!108 = distinct !{!108, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!109 = distinct !{!109, !108, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!110 = distinct !{!110, !108, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!111 = distinct !{!111, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!112 = distinct !{!112, !111, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!113 = distinct !{!113, !111, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!115 = distinct !{!115, !114, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!116 = distinct !{!116, !114, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!117 = distinct !{!117, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!118 = distinct !{!118, !117, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!119 = distinct !{!119, !117, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!120 = distinct !{!120, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!121 = distinct !{!121, !120, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!122 = distinct !{!122, !120, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!123 = distinct !{!123, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!124 = distinct !{!124, !123, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!125 = distinct !{!125, !123, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!127 = distinct !{!127, !126, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!128 = distinct !{!128, !126, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!130 = distinct !{!130, !129, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!131 = distinct !{!131, !129, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!132 = distinct !{!132, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!133 = distinct !{!133, !132, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!134 = distinct !{!134, !132, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!135 = distinct !{!135, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!136 = distinct !{!136, !135, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!137 = distinct !{!137, !135, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!138 = distinct !{!138, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!139 = distinct !{!139, !138, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!140 = distinct !{!140, !138, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!141 = distinct !{!141, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!142 = distinct !{!142, !141, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!143 = distinct !{!143, !141, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!144 = distinct !{!144, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!145 = distinct !{!145, !144, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!146 = distinct !{!146, !144, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!147 = distinct !{!147, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!148 = distinct !{!148, !147, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!149 = distinct !{!149, !147, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!150 = distinct !{!150, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!151 = distinct !{!151, !150, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!152 = distinct !{!152, !150, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!153 = distinct !{!153, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!154 = distinct !{!154, !153, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!155 = distinct !{!155, !153, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!156 = distinct !{!156, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!157 = distinct !{!157, !156, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!158 = distinct !{!158, !156, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!159 = distinct !{!159, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!160 = distinct !{!160, !159, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!161 = distinct !{!161, !159, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!162 = distinct !{!162, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!163 = distinct !{!163, !162, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!164 = distinct !{!164, !162, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!165 = distinct !{!165, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!166 = distinct !{!166, !165, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!167 = distinct !{!167, !165, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!168 = distinct !{!168, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!169 = distinct !{!169, !168, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!170 = distinct !{!170, !168, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!171 = distinct !{!171, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!172 = distinct !{!172, !171, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!173 = distinct !{!173, !171, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!174 = distinct !{!174, i1 false, !"_ZL9hb_memcpyPvPKvm"}
end_hunk_1
