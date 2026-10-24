Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAfj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumafhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VechE14extend_trustedBN_E0E0EB1G_:bb.a
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumafhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1713
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumafhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1713
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAfj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.i, align 4, !noalias !1723, !noundef !7
  %i.j = invoke noundef i16 @_RNvXs4_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivefE14from_primitive(float noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1723

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %i.j, ptr %i.k, align 2, !noalias !1724
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1723
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAfj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumaftE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1723
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecfE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.i, align 1, !noalias !1733, !noundef !7
  %i.j = invoke noundef float @_RNvXs7_NtCsa5QsYiPB8Gl_5image5colorfINtB5_13FromPrimitivehE14from_primitive(i8 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1733

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store float %i.j, ptr %i.k, align 4, !noalias !1734
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1733
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1733
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VechE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 1                         ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 10
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.k = getelementptr i8, ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.a, i64 %i.g
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %bound0 = icmp ult ptr %i.i, %i.m
  %bound1 = icmp ult ptr %i.a, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 34
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.h, 15                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 16, i64 %i.n         ; 2 uses
  %n.vec = sub nsw i64 %i.h, %i.p                 ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec
  %i.r = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 22
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 30
  %i.ax = load i8, ptr %i.s, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.ay = load i8, ptr %i.u, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.az = load i8, ptr %i.w, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.ba = load i8, ptr %i.y, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bb = load i8, ptr %i.aa, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bc = load i8, ptr %i.ac, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bd = load i8, ptr %i.ae, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.be = load i8, ptr %i.ag, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bf = load i8, ptr %i.ai, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bg = load i8, ptr %i.ak, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bh = load i8, ptr %i.am, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bi = load i8, ptr %i.ao, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bj = load i8, ptr %i.aq, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bk = load i8, ptr %i.as, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bl = load i8, ptr %i.au, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bm = load i8, ptr %i.aw, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.bn = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 1
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 2
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 3
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 4
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 5
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 6
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 7
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 8
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 9
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 10
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 11
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 12
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 13
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 14
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 15
  %i.cd = getelementptr i8, ptr %i.r, i64 %index
  store <16 x i8> %i.cc, ptr %i.cd, align 1, !alias.scope !1752, !noalias !1753
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1746

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.p, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cf = and i64 %i.h, 3                         ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 4, i64 %i.cf
  %n.vec5 = sub nsw i64 %i.h, %i.ch               ; 3 uses
  %i.ci = add i64 %.sroa.5.0.copyload, %n.vec5
  %i.cj = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index6
  %i.cl = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.cm = getelementptr i8, ptr %i.cl, i64 2
  %i.cn = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %i.cp = getelementptr [2 x i8], ptr %i.a, i64 %index6
  %i.cq = getelementptr i8, ptr %i.cp, i64 6
  %i.cr = load i8, ptr %i.ck, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.cs = load i8, ptr %i.cm, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.ct = load i8, ptr %i.co, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.cu = load i8, ptr %i.cq, align 1, !alias.scope !1750, !noalias !1751, !noundef !7
  %i.cv = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cs, i64 1
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.ct, i64 2
  %i.cy = insertelement <4 x i8> %i.cx, i8 %i.cu, i64 3
  %i.cz = getelementptr i8, ptr %i.cj, i64 %index6
  store <4 x i8> %i.cy, ptr %i.cz, align 1, !alias.scope !1752, !noalias !1753
  %index.next7 = add nuw i64 %index6, 4           ; 2 uses
  %i.da = icmp eq i64 %index.next7, %n.vec5
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !1747

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.vector.body ] ; 4 uses
  %i.db = sub i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.db, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.dc = phi i64 [ %i.df, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.dg, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i8, ptr %i.dd, align 1, !noalias !1751, !noundef !7
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  store i8 %.val15.i.prol, ptr %i.de, align 1, !noalias !1754
  %i.df = add i64 %i.dc, 1                        ; 3 uses
  %i.dg = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1748

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.df, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.df, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dg, %vec.epilog.scalar.ph.prol ]
  %i.dh = sub i64 %.sroa.01.0.i.ph, %i.h
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.dj = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.dz, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.dk, align 1, !noalias !1751, !noundef !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  store i8 %.val15.i, ptr %i.dl, align 1, !noalias !1754
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %.val15.i.1 = load i8, ptr %i.dn, align 1, !noalias !1751, !noundef !7
  %i.do = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  store i8 %.val15.i.1, ptr %i.dp, align 1, !noalias !1754
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.val15.i.2 = load i8, ptr %i.dr, align 1, !noalias !1751, !noundef !7
  %i.ds = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  %i.dt = getelementptr i8, ptr %i.ds, i64 2
  store i8 %.val15.i.2, ptr %i.dt, align 1, !noalias !1754
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  %.val15.i.3 = load i8, ptr %i.dv, align 1, !noalias !1751, !noundef !7
  %i.dw = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dj
  %i.dx = getelementptr i8, ptr %i.dw, i64 3
  store i8 %.val15.i.3, ptr %i.dx, align 1, !noalias !1754
  %i.dy = add i64 %i.dj, 4                        ; 2 uses
  %i.dz = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.ea = icmp eq i64 %i.dz, %i.h
  br i1 %i.ea, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %vec.epilog.scalar.ph, !llvm.loop !1749

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.dy, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1751
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.i, align 1, !noalias !1763, !noundef !7
  %i.j = invoke noundef i16 @_RNvXs8_NtCsa5QsYiPB8Gl_5image5colortINtB5_13FromPrimitivehE14from_primitive(i8 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1763

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %i.j, ptr %i.k, align 2, !noalias !1764
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1763
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1763
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB1B_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io7encoder12ImageEncoder11write_image0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4H_13FlattenCompatppE9iter_fold7flattenB1n_uNCINvNvXsi_B4H_B4U_B3S_4fold7flattenINtNtNtBc_5array4iter8IntoIterhKB1p_EuNCINvNvB3S_8for_each4callhNCINvMsk_B2x_B2u_14extend_trustedINtB4H_7FlatMapBX_B1n_B1t_EE0E0E0E0EB1F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val8.i = load i8, ptr %i.j, align 1, !noalias !1778, !noundef !7
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %.val9.i = load i8, ptr %i.k, align 1, !noalias !1778, !noundef !7 ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %.val8.i to i16
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i16 %.sroa.2.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %.val9.i to i16
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1778
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1778
  store i16 %.sroa.0.0.insert.insert.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1778
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1781
  store ptr %.sroa.5.0..sroa_idx.i.i.i, ptr %i.a, align 8, !noalias !1781
  store i64 2, ptr %i.h, align 8, !noalias !1781
  store ptr %2, ptr %i.i, align 8, !noalias !1781
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  store i64 1, ptr %i.b, align 8, !alias.scope !1784, !noalias !1778
  call void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterAhj2_EB3R_NCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB49_10PngEncoderQB2o_ENtNtNtB4d_2io7encoder12ImageEncoder11write_image0EE0E0INtB7_5FnMutTuhEE8call_mutB4d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef %.val9.i)
  store i64 2, ptr %i.b, align 8, !alias.scope !1784, !noalias !1778
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !1786, !noalias !1781, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noalias !1787, !noundef !7
  call void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterAhj2_EB3R_NCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB49_10PngEncoderQB2o_ENtNtNtB4d_2io7encoder12ImageEncoder11write_image0EE0E0INtB7_5FnMutTuhEE8call_mutB4d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1778
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecfE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_:bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 68
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 1           ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.a, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %bound0 = icmp ult ptr %i.j, %i.o
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i64 %i.h, 7                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 8, i64 %i.p
  %n.vec = sub nsw i64 %i.h, %i.r                 ; 3 uses
  %i.s = add i64 %.sroa.5.0.copyload, %n.vec
  %i.t = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.vec = load <8 x i16>, ptr %i.u, align 2, !alias.scope !1822, !noalias !1823
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i16>, ptr %i.w, align 2, !alias.scope !1822, !noalias !1823
  %strided.vec5 = shufflevector <8 x i16> %wide.vec4, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.x = getelementptr [2 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <4 x i16> %strided.vec, ptr %i.x, align 2, !alias.scope !1824, !noalias !1825
  store <4 x i16> %strided.vec5, ptr %i.y, align 2, !alias.scope !1824, !noalias !1825
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1819

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aa = sub i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ab = phi i64 [ %i.ae, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.af, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i16, ptr %i.ac, align 2, !noalias !1823, !noundef !7
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store i16 %.val15.i.prol, ptr %i.ad, align 2, !noalias !1826
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  %i.af = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1820

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ag = sub i64 %.sroa.01.0.i.ph, %i.h
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ai = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.aj, align 2, !noalias !1823, !noundef !7
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  store i16 %.val15.i, ptr %i.ak, align 2, !noalias !1826
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.val15.i.1 = load i16, ptr %i.am, align 2, !noalias !1823, !noundef !7
  %i.an = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  store i16 %.val15.i.1, ptr %i.ao, align 2, !noalias !1826
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val15.i.2 = load i16, ptr %i.aq, align 2, !noalias !1823, !noundef !7
  %i.ar = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  store i16 %.val15.i.2, ptr %i.as, align 2, !noalias !1826
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.val15.i.3 = load i16, ptr %i.au, align 2, !noalias !1823, !noundef !7
  %i.av = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.av, i64 6
  store i16 %.val15.i.3, ptr %i.aw, align 2, !noalias !1826
  %i.ax = add i64 %i.ai, 4                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.h
  br i1 %i.az, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph, !llvm.loop !1821

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1823
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENCINvNtB1r_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callhNCINvMsk_B3Y_B3V_14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 496                       ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 1984
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %0, i64 495
  %bound0 = icmp ult ptr %i.f, %1
  %bound1 = icmp ult ptr %i.i, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %i.d, 7936
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 72057594037927920        ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.m = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ac = getelementptr i8, ptr %i.m, i64 495
  %i.ad = getelementptr i8, ptr %i.n, i64 991
  %i.ae = getelementptr i8, ptr %i.o, i64 1487
  %i.af = getelementptr i8, ptr %i.p, i64 1983
  %i.ag = getelementptr i8, ptr %i.q, i64 2479
  %i.ah = getelementptr i8, ptr %i.r, i64 2975
  %i.ai = getelementptr i8, ptr %i.s, i64 3471
  %i.aj = getelementptr i8, ptr %i.t, i64 3967
  %i.ak = getelementptr i8, ptr %i.u, i64 4463
  %i.al = getelementptr i8, ptr %i.v, i64 4959
  %i.am = getelementptr i8, ptr %i.w, i64 5455
  %i.an = getelementptr i8, ptr %i.x, i64 5951
  %i.ao = getelementptr i8, ptr %i.y, i64 6447
  %i.ap = getelementptr i8, ptr %i.z, i64 6943
  %i.aq = getelementptr i8, ptr %i.aa, i64 7439
  %i.ar = getelementptr i8, ptr %i.ab, i64 7935
  %i.as = load i8, ptr %i.ac, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.at = load i8, ptr %i.ad, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.au = load i8, ptr %i.ae, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.av = load i8, ptr %i.af, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.aw = load i8, ptr %i.ag, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.ax = load i8, ptr %i.ah, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.ay = load i8, ptr %i.ai, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.az = load i8, ptr %i.aj, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.ba = load i8, ptr %i.ak, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.bb = load i8, ptr %i.al, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.bc = load i8, ptr %i.am, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.bd = load i8, ptr %i.an, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.be = load i8, ptr %i.ao, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.bf = load i8, ptr %i.ap, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.bg = load i8, ptr %i.aq, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.bh = load i8, ptr %i.ar, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.bi = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 1
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 2
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 3
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 4
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 5
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 6
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 7
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 8
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 9
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 10
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 11
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 12
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 13
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 14
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 15
  %i.by = getelementptr i8, ptr %i.l, i64 %index
  store <16 x i8> %i.bx, ptr %i.by, align 1, !alias.scope !1844, !noalias !1845
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.e, 72057594037927932       ; 4 uses
  %i.ca = add i64 %.sroa.5.0.copyload, %n.vec6    ; 2 uses
  %i.cb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cd = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.ce = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cf = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cg = getelementptr i8, ptr %i.cc, i64 495
  %i.ch = getelementptr i8, ptr %i.cd, i64 991
  %i.ci = getelementptr i8, ptr %i.ce, i64 1487
  %i.cj = getelementptr i8, ptr %i.cf, i64 1983
  %i.ck = load i8, ptr %i.cg, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.cl = load i8, ptr %i.ch, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.cm = load i8, ptr %i.ci, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.cn = load i8, ptr %i.cj, align 1, !alias.scope !1842, !noalias !1843, !noundef !7
  %i.co = insertelement <4 x i8> poison, i8 %i.ck, i64 0
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.cl, i64 1
  %i.cq = insertelement <4 x i8> %i.cp, i8 %i.cm, i64 2
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 3
  %i.cs = getelementptr i8, ptr %i.cb, i64 %index7
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !alias.scope !1844, !noalias !1845
  %index.next8 = add nuw i64 %index7, 4           ; 2 uses
  %i.ct = icmp eq i64 %index.next8, %n.vec6
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1839

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.e, %n.vec6
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.cu = phi i64 [ %i.cy, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.cz, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.cw = getelementptr i8, ptr %i.cv, i64 495
  %.val15.i.prol = load i8, ptr %i.cw, align 1, !noalias !1843, !noundef !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.cu
  store i8 %.val15.i.prol, ptr %i.cx, align 1, !noalias !1846
  %i.cy = add i64 %i.cu, 1                        ; 3 uses
  %i.cz = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1840

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cz, %vec.epilog.scalar.ph.prol ]
  %i.da = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.dc = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.dt, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.de = getelementptr i8, ptr %i.dd, i64 495
  %.val15.i = load i8, ptr %i.de, align 1, !noalias !1843, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  store i8 %.val15.i, ptr %i.df, align 1, !noalias !1846
  %i.dg = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 991
  %.val15.i.1 = load i8, ptr %i.dh, align 1, !noalias !1843, !noundef !7
  %i.di = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  store i8 %.val15.i.1, ptr %i.dj, align 1, !noalias !1846
  %i.dk = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 1487
  %.val15.i.2 = load i8, ptr %i.dl, align 1, !noalias !1843, !noundef !7
  %i.dm = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dn = getelementptr i8, ptr %i.dm, i64 2
  store i8 %.val15.i.2, ptr %i.dn, align 1, !noalias !1846
  %i.do = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1983
  %.val15.i.3 = load i8, ptr %i.dp, align 1, !noalias !1843, !noundef !7
  %i.dq = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dr = getelementptr i8, ptr %i.dq, i64 3
  store i8 %.val15.i.3, ptr %i.dr, align 1, !noalias !1846
  %i.ds = add i64 %i.dc, 4                        ; 2 uses
  %i.dt = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.e
  br i1 %i.du, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph, !llvm.loop !1841

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ca, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ds, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1843
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENCINvNtB1r_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4z_8for_each4callhNCINvMsk_B3Z_B3W_14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4R_B4O_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 496                       ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 1984
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %0, i64 495
  %bound0 = icmp ult ptr %i.f, %1
  %bound1 = icmp ult ptr %i.i, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %i.d, 7936
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 72057594037927920        ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.m = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ac = getelementptr i8, ptr %i.m, i64 495
  %i.ad = getelementptr i8, ptr %i.n, i64 991
  %i.ae = getelementptr i8, ptr %i.o, i64 1487
  %i.af = getelementptr i8, ptr %i.p, i64 1983
  %i.ag = getelementptr i8, ptr %i.q, i64 2479
  %i.ah = getelementptr i8, ptr %i.r, i64 2975
  %i.ai = getelementptr i8, ptr %i.s, i64 3471
  %i.aj = getelementptr i8, ptr %i.t, i64 3967
  %i.ak = getelementptr i8, ptr %i.u, i64 4463
  %i.al = getelementptr i8, ptr %i.v, i64 4959
  %i.am = getelementptr i8, ptr %i.w, i64 5455
  %i.an = getelementptr i8, ptr %i.x, i64 5951
  %i.ao = getelementptr i8, ptr %i.y, i64 6447
  %i.ap = getelementptr i8, ptr %i.z, i64 6943
  %i.aq = getelementptr i8, ptr %i.aa, i64 7439
  %i.ar = getelementptr i8, ptr %i.ab, i64 7935
  %i.as = load i8, ptr %i.ac, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.at = load i8, ptr %i.ad, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.au = load i8, ptr %i.ae, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.av = load i8, ptr %i.af, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.aw = load i8, ptr %i.ag, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.ax = load i8, ptr %i.ah, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.ay = load i8, ptr %i.ai, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.az = load i8, ptr %i.aj, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.ba = load i8, ptr %i.ak, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.bb = load i8, ptr %i.al, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.bc = load i8, ptr %i.am, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.bd = load i8, ptr %i.an, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.be = load i8, ptr %i.ao, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.bf = load i8, ptr %i.ap, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.bg = load i8, ptr %i.aq, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.bh = load i8, ptr %i.ar, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.bi = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 1
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 2
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 3
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 4
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 5
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 6
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 7
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 8
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 9
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 10
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 11
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 12
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 13
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 14
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 15
  %i.by = getelementptr i8, ptr %i.l, i64 %index
  store <16 x i8> %i.bx, ptr %i.by, align 1, !alias.scope !1864, !noalias !1865
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1858

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4R_B4O_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.e, 72057594037927932       ; 4 uses
  %i.ca = add i64 %.sroa.5.0.copyload, %n.vec6    ; 2 uses
  %i.cb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cd = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.ce = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cf = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cg = getelementptr i8, ptr %i.cc, i64 495
  %i.ch = getelementptr i8, ptr %i.cd, i64 991
  %i.ci = getelementptr i8, ptr %i.ce, i64 1487
  %i.cj = getelementptr i8, ptr %i.cf, i64 1983
  %i.ck = load i8, ptr %i.cg, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.cl = load i8, ptr %i.ch, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.cm = load i8, ptr %i.ci, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.cn = load i8, ptr %i.cj, align 1, !alias.scope !1862, !noalias !1863, !noundef !7
  %i.co = insertelement <4 x i8> poison, i8 %i.ck, i64 0
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.cl, i64 1
  %i.cq = insertelement <4 x i8> %i.cp, i8 %i.cm, i64 2
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 3
  %i.cs = getelementptr i8, ptr %i.cb, i64 %index7
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !alias.scope !1864, !noalias !1865
  %index.next8 = add nuw i64 %index7, 4           ; 2 uses
  %i.ct = icmp eq i64 %index.next8, %n.vec6
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1859

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.e, %n.vec6
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4R_B4O_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.cu = phi i64 [ %i.cy, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.cz, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.cw = getelementptr i8, ptr %i.cv, i64 495
  %.val15.i.prol = load i8, ptr %i.cw, align 1, !noalias !1863, !noundef !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.cu
  store i8 %.val15.i.prol, ptr %i.cx, align 1, !noalias !1866
  %i.cy = add i64 %i.cu, 1                        ; 3 uses
  %i.cz = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1860

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cz, %vec.epilog.scalar.ph.prol ]
  %i.da = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4R_B4O_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.dc = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.dt, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.de = getelementptr i8, ptr %i.dd, i64 495
  %.val15.i = load i8, ptr %i.de, align 1, !noalias !1863, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  store i8 %.val15.i, ptr %i.df, align 1, !noalias !1866
  %i.dg = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 991
  %.val15.i.1 = load i8, ptr %i.dh, align 1, !noalias !1863, !noundef !7
  %i.di = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  store i8 %.val15.i.1, ptr %i.dj, align 1, !noalias !1866
  %i.dk = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 1487
  %.val15.i.2 = load i8, ptr %i.dl, align 1, !noalias !1863, !noundef !7
  %i.dm = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dn = getelementptr i8, ptr %i.dm, i64 2
  store i8 %.val15.i.2, ptr %i.dn, align 1, !noalias !1866
  %i.do = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1983
  %.val15.i.3 = load i8, ptr %i.dp, align 1, !noalias !1863, !noundef !7
  %i.dq = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dr = getelementptr i8, ptr %i.dq, i64 3
  store i8 %.val15.i.3, ptr %i.dr, align 1, !noalias !1866
  %i.ds = add i64 %i.dc, 4                        ; 2 uses
  %i.dt = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.e
  br i1 %i.du, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4R_B4O_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph, !llvm.loop !1861

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4R_B4O_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ca, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ds, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1863
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENCINvNtB1r_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5f_3VechE14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE0NCINvNvB1H_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5s_3VechE14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 496                       ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 1984
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %0, i64 495
  %bound0 = icmp ult ptr %i.f, %1
  %bound1 = icmp ult ptr %i.i, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %i.d, 7936
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 72057594037927920        ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.m = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ac = getelementptr i8, ptr %i.m, i64 495
  %i.ad = getelementptr i8, ptr %i.n, i64 991
  %i.ae = getelementptr i8, ptr %i.o, i64 1487
  %i.af = getelementptr i8, ptr %i.p, i64 1983
  %i.ag = getelementptr i8, ptr %i.q, i64 2479
  %i.ah = getelementptr i8, ptr %i.r, i64 2975
  %i.ai = getelementptr i8, ptr %i.s, i64 3471
  %i.aj = getelementptr i8, ptr %i.t, i64 3967
  %i.ak = getelementptr i8, ptr %i.u, i64 4463
  %i.al = getelementptr i8, ptr %i.v, i64 4959
  %i.am = getelementptr i8, ptr %i.w, i64 5455
  %i.an = getelementptr i8, ptr %i.x, i64 5951
  %i.ao = getelementptr i8, ptr %i.y, i64 6447
  %i.ap = getelementptr i8, ptr %i.z, i64 6943
  %i.aq = getelementptr i8, ptr %i.aa, i64 7439
  %i.ar = getelementptr i8, ptr %i.ab, i64 7935
  %i.as = load i8, ptr %i.ac, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.at = load i8, ptr %i.ad, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.au = load i8, ptr %i.ae, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.av = load i8, ptr %i.af, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.aw = load i8, ptr %i.ag, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.ax = load i8, ptr %i.ah, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.ay = load i8, ptr %i.ai, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.az = load i8, ptr %i.aj, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.ba = load i8, ptr %i.ak, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.bb = load i8, ptr %i.al, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.bc = load i8, ptr %i.am, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.bd = load i8, ptr %i.an, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.be = load i8, ptr %i.ao, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.bf = load i8, ptr %i.ap, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.bg = load i8, ptr %i.aq, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.bh = load i8, ptr %i.ar, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.bi = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 1
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 2
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 3
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 4
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 5
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 6
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 7
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 8
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 9
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 10
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 11
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 12
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 13
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 14
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 15
  %i.by = getelementptr i8, ptr %i.l, i64 %index
  store <16 x i8> %i.bx, ptr %i.by, align 1, !alias.scope !1884, !noalias !1885
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1878

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE0NCINvNvB1H_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5s_3VechE14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.e, 72057594037927932       ; 4 uses
  %i.ca = add i64 %.sroa.5.0.copyload, %n.vec6    ; 2 uses
  %i.cb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cd = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.ce = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cf = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cg = getelementptr i8, ptr %i.cc, i64 495
  %i.ch = getelementptr i8, ptr %i.cd, i64 991
  %i.ci = getelementptr i8, ptr %i.ce, i64 1487
  %i.cj = getelementptr i8, ptr %i.cf, i64 1983
  %i.ck = load i8, ptr %i.cg, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.cl = load i8, ptr %i.ch, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.cm = load i8, ptr %i.ci, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.cn = load i8, ptr %i.cj, align 1, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.co = insertelement <4 x i8> poison, i8 %i.ck, i64 0
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.cl, i64 1
  %i.cq = insertelement <4 x i8> %i.cp, i8 %i.cm, i64 2
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 3
  %i.cs = getelementptr i8, ptr %i.cb, i64 %index7
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !alias.scope !1884, !noalias !1885
  %index.next8 = add nuw i64 %index7, 4           ; 2 uses
  %i.ct = icmp eq i64 %index.next8, %n.vec6
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1879

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.e, %n.vec6
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE0NCINvNvB1H_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5s_3VechE14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.cu = phi i64 [ %i.cy, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.cz, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.cw = getelementptr i8, ptr %i.cv, i64 495
  %.val15.i.prol = load i8, ptr %i.cw, align 1, !noalias !1883, !noundef !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.cu
  store i8 %.val15.i.prol, ptr %i.cx, align 1, !noalias !1886
  %i.cy = add i64 %i.cu, 1                        ; 3 uses
  %i.cz = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1880

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cy, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cz, %vec.epilog.scalar.ph.prol ]
  %i.da = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE0NCINvNvB1H_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5s_3VechE14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.dc = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.dt, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.de = getelementptr i8, ptr %i.dd, i64 495
  %.val15.i = load i8, ptr %i.de, align 1, !noalias !1883, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  store i8 %.val15.i, ptr %i.df, align 1, !noalias !1886
  %i.dg = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 991
  %.val15.i.1 = load i8, ptr %i.dh, align 1, !noalias !1883, !noundef !7
  %i.di = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  store i8 %.val15.i.1, ptr %i.dj, align 1, !noalias !1886
  %i.dk = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 1487
  %.val15.i.2 = load i8, ptr %i.dl, align 1, !noalias !1883, !noundef !7
  %i.dm = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dn = getelementptr i8, ptr %i.dm, i64 2
  store i8 %.val15.i.2, ptr %i.dn, align 1, !noalias !1886
  %i.do = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1983
  %.val15.i.3 = load i8, ptr %i.dp, align 1, !noalias !1883, !noundef !7
  %i.dq = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.dc
  %i.dr = getelementptr i8, ptr %i.dq, i64 3
  store i8 %.val15.i.3, ptr %i.dr, align 1, !noalias !1886
  %i.ds = add i64 %i.dc, 4                        ; 2 uses
  %i.dt = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.e
  br i1 %i.du, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE0NCINvNvB1H_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5s_3VechE14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.scalar.ph, !llvm.loop !1881

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE0NCINvNvB1H_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5s_3VechE14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ca, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ds, %vec.epilog.scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1883
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENCNvMNtB1r_3mcuINtNtB1r_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 496                 ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 1984
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 72057594037927932
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %..i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 440
  %.val.i = load i64, ptr %i.h, align 8, !noundef !7
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.val.i, i64 %.sroa.02.0.i)
  %i.i = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 936
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !7
  %..i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.1, i64 %..i.i.i.i)
  %i.k = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 1432
  %.val.i.2 = load i64, ptr %i.l, align 8, !noundef !7
  %..i.i.i.i.2 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.2, i64 %..i.i.i.i.1)
  %i.m = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 1928
  %.val.i.3 = load i64, ptr %i.n, align 8, !noundef !7
  %..i.i.i.i.3 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.3, i64 %..i.i.i.i.2) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %..i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 440
  %.val.i.epil = load i64, ptr %i.q, align 8, !noundef !7
  %..i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.epil, i64 %.sroa.02.0.i.epil) ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit, label %bb.d, !llvm.loop !1887

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENCNvMNtB1r_3mcuINtNtB1r_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE25decode_mcu_ycbcr_baselines_0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 496                 ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 1984
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 72057594037927932
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %..i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 440
  %.val.i = load i64, ptr %i.h, align 8, !noundef !7
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.val.i, i64 %.sroa.02.0.i)
  %i.i = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 936
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !7
  %..i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.1, i64 %..i.i.i.i)
  %i.k = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 1432
  %.val.i.2 = load i64, ptr %i.l, align 8, !noundef !7
  %..i.i.i.i.2 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.2, i64 %..i.i.i.i.1)
  %i.m = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 1928
  %.val.i.3 = load i64, ptr %i.n, align 8, !noundef !7
  %..i.i.i.i.3 = tail call noundef i64 @llvm.umax.i64(i64 %.val.i.3, i64 %..i.i.i.i.2) ; 3 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1N_8adapters3map8map_foldRBQ_jjNCNvMNtBU_3mcuINtNtBU_7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE25decode_mcu_ycbcr_baselines_0NvYjNtNtBb_3cmp3Ord3maxE0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %bb.c
end_hunk_1
