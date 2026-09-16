Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.04?download=true
inline.NumInlined: 586
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTRTReB1c_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2d_:.lr.ph.i
  %i.ig = xor i32 %i.if, %i.ic
  %i.ih = ashr i32 %i.id, 31
  %i.ii = lshr i32 %i.ih, 1
  %i.ij = xor i32 %i.ii, %i.id
  %i.ik = icmp slt i32 %i.ig, %i.ij               ; 3 uses
  %..i.i.2 = select i1 %i.ik, ptr %i.hh, ptr %i.hg
  %i.il = xor i1 %i.ik, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !388
  %.neg.i.i.2 = sext i1 %i.il to i64
  %i.im = getelementptr [16 x i8], ptr %i.hg, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.ik to i64
  %i.in = getelementptr [16 x i8], ptr %i.hh, i64 %.neg13.i.i.2 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ip = getelementptr i8, ptr %i.hw, i64 8
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.ip, align 8, !alias.scope !386, !nonnull !4, !align !13, !noundef !4
  %i.iq = getelementptr i8, ptr %i.hy, i64 8
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.iq, align 8, !alias.scope !386, !nonnull !4, !align !13, !noundef !4
  %i.ir = load i32, ptr %.sroa.06.0.val.i.3, align 4, !noalias !386, !noundef !4 ; 2 uses
  %i.is = load i32, ptr %.sroa.011.0.val.i.3, align 4, !noalias !386, !noundef !4 ; 2 uses
  %i.it = ashr i32 %i.ir, 31
  %i.iu = lshr i32 %i.it, 1
  %i.iv = xor i32 %i.iu, %i.ir
  %i.iw = ashr i32 %i.is, 31
  %i.ix = lshr i32 %i.iw, 1
  %i.iy = xor i32 %i.ix, %i.is
  %i.iz = icmp slt i32 %i.iv, %i.iy               ; 3 uses
  %..i21.i.3 = select i1 %i.iz, ptr %i.hw, ptr %i.hy
  %i.ja = xor i1 %i.iz, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.3, i64 16, i1 false), !noalias !387
  %i.jb = zext i1 %i.iz to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.jb
  %i.jd = zext i1 %i.ja to i64
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.im, i64 8
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.jf, align 8, !alias.scope !386, !nonnull !4, !align !13, !noundef !4
  %i.jg = getelementptr i8, ptr %i.in, i64 8
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.jg, align 8, !alias.scope !386, !nonnull !4, !align !13, !noundef !4
  %i.jh = load i32, ptr %.sroa.015.0.val.i.3, align 4, !noalias !386, !noundef !4 ; 2 uses
  %i.ji = load i32, ptr %.sroa.017.0.val.i.3, align 4, !noalias !386, !noundef !4 ; 2 uses
  %i.jj = ashr i32 %i.jh, 31
  %i.jk = lshr i32 %i.jj, 1
  %i.jl = xor i32 %i.jk, %i.jh
  %i.jm = ashr i32 %i.ji, 31
  %i.jn = lshr i32 %i.jm, 1
  %i.jo = xor i32 %i.jn, %i.ji
  %i.jp = icmp slt i32 %i.jl, %i.jo               ; 3 uses
  %..i.i.3 = select i1 %i.jp, ptr %i.in, ptr %i.im
  %i.jq = xor i1 %i.jp, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !388
  %.neg.i.i.3 = sext i1 %i.jq to i64
  %i.jr = getelementptr [16 x i8], ptr %i.im, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.jp to i64
  %i.js = getelementptr [16 x i8], ptr %i.in, i64 %.neg13.i.i.3
  %i.jt = getelementptr i8, ptr %i.js, i64 16
  %i.ju = getelementptr i8, ptr %i.jr, i64 16
  %i.jv = icmp ne ptr %i.je, %i.jt
  %i.jw = icmp ne ptr %i.jc, %i.ju
  %or.cond.i = select i1 %i.jv, i1 true, i1 %i.jw, !prof !14
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTRTReB1j_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2k_.exit, !prof !14

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #31, !noalias !386
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTRTReB1j_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2k_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRTReB1p_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTRTReB1b_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2c_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTRTReB1b_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2c_.exit
  %.sroa.0.05 = phi ptr [ %i.x, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTRTReB1b_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val9.i = load ptr, ptr %i.d, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val10.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !13, !noundef !4
  %i.f = load i32, ptr %.val10.i, align 4, !noundef !4 ; 2 uses
  %i.g = load i32, ptr %.val9.i, align 4, !noundef !4 ; 2 uses
  %i.h = ashr i32 %i.f, 31
  %i.i = lshr i32 %i.h, 1
  %i.j = xor i32 %i.i, %i.f
  %i.k = ashr i32 %i.g, 31
  %i.l = lshr i32 %i.k, 1
  %i.m = xor i32 %i.l, %i.g                       ; 2 uses
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTRTReB1b_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2c_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %.sroa.0.05, align 8, !nonnull !4, !align !7, !noundef !4
  %.sroa.0.0.i9 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i9, i64 16, i1 false)
  %i.p = icmp eq ptr %.sroa.0.0.i9, %0
  br i1 %i.p, label %._crit_edge14, label %.lr.ph13

