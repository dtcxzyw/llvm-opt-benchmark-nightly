Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss:bb.a
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = fmul float %1, %1                        ; 2 uses
  %i.f = fmul float %i.e, 1.200000e+01
  %i.g = uitofp i64 %2 to float                   ; 2 uses
  %i.h = fdiv float %i.f, %i.g
  %i.i = fadd float %i.h, 1.000000e+00
  %i.j = tail call float @llvm.sqrt.f32(float %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = tail call float @llvm.floor.f32(float %i.j) ; 3 uses
  %i.l = frem float %i.k, 2.000000e+00
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  %i.n = fadd float %i.k, -1.000000e+00
  %storemerge = select i1 %i.m, float %i.n, float %i.k ; 4 uses
  store float %storemerge, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = fadd float %storemerge, 2.000000e+00
  store float %i.o, ptr %i.c, align 4
  %i.p = fmul nnan float %i.g, 2.500000e-01
  %i.q = fadd float %storemerge, 3.000000e+00
  %i.r = fmul float %i.p, %i.q
  %i.s = fmul float %i.e, 3.000000e+00
  %i.t = fadd float %storemerge, 1.000000e+00
  %i.u = fdiv float 1.000000e+00, %i.t
  %i.v = fmul float %i.s, %i.u
  %i.w = fsub float %i.r, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = tail call float @llvm.round.f32(float %i.w)
  %i.y = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.x)
  store i64 %i.y, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_3ops5range5RangejENCNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss0ENCB2U_s_0EE9from_iterB30_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQFdEuINtB7_5FnMutTdEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  tail call void %.val(double noundef %1), !inline_history !932
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsvKatKEpids_3gif6reader7decoder19DecodingFormatErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !936
  store ptr %i.b, ptr %i.a, align 8, !noalias !936
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !936
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCshj339Ta6RuV_5weezl5errorNtB5_8LzwErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsK_NtCslM68MWqqr2K_4lebe2ioQQRShINtB5_10ReadEndianSfE28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i64 %2, 2                    ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i = load ptr, ptr %.val, align 8, !noalias !944, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !945, !noalias !946, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  %i.e = load ptr, ptr %.val.i, align 8, !alias.scope !945, !noalias !946, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.d, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc2io5implsQQRShNtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.a
  %i.f = sub nuw nsw i64 %i.c, %i.a
  tail call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, 9223372036854775807) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 9223372036854775807) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !945
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc2io5implsQQRShNtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image.exit

_RNvXNtNtCs4wP2HXfJTCR_5alloc2io5implsQQRShNtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i
  %.pn = phi i64 [ %i.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ %i.c, %bb.a ]
  %storemerge.i.i.i = phi i64 [ %i.f, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ 0, %bb.a ]
  %.sroa.0.0.i.i.i = phi ptr [ null, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i.i.i ], [ @45, %bb.a ]
  %storemerge3.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pn
  store ptr %storemerge3.i.i.i, ptr %.val.i, align 8, !alias.scope !945, !noalias !947
  store i64 %storemerge.i.i.i, ptr %i.b, align 8, !alias.scope !945, !noalias !947
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsK_NtCslM68MWqqr2K_4lebe2ioRShINtB5_10ReadEndianSfE28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i64 %2, 2                    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !951, !noalias !952, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  %i.e = load ptr, ptr %0, align 8, !alias.scope !951, !noalias !952, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.d, label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read10read_exact.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  %i.f = sub nuw nsw i64 %i.c, %i.a
  tail call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !951
  br label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read10read_exact.exit

_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read10read_exact.exit: ; preds = %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i
  %.pn = phi i64 [ %i.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i ], [ %i.c, %bb.a ]
  %storemerge.i = phi i64 [ %i.f, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsa5QsYiPB8Gl_5image.exit.i ], [ @45, %bb.a ]
  %storemerge3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.pn
  store ptr %storemerge3.i, ptr %0, align 8, !alias.scope !951, !noalias !952
  store i64 %storemerge.i, ptr %i.b, align 8, !alias.scope !951, !noalias !952
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs3qoiINtB4_10QoiDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB8_2io7decoder12ImageDecoder16read_image_boxedB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull writeonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 9 uses
  %i.e = alloca [3 x i8], align 1                 ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %i.g = alloca [1024 x i8], align 1              ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [1 x i8], align 1                 ; 6 uses
  %i.j = alloca [3 x i8], align 1                 ; 8 uses
  %i.k = alloca [1 x i8], align 1                 ; 7 uses
  %i.l = alloca [1024 x i8], align 1              ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [1 x i8], align 1                 ; 6 uses
  %i.o = alloca [4 x i8], align 4                 ; 8 uses
  %i.p = alloca [3 x i8], align 1                 ; 8 uses
  %i.q = alloca [1 x i8], align 1                 ; 6 uses
  %i.r = alloca [768 x i8], align 1               ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [1 x i8], align 1                 ; 6 uses
  %i.u = alloca [3 x i8], align 1                 ; 8 uses
  %i.v = alloca [1 x i8], align 1                 ; 6 uses
  %i.w = alloca [768 x i8], align 1               ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !1007, !noalias !1008, !noundef !5
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !1007, !noalias !1008, !noundef !5
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ak = load i8, ptr %i.aj, align 4, !range !25, !alias.scope !1007, !noalias !1008, !noundef !5 ; 2 uses
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.al) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.cj, label %_RNvMs3_NtCsltZrX1n1NSl_3qoi6decodeINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16required_buf_lenCsa5QsYiPB8Gl_5image.exit.i.i, !prof !12

