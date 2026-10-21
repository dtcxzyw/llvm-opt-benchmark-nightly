Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNtCslXgxf2tUV4p_15futures_channel4mpsc7channelzECsgZAIVb0XKpv_9ssservice:bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61, !noalias !31010
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31011
  %i.e = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !31011 ; 15 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50, !prof !182

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #61, !noalias !31011
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit49
  %i.g = ptrtoint ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed to i64
  store i64 1, ptr %i.e, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx54, align 8
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx55, align 8
  %.sroa.7.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.g, ptr %.sroa.7.0..sroa_idx56, align 8
  %.sroa.8.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed, ptr %.sroa.8.0..sroa_idx57, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 -9223372036854775808, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr null, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.1358.0..sroa_idx, align 8
  %i.h = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !31012
  %i.j = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !31012 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit51, !prof !182

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #61, !noalias !31012
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit51: ; preds = %bb.e
  store i64 1, ptr %i.j, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %.sroa.561.0..sroa_idx, align 8
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i8 0, ptr %.sroa.662.0..sroa_idx, align 4
  %.sroa.764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr null, ptr %.sroa.764.0..sroa_idx, align 8
  %.sroa.866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 0, ptr %.sroa.866.0..sroa_idx, align 8
  store ptr %i.e, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.527.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.l, align 8
  ret void

bb.g:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit50
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs3csC7NK4ZxG_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #7 {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !31025
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !31026
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !31027
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !31028
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cp, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cl, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %bb.a ]
  %i.i = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cm, %bb.a ]
  %i.j = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ce, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cq, %bb.a ]
  %i.l = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ci, %bb.a ] ; 2 uses
  %i.m = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cj, %bb.a ]
  %i.n = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cn, %bb.a ]
  %i.o = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.p = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>
  %i.r = xor <4 x i64> %.sroa.19.0.i, %i.q
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.u = add <8 x i32> %i.l, %i.k                 ; 2 uses
  %i.v = bitcast <8 x i32> %i.u to <4 x i64>
  %i.w = xor <4 x i64> %.sroa.46.0.i, %i.v
  %i.x = bitcast <4 x i64> %i.w to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.z = bitcast <32 x i8> %i.t to <8 x i32>
  %i.aa = add <8 x i32> %i.m, %i.z                ; 2 uses
  %i.ab = xor <8 x i32> %i.aa, %i.j               ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ab, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ad = bitcast <32 x i8> %i.y to <8 x i32>
  %i.ae = add <8 x i32> %i.n, %i.ad               ; 2 uses
  %i.af = xor <8 x i32> %i.ae, %i.l               ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.af, <8 x i32> %i.af, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ah = add <8 x i32> %i.ac, %i.p               ; 2 uses
  %i.ai = bitcast <8 x i32> %i.ah to <32 x i8>
  %i.aj = xor <32 x i8> %i.t, %i.ai
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.al = add <8 x i32> %i.ag, %i.u               ; 2 uses
  %i.am = bitcast <8 x i32> %i.al to <32 x i8>
  %i.an = xor <32 x i8> %i.y, %i.am
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.ap = bitcast <32 x i8> %i.ak to <8 x i32>    ; 2 uses
  %i.aq = add <8 x i32> %i.aa, %i.ap              ; 2 uses
  %i.ar = xor <8 x i32> %i.aq, %i.ac              ; 2 uses
  %i.as = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ar, <8 x i32> %i.ar, <8 x i32> splat (i32 7)) ; 2 uses
  %i.at = bitcast <32 x i8> %i.ao to <8 x i32>    ; 2 uses
  %i.au = add <8 x i32> %i.ae, %i.at              ; 2 uses
  %i.av = xor <8 x i32> %i.au, %i.ag              ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.av, <8 x i32> %i.av, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ax = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ay = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.az = shufflevector <8 x i32> %i.ah, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ba = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bb = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.bc = shufflevector <8 x i32> %i.al, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.bd = add <8 x i32> %i.as, %i.az              ; 2 uses
  %i.be = xor <8 x i32> %i.bd, %i.ay
  %i.bf = bitcast <8 x i32> %i.be to <32 x i8>
  %i.bg = shufflevector <32 x i8> %i.bf, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bh = add <8 x i32> %i.aw, %i.bc              ; 2 uses
  %i.bi = xor <8 x i32> %i.bh, %i.bb
  %i.bj = bitcast <8 x i32> %i.bi to <32 x i8>
  %i.bk = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bl = bitcast <32 x i8> %i.bg to <8 x i32>
  %i.bm = add <8 x i32> %i.ax, %i.bl              ; 2 uses
  %i.bn = xor <8 x i32> %i.bm, %i.as              ; 2 uses
  %i.bo = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bn, <8 x i32> %i.bn, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bp = bitcast <32 x i8> %i.bk to <8 x i32>
  %i.bq = add <8 x i32> %i.ba, %i.bp              ; 2 uses
  %i.br = xor <8 x i32> %i.bq, %i.aw              ; 2 uses
  %i.bs = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.br, <8 x i32> %i.br, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bt = add <8 x i32> %i.bo, %i.bd              ; 2 uses
  %i.bu = bitcast <8 x i32> %i.bt to <32 x i8>
  %i.bv = xor <32 x i8> %i.bg, %i.bu
  %i.bw = shufflevector <32 x i8> %i.bv, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bx = add <8 x i32> %i.bs, %i.bh              ; 2 uses
  %i.by = bitcast <8 x i32> %i.bx to <32 x i8>
  %i.bz = xor <32 x i8> %i.bk, %i.by
  %i.ca = shufflevector <32 x i8> %i.bz, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.cb = bitcast <32 x i8> %i.bw to <8 x i32>    ; 2 uses
  %i.cc = add <8 x i32> %i.bm, %i.cb              ; 2 uses
  %i.cd = xor <8 x i32> %i.cc, %i.bo              ; 2 uses
  %i.ce = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cd, <8 x i32> %i.cd, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cf = bitcast <32 x i8> %i.ca to <8 x i32>    ; 2 uses
  %i.cg = add <8 x i32> %i.bq, %i.cf              ; 2 uses
  %i.ch = xor <8 x i32> %i.cg, %i.bs              ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ch, <8 x i32> %i.ch, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cj = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <4 x i64>
  %i.cm = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cn = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %i.co = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <4 x i64>
  %i.cq = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, 6
  br i1 %exitcond.not.i, label %_RNvMs1_NtNtCs3csC7NK4ZxG_8chacha208backends4avx2INtB5_7BackendNtB9_3R12NtNtB9_8variants6LegacyE21rng_gen_par_ks_blocksCsgZAIVb0XKpv_9ssservice.exit, label %bb.a