bb.e:                                             ; preds = %.lr.ph13
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i11, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i, i64 16, i1 false)
  %i.q = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.q, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i11 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i9, %bb.d ] ; 5 uses
  %.sroa.5.0.i10 = phi ptr [ %.sroa.0.0.i11, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.5.0.i10, i64 -24
  %.val8.i = load ptr, ptr %i.r, align 8, !nonnull !4, !align !13, !noundef !4
  %i.s = load i32, ptr %.val8.i, align 4, !noundef !4 ; 2 uses
  %i.t = ashr i32 %i.s, 31
  %i.u = lshr i32 %i.t, 1
  %i.v = xor i32 %i.u, %i.s
  %i.w = icmp slt i32 %i.v, %i.m
  br i1 %i.w, label %bb.e, label %._crit_edge14

._crit_edge14:                                    ; preds = %bb.e, %.lr.ph13, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i11, %bb.e ], [ %.sroa.5.0.i10, %.lr.ph13 ]
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i11, %.lr.ph13 ]
  store ptr %i.o, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !393
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store ptr %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !393
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTRTReB1b_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2c_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTRTReB1b_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2c_.exit: ; preds = %.lr.ph, %._crit_edge14
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRTReBZ_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB1Y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ft, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fr, %bb.aa ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit
  %.sroa.021.0 = phi i8 [ %i.ci, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread94, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %i.p, i64 24
  %.val7.i = load ptr, ptr %i.r, align 8, !alias.scope !416, !noalias !417, !nonnull !4, !align !13, !noundef !4
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !416, !noalias !417, !nonnull !4, !align !13, !noundef !4
  %i.t = load i32, ptr %.val8.i, align 4, !noalias !418, !noundef !4 ; 2 uses
  %i.u = load i32, ptr %.val7.i, align 4, !noalias !418, !noundef !4 ; 4 uses
  %i.v = ashr i32 %i.t, 31
  %i.w = lshr i32 %i.v, 1
  %i.x = xor i32 %i.w, %i.t
  %i.y = ashr i32 %i.u, 31
  %i.z = lshr i32 %i.y, 1
  %i.aa = xor i32 %i.z, %i.u
  %i.ab = icmp slt i32 %i.x, %i.aa                ; 2 uses
  %.not66 = icmp eq i64 %i.o, 2                   ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader44

.preheader44:                                     ; preds = %bb.k
  br i1 %.not66, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader44
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not66, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread94, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %.preheader
  %smax73 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph53

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.ac = phi i32 [ %i.af, %bb.l ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i49 = phi i64 [ %i.an, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i.i49
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val5.i = load ptr, ptr %i.ae, align 8, !alias.scope !416, !noalias !417, !nonnull !4, !align !13, !noundef !4
  %i.af = load i32, ptr %.val5.i, align 4, !noalias !418, !noundef !4 ; 3 uses
  %i.ag = ashr i32 %i.ac, 31
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, %i.ac
  %i.aj = ashr i32 %i.af, 31
  %i.ak = lshr i32 %i.aj, 1
  %i.al = xor i32 %i.ak, %i.af
  %i.am = icmp slt i32 %i.ai, %i.al
  br i1 %i.am, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.an = add nuw nsw i64 %.sroa.01.0.i.i49, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i, label %.lr.ph

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %bb.m
  %i.ao = phi i32 [ %i.ar, %bb.m ], [ %i.u, %.lr.ph53.preheader ] ; 2 uses
  %.sroa.01.1.i.i52 = phi i64 [ %i.az, %bb.m ], [ 2, %.lr.ph53.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.1.i.i52
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val.i = load ptr, ptr %i.aq, align 8, !alias.scope !416, !noalias !417, !nonnull !4, !align !13, !noundef !4
  %i.ar = load i32, ptr %.val.i, align 4, !noalias !418, !noundef !4 ; 3 uses
  %i.as = ashr i32 %i.ao, 31
  %i.at = lshr i32 %i.as, 1
  %i.au = xor i32 %i.at, %i.ao
  %i.av = ashr i32 %i.ar, 31
  %i.aw = lshr i32 %i.av, 1
  %i.ax = xor i32 %i.aw, %i.ar
  %i.ay = icmp slt i32 %i.au, %i.ax
  br i1 %i.ay, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i

bb.m:                                             ; preds = %.lr.ph53
  %i.az = add nuw nsw i64 %.sroa.01.1.i.i52, 1    ; 2 uses
  %exitcond73.not = icmp eq i64 %i.az, %smax73
  br i1 %exitcond73.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i, label %.lr.ph53

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph53
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i52, %.lr.ph53 ], [ %smax73, %bb.m ], [ %.sroa.01.0.i.i49, %.lr.ph ], [ %smax, %bb.l ] ; 6 uses
  %i.ba = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.ba)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not3.i96, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread: ; preds = %.preheader44
  br i1 %.not3.i91, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i
  br i1 %i.ab, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.o:                                             ; preds = %bb.i
  %i.bb = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.o)
  %i.bc = shl nuw nsw i64 %i.bb, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit

bb.p:                                             ; preds = %bb.i
  %i.bd = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRTReB18_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #29, !inline_history !398
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = or disjoint i64 %i.be, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i.epil.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i ], [ %i.bz, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.bg = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.bi = getelementptr [16 x i8], ptr %i.bo, i64 %i.bg ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !alias.scope !419, !noalias !420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !421, !noalias !417
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !alias.scope !422, !noalias !423
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i.epil.preheader ]
  %i.bk = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit

bb.q:                                             ; preds = %bb.n
  %i.bm = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424), !noalias !417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425), !noalias !417
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread94, %bb.q
  %i.bn = phi i64 [ %i.bm, %bb.q ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRTReB15_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB26_.exit.i.thread94 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bn, 1
  br i1 %i.bp, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i.new

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i
  %unroll_iter = and i64 %i.bn, 9223372036854775806
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i.new ], [ %i.bz, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i ]
  %i.bq = xor i64 %.sroa.0.016.i.i, -1
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bs = getelementptr [16 x i8], ptr %i.bo, i64 %i.bq ; 2 uses
  %i.bt = load <2 x ptr>, ptr %i.br, align 8, !alias.scope !419, !noalias !420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !alias.scope !421, !noalias !417
  store <2 x ptr> %i.bt, ptr %i.bs, align 8, !alias.scope !422, !noalias !423
  %i.bu = xor i64 %.sroa.0.016.i.i, -2
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.0.016.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = getelementptr [16 x i8], ptr %i.bo, i64 %i.bu ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !alias.scope !419, !noalias !420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !alias.scope !421, !noalias !417
  store <2 x ptr> %i.by, ptr %i.bx, align 8, !alias.scope !422, !noalias !423
  %i.bz = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE12split_at_mutCsfh9HxMbthk9_27candle_wasm_example_whisper.exit11.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRTReB16_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB27_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bl, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRTReBx_ERfE7reverseCsfh9HxMbthk9_27candle_wasm_example_whisper.exit ], [ %i.bf, %bb.p ], [ %i.bc, %bb.o ] ; 2 uses
  %i.ca = lshr i64 %.sroa.023.0, 1
  %i.cb = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cc = sub nsw i64 %factor, %i.ca
  %i.cd = add nuw nsw i64 %i.cb, %factor
  %i.ce = mul i64 %i.cc, %.sroa.0.0
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 false)
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph59, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit
  %.sroa.02.158 = phi i64 [ %.sroa.02.0, %.lr.ph59 ], [ %i.cj, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 2 uses
  %.sroa.023.157 = phi i64 [ %.sroa.023.0, %.lr.ph59 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 4 uses
  %i.cj = add i64 %.sroa.02.158, -1               ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.cl, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.157, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.158, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cn, align 1
  br i1 %i.l, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4 ; 3 uses
  %i.cq = lshr i64 %i.cp, 1                       ; 8 uses
  %i.cr = lshr i64 %.sroa.023.157, 1              ; 6 uses
  %i.cs = add nuw i64 %i.cq, %i.cr                ; 4 uses
  %i.ct = sub i64 %.sroa.09.0, %i.cs
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ct ; 6 uses
  %i.cv = icmp samesign ugt i64 %i.cs, %3
  %i.cw = trunc i64 %.sroa.023.157 to i1
  %i.cx = or i64 %i.cp, %.sroa.023.157
  %i.cy = trunc i64 %i.cx to i1
  %or.cond3.i = or i1 %i.cv, %i.cy
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = trunc i64 %i.cp to i1
  br i1 %i.cz, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.da = shl nuw nsw i64 %i.cs, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRTReB19_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB2a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cw, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.db = or i64 %i.cq, 1
  %i.dc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRTReB18_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 576460752303423488) %i.cq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #29, !inline_history !404
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cq
  %i.dh = or i64 %i.cr, 1
  %i.di = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRTReB18_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB29_(ptr noalias nofree noundef nonnull align 8 %i.dg, i64 noundef range(i64 0, 576460752303423488) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #29, !inline_history !404
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.dm = icmp eq i64 %i.cq, 0
  %i.dn = icmp eq i64 %i.cr, 0
  %or.cond.i = or i1 %i.dn, %i.dm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.cq, i64 %i.cr) ; 2 uses
  %i.dp = icmp samesign ult i64 %3, %i.do
  br i1 %i.dp, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRTReB10_ERfENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvNtCsfh9HxMbthk9_27candle_wasm_example_whisper6worker15detect_languages0_0E0EB20_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cq ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cq, %i.cr  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dq, ptr %i.cu
  %i.dr = shl nuw nsw i64 %i.do, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dr, i1 false), !alias.scope !428
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.dt = phi ptr [ %i.en, %.preheader.i ], [ %i.ds, %.critedge.i ] ; 2 uses
  %i.du = phi ptr [ %i.el, %.preheader.i ], [ %i.dq, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.dx, %.preheader.i ], [ %i.n, %.critedge.i ]
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -16 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 -16 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dt, i64 -8
  %.val.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !427, !noalias !429, !nonnull !4, !align !13, !noundef !4
  %i.dz = getelementptr i8, ptr %i.du, i64 -8
  %.val12.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !426, !noalias !430, !nonnull !4, !align !13, !noundef !4
  %i.ea = load i32, ptr %.val12.i.i, align 4, !noalias !431, !noundef !4 ; 2 uses
  %i.eb = load i32, ptr %.val.i.i, align 4, !noalias !431, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template12SpecialTokenEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0EB1y_

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_mNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0ECshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0ECshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0EBW_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0ECshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEE14reserve_rehashNCINvNtB8_3map11make_hashermBR_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE0EBX_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #17

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe4word6SymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe4word6SymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCINvNtCsfh9HxMbthk9_27candle_wasm_example_whisper5audio20log_mel_spectrogram_fE0EE9from_iterB2F_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsf3Ta7LF998c_4core4iter7sources8repeat_n7RepeatNfEE11spec_extendCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, float) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_4ItermNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvXsM_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB37_6ValuesmBM_EB1X_4folduNCINvNtNtB23_8adapters3map8map_foldRBM_BM_uNvYBM_NtNtB25_5clone5Clone5cloneNCIB4n_BM_TBM_uEuNCINvXs8_NtB8_3setINtB5X_7HashSetBM_NtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateEINtNtB21_7collect6ExtendBM_E6extendINtNtB4r_6cloned6ClonedB3R_EE0NCINvNvB1X_8for_each4callB5H_NCINvXs1i_B6_INtB6_7HashMapBM_uB6o_EIB7f_B5H_E6extendINtB4p_3MapB7N_B5O_EE0E0E0E0E0ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel13serialization16WordLevelVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB8_5ValueNtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNtNtNtCshBhMCGs0DAb_10tokenizers6models9wordlevel13serialization16WordLevelVisitorECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsf3Ta7LF998c_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentReE10equivalentCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenuNtNtCsgdREh4IfnNf_5ahash12random_state11RandomStateE6insertCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCscHeDkCj8TjV_11rand_chacha6chachaINtB2_7Array64mENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([256 x i8]) align 4 captures(none) dereferenceable(256)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsl_NtCsf3Ta7LF998c_4core3fmtPNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core6HeaderNtB5_7Pointer3fmtCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11init_chacha(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsz_NtCsf3Ta7LF998c_4core5arrayAhj20_NtNtB7_7default7Default7defaultCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maximumnum.v4f32(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #17

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { inlinehint }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind }
attributes #29 = { noinline }
attributes #30 = { noreturn }
attributes #31 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 8}
!8 = !{!"branch_weights", i32 1, i32 1999}
!9 = !{!"branch_weights", i32 0, i32 1}
!10 = !{i64 0, i64 2}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i64 4}
!14 = !{!"branch_weights", i32 4001, i32 4000000}
!15 = !{i64 1, i64 536870913}
!16 = distinct !{!16, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!17 = distinct !{!17, !16, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1p_hEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!18 = distinct !{!18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!19 = distinct !{!19, !18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!20 = distinct !{!20, !18, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!21 = distinct !{!21, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!22 = distinct !{!22, !21, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!23 = distinct !{!23, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!24 = distinct !{!24, !23, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!25 = distinct !{!25, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!26 = distinct !{!26, !25, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!27 = distinct !{!27, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!28 = distinct !{!28, !27, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!29 = distinct !{!29, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!30 = distinct !{!30, !29, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!31 = distinct !{!31, !25, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1o_hEEEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!32 = distinct !{!32, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!33 = distinct !{!33, !32, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!34 = distinct !{!34, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!35 = distinct !{!35, !34, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!36 = !{!17}
!37 = !{!19}
!38 = !{!19, !17}
!39 = !{!20}
!40 = !{!22, !19, !20, !17}
!41 = !{!24, !19, !20, !17}
!42 = !{!26}
!43 = !{!28}
!44 = !{!30}
!45 = !{!33, !30, !28, !31, !26}
!46 = !{!35, !30, !28, !31, !26}
!47 = !{!30, !28, !26}
!48 = !{!31}
!49 = !{!30, !28, !31, !26}
!50 = distinct !{!50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!51 = distinct !{!51, !50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!52 = distinct !{!52, !50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!53 = distinct !{!53, !50, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!54 = distinct !{!54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!55 = distinct !{!55, !54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!56 = distinct !{!56, !54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!57 = distinct !{!57, !54, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!58 = distinct !{!58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!59 = distinct !{!59, !58, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!60 = distinct !{!60, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!61 = distinct !{!61, !60, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!62 = distinct !{!62, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!63 = distinct !{!63, !62, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!64 = distinct !{!64, !62, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc3vec3VecIB1r_hEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!65 = distinct !{!65, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!66 = distinct !{!66, !65, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!67 = !{!51}
!68 = !{!53, !52}
!69 = !{!51, !53, !52}
!70 = !{!55}
!71 = !{!55, !57, !56, !51, !53, !52}
!72 = !{!56, !52}
!73 = !{!55, !51}
!74 = !{!57, !56, !53, !52}
!75 = !{!59}
!76 = !{!61}
!77 = !{!61, !59}
!78 = !{!61, !59, !56, !52}
!79 = !{!63}
!80 = !{!64, !56, !52}
!81 = !{!64, !63, !56, !52}
!82 = !{!66}
!83 = distinct !{!83, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!84 = distinct !{!84, !83, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!85 = distinct !{!85, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!86 = distinct !{!86, !85, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!87 = distinct !{!87, !85, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!88 = distinct !{!88, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!89 = distinct !{!89, !88, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!90 = distinct !{!90, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!91 = distinct !{!91, !90, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!92 = distinct !{!92, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!93 = distinct !{!93, !92, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!94 = distinct !{!94, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!95 = distinct !{!95, !94, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE13erase_no_dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!96 = distinct !{!96, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase"}
!97 = distinct !{!97, !96, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner5erase: argument 0"}
!98 = distinct !{!98, !92, !"_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE6removeCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!99 = distinct !{!99, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!100 = distinct !{!100, !99, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!101 = distinct !{!101, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!102 = distinct !{!102, !101, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!103 = !{!84}
!104 = !{!86}
!105 = !{!86, !84}
!106 = !{!87}
!107 = !{!89, !86, !87, !84}
!108 = !{!91, !86, !87, !84}
!109 = !{!93}
!110 = !{!95}
!111 = !{!97}
!112 = !{!100, !97, !95, !98, !93}
!113 = !{!102, !97, !95, !98, !93}
!114 = !{!97, !95, !93}
!115 = !{!98}
!116 = !{!97, !95, !98, !93}
!117 = distinct !{!117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!118 = distinct !{!118, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!119 = distinct !{!119, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!120 = distinct !{!120, !117, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!121 = distinct !{!121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!122 = distinct !{!122, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!123 = distinct !{!123, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 2"}
!124 = distinct !{!124, !121, !"_RINvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 1"}
!125 = distinct !{!125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!126 = distinct !{!126, !125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!127 = distinct !{!127, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper"}
!128 = distinct !{!128, !127, !"_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!129 = distinct !{!129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB24_3raw12TypeIdHasherEE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper"}
!130 = distinct !{!130, !129, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsjJ6wem5K4Ki_7anymap23any3AnyEL_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB24_3raw12TypeIdHasherEE0E0Csfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!131 = distinct !{!131, !"_RINvYINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!132 = distinct !{!132, !131, !"_RINvYINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!133 = distinct !{!133, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!134 = distinct !{!134, !133, !"_RINvXs3_NtNtCsf3Ta7LF998c_4core4hash5implsRNtNtBa_3any6TypeIdNtB8_4Hash4hashNtNtCsjJ6wem5K4Ki_7anymap23raw12TypeIdHasherECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!135 = distinct !{!135, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!136 = distinct !{!136, !135, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!137 = !{!118}
!138 = !{!120, !119}
!139 = !{!118, !120, !119}
!140 = !{!122}
!141 = !{!122, !124, !123, !118, !120, !119}
!142 = !{!122, !118}
!143 = !{!124, !123, !120, !119}
!144 = !{!123, !119}
!145 = !{!126}
!146 = !{!128}
!147 = !{!128, !126}
!148 = !{!128, !126, !123, !119}
!149 = !{!130}
!150 = !{!132}
!151 = !{!134, !130, !123, !119}
!152 = !{!136}
!153 = distinct !{!153, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfh9HxMbthk9_27candle_wasm_example_whisper"}
!154 = distinct !{!154, !153, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfh9HxMbthk9_27candle_wasm_example_whisper: argument 0"}
!155 = distinct !{!155, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!156 = distinct !{!156, !155, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!157 = distinct !{!157, !155, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!158 = distinct !{!158, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
end_hunk_1