_RNvMs3_NtCsltZrX1n1NSl_3qoi6decodeINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16required_buf_lenCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.a
  %i.ao = extractvalue { i64, i1 } %i.am, 0       ; 2 uses
  %i.ap = icmp ult i64 %3, %i.ao
  br i1 %i.ap, label %bb.cj, label %bb.b, !prof !24

bb.b:                                             ; preds = %_RNvMs3_NtCsltZrX1n1NSl_3qoi6decodeINtB5_7DecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE16required_buf_lenCsa5QsYiPB8Gl_5image.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ar = load i8, ptr %i.aq, align 8, !range !25, !alias.scope !1009, !noalias !1008, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.as = icmp eq i8 %i.ak, 3
  %i.at = icmp eq i8 %i.ar, 3                     ; 2 uses
  br i1 %i.as, label %bb.c, label %bb.d, !prof !1012

bb.c:                                             ; preds = %bb.b
  %i.au = urem i64 %3, 3
  %i.av = udiv i64 %3, 3
  %i.aw = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.at, label %bb.e, label %bb.x, !prof !1012

bb.d:                                             ; preds = %bb.b
  %i.ax = and i64 %3, 3
  %i.ay = icmp eq i64 %i.ax, 0                    ; 2 uses
  br i1 %i.at, label %bb.at, label %bb.bm, !prof !1012

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  br i1 %i.aw, label %.preheader.i.i.i.i.i, label %.invoke

.invoke:                                          ; preds = %bb.bm, %bb.at, %bb.x, %bb.e
  invoke void @_RINvNtCs6crhI5QFTW0_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 14, i8 noundef 1) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1014
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(768) %i.w, i8 0, i64 768, i1 false), !noalias !1014
  %.not125.i.i.i.i.i = icmp samesign ult i64 %3, 3
  br i1 %.not125.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.az = udiv i64 %3, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  br label %bb.f

._crit_edge.i.i.i.i.i:                            ; preds = %.backedge.i.i.i.i.i, %.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1014
  store i64 0, ptr %i.s, align 8, !noalias !1014
  %i.bc = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.s, i64 noundef 8)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1:                                          ; preds = %._crit_edge.i.i.i.i.i
  %.not47.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not47.i.i.i.i.i, label %bb.g, label %bb.i

bb.f:                                             ; preds = %.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.09.0130.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i.i ], [ %.sroa.09.0.be.i.i.i.i.i, %.backedge.i.i.i.i.i ] ; 7 uses
  %.sroa.8.0129.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.sroa.8.0.be.i.i.i.i.i, %.backedge.i.i.i.i.i ]
  %.sroa.0.0128.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.be.i.i.i.i.i, %.backedge.i.i.i.i.i ] ; 8 uses
  %.sroa.16.0127.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.i ], [ %.sroa.16.0.be.i.i.i.i.i, %.backedge.i.i.i.i.i ] ; 8 uses
  %.sroa.21.0126.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i.i ], [ %.sroa.21.0.be.i.i.i.i.i, %.backedge.i.i.i.i.i ] ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.09.0130.i.i.i.i.i, i64 3 ; 5 uses
  %i.be = add nsw i64 %.sroa.8.0129.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1014
  store i8 0, ptr %i.v, align 1, !noalias !1014
  %i.bf = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.v, i64 noundef 1)
          to label %.noexc2 unwind label %.loopexit ; 2 uses

.noexc2:                                          ; preds = %bb.f
  %.not49.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not49.i.i.i.i.i, label %bb.j, label %.loopexit.i.i

bb.g:                                             ; preds = %.noexc1
  %i.bg = load i64, ptr %i.s, align 8, !noalias !1014, !noundef !5
  %.not48.i.i.i.i.i = icmp eq i64 %i.bg, 72057594037927936
  br i1 %.not48.i.i.i.i.i, label %bb.h, label %bb.i, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1014
  br label %_RINvNtCsltZrX1n1NSl_3qoi6decode18decode_impl_streamINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEKj3_Kb0_ECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g, %.noexc1
  %.sroa.05.11.i.i = phi i8 [ 8, %.noexc1 ], [ 7, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1014
  br label %_RINvNtCsltZrX1n1NSl_3qoi6decode18decode_impl_streamINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEKj3_Kb0_ECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.j:                                             ; preds = %.noexc2
  %i.bh = load i8, ptr %i.v, align 1, !noalias !1014, !noundef !5 ; 10 uses
  %i.bi = icmp ult i8 %i.bh, 64
  br i1 %i.bi, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i8 %i.bh, label %bb.m [
    i8 -2, label %bb.n
    i8 -1, label %bb.q
  ]

bb.l:                                             ; preds = %bb.j
  %i.bj = zext nneg i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [3 x i8], ptr %i.w, i64 %i.bj ; 3 uses
  %.sroa.097.0.copyload.i.i.i.i.i = load i8, ptr %i.bk, align 1, !noalias !1014
  %.sroa.498.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %.sroa.498.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.498.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1014
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %.sroa.5.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1014
  br label %.backedge.sink.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bl = add i8 %i.bh, 64
  %or.cond1.i.i.i.i.i = icmp ult i8 %i.bl, 62
  br i1 %or.cond1.i.i.i.i.i, label %bb.s, label %bb.r

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1014
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, i8 0, i64 3, i1 false), !noalias !1014
  %i.bm = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.u, i64 noundef 3)
          to label %.noexc3 unwind label %.loopexit ; 2 uses