_RNvMs1_NtNtCs3csC7NK4ZxG_8chacha208backends4avx2INtB5_7BackendNtB9_3R12NtNtB9_8variants6LegacyE21rng_gen_par_ks_blocksCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.cr = bitcast <4 x i64> %i.f to <8 x i32>
  %i.cs = add <8 x i32> %i.co, %i.cr              ; 2 uses
  %i.ct = add <8 x i32> %i.cn, %.cast             ; 2 uses
  %i.cu = add <8 x i32> %i.ci, %i.g               ; 2 uses
  %i.cv = add <8 x i32> %i.cq, %i.h               ; 2 uses
  %i.cw = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cx = add <8 x i32> %i.ck, %i.cw              ; 2 uses
  %i.cy = add <8 x i32> %i.cj, %.cast             ; 2 uses
  %i.cz = add <8 x i32> %i.ce, %i.g               ; 2 uses
  %i.da = add <8 x i32> %i.cm, %i.h               ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = bitcast <4 x i32> %.sroa.2.32.vec.extract to <2 x i64>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %3 = bitcast <4 x i32> %.sroa.2.48.vec.extract to <2 x i64>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = bitcast <4 x i32> %.sroa.5.64.vec.extract to <2 x i64>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %5 = bitcast <4 x i32> %.sroa.5.80.vec.extract to <2 x i64>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = bitcast <4 x i32> %.sroa.8.96.vec.extract to <2 x i64>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %7 = bitcast <4 x i32> %.sroa.8.112.vec.extract to <2 x i64>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = bitcast <4 x i32> %.sroa.11.128.vec.extract to <2 x i64>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %9 = bitcast <4 x i32> %.sroa.11.144.vec.extract to <2 x i64>
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %10 = shufflevector <2 x i64> %2, <2 x i64> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %10, ptr %1, align 4, !noalias !31029
  %11 = shufflevector <2 x i64> %3, <2 x i64> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %11, ptr %i.db, align 4, !noalias !31030
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %12 = shufflevector <2 x i64> %6, <2 x i64> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %12, ptr %i.dc, align 4, !noalias !31029
  %13 = shufflevector <2 x i64> %7, <2 x i64> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %13, ptr %i.dd, align 4, !noalias !31030
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = bitcast <4 x i32> %.sroa.14.160.vec.extract to <2 x i64>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %15 = bitcast <4 x i32> %.sroa.14.176.vec.extract to <2 x i64>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %16 = bitcast <4 x i32> %.sroa.17.192.vec.extract to <2 x i64>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %17 = bitcast <4 x i32> %.sroa.17.208.vec.extract to <2 x i64>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %18 = bitcast <4 x i32> %.sroa.20.224.vec.extract to <2 x i64>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %19 = bitcast <4 x i32> %.sroa.20.240.vec.extract to <2 x i64>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %20 = bitcast <4 x i32> %.sroa.23.256.vec.extract to <2 x i64>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %21 = bitcast <4 x i32> %.sroa.23.272.vec.extract to <2 x i64>
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 192
  %22 = shufflevector <2 x i64> %14, <2 x i64> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %22, ptr %i.de, align 4, !noalias !31029
  %23 = shufflevector <2 x i64> %15, <2 x i64> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %23, ptr %i.df, align 4, !noalias !31030
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 224
  %24 = shufflevector <2 x i64> %18, <2 x i64> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %24, ptr %i.dg, align 4, !noalias !31029
  %25 = shufflevector <2 x i64> %19, <2 x i64> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %25, ptr %i.dh, align 4, !noalias !31030
  %i.di = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %i.dj = bitcast <4 x i64> %i.di to <8 x i32>
  %i.dk = shufflevector <8 x i32> %i.dj, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %i.dk, ptr %i.c, align 4
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc noundef i8 @_RINvNtNtCs5Xr050g3D4S_3std3sys9backtrace28___rust_begin_short_backtraceFENtNtB6_7process8ExitCodeB19_ECsgZAIVb0XKpv_9ssservice(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i8 %0() #52, !inline_history !31031
  tail call void asm sideeffect "", "~{memory}"() #52
  ret i8 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_RINvNtNtCs7ewmRfXve8r_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !190, !noundef !177
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !31055, !noundef !177
  %i.m = icmp ne ptr %i.l, null                   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31056
  store i64 %i.n, ptr %i.b, align 8, !noalias !31056
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31056
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !31055, !noundef !177
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !31055, !noundef !177
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i) #60
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !201, !noalias !31055, !noundef !177
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31057
  store i64 %i.r, ptr %i.a, align 8, !noalias !31057
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31057
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit

_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !31058
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !31058
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx, align 16, !alias.scope !31058 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !31058
  %i.s = load i64, ptr %.sroa.915.0..sroa_idx, align 16, !alias.scope !31058, !noundef !177
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !31058, !noundef !177
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !31059, !noundef !177
  %i.cd = icmp ne ptr %i.cc, null                 ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val.i.i20 = load ptr, ptr %i.ch, align 8, !noalias !31059, !noundef !177 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i21 = load i64, ptr %i.ci, align 8, !noalias !31059, !noundef !177 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i20, i64 %.val1.i.i21
  %i.ck = icmp samesign eq i64 %.val1.i.i21, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i21, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i20, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !31054

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i20, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i21, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_10HeaderNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !31060, !noalias !31061, !noundef !177
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
end_hunk_0