.noexc3:                                          ; preds = %bb.n
  %.not50.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not50.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1014
  br label %.loopexit.i.i

bb.p:                                             ; preds = %.noexc3
  %i.bn = load i8, ptr %i.u, align 1, !noalias !1014, !noundef !5
  %i.bo = load i8, ptr %i.ba, align 1, !noalias !1014, !noundef !5
  %i.bp = load i8, ptr %i.bb, align 1, !noalias !1014, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1014
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %bb.t, %bb.p, %bb.k
  %.sroa.21.1.i.i.i.i.i = phi i8 [ %i.dc, %bb.t ], [ %i.do, %bb.w ], [ %i.bp, %bb.p ], [ %.sroa.21.0126.i.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.16.1.i.i.i.i.i = phi i8 [ %i.cz, %bb.t ], [ %i.dm, %bb.w ], [ %i.bo, %bb.p ], [ %.sroa.16.0127.i.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.0.1.i.i.i.i.i = phi i8 [ %i.cv, %bb.t ], [ %i.dk, %bb.w ], [ %i.bn, %bb.p ], [ %.sroa.0.0128.i.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.21.0.insert.ext.i.i.i.i.i = zext i8 %.sroa.21.1.i.i.i.i.i to i64
  %.sroa.21.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.21.0.insert.ext.i.i.i.i.i, 16
  %.sroa.16.0.insert.ext.i.i.i.i.i = zext i8 %.sroa.16.1.i.i.i.i.i to i64
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i8 %.sroa.0.1.i.i.i.i.i to i64
  %i.bq = or disjoint i64 %.sroa.21.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %.sroa.03.0.insert.insert.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.16.0.insert.ext.i.i.i.i.i, 40
  %i.br = or disjoint i64 %i.bq, %.sroa.03.0.insert.insert.i.i.i.i.i.i
  %i.bs = mul i64 %i.br, 216180478695505931
  %i.bt = add i64 %i.bs, 3819052484010180608
  %i.bu = lshr i64 %i.bt, 56
  %i.bv = and i64 %i.bu, 63
  %i.bw = getelementptr inbounds nuw [3 x i8], ptr %i.w, i64 %i.bv ; 3 uses
  store i8 %.sroa.0.1.i.i.i.i.i, ptr %i.bw, align 1, !noalias !1014
  %.sroa.4102.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %.sroa.16.1.i.i.i.i.i, ptr %.sroa.4102.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1014
  %.sroa.5103.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 %.sroa.21.1.i.i.i.i.i, ptr %.sroa.5103.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1014
  br label %.backedge.sink.split.i.i.i.i.i

.backedge.sink.split.i.i.i.i.i:                   ; preds = %bb.q, %bb.l
  %.sroa.097.0.copyload.sink.i.i.i.i.i = phi i8 [ %.sroa.097.0.copyload.i.i.i.i.i, %bb.l ], [ %.sroa.0.1.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.498.0.copyload.sink.i.i.i.i.i = phi i8 [ %.sroa.498.0.copyload.i.i.i.i.i, %bb.l ], [ %.sroa.16.1.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.5.0.copyload.sink.i.i.i.i.i = phi i8 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.l ], [ %.sroa.21.1.i.i.i.i.i, %bb.q ] ; 2 uses
  store i8 %.sroa.097.0.copyload.sink.i.i.i.i.i, ptr %.sroa.09.0130.i.i.i.i.i, align 1, !alias.scope !1015, !noalias !1016
  %.sroa.2110.0..sroa.09.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0130.i.i.i.i.i, i64 1
  store i8 %.sroa.498.0.copyload.sink.i.i.i.i.i, ptr %.sroa.2110.0..sroa.09.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1015, !noalias !1016
  %.sroa.3111.0..sroa.09.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0130.i.i.i.i.i, i64 2
  store i8 %.sroa.5.0.copyload.sink.i.i.i.i.i, ptr %.sroa.3111.0..sroa.09.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1015, !noalias !1016
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.s, %.backedge.sink.split.i.i.i.i.i
  %.sroa.21.0.be.i.i.i.i.i = phi i8 [ %.sroa.21.0126.i.i.i.i.i, %bb.s ], [ %.sroa.5.0.copyload.sink.i.i.i.i.i, %.backedge.sink.split.i.i.i.i.i ], [ %.sroa.21.0126.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.21.0126.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.16.0.be.i.i.i.i.i = phi i8 [ %.sroa.16.0127.i.i.i.i.i, %bb.s ], [ %.sroa.498.0.copyload.sink.i.i.i.i.i, %.backedge.sink.split.i.i.i.i.i ], [ %.sroa.16.0127.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.16.0127.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.be.i.i.i.i.i = phi i8 [ %.sroa.0.0128.i.i.i.i.i, %bb.s ], [ %.sroa.097.0.copyload.sink.i.i.i.i.i, %.backedge.sink.split.i.i.i.i.i ], [ %.sroa.0.0128.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0128.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.8.0.be.i.i.i.i.i = phi i64 [ %i.cb, %bb.s ], [ %i.be, %.backedge.sink.split.i.i.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.09.0.be.i.i.i.i.i = phi ptr [ %i.ca, %bb.s ], [ %i.bd, %.backedge.sink.split.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1014
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.8.0.be.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.f

bb.r:                                             ; preds = %bb.m
  %i.bx = icmp sgt i8 %i.bh, -1
  br i1 %i.bx, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.m
  store i8 %.sroa.0.0128.i.i.i.i.i, ptr %.sroa.09.0130.i.i.i.i.i, align 1, !alias.scope !1015, !noalias !1016
  %.sroa.2113.0..sroa.09.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0130.i.i.i.i.i, i64 1
  store i8 %.sroa.16.0127.i.i.i.i.i, ptr %.sroa.2113.0..sroa.09.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1015, !noalias !1016
  %.sroa.3114.0..sroa.09.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0130.i.i.i.i.i, i64 2
  store i8 %.sroa.21.0126.i.i.i.i.i, ptr %.sroa.3114.0..sroa.09.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1015, !noalias !1016
  %i.by = and i8 %i.bh, 63
  %i.bz = zext nneg i8 %i.by to i64
  %..i.i.i.i.i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.be, i64 %i.bz) ; 4 uses
  %i.ca = getelementptr inbounds nuw [3 x i8], ptr %i.bd, i64 %..i.i.i.i.i.i ; 3 uses
  %i.cb = sub nuw nsw i64 %i.be, %..i.i.i.i.i.i   ; 3 uses
  %.sroa.21.0.insert.ext86.i.i.i.i.i = zext i8 %.sroa.21.0126.i.i.i.i.i to i24
  %.sroa.21.0.insert.shift87.i.i.i.i.i = shl nuw i24 %.sroa.21.0.insert.ext86.i.i.i.i.i, 16
  %.sroa.16.0.insert.ext71.i.i.i.i.i = zext i8 %.sroa.16.0127.i.i.i.i.i to i24
  %.sroa.16.0.insert.shift72.i.i.i.i.i = shl nuw nsw i24 %.sroa.16.0.insert.ext71.i.i.i.i.i, 8
  %.sroa.16.0.insert.insert74.i.i.i.i.i = or disjoint i24 %.sroa.21.0.insert.shift87.i.i.i.i.i, %.sroa.16.0.insert.shift72.i.i.i.i.i
  %.sroa.0.0.insert.ext58.i.i.i.i.i = zext i8 %.sroa.0.0128.i.i.i.i.i to i24
  %.sroa.0.0.insert.insert60.i.i.i.i.i = or disjoint i24 %.sroa.16.0.insert.insert74.i.i.i.i.i, %.sroa.0.0.insert.ext58.i.i.i.i.i ; 9 uses
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %..i.i.i.i.i.i, 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i
  %i.cd = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %i.cd, label %.backedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.s
  %i.ce = add nsw i64 %.idx.i.i.i.i.i.i, -3       ; 2 uses
  %i.cf = udiv i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1
  %xtraiter435 = and i64 %i.cg, 7                 ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.02.06.i.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter437 = phi i64 [ %prol.iter437.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i.prol, i64 3 ; 2 uses
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %.sroa.02.06.i.i.i.i.i.i.prol, align 1, !alias.scope !1017, !noalias !1016
  %prol.iter437.next = add i64 %prol.iter437, 1   ; 2 uses
  %prol.iter437.cmp.not = icmp eq i64 %prol.iter437.next, %xtraiter435
  br i1 %prol.iter437.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !977

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.02.06.i.i.i.i.i.i.unr = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ci = icmp ult i64 %i.ce, 21
  br i1 %i.ci, label %.backedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.02.06.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.02.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 3
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %.sroa.02.06.i.i.i.i.i.i, align 1, !alias.scope !1017, !noalias !1016
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 6
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %i.cj, align 1, !alias.scope !1017, !noalias !1016
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 9
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %i.ck, align 1, !alias.scope !1017, !noalias !1016
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 12
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %i.cl, align 1, !alias.scope !1017, !noalias !1016
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 15
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %i.cm, align 1, !alias.scope !1017, !noalias !1016
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 18
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %i.cn, align 1, !alias.scope !1017, !noalias !1016
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 21
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %i.co, align 1, !alias.scope !1017, !noalias !1016
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 24 ; 2 uses
  store i24 %.sroa.0.0.insert.insert60.i.i.i.i.i, ptr %i.cp, align 1, !alias.scope !1017, !noalias !1016
  %i.cr = icmp eq ptr %i.cq, %i.cc
  br i1 %i.cr, label %.backedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cs = lshr i8 %i.bh, 4
  %i.ct = and i8 %i.cs, 3
  %i.cu = add i8 %.sroa.0.0128.i.i.i.i.i, -2
  %i.cv = add i8 %i.cu, %i.ct
  %i.cw = lshr i8 %i.bh, 2
  %i.cx = and i8 %i.cw, 3
  %i.cy = add i8 %.sroa.16.0127.i.i.i.i.i, -2
  %i.cz = add i8 %i.cy, %i.cx
  %i.da = and i8 %i.bh, 3
  %i.db = add i8 %.sroa.21.0126.i.i.i.i.i, -2
  %i.dc = add i8 %i.db, %i.da
  br label %bb.q

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1014
  store i8 0, ptr %i.t, align 1, !noalias !1014
  %i.dd = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.t, i64 noundef 1)
          to label %.noexc4 unwind label %.loopexit ; 2 uses

.noexc4:                                          ; preds = %bb.u
  %.not51.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not51.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1014
  br label %.loopexit.i.i

bb.w:                                             ; preds = %.noexc4
  %i.de = load i8, ptr %i.t, align 1, !noalias !1014, !noundef !5 ; 2 uses
  %i.df = and i8 %i.bh, 63                        ; 2 uses
  %i.dg = add nsw i8 %i.df, -40                   ; 2 uses
  %i.dh = lshr i8 %i.de, 4
  %i.di = and i8 %i.de, 15
  %i.dj = add i8 %i.dg, %.sroa.0.0128.i.i.i.i.i
  %i.dk = add i8 %i.dj, %i.dh
  %i.dl = add i8 %.sroa.16.0127.i.i.i.i.i, -32
  %i.dm = add i8 %i.dl, %i.df
  %i.dn = add i8 %i.dg, %.sroa.21.0126.i.i.i.i.i
  %i.do = add i8 %i.dn, %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1014
  br label %bb.q

.loopexit.i.i:                                    ; preds = %.noexc2, %bb.v, %bb.o
  %.sroa.316.9.i.i = phi ptr [ %i.dd, %bb.v ], [ %i.bm, %bb.o ], [ %i.bf, %.noexc2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1014
  br label %_RINvNtCsltZrX1n1NSl_3qoi6decode18decode_impl_streamINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEKj3_Kb0_ECsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RINvNtCsltZrX1n1NSl_3qoi6decode18decode_impl_streamINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEKj3_Kb0_ECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %.loopexit.i.i, %bb.i, %bb.h
  %.sroa.316.10.i.i = phi ptr [ undef, %bb.h ], [ %i.bc, %bb.i ], [ %.sroa.316.9.i.i, %.loopexit.i.i ]
  %.sroa.05.10.i.i = phi i8 [ -1, %bb.h ], [ %.sroa.05.11.i.i, %bb.i ], [ 8, %.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1014
  br label %_RNvXs0_NtCsltZrX1n1NSl_3qoi6decodeINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtB5_6Reader12decode_imageCsa5QsYiPB8Gl_5image.exit.i.i

bb.x:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  br i1 %i.aw, label %.preheader.i1.i.i.i.i, label %.invoke

.preheader.i1.i.i.i.i:                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1019
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(768) %i.r, i8 0, i64 768, i1 false), !noalias !1019
  %.not135.i.i.i.i.i = icmp samesign ult i64 %3, 3
  br i1 %.not135.i.i.i.i.i, label %._crit_edge.i13.i.i.i.i, label %.lr.ph.i2.i.i.i.i

.lr.ph.i2.i.i.i.i:                                ; preds = %.preheader.i1.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  br label %bb.y

._crit_edge.i13.i.i.i.i:                          ; preds = %.backedge.i9.i.i.i.i, %.preheader.i1.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1019
  store i64 0, ptr %i.m, align 8, !noalias !1019
  %i.dt = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.m, i64 noundef 8)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc6:                                          ; preds = %._crit_edge.i13.i.i.i.i
  %.not54.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not54.i.i.i.i.i, label %bb.z, label %bb.ab

bb.y:                                             ; preds = %.backedge.i9.i.i.i.i, %.lr.ph.i2.i.i.i.i
  %.sroa.012.0140.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i2.i.i.i.i ], [ %.sroa.012.0.be.i.i.i.i.i, %.backedge.i9.i.i.i.i ] ; 7 uses
  %.sroa.8.0139.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i2.i.i.i.i ], [ %.sroa.8.0.be.i11.i.i.i.i, %.backedge.i9.i.i.i.i ]
  %.sroa.0.0138.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i2.i.i.i.i ], [ %.sroa.0.0.be.i10.i.i.i.i, %.backedge.i9.i.i.i.i ] ; 7 uses
  %.sroa.17.0137.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i2.i.i.i.i ], [ %.sroa.17.0.be.i.i.i.i.i, %.backedge.i9.i.i.i.i ] ; 7 uses
  %.sroa.23.0136.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i2.i.i.i.i ], [ %.sroa.23.0.be.i.i.i.i.i, %.backedge.i9.i.i.i.i ] ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.012.0140.i.i.i.i.i, i64 3 ; 5 uses
  %i.dv = add nsw i64 %.sroa.8.0139.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1019
  store i8 0, ptr %i.q, align 1, !noalias !1019
  %i.dw = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.q, i64 noundef 1)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc7:                                          ; preds = %bb.y
  %.not56.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not56.i.i.i.i.i, label %bb.ac, label %.loopexit26.i.i

bb.z:                                             ; preds = %.noexc6
  %i.dx = load i64, ptr %i.m, align 8, !noalias !1019, !noundef !5
  %.not55.i.i.i.i.i = icmp eq i64 %i.dx, 72057594037927936
  br i1 %.not55.i.i.i.i.i, label %bb.aa, label %bb.ab, !prof !19

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1019
  br label %_RINvNtCsltZrX1n1NSl_3qoi6decode18decode_impl_streamINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEKj3_Kb1_ECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z, %.noexc6
  %.sroa.05.8.i.i = phi i8 [ 8, %.noexc6 ], [ 7, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1019
  br label %_RINvNtCsltZrX1n1NSl_3qoi6decode18decode_impl_streamINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEKj3_Kb1_ECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ac:                                            ; preds = %.noexc7
  %i.dy = load i8, ptr %i.q, align 1, !noalias !1019, !noundef !5 ; 10 uses
  %i.dz = icmp ult i8 %i.dy, 64
  br i1 %i.dz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i8 %i.dy, label %bb.af [
    i8 -2, label %bb.ag
    i8 -1, label %bb.ak
  ]

bb.ae:                                            ; preds = %bb.ac
  %i.ea = zext nneg i8 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [3 x i8], ptr %i.r, i64 %i.ea ; 3 uses
  %.sroa.0105.0.copyload.i.i.i.i.i = load i8, ptr %i.eb, align 1, !noalias !1019
  %.sroa.4106.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %.sroa.4106.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.4106.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1019
  %.sroa.5.0..sroa_idx.i19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %.sroa.5.0.copyload.i20.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i19.i.i.i.i, align 1, !noalias !1019
  br label %.backedge.sink.split.i7.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ec = add i8 %i.dy, 64
  %or.cond1.i14.i.i.i.i = icmp ult i8 %i.ec, 62
  br i1 %or.cond1.i14.i.i.i.i, label %bb.ao, label %bb.an

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1019
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, i8 0, i64 3, i1 false), !noalias !1019
  %i.ed = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.p, i64 noundef 3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc8:                                          ; preds = %bb.ag
  %.not58.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not58.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1019
  br label %.loopexit26.i.i

bb.ai:                                            ; preds = %.noexc8
  %i.ee = load i8, ptr %i.p, align 1, !noalias !1019, !noundef !5
  %i.ef = load i8, ptr %i.dr, align 1, !noalias !1019, !noundef !5
  %i.eg = load i8, ptr %i.ds, align 1, !noalias !1019, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1019
  br label %bb.aj

bb.aj:                                            ; preds = %bb.as, %bb.ap, %bb.am, %bb.ai
  %.sroa.23.1.i.i.i.i.i = phi i8 [ %i.fx, %bb.ap ], [ %i.gj, %bb.as ], [ %i.er, %bb.am ], [ %i.eg, %bb.ai ] ; 3 uses
  %.sroa.17.1.i.i.i.i.i = phi i8 [ %i.fu, %bb.ap ], [ %i.gh, %bb.as ], [ %i.eq, %bb.am ], [ %i.ef, %bb.ai ] ; 3 uses
  %.sroa.0.1.i4.i.i.i.i = phi i8 [ %i.fq, %bb.ap ], [ %i.gf, %bb.as ], [ %i.ep, %bb.am ], [ %i.ee, %bb.ai ] ; 3 uses
  %.sroa.23.0.insert.ext.i.i.i.i.i = zext i8 %.sroa.23.1.i.i.i.i.i to i64
  %.sroa.23.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i.i.i.i, 16
  %.sroa.17.0.insert.ext.i.i.i.i.i = zext i8 %.sroa.17.1.i.i.i.i.i to i64
  %.sroa.0.0.insert.ext.i5.i.i.i.i = zext i8 %.sroa.0.1.i4.i.i.i.i to i64
  %i.eh = or disjoint i64 %.sroa.23.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i5.i.i.i.i
  %.sroa.03.0.insert.insert.i.i6.i.i.i.i = shl nuw nsw i64 %.sroa.17.0.insert.ext.i.i.i.i.i, 40
  %i.ei = or disjoint i64 %i.eh, %.sroa.03.0.insert.insert.i.i6.i.i.i.i
  %i.ej = mul i64 %i.ei, 216180478695505931
  %i.ek = add i64 %i.ej, 3819052484010180608
  %i.el = lshr i64 %i.ek, 56
  %i.em = and i64 %i.el, 63
  %i.en = getelementptr inbounds nuw [3 x i8], ptr %i.r, i64 %i.em ; 3 uses
  store i8 %.sroa.0.1.i4.i.i.i.i, ptr %i.en, align 1, !noalias !1019
  %.sroa.4110.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %.sroa.17.1.i.i.i.i.i, ptr %.sroa.4110.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1019
  %.sroa.5111.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i8 %.sroa.23.1.i.i.i.i.i, ptr %.sroa.5111.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1019
  br label %.backedge.sink.split.i7.i.i.i.i

.backedge.sink.split.i7.i.i.i.i:                  ; preds = %bb.aj, %bb.ae
  %.sroa.0105.0.copyload.sink.i.i.i.i.i = phi i8 [ %.sroa.0105.0.copyload.i.i.i.i.i, %bb.ae ], [ %.sroa.0.1.i4.i.i.i.i, %bb.aj ] ; 2 uses
  %.sroa.4106.0.copyload.sink.i.i.i.i.i = phi i8 [ %.sroa.4106.0.copyload.i.i.i.i.i, %bb.ae ], [ %.sroa.17.1.i.i.i.i.i, %bb.aj ] ; 2 uses
  %.sroa.5.0.copyload.sink.i8.i.i.i.i = phi i8 [ %.sroa.5.0.copyload.i20.i.i.i.i, %bb.ae ], [ %.sroa.23.1.i.i.i.i.i, %bb.aj ] ; 2 uses
  store i8 %.sroa.0105.0.copyload.sink.i.i.i.i.i, ptr %.sroa.012.0140.i.i.i.i.i, align 1, !alias.scope !1020, !noalias !1021
  %.sroa.2118.0..sroa.012.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0140.i.i.i.i.i, i64 1
  store i8 %.sroa.4106.0.copyload.sink.i.i.i.i.i, ptr %.sroa.2118.0..sroa.012.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1020, !noalias !1021
  %.sroa.3119.0..sroa.012.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0140.i.i.i.i.i, i64 2
  store i8 %.sroa.5.0.copyload.sink.i8.i.i.i.i, ptr %.sroa.3119.0..sroa.012.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1020, !noalias !1021
  br label %.backedge.i9.i.i.i.i

.backedge.i9.i.i.i.i:                             ; preds = %.lr.ph.i.i17.i.i.i.i.prol.loopexit, %.lr.ph.i.i17.i.i.i.i, %bb.ao, %.backedge.sink.split.i7.i.i.i.i
  %.sroa.23.0.be.i.i.i.i.i = phi i8 [ %.sroa.23.0136.i.i.i.i.i, %bb.ao ], [ %.sroa.5.0.copyload.sink.i8.i.i.i.i, %.backedge.sink.split.i7.i.i.i.i ], [ %.sroa.23.0136.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i ], [ %.sroa.23.0136.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.prol.loopexit ]
  %.sroa.17.0.be.i.i.i.i.i = phi i8 [ %.sroa.17.0137.i.i.i.i.i, %bb.ao ], [ %.sroa.4106.0.copyload.sink.i.i.i.i.i, %.backedge.sink.split.i7.i.i.i.i ], [ %.sroa.17.0137.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i ], [ %.sroa.17.0137.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.be.i10.i.i.i.i = phi i8 [ %.sroa.0.0138.i.i.i.i.i, %bb.ao ], [ %.sroa.0105.0.copyload.sink.i.i.i.i.i, %.backedge.sink.split.i7.i.i.i.i ], [ %.sroa.0.0138.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i ], [ %.sroa.0.0138.i.i.i.i.i, %.lr.ph.i.i17.i.i.i.i.prol.loopexit ]
  %.sroa.8.0.be.i11.i.i.i.i = phi i64 [ %i.ew, %bb.ao ], [ %i.dv, %.backedge.sink.split.i7.i.i.i.i ], [ %i.ew, %.lr.ph.i.i17.i.i.i.i ], [ %i.ew, %.lr.ph.i.i17.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.012.0.be.i.i.i.i.i = phi ptr [ %i.ev, %bb.ao ], [ %i.du, %.backedge.sink.split.i7.i.i.i.i ], [ %i.ev, %.lr.ph.i.i17.i.i.i.i ], [ %i.ev, %.lr.ph.i.i17.i.i.i.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1019
  %.not.i12.i.i.i.i = icmp eq i64 %.sroa.8.0.be.i11.i.i.i.i, 0
  br i1 %.not.i12.i.i.i.i, label %._crit_edge.i13.i.i.i.i, label %bb.y

bb.ak:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1019
  store i32 0, ptr %i.o, align 4, !noalias !1019
  %i.eo = invoke noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z, ptr noalias nofree noundef nonnull %i.o, i64 noundef 4)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc9:                                          ; preds = %bb.ak
  %.not57.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not57.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1019
  br label %.loopexit26.i.i

bb.am:                                            ; preds = %.noexc9
  %i.ep = load i8, ptr %i.o, align 4, !noalias !1019, !noundef !5
  %i.eq = load i8, ptr %i.dp, align 1, !noalias !1019, !noundef !5
  %i.er = load i8, ptr %i.dq, align 2, !noalias !1019, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1019
  br label %bb.aj

bb.an:                                            ; preds = %bb.af
  %i.es = icmp sgt i8 %i.dy, -1
  br i1 %i.es, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.af
  store i8 %.sroa.0.0138.i.i.i.i.i, ptr %.sroa.012.0140.i.i.i.i.i, align 1, !alias.scope !1020, !noalias !1021
  %.sroa.2121.0..sroa.012.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0140.i.i.i.i.i, i64 1
  store i8 %.sroa.17.0137.i.i.i.i.i, ptr %.sroa.2121.0..sroa.012.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1020, !noalias !1021
  %.sroa.3122.0..sroa.012.0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0140.i.i.i.i.i, i64 2
  store i8 %.sroa.23.0136.i.i.i.i.i, ptr %.sroa.3122.0..sroa.012.0.sroa_idx.i.i.i.i.i, align 1, !alias.scope !1020, !noalias !1021
  %i.et = and i8 %i.dy, 63
  %i.eu = zext nneg i8 %i.et to i64
  %..i.i15.i.i.i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.dv, i64 %i.eu) ; 4 uses
  %i.ev = getelementptr inbounds nuw [3 x i8], ptr %i.du, i64 %..i.i15.i.i.i.i ; 3 uses
  %i.ew = sub nuw nsw i64 %i.dv, %..i.i15.i.i.i.i ; 3 uses
  %.sroa.23.0.insert.ext94.i.i.i.i.i = zext i8 %.sroa.23.0136.i.i.i.i.i to i24
  %.sroa.23.0.insert.shift95.i.i.i.i.i = shl nuw i24 %.sroa.23.0.insert.ext94.i.i.i.i.i, 16
  %.sroa.17.0.insert.ext79.i.i.i.i.i = zext i8 %.sroa.17.0137.i.i.i.i.i to i24
  %.sroa.17.0.insert.shift80.i.i.i.i.i = shl nuw nsw i24 %.sroa.17.0.insert.ext79.i.i.i.i.i, 8
  %.sroa.17.0.insert.insert82.i.i.i.i.i = or disjoint i24 %.sroa.23.0.insert.shift95.i.i.i.i.i, %.sroa.17.0.insert.shift80.i.i.i.i.i
  %.sroa.0.0.insert.ext66.i.i.i.i.i = zext i8 %.sroa.0.0138.i.i.i.i.i to i24
  %.sroa.0.0.insert.insert68.i.i.i.i.i = or disjoint i24 %.sroa.17.0.insert.insert82.i.i.i.i.i, %.sroa.0.0.insert.ext66.i.i.i.i.i ; 9 uses
  %.idx.i.i16.i.i.i.i = mul nuw nsw i64 %..i.i15.i.i.i.i, 3 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx.i.i16.i.i.i.i
  %i.ey = icmp eq i64 %..i.i15.i.i.i.i, 0
  br i1 %i.ey, label %.backedge.i9.i.i.i.i, label %.lr.ph.i.i17.i.i.i.i.preheader

.lr.ph.i.i17.i.i.i.i.preheader:                   ; preds = %bb.ao
  %i.ez = add nsw i64 %.idx.i.i16.i.i.i.i, -3     ; 2 uses
  %i.fa = udiv i64 %i.ez, 3
  %i.fb = add nuw nsw i64 %i.fa, 1
  %xtraiter = and i64 %i.fb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i17.i.i.i.i.prol.loopexit, label %.lr.ph.i.i17.i.i.i.i.prol

.lr.ph.i.i17.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i17.i.i.i.i.preheader, %.lr.ph.i.i17.i.i.i.i.prol
  %.sroa.02.06.i.i18.i.i.i.i.prol = phi ptr [ %i.fc, %.lr.ph.i.i17.i.i.i.i.prol ], [ %i.du, %.lr.ph.i.i17.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i17.i.i.i.i.prol ], [ 0, %.lr.ph.i.i17.i.i.i.i.preheader ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i.prol, i64 3 ; 2 uses
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %.sroa.02.06.i.i18.i.i.i.i.prol, align 1, !alias.scope !1022, !noalias !1021
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i17.i.i.i.i.prol.loopexit, label %.lr.ph.i.i17.i.i.i.i.prol, !llvm.loop !984

.lr.ph.i.i17.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i17.i.i.i.i.prol, %.lr.ph.i.i17.i.i.i.i.preheader
  %.sroa.02.06.i.i18.i.i.i.i.unr = phi ptr [ %i.du, %.lr.ph.i.i17.i.i.i.i.preheader ], [ %i.fc, %.lr.ph.i.i17.i.i.i.i.prol ]
  %i.fd = icmp ult i64 %i.ez, 21
  br i1 %i.fd, label %.backedge.i9.i.i.i.i, label %.lr.ph.i.i17.i.i.i.i

.lr.ph.i.i17.i.i.i.i:                             ; preds = %.lr.ph.i.i17.i.i.i.i.prol.loopexit, %.lr.ph.i.i17.i.i.i.i
  %.sroa.02.06.i.i18.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i17.i.i.i.i ], [ %.sroa.02.06.i.i18.i.i.i.i.unr, %.lr.ph.i.i17.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i, i64 3
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %.sroa.02.06.i.i18.i.i.i.i, align 1, !alias.scope !1022, !noalias !1021
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i, i64 6
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %i.fe, align 1, !alias.scope !1022, !noalias !1021
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i, i64 9
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %i.ff, align 1, !alias.scope !1022, !noalias !1021
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i, i64 12
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %i.fg, align 1, !alias.scope !1022, !noalias !1021
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i, i64 15
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %i.fh, align 1, !alias.scope !1022, !noalias !1021
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i, i64 18
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %i.fi, align 1, !alias.scope !1022, !noalias !1021
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i18.i.i.i.i, i64 21
  store i24 %.sroa.0.0.insert.insert68.i.i.i.i.i, ptr %i.fj, align 1, !alias.scope !1022, !noalias !1021
end_hunk_0
