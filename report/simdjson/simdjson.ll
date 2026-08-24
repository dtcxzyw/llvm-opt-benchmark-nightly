Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson7haswell14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0375.i.i = phi i64 [ %i.bh, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.046.0374.i.i = phi <4 x i64> [ %.sroa.046.2.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.19.0373.i.i = phi <4 x i64> [ %.sroa.19.1.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.24.0372.i.i = phi <4 x i64> [ %.sroa.24.2.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0375.i.i ; 2 uses
  %i.c = load <4 x i64>, ptr %i.b, align 1, !tbaa !9 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <4 x i64>, ptr %i.d, align 1, !tbaa !9 ; 5 uses
  %i.f = or <4 x i64> %i.e, %i.c
  %i.g = bitcast <4 x i64> %i.f to <32 x i8>
  %i.h = icmp slt <32 x i8> %i.g, zeroinitializer
  %i.i = bitcast <32 x i1> %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !109

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = bitcast <4 x i64> %i.c to <32 x i8>      ; 3 uses
  %i.l = shufflevector <4 x i64> %.sroa.19.0373.i.i, <4 x i64> %i.c, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.m = bitcast <4 x i64> %i.l to <32 x i8>      ; 3 uses
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> %i.k, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.o = bitcast <32 x i8> %i.n to <16 x i16>
  %i.p = lshr <16 x i16> %i.o, splat (i16 4)
  %i.q = bitcast <16 x i16> %i.p to <32 x i8>
  %i.r = and <32 x i8> %i.q, splat (i8 15)
  %i.s = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.r)
  %i.t = and <32 x i8> %i.n, splat (i8 15)
  %i.u = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.t)
  %i.v = bitcast <4 x i64> %i.c to <16 x i16>
  %i.w = lshr <16 x i16> %i.v, splat (i16 4)
  %i.x = bitcast <16 x i16> %i.w to <32 x i8>
  %i.y = and <32 x i8> %i.x, splat (i8 15)
  %i.z = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.y)
  %i.aa = and <32 x i8> %i.u, %i.s
  %i.ab = and <32 x i8> %i.aa, %i.z
  %i.ac = shufflevector <32 x i8> %i.m, <32 x i8> %i.k, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ad = shufflevector <32 x i8> %i.m, <32 x i8> %i.k, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.ae = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ac, <32 x i8> splat (i8 96))
  %i.af = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ad, <32 x i8> splat (i8 112))
  %i.ag = or <32 x i8> %i.ae, %i.af
  %.inner3 = and <32 x i8> %i.ag, splat (i8 -128)
  %.inner4 = xor <32 x i8> %.inner3, %i.ab
  %i.ah = bitcast <4 x i64> %i.e to <32 x i8>     ; 4 uses
  %i.ai = shufflevector <4 x i64> %i.c, <4 x i64> %i.e, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.aj = bitcast <4 x i64> %i.ai to <32 x i8>    ; 3 uses
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> %i.ah, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.al = bitcast <32 x i8> %i.ak to <16 x i16>
  %i.am = lshr <16 x i16> %i.al, splat (i16 4)
  %i.an = bitcast <16 x i16> %i.am to <32 x i8>
  %i.ao = and <32 x i8> %i.an, splat (i8 15)
  %i.ap = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.ao)
  %i.aq = and <32 x i8> %i.ak, splat (i8 15)
  %i.ar = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.aq)
  %i.as = bitcast <4 x i64> %i.e to <16 x i16>
  %i.at = lshr <16 x i16> %i.as, splat (i16 4)
  %i.au = bitcast <16 x i16> %i.at to <32 x i8>
  %i.av = and <32 x i8> %i.au, splat (i8 15)
  %i.aw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.av)
  %i.ax = and <32 x i8> %i.ar, %i.ap
  %i.ay = and <32 x i8> %i.ax, %i.aw
  %i.az = shufflevector <32 x i8> %i.aj, <32 x i8> %i.ah, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ba = shufflevector <32 x i8> %i.aj, <32 x i8> %i.ah, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bb = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.az, <32 x i8> splat (i8 96))
  %i.bc = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ba, <32 x i8> splat (i8 112))
  %i.bd = or <32 x i8> %i.bb, %i.bc
  %.inner7 = and <32 x i8> %i.bd, splat (i8 -128)
  %.inner8 = xor <32 x i8> %.inner7, %i.ay
  %.inner9 = or <32 x i8> %.inner8, %.inner4
  %i.be = bitcast <32 x i8> %.inner9 to <4 x i64>
  %i.bf = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ah, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.bg = bitcast <32 x i8> %i.bf to <4 x i64>
  br label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i

_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.24.2.i.i = phi <4 x i64> [ %i.bg, %bb.b ], [ %.sroa.24.0372.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.19.1.i.i = phi <4 x i64> [ %i.e, %bb.b ], [ %.sroa.19.0373.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.24.0372.i.pn.i = phi <4 x i64> [ %i.be, %bb.b ], [ %.sroa.24.0372.i.i, %.lr.ph.i.i ]
  %.sroa.046.2.i.i = or <4 x i64> %.sroa.24.0372.i.pn.i, %.sroa.046.0374.i.i ; 3 uses
  %i.bh = add nuw i64 %.sroa.11.0375.i.i, 64      ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %spec.select.i.i.i
  br i1 %i.bi, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !116

._crit_edge.loopexit.i.i:                         ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %i.bj = or <4 x i64> %.sroa.046.2.i.i, %.sroa.24.2.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.sroa.24.0.lcssa.i.i = phi <4 x i64> [ zeroinitializer, %bb.a ], [ %i.bj, %._crit_edge.loopexit.i.i ]
  %.sroa.19.0.lcssa.i.i = phi <4 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.19.1.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.046.0.lcssa.i.i = phi <4 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.046.2.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.bh, %._crit_edge.loopexit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bk = icmp eq i64 %2, %.sroa.11.0.lcssa.i.i
  br i1 %i.bk, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i.i
  %i.bm = sub i64 %2, %.sroa.11.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.bl, i64 %i.bm, i1 false)
  %.0..0..0..0..0..0..0..pre.i.i = load <4 x i64>, ptr %i.a, align 16, !tbaa !9
  %.32..32..32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..32..32..pre.i.i = load <4 x i64>, ptr %.32..32..32..32..32..32..32..sroa_idx, align 16, !tbaa !9
  br label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %.32..32..i.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.32..32..32..32..32..32..32..pre.i.i, %bb.c ] ; 4 uses
  %.0..0..i.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.0..0..0..0..0..0..0..pre.i.i, %bb.c ] ; 5 uses
  %i.bn = or <4 x i64> %.0..0..i.i, %.32..32..i.i
  %i.bo = bitcast <4 x i64> %i.bn to <32 x i8>
  %i.bp = icmp slt <32 x i8> %i.bo, zeroinitializer
  %i.bq = bitcast <32 x i1> %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %i.bs = bitcast <4 x i64> %.0..0..i.i to <32 x i8> ; 3 uses
  %i.bt = shufflevector <4 x i64> %.sroa.19.0.lcssa.i.i, <4 x i64> %.0..0..i.i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bu = bitcast <4 x i64> %i.bt to <32 x i8>    ; 3 uses
  %i.bv = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bw = bitcast <32 x i8> %i.bv to <16 x i16>
  %i.bx = lshr <16 x i16> %i.bw, splat (i16 4)
  %i.by = bitcast <16 x i16> %i.bx to <32 x i8>
  %i.bz = and <32 x i8> %i.by, splat (i8 15)
  %i.ca = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bz)
  %i.cb = and <32 x i8> %i.bv, splat (i8 15)
  %i.cc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.cb)
  %i.cd = bitcast <4 x i64> %.0..0..i.i to <16 x i16>
  %i.ce = lshr <16 x i16> %i.cd, splat (i16 4)
  %i.cf = bitcast <16 x i16> %i.ce to <32 x i8>
  %i.cg = and <32 x i8> %i.cf, splat (i8 15)
  %i.ch = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.cg)
  %i.ci = and <32 x i8> %i.cc, %i.ca
  %i.cj = and <32 x i8> %i.ci, %i.ch
  %i.ck = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cl = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cm = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ck, <32 x i8> splat (i8 96))
  %i.cn = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cl, <32 x i8> splat (i8 112))
  %i.co = or <32 x i8> %i.cm, %i.cn
  %.inner12 = and <32 x i8> %i.co, splat (i8 -128)
  %.inner13 = xor <32 x i8> %.inner12, %i.cj
  %i.cp = bitcast <32 x i8> %.inner13 to <4 x i64>
  %i.cq = bitcast <4 x i64> %.32..32..i.i to <32 x i8> ; 4 uses
  %i.cr = shufflevector <4 x i64> %.0..0..i.i, <4 x i64> %.32..32..i.i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.cs = bitcast <4 x i64> %i.cr to <32 x i8>    ; 3 uses
  %i.ct = shufflevector <32 x i8> %i.cs, <32 x i8> %i.cq, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.cu = bitcast <32 x i8> %i.ct to <16 x i16>
  %i.cv = lshr <16 x i16> %i.cu, splat (i16 4)
  %i.cw = bitcast <16 x i16> %i.cv to <32 x i8>
  %i.cx = and <32 x i8> %i.cw, splat (i8 15)
  %i.cy = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.cx)
  %i.cz = and <32 x i8> %i.ct, splat (i8 15)
  %i.da = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.cz)
  %i.db = bitcast <4 x i64> %.32..32..i.i to <16 x i16>
  %i.dc = lshr <16 x i16> %i.db, splat (i16 4)
  %i.dd = bitcast <16 x i16> %i.dc to <32 x i8>
  %i.de = and <32 x i8> %i.dd, splat (i8 15)
  %i.df = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.de)
  %i.dg = and <32 x i8> %i.da, %i.cy
  %i.dh = and <32 x i8> %i.dg, %i.df
  %i.di = shufflevector <32 x i8> %i.cs, <32 x i8> %i.cq, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.dj = shufflevector <32 x i8> %i.cs, <32 x i8> %i.cq, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.dk = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.di, <32 x i8> splat (i8 96))
  %i.dl = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.dj, <32 x i8> splat (i8 112))
  %i.dm = or <32 x i8> %i.dk, %i.dl
  %.inner16 = and <32 x i8> %i.dm, splat (i8 -128)
  %.inner17 = xor <32 x i8> %.inner16, %i.dh
  %i.dn = bitcast <32 x i8> %.inner17 to <4 x i64>
  %i.do = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cq, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.dp = bitcast <32 x i8> %i.do to <4 x i64>
  %i.dq = or <4 x i64> %.sroa.046.0.lcssa.i.i, %i.dp
  %i.dr = or <4 x i64> %i.dq, %i.cp
  %i.ds = or <4 x i64> %i.dr, %i.dn
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %.sroa.046.1.i.i = phi <4 x i64> [ %i.ds, %bb.d ], [ %.sroa.24.0.lcssa.i.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i ] ; 2 uses
  %i.dt = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.046.1.i.i, <4 x i64> %.sroa.046.1.i.i)
  %i.du = icmp ne i32 %i.dt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.du
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !123
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  switch i8 %i.z, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.o, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.ag, 125
  br i1 %.not162.i, label %.thread, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = add i32 %i.o, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.an, 93
  br i1 %.not.i, label %.thread899, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread:                                          ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 125
  br i1 %i.as, label %bb.e, label %bb.bv

bb.e:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8863084066665136131, ptr %i.u, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 9007199254740992001, ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread1011

.thread899:                                       ; preds = %bb.d
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = icmp eq i8 %i.az, 93
  br i1 %i.ba, label %bb.f, label %.thread1025

bb.f:                                             ; preds = %.thread899
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 6557241057451442179, ptr %i.u, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 6701356245527298049, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread1011

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.u, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.bh = load <4 x i64>, ptr %i.bg, align 1, !tbaa !9 ; 2 uses
  store <4 x i64> %i.bh, ptr %i.bf, align 1, !tbaa !9
  %i.bi = bitcast <4 x i64> %i.bh to <32 x i8>    ; 2 uses
  %i.bj = icmp eq <32 x i8> %i.bi, splat (i8 92)
  %i.bk = bitcast <32 x i1> %i.bj to i32          ; 2 uses
  %i.bl = icmp eq <32 x i8> %i.bi, splat (i8 34)
  %i.bm = bitcast <32 x i1> %i.bl to i32          ; 3 uses
  %i.bn = add i32 %i.bk, -1
  %i.bo = and i32 %i.bn, %i.bm
  %.not14521528 = icmp eq i32 %i.bo, 0
  br i1 %.not14521528, label %.lr.ph1531, label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i

.lr.ph1531:                                       ; preds = %bb.g, %bb.w
  %i.bp = phi i32 [ %i.gj, %bb.w ], [ %i.bm, %bb.g ]
  %i.bq = phi i32 [ %i.gh, %bb.w ], [ %i.bk, %bb.g ] ; 2 uses
  %.07741530 = phi ptr [ %.1775, %bb.w ], [ %i.bf, %bb.g ] ; 4 uses
  %.07771529 = phi ptr [ %.1778, %bb.w ], [ %i.bg, %bb.g ] ; 4 uses
  %i.br = add i32 %i.bp, -1
  %i.bs = and i32 %i.br, %i.bq
  %.not1453 = icmp eq i32 %i.bs, 0
  br i1 %.not1453, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.lr.ph1531
  %i.bt = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bq, i1 true) ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 4 uses
  %i.bv = add nuw nsw i32 %i.bt, 1
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.07771529, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9   ; 2 uses
  %i.bz = icmp eq i8 %i.by, 117
  br i1 %i.bz, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.07771529, i64 %i.bu ; 11 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.07741530, i64 %i.bu ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2520
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1680
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 840
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cz = or i32 %i.cn, %i.ch
  %i.da = or i32 %i.cz, %i.ct
  %i.db = or i32 %i.da, %i.cy                     ; 13 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 6 ; 5 uses
  %i.dd = and i32 %i.db, -1024
  switch i32 %i.dd, label %bb.l [
    i32 55296, label %bb.j
    i32 56320, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj
  %.not.i18.i = icmp eq i32 %i.dk, 23669
  br i1 %.not.i18.i, label %bb.k, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2520
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1680
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 840
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !10
  %i.ei = or i32 %i.dw, %i.dq
  %i.ej = or i32 %i.ei, %i.ec
  %i.ek = or i32 %i.ej, %i.eh
  %i.el = add i32 %i.ek, -56320                   ; 2 uses
  %.not35.i.i = icmp ult i32 %i.el, 1024
  br i1 %.not35.i.i, label %.thread920, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread920:                                       ; preds = %bb.k
  %i.em = shl nuw nsw i32 %i.db, 10
  %i.en = add nsw i32 %i.em, -56557568
  %i.eo = or disjoint i32 %i.en, %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  %i.eq = icmp ult i32 %i.db, 128
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread929

bb.p:                                             ; preds = %bb.n
  %i.fa = icmp ult i32 %i.db, 65536
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fb = lshr i32 %i.db, 12
  %i.fc = trunc nuw nsw i32 %i.fb to i8
  %i.fd = or disjoint i8 %i.fc, -32
  store i8 %i.fd, ptr %i.cb, align 1, !tbaa !9
  %i.fe = lshr i32 %i.db, 6
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = and i8 %i.ff, 63
  %i.fh = or disjoint i8 %i.fg, -128
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !9
  %i.fj = trunc i32 %i.db to i8
  %i.fk = and i8 %i.fj, 63
  %i.fl = or disjoint i8 %i.fk, -128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread929

bb.r:                                             ; preds = %bb.p
  %i.fn = icmp ult i32 %i.db, 1114112
  br i1 %i.fn, label %bb.s, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.s:                                             ; preds = %.thread920, %bb.r
  %.6908914918924 = phi ptr [ %i.ep, %.thread920 ], [ %i.dc, %bb.r ]
  %.4.i.i909913919923 = phi i32 [ %i.eo, %.thread920 ], [ %i.db, %bb.r ]
  %i.fo = insertelement <4 x i32> poison, i32 %.4.i.i909913919923, i64 0
  %i.fp = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fq = lshr <4 x i32> %i.fp, <i32 18, i32 12, i32 6, i32 0>
  %i.fr = trunc <4 x i32> %i.fq to <4 x i8>
  %i.fs = and <4 x i8> %i.fr, <i8 -1, i8 63, i8 63, i8 63>
  %i.ft = or <4 x i8> %i.fs, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ft, ptr %i.cb, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread929

_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread929: ; preds = %bb.m, %bb.o, %bb.q, %bb.s
  %.6907.ph = phi ptr [ %.6908914918924, %bb.s ], [ %i.dc, %bb.q ], [ %i.dc, %bb.o ], [ %i.dc, %bb.m ]
  %.0.i.i.ph = phi i64 [ 4, %bb.s ], [ 3, %bb.q ], [ 2, %bb.o ], [ 1, %bb.m ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0.i.i.ph
  br label %bb.w

bb.t:                                             ; preds = %bb.h
  %i.fv = zext i8 %i.by to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !9   ; 2 uses
  %.not.i.i = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %.07741530, i64 %i.bu
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %.07771529, i64 %i.bu
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %.07741530, i64 %i.bw
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph1531
  %i.gc = getelementptr inbounds nuw i8, ptr %.07771529, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.07741530, i64 32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread929, %bb.v
  %.1778 = phi ptr [ %i.ga, %bb.u ], [ %i.gc, %bb.v ], [ %.6907.ph, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread929 ] ; 2 uses
  %.1775 = phi ptr [ %i.gb, %bb.u ], [ %i.gd, %bb.v ], [ %i.fu, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread929 ] ; 3 uses
  %i.ge = load <4 x i64>, ptr %.1778, align 1, !tbaa !9 ; 2 uses
  store <4 x i64> %i.ge, ptr %.1775, align 1, !tbaa !9
  %i.gf = bitcast <4 x i64> %i.ge to <32 x i8>    ; 2 uses
  %i.gg = icmp eq <32 x i8> %i.gf, splat (i8 92)
  %i.gh = bitcast <32 x i1> %i.gg to i32          ; 2 uses
  %i.gi = icmp eq <32 x i8> %i.gf, splat (i8 34)
  %i.gj = bitcast <32 x i1> %i.gi to i32          ; 3 uses
  %i.gk = add i32 %i.gh, -1
  %i.gl = and i32 %i.gk, %i.gj
  %.not1452 = icmp eq i32 %i.gl, 0
  br i1 %.not1452, label %.lr.ph1531, label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i: ; preds = %bb.w, %bb.g
  %.0774.lcssa = phi ptr [ %i.bf, %bb.g ], [ %.1775, %bb.w ]
  %.lcssa1504 = phi i32 [ %i.bm, %bb.g ], [ %i.gj, %bb.w ]
  %i.gm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa1504, i1 true)
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %.0774.lcssa, i64 %i.gn ; 2 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.bf to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = trunc i64 %i.gr to i32
  store i32 %i.gs, ptr %i.m, align 1
  store i8 0, ptr %i.go, align 1, !tbaa !9
  br label %.thread1011

bb.x:                                             ; preds = %bb.b
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !105
  %i.gv = sub i64 %i.gu, %i.x                     ; 2 uses
  %i.gw = icmp ugt i64 %i.gv, 4
  br i1 %i.gw, label %.noexc, label %bb.y

.noexc:                                           ; preds = %bb.x
  %.0.copyload.i = load i32, ptr %i.y, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !9
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = or i32 %.0.copyload.i, %i.hc
  %i.he = icmp eq i32 %i.hd, 1702195828
  br i1 %i.he, label %bb.z, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.hf = icmp eq i64 %i.gv, 4
  br i1 %i.hf, label %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit: ; preds = %bb.y
  %.0.copyload.i73 = load i32, ptr %i.y, align 1
  %.not.i70 = icmp eq i32 %.0.copyload.i73, 1702195828
  br i1 %.not.i70, label %bb.z, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %.noexc, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit
  store i64 8358680908399640576, ptr %i.u, align 8, !tbaa !13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread1011

bb.aa:                                            ; preds = %bb.b
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !105
  %i.hj = sub i64 %i.hi, %i.x                     ; 2 uses
  %i.hk = icmp ugt i64 %i.hj, 5
  br i1 %i.hk, label %.noexc76, label %bb.ab

.noexc76:                                         ; preds = %bb.aa
  %i.hl = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i77 = load i32, ptr %i.hl, align 1
  %i.hm = xor i32 %.0.copyload.i.i77, 1702063201
  %i.hn = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hs = zext nneg i8 %i.hr to i32
  %i.ht = or i32 %i.hm, %i.hs
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.ac, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hv = icmp eq i64 %i.hj, 5
  br i1 %i.hv, label %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit: ; preds = %bb.ab
  %i.hw = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i = load i32, ptr %i.hw, align 1
  %.not.i75 = icmp eq i32 %.0.copyload.i.i, 1702063201
  br i1 %.not.i75, label %bb.ac, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %.noexc76, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit
  store i64 7349874591868649472, ptr %i.u, align 8, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread1011

bb.ad:                                            ; preds = %bb.b
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !105
  %i.ia = sub i64 %i.hz, %i.x                     ; 2 uses
  %i.ib = icmp ugt i64 %i.ia, 4
  br i1 %i.ib, label %.noexc81, label %bb.ae

.noexc81:                                         ; preds = %bb.ad
  %.0.copyload.i.i82 = load i32, ptr %i.y, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !9
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !124, !range !37, !noundef !38
  %i.ih = zext nneg i8 %i.ig to i32
  %i.ii = or i32 %.0.copyload.i.i82, %i.ih
  %i.ij = icmp eq i32 %i.ii, 1819047278
  br i1 %i.ij, label %bb.af, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ik = icmp eq i64 %i.ia, 4
  br i1 %i.ik, label %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit: ; preds = %bb.ae
  %.0.copyload.i.i79 = load i32, ptr %i.y, align 1
  %.not.i80 = icmp eq i32 %.0.copyload.i.i79, 1819047278
  br i1 %.not.i80, label %bb.af, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %.noexc81, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit
  store i64 7926335344172072960, ptr %i.u, align 8, !tbaa !13
  %i.il = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread1011

bb.ag:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !105
  %i.io = add i64 %i.in, 64
  %i.ip = sub i64 %i.io, %i.x
  %i.iq = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.ip, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %2 = load i64, ptr %i.im, align 8, !tbaa !105
  %3 = load i32, ptr %i.k, align 4, !tbaa !10
  %4 = zext i32 %3 to i64
  %i.is = sub i64 %2, %4                          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.y, i64 %i.is, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.is
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.it, i8 32, i64 64, i1 false)
  %i.iu = load i8, ptr %i.iq, align 1, !tbaa !9   ; 2 uses
  %i.iv = icmp eq i8 %i.iu, 45                    ; 10 uses
  %i.iw = zext i1 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iw ; 6 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !9   ; 4 uses
  %i.iz = add i8 %i.iy, -48                       ; 2 uses
  %i.ja = icmp ult i8 %i.iz, 10
  br i1 %i.ja, label %.lr.ph, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.jb = phi i8 [ %i.jh, %.lr.ph ], [ %i.iz, %bb.ah ]
  %.08671510 = phi ptr [ %i.jf, %.lr.ph ], [ %i.ix, %bb.ah ]
  %.08751509 = phi i64 [ %i.je, %.lr.ph ], [ 0, %bb.ah ]
  %i.jc = mul i64 %.08751509, 10
  %i.jd = zext nneg i8 %i.jb to i64
  %i.je = add i64 %i.jc, %i.jd                    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.08671510, i64 1 ; 3 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !9   ; 2 uses
  %i.jh = add i8 %i.jg, -48                       ; 2 uses
  %i.ji = icmp ult i8 %i.jh, 10
  br i1 %i.ji, label %.lr.ph, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, !llvm.loop !125

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit: ; preds = %.lr.ph, %bb.ah
  %.0875.lcssa = phi i64 [ 0, %bb.ah ], [ %i.je, %.lr.ph ] ; 3 uses
  %.0867.lcssa = phi ptr [ %i.ix, %bb.ah ], [ %i.jf, %.lr.ph ] ; 6 uses
  %.lcssa1508 = phi i8 [ %i.iy, %bb.ah ], [ %i.jg, %.lr.ph ] ; 2 uses
  %i.jj = ptrtoint ptr %.0867.lcssa to i64
  %i.jk = ptrtoint ptr %i.ix to i64               ; 3 uses
  %i.jl = sub i64 %i.jj, %i.jk                    ; 3 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.jn = icmp eq i8 %i.iy, 48
  %i.jo = icmp ne i64 %i.jl, 1
  %or.cond.i = and i1 %i.jo, %i.jn
  br i1 %or.cond.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jp = icmp eq i8 %.lcssa1508, 46              ; 2 uses
  br i1 %i.jp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.ptr1450 = getelementptr inbounds nuw i8, ptr %.0867.lcssa, i64 1 ; 2 uses
  %.0.copyload.i100 = load i64, ptr %.ptr1450, align 1 ; 3 uses
  %i.jq = and i64 %.0.copyload.i100, -1085102592571150096
  %i.jr = add i64 %.0.copyload.i100, 434041037028460038
  %i.js = lshr i64 %i.jr, 4
  %i.jt = and i64 %i.js, 1085102592571150095
  %i.ju = or disjoint i64 %i.jt, %i.jq
  %i.jv = icmp eq i64 %i.ju, 3689348814741910323
  %i.jw = trunc i64 %.0.copyload.i100 to i8
  br i1 %i.jv, label %.noexc93, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

.noexc93:                                         ; preds = %bb.ak
  %i.jx = mul i64 %.0875.lcssa, 100000000
  %i.jy = load <16 x i8>, ptr %.ptr1450, align 1  ; 2 uses
  %i.jz = add <16 x i8> %i.jy, <i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ka = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.jz, <16 x i8> <i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.kb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ka, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.kc = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kb, <4 x i32> poison)
  %i.kd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kc, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ke = extractelement <4 x i32> %i.kd, i64 0
  %i.kf = zext i32 %i.ke to i64
  %i.kg = add i64 %i.jx, %i.kf
  %i.kh = extractelement <16 x i8> %i.jy, i64 8
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i: ; preds = %.noexc93, %bb.ak
  %i.ki = phi i8 [ %i.kh, %.noexc93 ], [ %i.jw, %bb.ak ]
  %.3878 = phi i64 [ %i.kg, %.noexc93 ], [ %.0875.lcssa, %bb.ak ] ; 2 uses
  %.3870.idx = phi i64 [ 9, %.noexc93 ], [ 1, %bb.ak ]
  %i.kj = add i8 %i.ki, -48                       ; 2 uses
  %i.kk = icmp ult i8 %i.kj, 10                   ; 2 uses
  %i.kl = mul i64 %.3878, 10
  %i.km = zext nneg i8 %i.kj to i64
  %i.kn = add i64 %i.kl, %i.km
  %.4879958 = select i1 %i.kk, i64 %i.kn, i64 %.3878 ; 2 uses
  %.4871.idx = zext i1 %i.kk to i64
  %.3870.add = add nuw nsw i64 %.3870.idx, %.4871.idx ; 4 uses
  %.5872.ptr1514 = getelementptr inbounds nuw i8, ptr %.0867.lcssa, i64 %.3870.add
  %i.ko = load i8, ptr %.5872.ptr1514, align 1, !tbaa !9 ; 2 uses
  %i.kp = add i8 %i.ko, -48                       ; 2 uses
  %i.kq = icmp ult i8 %i.kp, 10
  br i1 %i.kq, label %.lr.ph1517, label %.noexc89

.lr.ph1517:                                       ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i, %.lr.ph1517
  %i.kr = phi i8 [ %i.kw, %.lr.ph1517 ], [ %i.kp, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.5872.idx1516 = phi i64 [ %.5872.add, %.lr.ph1517 ], [ %.3870.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.58801515 = phi i64 [ %i.ku, %.lr.ph1517 ], [ %.4879958, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %i.ks = mul i64 %.58801515, 10
  %i.kt = zext nneg i8 %i.kr to i64
  %i.ku = add i64 %i.ks, %i.kt                    ; 2 uses
  %.5872.add = add nuw nsw i64 %.5872.idx1516, 1  ; 3 uses
  %.5872.ptr = getelementptr inbounds nuw i8, ptr %.0867.lcssa, i64 %.5872.add
  %i.kv = load i8, ptr %.5872.ptr, align 1, !tbaa !9 ; 2 uses
  %i.kw = add i8 %i.kv, -48                       ; 2 uses
  %i.kx = icmp ult i8 %i.kw, 10
  br i1 %i.kx, label %.lr.ph1517, label %.noexc89.thread, !llvm.loop !126

.noexc89:                                         ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3870.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc89.thread

.noexc89.thread:                                  ; preds = %.lr.ph1517, %.noexc89
  %.5880.lcssa1699 = phi i64 [ %.4879958, %.noexc89 ], [ %i.ku, %.lr.ph1517 ]
  %.5872.idx.lcssa15131698 = phi i64 [ %.3870.add, %.noexc89 ], [ %.5872.add, %.lr.ph1517 ] ; 2 uses
  %i.ky = phi i8 [ %i.ko, %.noexc89 ], [ %i.kv, %.lr.ph1517 ]
  %.5872.ptr.le = getelementptr inbounds nuw i8, ptr %.0867.lcssa, i64 %.5872.idx.lcssa15131698 ; 2 uses
  %i.kz = ptrtoint ptr %.5872.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5872.idx.lcssa15131698
  %i.la = sub i64 %i.kz, %i.jk
  %sext.i = shl i64 %i.la, 32
  %i.lb = ashr exact i64 %sext.i, 32
  br label %bb.al

bb.al:                                            ; preds = %.noexc89.thread, %bb.aj
  %i.lc = phi i8 [ %i.ky, %.noexc89.thread ], [ %.lcssa1508, %bb.aj ] ; 2 uses
  %.0882 = phi i64 [ %gepdiff, %.noexc89.thread ], [ 0, %bb.aj ] ; 2 uses
  %.1876 = phi i64 [ %.5880.lcssa1699, %.noexc89.thread ], [ %.0875.lcssa, %bb.aj ] ; 14 uses
  %.1868 = phi ptr [ %.5872.ptr.le, %.noexc89.thread ], [ %.0867.lcssa, %bb.aj ] ; 4 uses
  %.044.i = phi i64 [ %i.lb, %.noexc89.thread ], [ %i.jl, %bb.aj ] ; 4 uses
  switch i8 %i.lc, label %bb.ar [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.ld = getelementptr inbounds nuw i8, ptr %.1868, i64 1 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !9   ; 3 uses
  %i.lf = icmp eq i8 %i.le, 45
  switch i8 %i.le, label %bb.ao [
    i8 45, label %bb.an
    i8 43, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.lg = getelementptr inbounds nuw i8, ptr %.1868, i64 2 ; 2 uses
  %.pre1633 = load i8, ptr %i.lg, align 1, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.lh = phi i8 [ %i.le, %bb.am ], [ %.pre1633, %bb.an ]
  %.6873 = phi ptr [ %i.ld, %bb.am ], [ %i.lg, %bb.an ] ; 3 uses
  %i.li = add i8 %i.lh, -48                       ; 2 uses
  %i.lj = icmp ult i8 %i.li, 10
  br i1 %i.lj, label %.lr.ph1524, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1524:                                       ; preds = %bb.ao, %.lr.ph1524
  %i.lk = phi i8 [ %i.lp, %.lr.ph1524 ], [ %i.li, %bb.ao ]
  %.08641523 = phi i64 [ %i.ln, %.lr.ph1524 ], [ 0, %bb.ao ]
  %.7874.idx1522 = phi i64 [ %.7874.add, %.lr.ph1524 ], [ 0, %bb.ao ] ; 2 uses
  %i.ll = mul nsw i64 %.08641523, 10
  %i.lm = zext nneg i8 %i.lk to i64
  %i.ln = add nsw i64 %i.ll, %i.lm                ; 3 uses
  %.7874.add = add nuw nsw i64 %.7874.idx1522, 1  ; 3 uses
  %.7874.ptr = getelementptr inbounds nuw i8, ptr %.6873, i64 %.7874.add
  %i.lo = load i8, ptr %.7874.ptr, align 1, !tbaa !9 ; 2 uses
  %i.lp = add i8 %i.lo, -48                       ; 2 uses
  %i.lq = icmp ult i8 %i.lp, 10
  br i1 %i.lq, label %.lr.ph1524, label %bb.ap, !llvm.loop !127

bb.ap:                                            ; preds = %.lr.ph1524
  %.7874.ptr.le = getelementptr inbounds nuw i8, ptr %.6873, i64 %.7874.add
  %i.lr = icmp samesign ugt i64 %.7874.idx1522, 17
  br i1 %i.lr, label %.preheader1488, label %.thread968, !prof !107

.preheader1488:                                   ; preds = %bb.ap, %.preheader1488
  %.0.i94 = phi ptr [ %i.lu, %.preheader1488 ], [ %.6873, %bb.ap ] ; 3 uses
  %i.ls = load i8, ptr %.0.i94, align 1, !tbaa !9
  %i.lt = icmp eq i8 %i.ls, 48
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i94, i64 1
  br i1 %i.lt, label %.preheader1488, label %bb.aq, !llvm.loop !128

bb.aq:                                            ; preds = %.preheader1488
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.i94, i64 18
  %i.lw = icmp ugt ptr %.7874.ptr.le, %i.lv
  %spec.select = select i1 %i.lw, i64 999999999999999999, i64 %i.ln
  br label %.thread968

.thread968:                                       ; preds = %bb.aq, %bb.ap
  %.1865 = phi i64 [ %i.ln, %bb.ap ], [ %spec.select, %bb.aq ] ; 2 uses
  %i.lx = sub nsw i64 0, %.1865
  %i.ly = select i1 %i.lf, i64 %i.lx, i64 %.1865
  %i.lz = add nsw i64 %i.ly, %.0882
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  br i1 %i.jp, label %bb.as, label %bb.bl

bb.as:                                            ; preds = %.thread968, %bb.ar
  %i.ma = phi i8 [ %i.lo, %.thread968 ], [ %i.lc, %bb.ar ]
  %.1883972 = phi i64 [ %i.lz, %.thread968 ], [ %.0882, %bb.ar ] ; 9 uses
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !124, !range !37, !noundef !38
  %.not59.i = icmp eq i8 %i.md, 0                 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ns = zext i64 %i.nl to i128                  ; 2 uses
  %i.nt = zext i64 %i.nr to i128
  %i.nu = mul nuw i128 %i.nt, %i.ns               ; 2 uses
  %i.nv = trunc i128 %i.nu to i64                 ; 2 uses
  %i.nw = lshr i128 %i.nu, 64
  %i.nx = trunc nuw i128 %i.nw to i64             ; 3 uses
  %i.ny = and i64 %i.nx, 511
  %i.nz = icmp eq i64 %i.ny, 511
  br i1 %i.nz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc108
  %i.oa = getelementptr i8, ptr %i.np, i64 5480
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !13
  %i.oc = zext i64 %i.ob to i128
  %i.od = mul nuw i128 %i.oc, %i.ns
  %i.oe = lshr i128 %i.od, 64
  %i.of = trunc nuw i128 %i.oe to i64             ; 2 uses
  %i.og = add i64 %i.of, %i.nv                    ; 2 uses
  %i.oh = icmp ult i64 %i.og, %i.of
  %i.oi = zext i1 %i.oh to i64
  %spec.select.i107 = add nuw i64 %i.oi, %i.nx
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc108
  %.sroa.7.1.i = phi i64 [ %spec.select.i107, %bb.bb ], [ %i.nx, %.noexc108 ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.og, %bb.bb ], [ %i.nv, %.noexc108 ]
  %i.oj = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.ok = add nuw nsw i64 %i.oj, 9                ; 2 uses
  %i.ol = lshr i64 %.sroa.7.1.i, %i.ok            ; 6 uses
  %reass.sub = sub nsw i64 %i.nj, %i.nk
  %.neg = add nsw i64 %reass.sub, %i.oj           ; 4 uses
  %i.om = add nsw i64 %.neg, 1086
  %i.on = icmp slt i64 %.neg, -1085
  br i1 %i.on, label %bb.bd, label %bb.bg, !prof !107

bb.bd:                                            ; preds = %bb.bc
  %i.oo = icmp samesign ult i64 %.neg, -1148
  br i1 %i.oo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.op = select i1 %i.iv, double -0.000000e+00, double 0.000000e+00
  br label %.noexc99.thread

bb.bf:                                            ; preds = %bb.bd
  %i.oq = sub nuw nsw i64 -1085, %.neg
  %i.or = lshr i64 %i.ol, %i.oq                   ; 2 uses
  %i.os = and i64 %i.or, 1
  %i.ot = add nuw nsw i64 %i.os, %i.or            ; 2 uses
  %i.ou = lshr i64 %i.ot, 1
  %i.ov = icmp samesign ugt i64 %i.ot, 9007199254740991
  %i.ow = and i64 %i.ou, 13510798882111487
  %i.ox = select i1 %i.ov, i64 4503599627370496, i64 0
  %i.oy = select i1 %i.iv, i64 -9223372036854775808, i64 0
  %i.oz = or disjoint i64 %i.ox, %i.oy
  %i.pa = or disjoint i64 %i.oz, %i.ow
  %i.pb = bitcast i64 %i.pa to double
  br label %.noexc99.thread

bb.bg:                                            ; preds = %bb.bc
  %i.pc = icmp ult i64 %.sroa.037.0.i, 2
  %i.pd = add nsw i64 %.1883972, 4
  %i.pe = icmp ult i64 %i.pd, 28
  %or.cond7.i = and i1 %i.pe, %i.pc
  %i.pf = and i64 %i.ol, 3
  %i.pg = icmp eq i64 %i.pf, 1
  %i.ph = select i1 %or.cond7.i, i1 %i.pg, i1 false
  br i1 %i.ph, label %bb.bh, label %bb.bi, !prof !107

bb.bh:                                            ; preds = %bb.bg
  %i.pi = shl i64 %i.ol, %i.ok
  %i.pj = icmp eq i64 %i.pi, %.sroa.7.1.i
  %i.pk = and i64 %i.ol, 72057594037927932
  %spec.select90.i = select i1 %i.pj, i64 %i.pk, i64 %i.ol
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.080.i = phi i64 [ %i.ol, %bb.bg ], [ %spec.select90.i, %bb.bh ] ; 2 uses
  %i.pl = and i64 %.080.i, 1
  %i.pm = add nuw nsw i64 %i.pl, %.080.i          ; 2 uses
  %i.pn = icmp samesign ugt i64 %i.pm, 18014398509481983 ; 2 uses
  %i.po = zext i1 %i.pn to i64
  %spec.select92.i = add nuw nsw i64 %i.om, %i.po ; 2 uses
  %i.pp = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.pp, label %.noexc99, label %bb.bj, !prof !107

bb.bj:                                            ; preds = %bb.bi
  %i.pq = lshr i64 %i.pm, 1
  %i.pr = and i64 %i.pq, 13510798882111487
  %i.ps = select i1 %i.pn, i64 0, i64 %i.pr
  %i.pt = shl nuw nsw i64 %spec.select92.i, 52
  %i.pu = select i1 %i.iv, i64 -9223372036854775808, i64 0
  %i.pv = or disjoint i64 %i.ps, %i.pu
  %i.pw = or i64 %i.pv, %i.pt
  %i.px = bitcast i64 %i.pw to double
  br label %.noexc99.thread

.noexc99:                                         ; preds = %bb.bi
  %i.py = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.iq, ptr noundef %i.f)
  br i1 %i.py, label %.noexc99..noexc99.thread_crit_edge, label %bb.bk

.noexc99..noexc99.thread_crit_edge:               ; preds = %.noexc99
  %.pre1635 = load double, ptr %i.f, align 8, !tbaa !130
  br label %.noexc99.thread

.noexc99.thread:                                  ; preds = %bb.ay, %.noexc99..noexc99.thread_crit_edge, %bb.bj, %bb.bf, %bb.be, %bb.ba
  %i.pz = phi double [ %.pre1635, %.noexc99..noexc99.thread_crit_edge ], [ %i.px, %bb.bj ], [ %i.pb, %bb.bf ], [ %i.op, %bb.be ], [ %spec.select1773, %bb.ay ], [ %i.nh, %bb.ba ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !13
  %i.qa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.pz, ptr %i.qa, align 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc99.thread, %.noexc99
  %.sroa.0.22 = phi ptr [ %i.qb, %.noexc99.thread ], [ %i.u, %.noexc99 ]
  %.0.i96 = phi i32 [ 0, %.noexc99.thread ], [ 9, %.noexc99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bl:                                            ; preds = %bb.ar
  %i.qc = select i1 %i.iv, i64 19, i64 20         ; 2 uses
  %i.qd = icmp ugt i64 %.044.i, %i.qc
  br i1 %i.qd, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qe = icmp eq i64 %.044.i, %i.qc
  br i1 %i.qe, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.iv, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.qf = icmp ugt i64 %.1876, -9223372036854775808
  br i1 %i.qf, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qg = sub i64 0, %.1876
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !13
  %i.qh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.qg, ptr %i.qh, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qj = load i8, ptr %.1868, align 1, !tbaa !9
  %i.qk = zext i8 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i = icmp eq i8 %i.qm, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bq:                                            ; preds = %bb.bn
  %i.qn = icmp ne i8 %i.iu, 49
  %i.qo = icmp sgt i64 %.1876, -1
  %or.cond5.i = select i1 %i.qn, i1 true, i1 %i.qo
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread975

bb.br:                                            ; preds = %bb.bm
  %i.qp = icmp slt i64 %.1876, 0
  br i1 %i.qp, label %.thread975, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qq = sub nsw i64 0, %.1876
  %i.qr = select i1 %i.iv, i64 %i.qq, i64 %.1876
  br label %.thread975

.thread975:                                       ; preds = %bb.br, %bb.bq, %bb.bs
  %.sink1775 = phi i64 [ 7782220156096217088, %bb.bs ], [ 8430738502437568512, %bb.bq ], [ 8430738502437568512, %bb.br ]
  %.sink = phi i64 [ %i.qr, %bb.bs ], [ %.1876, %bb.bq ], [ %.1876, %bb.br ]
  store i64 %.sink1775, ptr %i.u, align 8, !tbaa !13
  %i.qs = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink, ptr %i.qs, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qt = load i8, ptr %.1868, align 1, !tbaa !9
  %i.qu = zext i8 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i = icmp eq i8 %i.qw, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980: ; preds = %bb.bl, %bb.bo
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qy = load i8, ptr %i.qx, align 8, !tbaa !133, !range !37, !noundef !38
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %.preheader1827, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1827:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, %.preheader1827
  %.122.i = phi ptr [ %i.rd, %.preheader1827 ], [ %i.ix, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980 ] ; 3 uses
  %i.ra = load i8, ptr %.122.i, align 1, !tbaa !9 ; 2 uses
  %i.rb = add i8 %i.ra, -48
  %i.rc = icmp ult i8 %i.rb, 10
  %i.rd = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.rc, label %.preheader1827, label %bb.bt, !llvm.loop !134

bb.bt:                                            ; preds = %.preheader1827
  %i.re = zext i8 %i.ra to i64
  %i.rf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i84 = icmp eq i8 %i.rg, 0
  br i1 %.not.i84, label %bb.bu, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bu:                                            ; preds = %bb.bt
  %i.rh = ptrtoint ptr %.122.i to i64
  %i.ri = ptrtoint ptr %i.iq to i64
  %5 = sub i64 %i.rh, %i.ri                       ; 3 uses
  %6 = load ptr, ptr %i.g, align 8, !tbaa !117
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = ptrtoint ptr %i.m to i64
  %10 = ptrtoint ptr %8 to i64
  %i.rj = sub i64 %9, %10
  %11 = or i64 %i.rj, 6485183463413514240
  store i64 %11, ptr %i.u, align 8, !tbaa !13
  %i.rk = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.rl = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rl, ptr nonnull align 1 %i.iq, i64 %5, i1 false)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %5
  %i.rn = trunc i64 %5 to i32
  store i32 %i.rn, ptr %i.m, align 1
  store i8 0, ptr %i.rm, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.at, %bb.bt, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980, %.noexc89, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread975, %bb.bq, %bb.bp, %.noexc91.thread, %bb.ao
  %.0.i51365.ph = phi i32 [ 9, %.noexc91.thread ], [ 9, %bb.bp ], [ 9, %bb.bq ], [ 9, %.thread975 ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc89 ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread980 ], [ 9, %bb.bt ], [ 9, %bb.at ], [ 9, %bb.ao ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.iq) #43
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709: ; preds = %bb.bu, %.thread975, %bb.bp, %.noexc91.thread
  %.sroa.0.171364.ph = phi ptr [ %i.qi, %bb.bp ], [ %i.rk, %bb.bu ], [ %.sroa.0.20, %.thread975 ], [ %i.mt, %.noexc91.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.iq) #43
  br label %.thread1011

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc98, %bb.bk
  %.sroa.0.23 = phi ptr [ %i.mn, %.noexc98 ], [ %.sroa.0.22, %bb.bk ]
  %.1.i97 = phi i32 [ %i.mk, %.noexc98 ], [ %.0.i96, %bb.bk ] ; 2 uses
  %.not60.i = icmp eq i32 %.1.i97, 0              ; 2 uses
  %..i = select i1 %.not59.i, i32 0, i32 9
  %spec.select1444 = select i1 %.not60.i, i32 %..i, i32 %.1.i97
  tail call void @_ZdaPv(ptr noundef nonnull %i.iq) #43
  %.not163.i = and i1 %.not60.i, %.not59.i
  br i1 %.not163.i, label %.thread1011, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bv:                                            ; preds = %select.unfold1332, %select.unfold1175, %.thread
  %.sroa.123.2 = phi i32 [ %.sroa.123.3, %select.unfold1175 ], [ %.sroa.123.1, %select.unfold1332 ], [ 0, %.thread ]
  %.sroa.25.4 = phi ptr [ %i.yk, %select.unfold1175 ], [ %i.ayc, %select.unfold1332 ], [ %i.v, %.thread ] ; 3 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold1175 ], [ %.sroa.172.2, %select.unfold1332 ], [ %i.m, %.thread ] ; 4 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold1175 ], [ %.sroa.0.3, %select.unfold1332 ], [ %i.u, %.thread ] ; 3 uses
  %i.ro = add i32 %.sroa.123.2, 1                 ; 3 uses
  %i.rp = zext i32 %i.ro to i64                   ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !135
  %.not164.i = icmp ugt i64 %i.rr, %i.rp
  br i1 %.not164.i, label %bb.bw, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bw:                                            ; preds = %bb.bv
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !136
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rp
  store i8 0, ptr %i.ru, align 1, !tbaa !124
  %i.rv = load ptr, ptr %i.g, align 8, !tbaa !117 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !118
  %i.rx = ptrtoint ptr %.sroa.0.4 to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = lshr exact i64 %i.rz, 3
  %i.sb = trunc i64 %i.sa to i32
  %i.sc = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.rp ; 2 uses
  store i32 %i.sb, ptr %i.sd, align 4, !tbaa !121
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 4 ; 2 uses
  store i32 0, ptr %i.se, align 4, !tbaa !123
  %i.sf = load i32, ptr %.sroa.25.4, align 4, !tbaa !10
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.sg ; 2 uses
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !9
  %.not165.i = icmp eq i8 %i.si, 34
  br i1 %.not165.i, label %bb.bx, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %bb.bw
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.se, align 4, !tbaa !123
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !20
  %i.sm = ptrtoint ptr %.sroa.172.4 to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = or i64 %i.so, 2449958197289549824
  store i64 %i.sp, ptr %i.sj, align 8, !tbaa !13
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 5 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sh, i64 1 ; 2 uses
  %i.st = load <4 x i64>, ptr %i.ss, align 1, !tbaa !9 ; 2 uses
  store <4 x i64> %i.st, ptr %i.sr, align 1, !tbaa !9
  %i.su = bitcast <4 x i64> %i.st to <32 x i8>    ; 2 uses
  %i.sv = icmp eq <32 x i8> %i.su, splat (i8 92)
  %i.sw = bitcast <32 x i1> %i.sv to i32          ; 2 uses
  %i.sx = icmp eq <32 x i8> %i.su, splat (i8 34)
  %i.sy = bitcast <32 x i1> %i.sx to i32          ; 3 uses
  %i.sz = add i32 %i.sw, -1
  %i.ta = and i32 %i.sz, %i.sy
  %.not14541534 = icmp eq i32 %i.ta, 0
  br i1 %.not14541534, label %.lr.ph1537, label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i47

.lr.ph1537:                                       ; preds = %bb.bx, %bb.cn
  %i.tb = phi i32 [ %i.xv, %bb.cn ], [ %i.sy, %bb.bx ]
  %i.tc = phi i32 [ %i.xt, %bb.cn ], [ %i.sw, %bb.bx ] ; 2 uses
  %.08851536 = phi ptr [ %.1886, %bb.cn ], [ %i.ss, %bb.bx ] ; 4 uses
  %.08931535 = phi ptr [ %.1894, %bb.cn ], [ %i.sr, %bb.bx ] ; 4 uses
  %i.td = add i32 %i.tb, -1
  %i.te = and i32 %i.td, %i.tc
  %.not1455 = icmp eq i32 %i.te, 0
  br i1 %.not1455, label %bb.cm, label %bb.by

bb.by:                                            ; preds = %.lr.ph1537
  %i.tf = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.tc, i1 true) ; 2 uses
  %i.tg = zext nneg i32 %i.tf to i64              ; 4 uses
  %i.th = add nuw nsw i32 %i.tf, 1
  %i.ti = zext nneg i32 %i.th to i64              ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.08851536, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !9   ; 2 uses
  %i.tl = icmp eq i8 %i.tk, 117
  br i1 %i.tl, label %bb.bz, label %bb.ck

bb.bz:                                            ; preds = %bb.by
  %i.tm = getelementptr inbounds nuw i8, ptr %.08851536, i64 %i.tg ; 11 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.08931535, i64 %i.tg ; 8 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 2
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !9
  %i.tq = zext i8 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 2520
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !10
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tm, i64 3
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !9
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 1680
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !10
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !9
  %i.uc = zext i8 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 840
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tm, i64 5
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !9
  %i.ui = zext i8 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !10
  %i.ul = or i32 %i.tz, %i.tt
  %i.um = or i32 %i.ul, %i.uf
  %i.un = or i32 %i.um, %i.uk                     ; 13 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tm, i64 6 ; 5 uses
  %i.up = and i32 %i.un, -1024
  switch i32 %i.up, label %bb.cc [
    i32 55296, label %bb.ca
    i32 56320, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.uq = load i8, ptr %i.uo, align 1, !tbaa !9
  %i.ur = zext i8 %i.uq to i32
  %i.us = shl nuw nsw i32 %i.ur, 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tm, i64 7
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !9
  %i.uv = zext i8 %i.uu to i32
  %i.uw = or disjoint i32 %i.us, %i.uv
  %.not.i18.i64 = icmp eq i32 %i.uw, 23669
  br i1 %.not.i18.i64, label %bb.cb, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cb:                                            ; preds = %bb.ca
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !9
  %i.uz = zext i8 %i.uy to i64
  %i.va = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 2520
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !10
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tm, i64 9
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !9
  %i.vf = zext i8 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 1680
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !10
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tm, i64 10
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !9
  %i.vl = zext i8 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 840
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !10
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tm, i64 11
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !9
  %i.vr = zext i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !10
  %i.vu = or i32 %i.vi, %i.vc
  %i.vv = or i32 %i.vu, %i.vo
  %i.vw = or i32 %i.vv, %i.vt
  %i.vx = add i32 %i.vw, -56320                   ; 2 uses
  %.not35.i.i65 = icmp ult i32 %i.vx, 1024
  br i1 %.not35.i.i65, label %.thread1051, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1051:                                      ; preds = %bb.cb
  %i.vy = shl nuw nsw i32 %i.un, 10
  %i.vz = add nsw i32 %i.vy, -56557568
  %i.wa = or disjoint i32 %i.vz, %i.vx
  %i.wb = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  br label %bb.cj

bb.cc:                                            ; preds = %bb.bz
  %i.wc = icmp ult i32 %i.un, 128
  br i1 %i.wc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.wd = trunc nuw nsw i32 %i.un to i8
  store i8 %i.wd, ptr %i.tn, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i59.thread1060

bb.ce:                                            ; preds = %bb.cc
end_hunk_2
begin_hunk_3_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %or.cond5.i.i142 = select i1 %i.bnh, i1 true, i1 %i.bni
  br i1 %or.cond5.i.i142, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1321

bb.if:                                            ; preds = %bb.ia
  %i.bnj = icmp slt i64 %.2793, 0
  br i1 %i.bnj, label %.thread1321, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bnk = sub nsw i64 0, %.2793
  %i.bnl = select i1 %i.bfp, i64 %i.bnk, i64 %.2793
  br label %.thread1321

.thread1321:                                      ; preds = %bb.if, %bb.ie, %bb.ig
  %.sink1820 = phi i64 [ 7782220156096217088, %bb.ig ], [ 8430738502437568512, %bb.ie ], [ 8430738502437568512, %bb.if ]
  %.sink1818 = phi i64 [ %i.bnl, %bb.ig ], [ %.2793, %bb.ie ], [ %.2793, %bb.if ]
  store i64 %.sink1820, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bnm = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1818, ptr %i.bnm, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bnn = load i8, ptr %.1784, align 1, !tbaa !9
  %i.bno = zext i8 %i.bnn to i64
  %i.bnp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bno
  %i.bnq = load i8, ptr %i.bnp, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i140 = icmp eq i8 %i.bnq, 0
  br i1 %.not57.i.i140, label %select.unfold1332, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327: ; preds = %bb.hz, %bb.ic
  %i.bnr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bns = load i8, ptr %i.bnr, align 8, !tbaa !133, !range !37, !noundef !38
  %i.bnt = trunc nuw i8 %i.bns to i1
  br i1 %i.bnt, label %.preheader1821, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !107

.preheader1821:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327, %.preheader1821
  %.122.i.i136 = phi ptr [ %i.bnx, %.preheader1821 ], [ %i.bfr, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327 ] ; 3 uses
  %i.bnu = load i8, ptr %.122.i.i136, align 1, !tbaa !9 ; 2 uses
  %i.bnv = add i8 %i.bnu, -48
  %i.bnw = icmp ult i8 %i.bnv, 10
  %i.bnx = getelementptr inbounds nuw i8, ptr %.122.i.i136, i64 1
  br i1 %i.bnw, label %.preheader1821, label %bb.ih, !llvm.loop !134

bb.ih:                                            ; preds = %.preheader1821
  %i.bny = zext i8 %i.bnu to i64
  %i.bnz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bny
  %i.boa = load i8, ptr %i.bnz, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i.i137 = icmp eq i8 %i.boa, 0
  br i1 %.not.i.i137, label %.split1738, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1738:                                       ; preds = %bb.ih
  %i.bob = ptrtoint ptr %.122.i.i136 to i64
  %i.boc = ptrtoint ptr %i.ayf to i64
  %i.bod = sub i64 %i.bob, %i.boc                 ; 3 uses
  %i.boe = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 8
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !20
  %i.boh = ptrtoint ptr %.sroa.172.2 to i64
  %i.boi = ptrtoint ptr %i.bog to i64
  %i.boj = sub i64 %i.boh, %i.boi
  %i.bok = or i64 %i.boj, 6485183463413514240
  store i64 %i.bok, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bol = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bom = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bom, ptr nonnull align 1 %i.ayf, i64 %i.bod, i1 false)
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 %i.bod ; 2 uses
  %i.boo = trunc i64 %i.bod to i32
  store i32 %i.boo, ptr %.sroa.172.2, align 1
  store i8 0, ptr %i.bon, align 1, !tbaa !9
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bon, i64 1
  br label %bb.im

bb.ii:                                            ; preds = %bb.gs
  switch i8 %i.ayg, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 116, label %bb.ij
    i8 102, label %bb.ik
    i8 110, label %bb.il
  ]

bb.ij:                                            ; preds = %bb.ii
  %.0.copyload.i.i218 = load i32, ptr %i.ayf, align 1
  %i.boq = getelementptr inbounds nuw i8, ptr %i.ayf, i64 4
  %i.bor = load i8, ptr %i.boq, align 1, !tbaa !9
  %i.bos = zext i8 %i.bor to i64
  %i.bot = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bos
  %i.bou = load i8, ptr %i.bot, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bov = zext nneg i8 %i.bou to i32
  %i.bow = or i32 %.0.copyload.i.i218, %i.bov
  %i.box = icmp eq i32 %i.bow, 1702195828
  br i1 %i.box, label %.split1736, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1736:                                       ; preds = %bb.ij
  store i64 8358680908399640576, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.boy = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.im

bb.ik:                                            ; preds = %bb.ii
  %i.boz = getelementptr inbounds nuw i8, ptr %i.ayf, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.boz, align 1
  %i.bpa = xor i32 %.0.copyload.i.i.i, 1702063201
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.ayf, i64 5
  %i.bpc = load i8, ptr %i.bpb, align 1, !tbaa !9
  %i.bpd = zext i8 %i.bpc to i64
  %i.bpe = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bpd
  %i.bpf = load i8, ptr %i.bpe, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bpg = zext nneg i8 %i.bpf to i32
  %i.bph = or i32 %i.bpa, %i.bpg
  %i.bpi = icmp eq i32 %i.bph, 0
  br i1 %i.bpi, label %.split1737, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1737:                                       ; preds = %bb.ik
  store i64 7349874591868649472, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bpj = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.im

bb.il:                                            ; preds = %bb.ii
  %.0.copyload.i.i.i227 = load i32, ptr %i.ayf, align 1
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.ayf, i64 4
  %i.bpl = load i8, ptr %i.bpk, align 1, !tbaa !9
  %i.bpm = zext i8 %i.bpl to i64
  %i.bpn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bpm
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bpp = zext nneg i8 %i.bpo to i32
  %i.bpq = or i32 %.0.copyload.i.i.i227, %i.bpp
  %i.bpr = icmp eq i32 %i.bpq, 1819047278
  br i1 %i.bpr, label %.split1739, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1739:                                       ; preds = %bb.il
  store i64 7926335344172072960, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bps = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.im

select.unfold1332:                                ; preds = %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161.thread, %bb.id, %.thread1321, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161, %bb.fz
  %.sroa.0.3 = phi ptr [ %i.bjn, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161.thread ], [ %i.bnc, %bb.id ], [ %.sroa.0.2, %bb.fz ], [ %.sroa.0.36, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161 ], [ %.sroa.0.34, %.thread1321 ] ; 2 uses
  %i.bpt = phi i1 [ true, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161.thread ], [ true, %bb.id ], [ false, %bb.fz ], [ true, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161 ], [ true, %.thread1321 ]
  br i1 %i.bpt, label %bb.im, label %bb.bv

bb.im:                                            ; preds = %.split1739, %.split1737, %.split1736, %.split1738, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i195, %.split1734, %.split1735, %select.unfold1332, %bb.fw
  %.sroa.123.6 = phi i32 [ %i.axc, %bb.fw ], [ %.sroa.123.1, %select.unfold1332 ], [ %.sroa.123.1, %.split1734 ], [ %.sroa.123.1, %.split1735 ], [ %.sroa.123.1, %.split1736 ], [ %.sroa.123.1, %.split1737 ], [ %.sroa.123.1, %.split1738 ], [ %.sroa.123.1, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i195 ], [ %.sroa.123.1, %.split1739 ] ; 3 uses
  %.sroa.25.9 = phi ptr [ %.sroa.25.8, %bb.fw ], [ %i.ayc, %select.unfold1332 ], [ %i.aze, %.split1734 ], [ %i.aym, %.split1735 ], [ %i.ayc, %.split1736 ], [ %i.ayc, %.split1737 ], [ %i.ayc, %.split1738 ], [ %i.ayc, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i195 ], [ %i.ayc, %.split1739 ] ; 2 uses
  %.sroa.172.10 = phi ptr [ %.sroa.172.9, %bb.fw ], [ %.sroa.172.2, %select.unfold1332 ], [ %.sroa.172.2, %.split1734 ], [ %.sroa.172.2, %.split1735 ], [ %.sroa.172.2, %.split1736 ], [ %.sroa.172.2, %.split1737 ], [ %i.bop, %.split1738 ], [ %i.bfn, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i195 ], [ %.sroa.172.2, %.split1739 ] ; 2 uses
  %.sroa.0.10 = phi ptr [ %i.awm, %bb.fw ], [ %.sroa.0.3, %select.unfold1332 ], [ %i.azq, %.split1734 ], [ %i.ayy, %.split1735 ], [ %i.boy, %.split1736 ], [ %i.bpj, %.split1737 ], [ %i.bol, %.split1738 ], [ %i.azy, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i195 ], [ %i.bps, %.split1739 ] ; 2 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %.sroa.25.9, i64 4 ; 2 uses
  %i.bpv = load i32, ptr %.sroa.25.9, align 4, !tbaa !10
  %i.bpw = zext i32 %i.bpv to i64
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bpw
  %i.bpy = load i8, ptr %i.bpx, align 1, !tbaa !9
  switch i8 %i.bpy, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.in
    i8 93, label %bb.fv
  ]

bb.in:                                            ; preds = %bb.im
  %i.bpz = zext i32 %.sroa.123.6 to i64
  %i.bqa = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.bqb = getelementptr inbounds nuw [8 x i8], ptr %i.bqa, i64 %i.bpz
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 4 ; 2 uses
  %i.bqd = load i32, ptr %i.bqc, align 4, !tbaa !123
  %i.bqe = add i32 %i.bqd, 1
  store i32 %i.bqe, ptr %i.bqc, align 4, !tbaa !123
  br label %bb.fy

.thread1011:                                      ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i, %bb.af, %bb.z, %bb.ac, %bb.f, %bb.e, %bb.fv
  %.sroa.25.10 = phi ptr [ %.sroa.25.8, %bb.fv ], [ %i.v, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.at, %bb.e ], [ %i.bb, %bb.f ], [ %i.v, %bb.ac ], [ %i.v, %bb.z ], [ %i.v, %bb.af ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709 ]
  %.sroa.0.11 = phi ptr [ %i.awm, %bb.fv ], [ %i.be, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.av, %bb.e ], [ %i.bd, %bb.f ], [ %i.hx, %bb.ac ], [ %i.hg, %bb.z ], [ %i.il, %bb.af ], [ %.sroa.0.23, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %.sroa.0.171364.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1709 ] ; 2 uses
  store i64 8214565720323784704, ptr %.sroa.0.11, align 8, !tbaa !13
  %i.bqf = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 8
  %i.bqg = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !118 ; 2 uses
  %i.bqi = ptrtoint ptr %i.bqf to i64
  %i.bqj = ptrtoint ptr %i.bqh to i64
  %i.bqk = sub i64 %i.bqi, %i.bqj
  %i.bql = lshr exact i64 %i.bqk, 3
  %i.bqm = and i64 %i.bql, 4294967295
  %i.bqn = or disjoint i64 %i.bqm, 8214565720323784704
  store i64 %i.bqn, ptr %i.bqh, align 8, !tbaa !13
  %i.bqo = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.bqp = ptrtoint ptr %.sroa.25.10 to i64
  %i.bqq = ptrtoint ptr %i.bqo to i64
  %i.bqr = sub i64 %i.bqp, %i.bqq
  %i.bqs = lshr exact i64 %i.bqr, 2
  %i.bqt = trunc i64 %i.bqs to i32                ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bqt, ptr %i.bqu, align 8, !tbaa !83
  %i.bqv = load i32, ptr %i.n, align 8, !tbaa !73
  %.not173.i = icmp eq i32 %i.bqv, %i.bqt
  %spec.select1449 = select i1 %.not173.i, i32 0, i32 3
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.r, %bb.t, %bb.bz, %bb.ca, %bb.cb, %bb.ci, %bb.ck, %bb.ct, %bb.cu, %bb.cv, %bb.dc, %bb.de, %bb.gd, %bb.ge, %bb.gf, %bb.gm, %bb.go, %bb.fg, %bb.fh, %bb.fi, %bb.fp, %bb.fr, %bb.hb, %bb.dr, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, %.thread1011, %bb.b, %bb.hg, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161.thread, %bb.gu, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i121, %bb.ie, %bb.id, %.thread1321, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327, %bb.ih, %bb.ii, %bb.ij, %bb.il, %bb.ik, %bb.dw, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.dk, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i112, %bb.eu, %bb.et, %.thread1164, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1170, %bb.ex, %bb.ey, %bb.ez, %bb.fb, %bb.fa, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161, %bb.fd, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i, %bb.bw, %bb.ag, %bb.ae, %bb.ab, %bb.y, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, %.noexc76, %.noexc, %.noexc81, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.c, %bb.d, %bb.im, %.thread1025, %bb.fc, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i47, %bb.bv, %bb.a
  %.37.i = phi i32 [ 3, %bb.fc ], [ 8, %bb.il ], [ 13, %bb.a ], [ 9, %bb.hg ], [ 3, %bb.im ], [ %spec.select1449, %.thread1011 ], [ 4, %bb.bv ], [ %spec.select1448, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161 ], [ %spec.select1446, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i ], [ 2, %bb.ag ], [ 9, %bb.dw ], [ 6, %bb.ij ], [ 3, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i47 ], [ 4, %.thread1025 ], [ %spec.select1444, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ 3, %bb.d ], [ 3, %bb.c ], [ 3, %bb.b ], [ 8, %bb.ae ], [ 7, %bb.ab ], [ 8, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit ], [ 6, %bb.y ], [ 7, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit ], [ 5, %bb.fg ], [ 6, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit ], [ 8, %.noexc81 ], [ 7, %.noexc76 ], [ 6, %.noexc ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i121 ], [ 8, %bb.fb ], [ 9, %bb.ih ], [ 10, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i131.thread1327 ], [ 5, %bb.ct ], [ 3, %bb.bw ], [ 9, %bb.ie ], [ 3, %bb.fd ], [ 9, %bb.dr ], [ 3, %bb.ii ], [ 9, %bb.id ], [ 9, %.thread1321 ], [ 5, %bb.gd ], [ %.0.i51365.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread ], [ 7, %bb.fa ], [ 9, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.dk ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i112 ], [ 9, %bb.eu ], [ 9, %bb.et ], [ 9, %.thread1164 ], [ 9, %bb.hb ], [ 7, %bb.ik ], [ 9, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i161.thread ], [ 9, %bb.gu ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i182 ], [ 10, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1170 ], [ 9, %bb.ex ], [ 3, %bb.ey ], [ 6, %bb.ez ], [ 5, %bb.bz ], [ 5, %bb.fr ], [ 5, %bb.fp ], [ 5, %bb.fi ], [ 5, %bb.fh ], [ 5, %bb.go ], [ 5, %bb.gm ], [ 5, %bb.gf ], [ 5, %bb.ge ], [ 5, %bb.de ], [ 5, %bb.dc ], [ 5, %bb.cv ], [ 5, %bb.cu ], [ 5, %bb.ck ], [ 5, %bb.ci ], [ 5, %bb.cb ], [ 5, %bb.ca ], [ 5, %bb.t ], [ 5, %bb.r ], [ 5, %bb.k ], [ 5, %bb.j ], [ 5, %bb.i ]
  ret i32 %.37.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88   ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73
  %i.q = icmp eq i32 %i.i, %i.p
  br i1 %i.q, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.i to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !120  ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 10 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ab = zext i32 %i.aa to i64                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ab ; 12 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  switch i8 %i.ad, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.e
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !10
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = icmp eq i8 %i.ah, 125
  br i1 %i.ai, label %bb.d, label %bb.bx

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 8863084066665136131, ptr %i.y, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 9007199254740992001, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread777

bb.e:                                             ; preds = %bb.b
  %i.am = load i32, ptr %i.z, align 4, !tbaa !10
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, 93
  br i1 %i.aq, label %bb.f, label %.thread791

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 6557241057451442179, ptr %i.y, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 6701356245527298049, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread777

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.y, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ax = load <4 x i64>, ptr %i.aw, align 1, !tbaa !9 ; 2 uses
  store <4 x i64> %i.ax, ptr %i.av, align 1, !tbaa !9
  %i.ay = bitcast <4 x i64> %i.ax to <32 x i8>    ; 2 uses
  %i.az = icmp eq <32 x i8> %i.ay, splat (i8 92)
  %i.ba = bitcast <32 x i1> %i.az to i32          ; 2 uses
  %i.bb = icmp eq <32 x i8> %i.ay, splat (i8 34)
  %i.bc = bitcast <32 x i1> %i.bb to i32          ; 3 uses
  %i.bd = add i32 %i.ba, -1
  %i.be = and i32 %i.bd, %i.bc
  %.not12171293 = icmp eq i32 %i.be, 0
  br i1 %.not12171293, label %.lr.ph1296, label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i

.lr.ph1296:                                       ; preds = %bb.g, %bb.w
  %i.bf = phi i32 [ %i.fz, %bb.w ], [ %i.bc, %bb.g ]
  %i.bg = phi i32 [ %i.fx, %bb.w ], [ %i.ba, %bb.g ] ; 2 uses
  %.05401295 = phi ptr [ %.1541, %bb.w ], [ %i.av, %bb.g ] ; 4 uses
  %.05431294 = phi ptr [ %.1544, %bb.w ], [ %i.aw, %bb.g ] ; 4 uses
  %i.bh = add i32 %i.bf, -1
  %i.bi = and i32 %i.bh, %i.bg
  %.not1218 = icmp eq i32 %i.bi, 0
  br i1 %.not1218, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.lr.ph1296
  %i.bj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bg, i1 true) ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 4 uses
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05431294, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9   ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 117
  br i1 %i.bp, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.05431294, i64 %i.bk ; 11 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05401295, i64 %i.bk ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2520
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1680
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 840
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10
  %i.cp = or i32 %i.cd, %i.bx
  %i.cq = or i32 %i.cp, %i.cj
  %i.cr = or i32 %i.cq, %i.co                     ; 13 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 6 ; 5 uses
  %i.ct = and i32 %i.cr, -1024
  switch i32 %i.ct, label %bb.l [
    i32 55296, label %bb.j
    i32 56320, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 7
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !9
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz
  %.not.i18.i.i = icmp eq i32 %i.da, 23669
  br i1 %.not.i18.i.i, label %bb.k, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2520
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 9
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1680
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 840
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 11
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !10
  %i.dy = or i32 %i.dm, %i.dg
  %i.dz = or i32 %i.dy, %i.ds
  %i.ea = or i32 %i.dz, %i.dx
  %i.eb = add i32 %i.ea, -56320                   ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.eb, 1024
  br i1 %.not35.i.i.i, label %.thread684, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread684:                                       ; preds = %bb.k
  %i.ec = shl nuw nsw i32 %i.cr, 10
  %i.ed = add nsw i32 %i.ec, -56557568
  %i.ee = or disjoint i32 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  %i.eg = icmp ult i32 %i.cr, 128
  br i1 %i.eg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_3
begin_hunk_4_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread693

bb.p:                                             ; preds = %bb.n
  %i.eq = icmp ult i32 %i.cr, 65536
  br i1 %i.eq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.er = lshr i32 %i.cr, 12
  %i.es = trunc nuw nsw i32 %i.er to i8
  %i.et = or disjoint i8 %i.es, -32
  store i8 %i.et, ptr %i.br, align 1, !tbaa !9
  %i.eu = lshr i32 %i.cr, 6
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = and i8 %i.ev, 63
  %i.ex = or disjoint i8 %i.ew, -128
  %i.ey = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !9
  %i.ez = trunc i32 %i.cr to i8
  %i.fa = and i8 %i.ez, 63
  %i.fb = or disjoint i8 %i.fa, -128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread693

bb.r:                                             ; preds = %bb.p
  %i.fd = icmp ult i32 %i.cr, 1114112
  br i1 %i.fd, label %bb.s, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.s:                                             ; preds = %.thread684, %bb.r
  %.6672678682688 = phi ptr [ %i.ef, %.thread684 ], [ %i.cs, %bb.r ]
  %.4.i.i.i673677683687 = phi i32 [ %i.ee, %.thread684 ], [ %i.cr, %bb.r ]
  %i.fe = insertelement <4 x i32> poison, i32 %.4.i.i.i673677683687, i64 0
  %i.ff = shufflevector <4 x i32> %i.fe, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fg = lshr <4 x i32> %i.ff, <i32 18, i32 12, i32 6, i32 0>
  %i.fh = trunc <4 x i32> %i.fg to <4 x i8>
  %i.fi = and <4 x i8> %i.fh, <i8 -1, i8 63, i8 63, i8 63>
  %i.fj = or <4 x i8> %i.fi, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fj, ptr %i.br, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread693

_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread693: ; preds = %bb.m, %bb.o, %bb.q, %bb.s
  %.6671.ph = phi ptr [ %.6672678682688, %bb.s ], [ %i.cs, %bb.q ], [ %i.cs, %bb.o ], [ %i.cs, %bb.m ]
  %.0.i.i.i.ph = phi i64 [ 4, %bb.s ], [ 3, %bb.q ], [ 2, %bb.o ], [ 1, %bb.m ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0.i.i.i.ph
  br label %bb.w

bb.t:                                             ; preds = %bb.h
  %i.fl = zext i8 %i.bo to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !9   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.05401295, i64 %i.bk
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !9
  %i.fp = getelementptr inbounds nuw i8, ptr %.05431294, i64 %i.bk
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fr = getelementptr inbounds nuw i8, ptr %.05401295, i64 %i.bm
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph1296
  %i.fs = getelementptr inbounds nuw i8, ptr %.05431294, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %.05401295, i64 32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread693, %bb.v
  %.1544 = phi ptr [ %i.fq, %bb.u ], [ %i.fs, %bb.v ], [ %.6671.ph, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread693 ] ; 2 uses
  %.1541 = phi ptr [ %i.fr, %bb.u ], [ %i.ft, %bb.v ], [ %i.fk, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread693 ] ; 3 uses
  %i.fu = load <4 x i64>, ptr %.1544, align 1, !tbaa !9 ; 2 uses
  store <4 x i64> %i.fu, ptr %.1541, align 1, !tbaa !9
  %i.fv = bitcast <4 x i64> %i.fu to <32 x i8>    ; 2 uses
  %i.fw = icmp eq <32 x i8> %i.fv, splat (i8 92)
  %i.fx = bitcast <32 x i1> %i.fw to i32          ; 2 uses
  %i.fy = icmp eq <32 x i8> %i.fv, splat (i8 34)
  %i.fz = bitcast <32 x i1> %i.fy to i32          ; 3 uses
  %i.ga = add i32 %i.fx, -1
  %i.gb = and i32 %i.ga, %i.fz
  %.not1217 = icmp eq i32 %i.gb, 0
  br i1 %.not1217, label %.lr.ph1296, label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i

_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i: ; preds = %bb.w, %bb.g
  %.0540.lcssa = phi ptr [ %i.av, %bb.g ], [ %.1541, %bb.w ]
  %.lcssa1269 = phi i32 [ %i.bc, %bb.g ], [ %i.fz, %bb.w ]
  %i.gc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa1269, i1 true)
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %.0540.lcssa, i64 %i.gd ; 2 uses
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.av to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = trunc i64 %i.gh to i32
  store i32 %i.gi, ptr %i.n, align 1
  store i8 0, ptr %i.ge, align 1, !tbaa !9
  br label %.thread777

bb.x:                                             ; preds = %bb.b
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !105
  %i.gl = sub i64 %i.gk, %i.ab                    ; 2 uses
  %i.gm = icmp ugt i64 %i.gl, 4
  br i1 %i.gm, label %.split, label %bb.y

.split:                                           ; preds = %bb.x
  %.0.copyload.i.i = load i32, ptr %i.ac, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gs = zext nneg i8 %i.gr to i32
  %i.gt = or i32 %.0.copyload.i.i, %i.gs
  %i.gu = icmp eq i32 %i.gt, 1702195828
  br i1 %i.gu, label %bb.z, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.gv = icmp eq i64 %i.gl, 4
  br i1 %i.gv, label %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i: ; preds = %bb.y
  %.0.copyload.i243.i = load i32, ptr %i.ac, align 1
  %.not.i.i = icmp eq i32 %.0.copyload.i243.i, 1702195828
  br i1 %.not.i.i, label %bb.z, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %.split, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i
  store i64 8358680908399640576, ptr %i.y, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread777

bb.aa:                                            ; preds = %bb.b
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !105
  %i.gz = sub i64 %i.gy, %i.ab                    ; 2 uses
  %i.ha = icmp ugt i64 %i.gz, 5
  br i1 %i.ha, label %.split718, label %bb.ab

.split718:                                        ; preds = %bb.aa
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i247.i = load i32, ptr %i.hb, align 1
  %i.hc = xor i32 %.0.copyload.i.i247.i, 1702063201
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = zext i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hi = zext nneg i8 %i.hh to i32
  %i.hj = or i32 %i.hc, %i.hi
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ac, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hl = icmp eq i64 %i.gz, 5
  br i1 %i.hl, label %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i: ; preds = %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.hm, align 1
  %.not.i245.i = icmp eq i32 %.0.copyload.i.i.i, 1702063201
  br i1 %.not.i245.i, label %bb.ac, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %.split718, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i
  store i64 7349874591868649472, ptr %i.y, align 8, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread777

bb.ad:                                            ; preds = %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !105
  %i.hq = sub i64 %i.hp, %i.ab                    ; 2 uses
  %i.hr = icmp ugt i64 %i.hq, 4
  br i1 %i.hr, label %.split720, label %bb.ae

.split720:                                        ; preds = %bb.ad
  %.0.copyload.i.i252.i = load i32, ptr %i.ac, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !9
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = or i32 %.0.copyload.i.i252.i, %i.hx
  %i.hz = icmp eq i32 %i.hy, 1819047278
  br i1 %i.hz, label %bb.af, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ia = icmp eq i64 %i.hq, 4
  br i1 %i.ia, label %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i: ; preds = %bb.ae
  %.0.copyload.i.i249.i = load i32, ptr %i.ac, align 1
  %.not.i250.i = icmp eq i32 %.0.copyload.i.i249.i, 1819047278
  br i1 %.not.i250.i, label %bb.af, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %.split720, %_ZN8simdjson7haswell12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i
  store i64 7926335344172072960, ptr %i.y, align 8, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread777

bb.ag:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !105
  %i.ie = add i64 %i.id, 64
  %i.if = sub i64 %i.ie, %i.ab
  %i.ig = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.if, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %2 = load i64, ptr %i.ic, align 8, !tbaa !105   ; 2 uses
  %i.ii = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ij = zext i32 %i.ii to i64
  %i.ik = sub i64 %2, %i.ij
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr nonnull align 1 %i.ac, i64 %i.ik, i1 false)
  %i.il = load i32, ptr %i.t, align 4, !tbaa !10
  %i.im = zext i32 %i.il to i64
  %i.in = sub i64 %2, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.in
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.io, i8 32, i64 64, i1 false)
  %i.ip = load i8, ptr %i.ig, align 1, !tbaa !9   ; 2 uses
  %i.iq = icmp eq i8 %i.ip, 45                    ; 10 uses
  %i.ir = zext i1 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ir ; 6 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !9   ; 4 uses
  %i.iu = add i8 %i.it, -48                       ; 2 uses
  %i.iv = icmp ult i8 %i.iu, 10
  br i1 %i.iv, label %.lr.ph, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.iw = phi i8 [ %i.jc, %.lr.ph ], [ %i.iu, %bb.ah ]
  %.06331275 = phi ptr [ %i.ja, %.lr.ph ], [ %i.is, %bb.ah ]
  %.06411274 = phi i64 [ %i.iz, %.lr.ph ], [ 0, %bb.ah ]
  %i.ix = mul i64 %.06411274, 10
  %i.iy = zext nneg i8 %i.iw to i64
  %i.iz = add i64 %i.ix, %i.iy                    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.06331275, i64 1 ; 3 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !9   ; 2 uses
  %i.jc = add i8 %i.jb, -48                       ; 2 uses
  %i.jd = icmp ult i8 %i.jc, 10
  br i1 %i.jd, label %.lr.ph, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, !llvm.loop !125

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i: ; preds = %.lr.ph, %bb.ah
  %.0641.lcssa = phi i64 [ 0, %bb.ah ], [ %i.iz, %.lr.ph ] ; 3 uses
  %.0633.lcssa = phi ptr [ %i.is, %bb.ah ], [ %i.ja, %.lr.ph ] ; 6 uses
  %.lcssa1273 = phi i8 [ %i.it, %bb.ah ], [ %i.jb, %.lr.ph ] ; 2 uses
  %i.je = ptrtoint ptr %.0633.lcssa to i64
  %i.jf = ptrtoint ptr %i.is to i64               ; 3 uses
  %i.jg = sub i64 %i.je, %i.jf                    ; 3 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i
  %i.ji = icmp eq i8 %i.it, 48
  %i.jj = icmp ne i64 %i.jg, 1
  %or.cond.i.i = and i1 %i.jj, %i.ji
  br i1 %or.cond.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jk = icmp eq i8 %.lcssa1273, 46              ; 2 uses
  br i1 %i.jk, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.ptr1215 = getelementptr inbounds nuw i8, ptr %.0633.lcssa, i64 1 ; 2 uses
  %.0.copyload.i267.i = load i64, ptr %.ptr1215, align 1 ; 3 uses
  %i.jl = and i64 %.0.copyload.i267.i, -1085102592571150096
  %i.jm = add i64 %.0.copyload.i267.i, 434041037028460038
  %i.jn = lshr i64 %i.jm, 4
  %i.jo = and i64 %i.jn, 1085102592571150095
  %i.jp = or disjoint i64 %i.jo, %i.jl
  %i.jq = icmp eq i64 %i.jp, 3689348814741910323
  %i.jr = trunc i64 %.0.copyload.i267.i to i8
  br i1 %i.jq, label %bb.al, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

bb.al:                                            ; preds = %bb.ak
  %i.js = mul i64 %.0641.lcssa, 100000000
  %i.jt = load <16 x i8>, ptr %.ptr1215, align 1  ; 2 uses
  %i.ju = add <16 x i8> %i.jt, <i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.jv = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.ju, <16 x i8> <i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.jw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jv, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.jx = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jw, <4 x i32> poison)
  %i.jy = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jx, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.jz = extractelement <4 x i32> %i.jy, i64 0
  %i.ka = zext i32 %i.jz to i64
  %i.kb = add i64 %i.js, %i.ka
  %i.kc = extractelement <16 x i8> %i.jt, i64 8
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i: ; preds = %bb.al, %bb.ak
  %i.kd = phi i8 [ %i.kc, %bb.al ], [ %i.jr, %bb.ak ]
  %.3644 = phi i64 [ %i.kb, %bb.al ], [ %.0641.lcssa, %bb.ak ] ; 2 uses
  %.5638.idx = phi i64 [ 9, %bb.al ], [ 1, %bb.ak ]
  %i.ke = add i8 %i.kd, -48                       ; 2 uses
  %i.kf = icmp ult i8 %i.ke, 10                   ; 2 uses
  %i.kg = mul i64 %.3644, 10
  %i.kh = zext nneg i8 %i.ke to i64
  %i.ki = add i64 %i.kg, %i.kh
  %.4645724 = select i1 %i.kf, i64 %i.ki, i64 %.3644 ; 2 uses
  %.6639.idx = zext i1 %i.kf to i64
  %.5638.add = add nuw nsw i64 %.5638.idx, %.6639.idx ; 4 uses
  %.7640.ptr1279 = getelementptr inbounds nuw i8, ptr %.0633.lcssa, i64 %.5638.add
  %i.kj = load i8, ptr %.7640.ptr1279, align 1, !tbaa !9 ; 2 uses
  %i.kk = add i8 %i.kj, -48                       ; 2 uses
  %i.kl = icmp ult i8 %i.kk, 10
  br i1 %i.kl, label %.lr.ph1282, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i

.lr.ph1282:                                       ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i, %.lr.ph1282
  %i.km = phi i8 [ %i.kr, %.lr.ph1282 ], [ %i.kk, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.7640.idx1281 = phi i64 [ %.7640.add, %.lr.ph1282 ], [ %.5638.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.56461280 = phi i64 [ %i.kp, %.lr.ph1282 ], [ %.4645724, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %i.kn = mul i64 %.56461280, 10
  %i.ko = zext nneg i8 %i.km to i64
  %i.kp = add i64 %i.kn, %i.ko                    ; 2 uses
  %.7640.add = add nuw nsw i64 %.7640.idx1281, 1  ; 3 uses
  %.7640.ptr = getelementptr inbounds nuw i8, ptr %.0633.lcssa, i64 %.7640.add
  %i.kq = load i8, ptr %.7640.ptr, align 1, !tbaa !9 ; 2 uses
  %i.kr = add i8 %i.kq, -48                       ; 2 uses
  %i.ks = icmp ult i8 %i.kr, 10
  br i1 %i.ks, label %.lr.ph1282, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !126

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5638.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1282, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5646.lcssa1464 = phi i64 [ %.4645724, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kp, %.lr.ph1282 ]
  %.7640.idx.lcssa12781463 = phi i64 [ %.5638.add, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7640.add, %.lr.ph1282 ] ; 2 uses
  %i.kt = phi i8 [ %i.kj, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kq, %.lr.ph1282 ]
  %.7640.ptr.le = getelementptr inbounds nuw i8, ptr %.0633.lcssa, i64 %.7640.idx.lcssa12781463 ; 2 uses
  %i.ku = ptrtoint ptr %.7640.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7640.idx.lcssa12781463
  %i.kv = sub i64 %i.ku, %i.jf
  %sext.i.i = shl i64 %i.kv, 32
  %i.kw = ashr exact i64 %sext.i.i, 32
  br label %bb.am

bb.am:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.aj
  %i.kx = phi i8 [ %i.kt, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1273, %bb.aj ] ; 2 uses
  %.0648 = phi i64 [ %gepdiff, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.aj ] ; 2 uses
  %.2643 = phi i64 [ %.5646.lcssa1464, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0641.lcssa, %bb.aj ] ; 14 uses
  %.1634 = phi ptr [ %.7640.ptr.le, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0633.lcssa, %bb.aj ] ; 4 uses
  %.044.i.i = phi i64 [ %i.kw, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.jg, %bb.aj ] ; 4 uses
  switch i8 %i.kx, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.ky = getelementptr inbounds nuw i8, ptr %.1634, i64 1 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !9   ; 3 uses
  %i.la = icmp eq i8 %i.kz, 45
  switch i8 %i.kz, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.lb = getelementptr inbounds nuw i8, ptr %.1634, i64 2 ; 2 uses
  %.pre1398 = load i8, ptr %i.lb, align 1, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lc = phi i8 [ %i.kz, %bb.an ], [ %.pre1398, %bb.ao ]
  %.2635 = phi ptr [ %i.ky, %bb.an ], [ %i.lb, %bb.ao ] ; 3 uses
  %i.ld = add i8 %i.lc, -48                       ; 2 uses
  %i.le = icmp ult i8 %i.ld, 10
  br i1 %i.le, label %.lr.ph1289, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1289:                                       ; preds = %bb.ap, %.lr.ph1289
  %i.lf = phi i8 [ %i.lk, %.lr.ph1289 ], [ %i.ld, %bb.ap ]
  %.06301288 = phi i64 [ %i.li, %.lr.ph1289 ], [ 0, %bb.ap ]
  %.3636.idx1287 = phi i64 [ %.3636.add, %.lr.ph1289 ], [ 0, %bb.ap ] ; 2 uses
  %i.lg = mul nsw i64 %.06301288, 10
  %i.lh = zext nneg i8 %i.lf to i64
  %i.li = add nsw i64 %i.lg, %i.lh                ; 3 uses
  %.3636.add = add nuw nsw i64 %.3636.idx1287, 1  ; 3 uses
  %.3636.ptr = getelementptr inbounds nuw i8, ptr %.2635, i64 %.3636.add
  %i.lj = load i8, ptr %.3636.ptr, align 1, !tbaa !9 ; 2 uses
  %i.lk = add i8 %i.lj, -48                       ; 2 uses
  %i.ll = icmp ult i8 %i.lk, 10
  br i1 %i.ll, label %.lr.ph1289, label %bb.aq, !llvm.loop !127

bb.aq:                                            ; preds = %.lr.ph1289
  %.3636.ptr.le = getelementptr inbounds nuw i8, ptr %.2635, i64 %.3636.add
  %i.lm = icmp samesign ugt i64 %.3636.idx1287, 17
  br i1 %i.lm, label %.preheader1253, label %.thread734, !prof !107

.preheader1253:                                   ; preds = %bb.aq, %.preheader1253
  %.0.i261.i = phi ptr [ %i.lp, %.preheader1253 ], [ %.2635, %bb.aq ] ; 3 uses
  %i.ln = load i8, ptr %.0.i261.i, align 1, !tbaa !9
  %i.lo = icmp eq i8 %i.ln, 48
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i261.i, i64 1
  br i1 %i.lo, label %.preheader1253, label %bb.ar, !llvm.loop !128

bb.ar:                                            ; preds = %.preheader1253
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i261.i, i64 18
  %i.lr = icmp ugt ptr %.3636.ptr.le, %i.lq
  %spec.select = select i1 %i.lr, i64 999999999999999999, i64 %i.li
  br label %.thread734

.thread734:                                       ; preds = %bb.ar, %bb.aq
  %.2632 = phi i64 [ %i.li, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.ls = sub nsw i64 0, %.2632
  %i.lt = select i1 %i.la, i64 %i.ls, i64 %.2632
  %i.lu = add nsw i64 %i.lt, %.0648
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.jk, label %bb.at, label %bb.bn

bb.at:                                            ; preds = %.thread734, %bb.as
  %i.lv = phi i8 [ %i.lj, %.thread734 ], [ %i.kx, %bb.as ]
  %.2650738 = phi i64 [ %i.lu, %.thread734 ], [ %.0648, %bb.as ] ; 9 uses
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !124, !range !37, !noundef !38
  %.not59.i.i = icmp eq i8 %i.ly, 0               ; 3 uses
  %i.lz = icmp ugt i64 %.044.i.i, 19
end_hunk_4
begin_hunk_5_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.nn = zext i64 %i.ng to i128                  ; 2 uses
  %i.no = zext i64 %i.nm to i128
  %i.np = mul nuw i128 %i.no, %i.nn               ; 2 uses
  %i.nq = trunc i128 %i.np to i64                 ; 2 uses
  %i.nr = lshr i128 %i.np, 64
  %i.ns = trunc nuw i128 %i.nr to i64             ; 3 uses
  %i.nt = and i64 %i.ns, 511
  %i.nu = icmp eq i64 %i.nt, 511
  br i1 %i.nu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nv = getelementptr i8, ptr %i.nk, i64 5480
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !13
  %i.nx = zext i64 %i.nw to i128
  %i.ny = mul nuw i128 %i.nx, %i.nn
  %i.nz = lshr i128 %i.ny, 64
  %i.oa = trunc nuw i128 %i.nz to i64             ; 2 uses
  %i.ob = add i64 %i.oa, %i.nq                    ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = zext i1 %i.oc to i64
  %spec.select.i274.i = add nuw i64 %i.od, %i.ns
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i274.i, %bb.bd ], [ %i.ns, %bb.bc ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.ob, %bb.bd ], [ %i.nq, %bb.bc ]
  %i.oe = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.of = add nuw nsw i64 %i.oe, 9                ; 2 uses
  %i.og = lshr i64 %.sroa.7.1.i.i, %i.of          ; 6 uses
  %reass.sub = sub nsw i64 %i.ne, %i.nf
  %.neg = add nsw i64 %reass.sub, %i.oe           ; 4 uses
  %i.oh = add nsw i64 %.neg, 1086
  %i.oi = icmp slt i64 %.neg, -1085
  br i1 %i.oi, label %bb.bf, label %bb.bi, !prof !107

bb.bf:                                            ; preds = %bb.be
  %i.oj = icmp samesign ult i64 %.neg, -1148
  br i1 %i.oj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ok = select i1 %i.iq, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bh:                                            ; preds = %bb.bf
  %i.ol = sub nuw nsw i64 -1085, %.neg
  %i.om = lshr i64 %i.og, %i.ol                   ; 2 uses
  %i.on = and i64 %i.om, 1
  %i.oo = add nuw nsw i64 %i.on, %i.om            ; 2 uses
  %i.op = lshr i64 %i.oo, 1
  %i.oq = icmp samesign ugt i64 %i.oo, 9007199254740991
  %i.or = and i64 %i.op, 13510798882111487
  %i.os = select i1 %i.oq, i64 4503599627370496, i64 0
  %i.ot = select i1 %i.iq, i64 -9223372036854775808, i64 0
  %i.ou = or disjoint i64 %i.os, %i.ot
  %i.ov = or disjoint i64 %i.ou, %i.or
  %i.ow = bitcast i64 %i.ov to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.be
  %i.ox = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.oy = add nsw i64 %.2650738, 4
  %i.oz = icmp ult i64 %i.oy, 28
  %or.cond7.i.i = and i1 %i.oz, %i.ox
  %i.pa = and i64 %i.og, 3
  %i.pb = icmp eq i64 %i.pa, 1
  %i.pc = select i1 %or.cond7.i.i, i1 %i.pb, i1 false
  br i1 %i.pc, label %bb.bj, label %bb.bk, !prof !107

bb.bj:                                            ; preds = %bb.bi
  %i.pd = shl i64 %i.og, %i.of
  %i.pe = icmp eq i64 %i.pd, %.sroa.7.1.i.i
  %i.pf = and i64 %i.og, 72057594037927932
  %spec.select90.i.i = select i1 %i.pe, i64 %i.pf, i64 %i.og
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i.i = phi i64 [ %i.og, %bb.bi ], [ %spec.select90.i.i, %bb.bj ] ; 2 uses
  %i.pg = and i64 %.080.i.i, 1
  %i.ph = add nuw nsw i64 %i.pg, %.080.i.i        ; 2 uses
  %i.pi = icmp samesign ugt i64 %i.ph, 18014398509481983 ; 2 uses
  %i.pj = zext i1 %i.pi to i64
  %spec.select92.i.i = add nuw nsw i64 %i.oh, %i.pj ; 2 uses
  %i.pk = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.pk, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bl, !prof !107

bb.bl:                                            ; preds = %bb.bk
  %i.pl = lshr i64 %i.ph, 1
  %i.pm = and i64 %i.pl, 13510798882111487
  %i.pn = select i1 %i.pi, i64 0, i64 %i.pm
  %i.po = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.pp = select i1 %i.iq, i64 -9223372036854775808, i64 0
  %i.pq = or disjoint i64 %i.pn, %i.pp
  %i.pr = or i64 %i.pq, %i.po
  %i.ps = bitcast i64 %i.pr to double
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bk
  %i.pt = call fastcc noundef zeroext i1 @_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ig, ptr noundef %i.f)
  br i1 %i.pt, label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bm

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1400 = load double, ptr %i.f, align 8, !tbaa !130
  br label %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.az, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %i.pu = phi double [ %.pre1400, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.ps, %bb.bl ], [ %i.ow, %bb.bh ], [ %i.ok, %bb.bg ], [ %spec.select1539, %bb.az ], [ %i.nc, %bb.bb ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !13
  %i.pv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.pu, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.pw, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i263.i = phi i32 [ 0, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.as
  %i.px = select i1 %i.iq, i64 19, i64 20         ; 2 uses
  %i.py = icmp ugt i64 %.044.i.i, %i.px
  br i1 %i.py, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pz = icmp eq i64 %.044.i.i, %i.px
  br i1 %i.pz, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.iq, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.qa = icmp ugt i64 %.2643, -9223372036854775808
  br i1 %i.qa, label %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qb = sub i64 0, %.2643
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !13
  %i.qc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.qb, ptr %i.qc, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qe = load i8, ptr %.1634, align 1, !tbaa !9
  %i.qf = zext i8 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i.i = icmp eq i8 %i.qh, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.qi = icmp ne i8 %i.ip, 49
  %i.qj = icmp sgt i64 %.2643, -1
  %or.cond5.i.i = select i1 %i.qi, i1 true, i1 %i.qj
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread741

bb.bt:                                            ; preds = %bb.bo
  %i.qk = icmp slt i64 %.2643, 0
  br i1 %i.qk, label %.thread741, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ql = sub nsw i64 0, %.2643
  %i.qm = select i1 %i.iq, i64 %i.ql, i64 %.2643
  br label %.thread741

.thread741:                                       ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1541 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink = phi i64 [ %i.qm, %bb.bu ], [ %.2643, %bb.bs ], [ %.2643, %bb.bt ]
  store i64 %.sink1541, ptr %i.y, align 8, !tbaa !13
  %i.qn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %i.qn, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qo = load i8, ptr %.1634, align 1, !tbaa !9
  %i.qp = zext i8 %i.qo to i64
  %i.qq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i = icmp eq i8 %i.qr, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746: ; preds = %bb.bn, %bb.bq
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !133, !range !37, !noundef !38
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %.preheader1593, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1593:                                   ; preds = %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, %.preheader1593
  %.122.i.i = phi ptr [ %i.qy, %.preheader1593 ], [ %i.is, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746 ] ; 3 uses
  %i.qv = load i8, ptr %.122.i.i, align 1, !tbaa !9 ; 2 uses
  %i.qw = add i8 %i.qv, -48
  %i.qx = icmp ult i8 %i.qw, 10
  %i.qy = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.qx, label %.preheader1593, label %bb.bv, !llvm.loop !134

bb.bv:                                            ; preds = %.preheader1593
  %i.qz = zext i8 %i.qv to i64
  %i.ra = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i253.i = icmp eq i8 %i.rb, 0
  br i1 %.not.i253.i, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.rc = ptrtoint ptr %.122.i.i to i64
  %i.rd = ptrtoint ptr %i.ig to i64
  %3 = sub i64 %i.rc, %i.rd                       ; 3 uses
  %4 = load ptr, ptr %i.g, align 8, !tbaa !117
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = ptrtoint ptr %i.n to i64
  %8 = ptrtoint ptr %6 to i64
  %i.re = sub i64 %7, %8
  %9 = or i64 %i.re, 6485183463413514240
  store i64 %9, ptr %i.y, align 8, !tbaa !13
  %i.rf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rg, ptr nonnull align 1 %i.ig, i64 %3, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %3
  %i.ri = trunc i64 %3 to i32
  store i32 %i.ri, ptr %i.n, align 1
  store i8 0, ptr %i.rh, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.au, %bb.bv, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread741, %bb.bs, %bb.br, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.ap
  %.0.i176.i1131.ph = phi i32 [ 9, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread741 ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson7haswell13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7haswell13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread746 ], [ 9, %bb.bv ], [ 9, %bb.au ], [ 9, %bb.ap ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ig) #43
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1474: ; preds = %bb.bw, %.thread741, %bb.br, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread
  %.sroa.0.361130.ph = phi ptr [ %i.qd, %bb.br ], [ %i.rf, %bb.bw ], [ %.sroa.0.38, %.thread741 ], [ %i.mo, %_ZN8simdjson7haswell13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ig) #43
  br label %.thread777

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc265.i, %bb.bm
  %.sroa.0.40 = phi ptr [ %i.mi, %.noexc265.i ], [ %.sroa.0.39, %bb.bm ]
  %.1.i264.i = phi i32 [ %i.mf, %.noexc265.i ], [ %.0.i263.i, %bb.bm ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i264.i, 0         ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1210 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i264.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ig) #43
  %.not.i = and i1 %.not60.i.i, %.not59.i.i
  br i1 %.not.i, label %.thread777, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %select.unfold1098, %select.unfold941, %bb.c
  %.sroa.119.2 = phi i32 [ %.sroa.119.3, %select.unfold941 ], [ %.sroa.119.1, %select.unfold1098 ], [ 0, %bb.c ]
  %.sroa.23.4 = phi ptr [ %i.yf, %select.unfold941 ], [ %i.axx, %select.unfold1098 ], [ %i.z, %bb.c ] ; 3 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold941 ], [ %.sroa.172.2, %select.unfold1098 ], [ %i.n, %bb.c ] ; 4 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold941 ], [ %.sroa.0.3, %select.unfold1098 ], [ %i.y, %bb.c ] ; 3 uses
  %i.rj = add i32 %.sroa.119.2, 1                 ; 3 uses
  %i.rk = zext i32 %i.rj to i64                   ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !135
  %.not161.i = icmp ugt i64 %i.rm, %i.rk
  br i1 %.not161.i, label %bb.by, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %bb.bx
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !136
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rk
  store i8 0, ptr %i.rp, align 1, !tbaa !124
  %i.rq = load ptr, ptr %i.g, align 8, !tbaa !117 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !118
  %i.rs = ptrtoint ptr %.sroa.0.4 to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = lshr exact i64 %i.ru, 3
  %i.rw = trunc i64 %i.rv to i32
  %i.rx = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %i.rk ; 2 uses
  store i32 %i.rw, ptr %i.ry, align 4, !tbaa !121
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4 ; 2 uses
  store i32 0, ptr %i.rz, align 4, !tbaa !123
  %i.sa = load i32, ptr %.sroa.23.4, align 4, !tbaa !10
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.sb ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.sd, 34
  br i1 %.not162.i, label %bb.bz, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bz:                                            ; preds = %bb.by
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.rz, align 4, !tbaa !123
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !20
  %i.sh = ptrtoint ptr %.sroa.172.4 to i64
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = or i64 %i.sj, 2449958197289549824
  store i64 %i.sk, ptr %i.se, align 8, !tbaa !13
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 5 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 1 ; 2 uses
  %i.so = load <4 x i64>, ptr %i.sn, align 1, !tbaa !9 ; 2 uses
  store <4 x i64> %i.so, ptr %i.sm, align 1, !tbaa !9
  %i.sp = bitcast <4 x i64> %i.so to <32 x i8>    ; 2 uses
  %i.sq = icmp eq <32 x i8> %i.sp, splat (i8 92)
  %i.sr = bitcast <32 x i1> %i.sq to i32          ; 2 uses
  %i.ss = icmp eq <32 x i8> %i.sp, splat (i8 34)
  %i.st = bitcast <32 x i1> %i.ss to i32          ; 3 uses
  %i.su = add i32 %i.sr, -1
  %i.sv = and i32 %i.su, %i.st
  %.not12191299 = icmp eq i32 %i.sv, 0
  br i1 %.not12191299, label %.lr.ph1302, label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i187.i

.lr.ph1302:                                       ; preds = %bb.bz, %bb.cp
  %i.sw = phi i32 [ %i.xq, %bb.cp ], [ %i.st, %bb.bz ]
  %i.sx = phi i32 [ %i.xo, %bb.cp ], [ %i.sr, %bb.bz ] ; 2 uses
  %.06161301 = phi ptr [ %.1617, %bb.cp ], [ %i.sm, %bb.bz ] ; 4 uses
  %.06221300 = phi ptr [ %.1623, %bb.cp ], [ %i.sn, %bb.bz ] ; 4 uses
  %i.sy = add i32 %i.sw, -1
  %i.sz = and i32 %i.sy, %i.sx
  %.not1220 = icmp eq i32 %i.sz, 0
  br i1 %.not1220, label %bb.co, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1302
  %i.ta = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.sx, i1 true) ; 2 uses
  %i.tb = zext nneg i32 %i.ta to i64              ; 4 uses
  %i.tc = add nuw nsw i32 %i.ta, 1
  %i.td = zext nneg i32 %i.tc to i64              ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.06221300, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !9   ; 2 uses
  %i.tg = icmp eq i8 %i.tf, 117
  br i1 %i.tg, label %bb.cb, label %bb.cm

bb.cb:                                            ; preds = %bb.ca
  %i.th = getelementptr inbounds nuw i8, ptr %.06221300, i64 %i.tb ; 11 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.06161301, i64 %i.tb ; 8 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 2
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !9
  %i.tl = zext i8 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 2520
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !10
  %i.tp = getelementptr inbounds nuw i8, ptr %i.th, i64 3
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !9
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1680
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !10
  %i.tv = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !9
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 840
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !10
  %i.ub = getelementptr inbounds nuw i8, ptr %i.th, i64 5
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !9
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !10
  %i.ug = or i32 %i.tu, %i.to
  %i.uh = or i32 %i.ug, %i.ua
  %i.ui = or i32 %i.uh, %i.uf                     ; 13 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.th, i64 6 ; 5 uses
  %i.uk = and i32 %i.ui, -1024
  switch i32 %i.uk, label %bb.ce [
    i32 55296, label %bb.cc
    i32 56320, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.ul = load i8, ptr %i.uj, align 1, !tbaa !9
  %i.um = zext i8 %i.ul to i32
  %i.un = shl nuw nsw i32 %i.um, 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.th, i64 7
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !9
  %i.uq = zext i8 %i.up to i32
  %i.ur = or disjoint i32 %i.un, %i.uq
  %.not.i18.i204.i = icmp eq i32 %i.ur, 23669
  br i1 %.not.i18.i204.i, label %bb.cd, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cd:                                            ; preds = %bb.cc
  %i.us = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !9
  %i.uu = zext i8 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 2520
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !10
  %i.uy = getelementptr inbounds nuw i8, ptr %i.th, i64 9
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !9
  %i.va = zext i8 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 1680
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !10
  %i.ve = getelementptr inbounds nuw i8, ptr %i.th, i64 10
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !9
  %i.vg = zext i8 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 840
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !10
  %i.vk = getelementptr inbounds nuw i8, ptr %i.th, i64 11
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !9
  %i.vm = zext i8 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !10
  %i.vp = or i32 %i.vd, %i.ux
  %i.vq = or i32 %i.vp, %i.vj
  %i.vr = or i32 %i.vq, %i.vo
  %i.vs = add i32 %i.vr, -56320                   ; 2 uses
  %.not35.i.i205.i = icmp ult i32 %i.vs, 1024
  br i1 %.not35.i.i205.i, label %.thread817, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread817:                                       ; preds = %bb.cd
  %i.vt = shl nuw nsw i32 %i.ui, 10
  %i.vu = add nsw i32 %i.vt, -56557568
  %i.vv = or disjoint i32 %i.vu, %i.vs
  %i.vw = getelementptr inbounds nuw i8, ptr %i.th, i64 12
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cb
  %i.vx = icmp ult i32 %i.ui, 128
  br i1 %i.vx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.vy = trunc nuw nsw i32 %i.ui to i8
  store i8 %i.vy, ptr %i.ti, align 1, !tbaa !9
  br label %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i199.i.thread826

bb.cg:                                            ; preds = %bb.ce
end_hunk_5
begin_hunk_6_@_ZN8simdjson7icelake25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a

bb.br:                                            ; preds = %._crit_edge908.i
  %i.un = add nsw i32 %.036.i127.lcssa.i, -1
  br label %bb.bv

bb.bs:                                            ; preds = %._crit_edge908.i
  %i.uo = add nsw i32 %.039.i126.lcssa.i, -1
  br label %bb.bv

bb.bt:                                            ; preds = %._crit_edge908.i
  %i.up = add nsw i32 %.036.i127.lcssa.i, 1
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge908.i
  %i.uq = add nsw i32 %.039.i126.lcssa.i, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %._crit_edge908.i
  %.443.i141.i = phi i32 [ %.039.i126.lcssa.i, %._crit_edge908.i ], [ %.039.i126.lcssa.i, %bb.br ], [ %i.uo, %bb.bs ], [ %.039.i126.lcssa.i, %bb.bt ], [ %i.uq, %bb.bu ]
  %.4.i142.i = phi i32 [ %.036.i127.lcssa.i, %._crit_edge908.i ], [ %i.un, %bb.br ], [ %.036.i127.lcssa.i, %bb.bs ], [ %i.up, %bb.bt ], [ %.036.i127.lcssa.i, %bb.bu ]
  %i.ur = icmp ne i32 %.443.i141.i, 0
  %i.us = icmp ne i32 %.4.i142.i, 0
  %or.cond4.i143.i = select i1 %i.ur, i1 true, i1 %i.us
  %spec.select868.i = select i1 %or.cond4.i143.i, i32 0, i32 %i.tm
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i: ; preds = %bb.bv, %bb.bp, %thread-pre-split853.i
  %.5.i140.i = phi i32 [ 0, %thread-pre-split853.i ], [ %spec.select.i, %bb.bp ], [ %spec.select868.i, %bb.bv ] ; 3 uses
  store i32 %.5.i140.i, ptr %i.rh, align 8, !tbaa !73
  %i.ut = zext i32 %.5.i140.i to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !10
  %i.uw = add i32 %.5.i140.i, 1
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ux
  store i32 %i.uv, ptr %i.uy, align 4, !tbaa !10
  %i.uz = load i32, ptr %i.rh, align 8, !tbaa !73
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.va
  store i32 %i.ri, ptr %i.vb, align 4, !tbaa !10
  %i.vc = load i32, ptr %i.rh, align 8, !tbaa !73
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.bw, !prof !107

bb.bw:                                            ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread847.i, %bb.aq
  %i.ve = or <8 x i64> %.sroa.71.0.pn.i, %.sroa.41175.0.lcssa978.i
  %i.vf = or <8 x i64> %i.ve, %.sroa.71.3.i
  %i.vg = or <8 x i64> %i.vf, %.sroa.71.4.pn.i
  %i.vh = bitcast <8 x i64> %i.vg to <64 x i8>
  %i.vi = icmp ne <64 x i8> %i.vh, zeroinitializer
  %i.vj = bitcast <64 x i1> %i.vi to i64
  %.not.i.i53.not.i = icmp eq i64 %i.vj, 0
  %i.vk = select i1 %.not.i.i53.not.i, i32 0, i32 11
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i: ; preds = %bb.bw, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i, %bb.bh, %bb.bg, %bb.as, %bb.ap, %bb.ao, %.thread.i, %.noexc.i, %._crit_edge.i
  %.0.i = phi i32 [ 13, %bb.bh ], [ 13, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i ], [ 1, %bb.as ], [ 15, %.noexc.i ], [ 14, %.thread.i ], [ 13, %bb.ao ], [ 24, %bb.ap ], [ %i.vk, %bb.bw ], [ 24, %._crit_edge.i ], [ 1, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i
  %.1.i = phi i32 [ %.0.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i ], [ 1, %bb.a ], [ 13, %bb.b ], [ 11, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ 11, %bb.h ], [ 11, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson7icelake14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.019.i.i = alloca <8 x i64>, align 64     ; 5 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0212.i.i = phi i64 [ %i.af, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.034.0211.i.i = phi <8 x i64> [ %.sroa.034.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.15.0210.i.i = phi <8 x i64> [ %.sroa.15.1.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.20.0209.i.i = phi <8 x i64> [ %.sroa.20.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0212.i.i
  %i.b = load <8 x i64>, ptr %i.a, align 1, !tbaa !9 ; 4 uses
  %i.c = bitcast <8 x i64> %i.b to <64 x i8>      ; 5 uses
  %i.d = icmp slt <64 x i8> %i.c, zeroinitializer
  %i.e = bitcast <64 x i1> %i.d to i64
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !109

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = shufflevector <8 x i64> %.sroa.15.0210.i.i, <8 x i64> %i.b, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.h = bitcast <8 x i64> %i.g to <64 x i8>      ; 3 uses
  %i.i = shufflevector <64 x i8> %i.h, <64 x i8> %i.c, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.j = bitcast <64 x i8> %i.i to <32 x i16>
  %i.k = lshr <32 x i16> %i.j, splat (i16 4)
  %i.l = bitcast <32 x i16> %i.k to <64 x i8>
  %i.m = and <64 x i8> %i.l, splat (i8 15)
  %i.n = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.m)
  %i.o = and <64 x i8> %i.i, splat (i8 15)
  %i.p = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.o)
  %i.q = bitcast <8 x i64> %i.b to <32 x i16>
  %i.r = lshr <32 x i16> %i.q, splat (i16 4)
  %i.s = bitcast <32 x i16> %i.r to <64 x i8>
  %i.t = and <64 x i8> %i.s, splat (i8 15)
  %i.u = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.t)
  %i.v = and <64 x i8> %i.p, %i.n
  %i.w = and <64 x i8> %i.v, %i.u
  %i.x = shufflevector <64 x i8> %i.h, <64 x i8> %i.c, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.y = shufflevector <64 x i8> %i.h, <64 x i8> %i.c, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.z = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.x, <64 x i8> splat (i8 96))
  %i.aa = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.y, <64 x i8> splat (i8 112))
  %i.ab = or <64 x i8> %i.z, %i.aa
  %.inner3 = and <64 x i8> %i.ab, splat (i8 -128)
  %.inner4 = xor <64 x i8> %.inner3, %i.w
  %i.ac = bitcast <64 x i8> %.inner4 to <8 x i64>
  %i.ad = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.c, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.ae = bitcast <64 x i8> %i.ad to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.20.2.i.i = phi <8 x i64> [ %i.ae, %bb.b ], [ %.sroa.20.0209.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.15.1.i.i = phi <8 x i64> [ %i.b, %bb.b ], [ %.sroa.15.0210.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.20.0.pn208.i.i = phi <8 x i64> [ %i.ac, %bb.b ], [ %.sroa.20.0209.i.i, %.lr.ph.i.i ]
  %.sroa.034.2.i.i = or <8 x i64> %.sroa.20.0.pn208.i.i, %.sroa.034.0211.i.i ; 2 uses
  %i.af = add nuw i64 %.sroa.11.0212.i.i, 64      ; 3 uses
  %i.ag = icmp ult i64 %i.af, %spec.select.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !150

._crit_edge.i.i:                                  ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, %bb.a
  %.sroa.20.0.lcssa.i.i = phi <8 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.20.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ]
  %.sroa.15.0.lcssa.i.i = phi <8 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.15.1.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ]
  %.sroa.034.0.lcssa.i.i = phi <8 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.034.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ]
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.af, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.019.i.i)
  %i.ah = icmp eq i64 %2, %.sroa.11.0.lcssa.i.i
  br i1 %i.ah, label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  store <8 x i64> splat (i64 2314885530818453536), ptr %.sroa.019.i.i, align 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i.i
  %i.aj = sub i64 %2, %.sroa.11.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %.sroa.019.i.i, ptr readonly align 1 %i.ai, i64 %i.aj, i1 false)
  %.sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.0..sroa.019.i.0..sroa.019.0..sroa.019.0..sroa.019.0..pre.i.i = load <8 x i64>, ptr %.sroa.019.i.i, align 64, !tbaa !9
  br label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i

_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %.sroa.019.0..sroa.019.0..sroa.019.0..i.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.0..sroa.019.i.0..sroa.019.0..sroa.019.0..sroa.019.0..pre.i.i, %bb.c ] ; 3 uses
  %i.ak = bitcast <8 x i64> %.sroa.019.0..sroa.019.0..sroa.019.0..i.i to <64 x i8> ; 5 uses
  %i.al = icmp slt <64 x i8> %i.ak, zeroinitializer
  %i.am = bitcast <64 x i1> %i.al to i64
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %i.ao = shufflevector <8 x i64> %.sroa.15.0.lcssa.i.i, <8 x i64> %.sroa.019.0..sroa.019.0..sroa.019.0..i.i, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ap = bitcast <8 x i64> %i.ao to <64 x i8>    ; 3 uses
  %i.aq = shufflevector <64 x i8> %i.ap, <64 x i8> %i.ak, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.ar = bitcast <64 x i8> %i.aq to <32 x i16>
  %i.as = lshr <32 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <32 x i16> %i.as to <64 x i8>
  %i.au = and <64 x i8> %i.at, splat (i8 15)
  %i.av = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.au)
  %i.aw = and <64 x i8> %i.aq, splat (i8 15)
  %i.ax = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.aw)
  %i.ay = bitcast <8 x i64> %.sroa.019.0..sroa.019.0..sroa.019.0..i.i to <32 x i16>
  %i.az = lshr <32 x i16> %i.ay, splat (i16 4)
  %i.ba = bitcast <32 x i16> %i.az to <64 x i8>
  %i.bb = and <64 x i8> %i.ba, splat (i8 15)
  %i.bc = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.bb)
  %i.bd = and <64 x i8> %i.ax, %i.av
  %i.be = and <64 x i8> %i.bd, %i.bc
  %i.bf = shufflevector <64 x i8> %i.ap, <64 x i8> %i.ak, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.bg = shufflevector <64 x i8> %i.ap, <64 x i8> %i.ak, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.bh = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bf, <64 x i8> splat (i8 96))
  %i.bi = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bg, <64 x i8> splat (i8 112))
  %i.bj = or <64 x i8> %i.bh, %i.bi
  %.inner7 = and <64 x i8> %i.bj, splat (i8 -128)
  %.inner8 = xor <64 x i8> %.inner7, %i.be
  %i.bk = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ak, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %.inner9 = or <64 x i8> %.inner8, %i.bk
  %i.bl = bitcast <64 x i8> %.inner9 to <8 x i64>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %.sroa.20.0.pn.i.i = phi <8 x i64> [ %i.bl, %bb.d ], [ %.sroa.20.0.lcssa.i.i, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i ]
  %i.bm = or <8 x i64> %.sroa.20.0.pn.i.i, %.sroa.034.0.lcssa.i.i
  %i.bn = bitcast <8 x i64> %i.bm to <64 x i8>
  %i.bo = icmp ne <64 x i8> %i.bn, zeroinitializer
  %i.bp = bitcast <64 x i1> %i.bo to i64
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.i)
  ret i1 %.not.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !151
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138  ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !155
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  switch i8 %i.z, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.o, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.ag, 125
  br i1 %.not162.i, label %.thread, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = add i32 %i.o, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.an, 93
  br i1 %.not.i, label %.thread867, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread:                                          ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 125
  br i1 %i.as, label %bb.e, label %bb.bw

bb.e:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8863084066665136131, ptr %i.u, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 9007199254740992001, ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread979

.thread867:                                       ; preds = %bb.d
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = icmp eq i8 %i.az, 93
  br i1 %i.ba, label %bb.f, label %.thread993

bb.f:                                             ; preds = %.thread867
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 6557241057451442179, ptr %i.u, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 6701356245527298049, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread979

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.u, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.bh = load <8 x i64>, ptr %i.bg, align 1, !tbaa !9 ; 2 uses
  store <8 x i64> %i.bh, ptr %i.bf, align 1, !tbaa !9
  %i.bi = bitcast <8 x i64> %i.bh to <64 x i8>    ; 2 uses
  %i.bj = icmp eq <64 x i8> %i.bi, splat (i8 92)
  %i.bk = bitcast <64 x i1> %i.bj to i64          ; 2 uses
  %i.bl = icmp eq <64 x i8> %i.bi, splat (i8 34)
  %i.bm = bitcast <64 x i1> %i.bl to i64          ; 3 uses
  %i.bn = add i64 %i.bk, -1
  %i.bo = and i64 %i.bn, %i.bm
  %.not14201496 = icmp eq i64 %i.bo, 0
  br i1 %.not14201496, label %.lr.ph1499, label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i

.lr.ph1499:                                       ; preds = %bb.g, %bb.w
  %i.bp = phi i64 [ %i.gh, %bb.w ], [ %i.bm, %bb.g ]
  %i.bq = phi i64 [ %i.gf, %bb.w ], [ %i.bk, %bb.g ] ; 2 uses
  %.07421498 = phi ptr [ %.1743, %bb.w ], [ %i.bf, %bb.g ] ; 4 uses
  %.07451497 = phi ptr [ %.1746, %bb.w ], [ %i.bg, %bb.g ] ; 4 uses
  %i.br = add i64 %i.bp, -1
  %i.bs = and i64 %i.br, %i.bq
  %.not1421 = icmp eq i64 %i.bs, 0
  br i1 %.not1421, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.lr.ph1499
  %i.bt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bq, i1 true) ; 5 uses
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.07451497, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9   ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 117
  br i1 %i.bx, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.07451497, i64 %i.bt ; 11 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.07421498, i64 %i.bt ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2520
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1680
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 840
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %i.cx = or i32 %i.cl, %i.cf
  %i.cy = or i32 %i.cx, %i.cr
  %i.cz = or i32 %i.cy, %i.cw                     ; 13 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.by, i64 6 ; 5 uses
  %i.db = and i32 %i.cz, -1024
  switch i32 %i.db, label %bb.l [
    i32 55296, label %bb.j
    i32 56320, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.de, %i.dh
  %.not.i14.i = icmp eq i32 %i.di, 23669
  br i1 %.not.i14.i, label %bb.k, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.k:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2520
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.by, i64 9
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1680
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !9
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 840
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !10
  %i.eg = or i32 %i.du, %i.do
  %i.eh = or i32 %i.eg, %i.ea
  %i.ei = or i32 %i.eh, %i.ef
  %i.ej = add i32 %i.ei, -56320                   ; 2 uses
  %.not35.i.i = icmp ult i32 %i.ej, 1024
  br i1 %.not35.i.i, label %.thread888, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread888:                                       ; preds = %bb.k
  %i.ek = shl nuw nsw i32 %i.cz, 10
  %i.el = add nsw i32 %i.ek, -56557568
  %i.em = or disjoint i32 %i.el, %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  %i.eo = icmp ult i32 %i.cz, 128
  br i1 %i.eo, label %bb.m, label %bb.n

end_hunk_6
begin_hunk_7_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ew = or disjoint i8 %i.ev, -128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread897

bb.p:                                             ; preds = %bb.n
  %i.ey = icmp ult i32 %i.cz, 65536
  br i1 %i.ey, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ez = lshr i32 %i.cz, 12
  %i.fa = trunc nuw nsw i32 %i.ez to i8
  %i.fb = or disjoint i8 %i.fa, -32
  store i8 %i.fb, ptr %i.bz, align 1, !tbaa !9
  %i.fc = lshr i32 %i.cz, 6
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = and i8 %i.fd, 63
  %i.ff = or disjoint i8 %i.fe, -128
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !9
  %i.fh = trunc i32 %i.cz to i8
  %i.fi = and i8 %i.fh, 63
  %i.fj = or disjoint i8 %i.fi, -128
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread897

bb.r:                                             ; preds = %bb.p
  %i.fl = icmp ult i32 %i.cz, 1114112
  br i1 %i.fl, label %bb.s, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.s:                                             ; preds = %.thread888, %bb.r
  %.6876882886892 = phi ptr [ %i.en, %.thread888 ], [ %i.da, %bb.r ]
  %.4.i.i877881887891 = phi i32 [ %i.em, %.thread888 ], [ %i.cz, %bb.r ]
  %i.fm = insertelement <4 x i32> poison, i32 %.4.i.i877881887891, i64 0
  %i.fn = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fo = lshr <4 x i32> %i.fn, <i32 18, i32 12, i32 6, i32 0>
  %i.fp = trunc <4 x i32> %i.fo to <4 x i8>
  %i.fq = and <4 x i8> %i.fp, <i8 -1, i8 63, i8 63, i8 63>
  %i.fr = or <4 x i8> %i.fq, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fr, ptr %i.bz, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread897

_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread897: ; preds = %bb.m, %bb.o, %bb.q, %bb.s
  %.6875.ph = phi ptr [ %.6876882886892, %bb.s ], [ %i.da, %bb.q ], [ %i.da, %bb.o ], [ %i.da, %bb.m ]
  %.0.i.i.ph = phi i64 [ 4, %bb.s ], [ 3, %bb.q ], [ 2, %bb.o ], [ 1, %bb.m ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.i.i.ph
  br label %bb.w

bb.t:                                             ; preds = %bb.h
  %i.ft = zext i8 %i.bw to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9   ; 2 uses
  %.not.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = getelementptr inbounds nuw i8, ptr %.07421498, i64 %i.bt
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %.07451497, i64 %i.bt
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.fz = getelementptr inbounds nuw i8, ptr %.07421498, i64 %i.bu
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph1499
  %i.ga = getelementptr inbounds nuw i8, ptr %.07451497, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %.07421498, i64 64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread897, %bb.v
  %.1746 = phi ptr [ %i.fy, %bb.u ], [ %i.ga, %bb.v ], [ %.6875.ph, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread897 ] ; 2 uses
  %.1743 = phi ptr [ %i.fz, %bb.u ], [ %i.gb, %bb.v ], [ %i.fs, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread897 ] ; 3 uses
  %i.gc = load <8 x i64>, ptr %.1746, align 1, !tbaa !9 ; 2 uses
  store <8 x i64> %i.gc, ptr %.1743, align 1, !tbaa !9
  %i.gd = bitcast <8 x i64> %i.gc to <64 x i8>    ; 2 uses
  %i.ge = icmp eq <64 x i8> %i.gd, splat (i8 92)
  %i.gf = bitcast <64 x i1> %i.ge to i64          ; 2 uses
  %i.gg = icmp eq <64 x i8> %i.gd, splat (i8 34)
  %i.gh = bitcast <64 x i1> %i.gg to i64          ; 3 uses
  %i.gi = add i64 %i.gf, -1
  %i.gj = and i64 %i.gi, %i.gh
  %.not1420 = icmp eq i64 %i.gj, 0
  br i1 %.not1420, label %.lr.ph1499, label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i: ; preds = %bb.w, %bb.g
  %.0742.lcssa = phi ptr [ %i.bf, %bb.g ], [ %.1743, %bb.w ]
  %.lcssa1472 = phi i64 [ %i.bm, %bb.g ], [ %i.gh, %bb.w ]
  %i.gk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa1472, i1 true)
  %i.gl = getelementptr inbounds nuw i8, ptr %.0742.lcssa, i64 %i.gk ; 2 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.bf to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  store i32 %i.gp, ptr %i.m, align 1
  store i8 0, ptr %i.gl, align 1, !tbaa !9
  br label %.thread979

bb.x:                                             ; preds = %bb.b
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !147
  %i.gs = sub i64 %i.gr, %i.x                     ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 4
  br i1 %i.gt, label %.noexc, label %bb.y

.noexc:                                           ; preds = %bb.x
  %.0.copyload.i = load i32, ptr %i.y, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gw = zext i8 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gz = zext nneg i8 %i.gy to i32
  %i.ha = or i32 %.0.copyload.i, %i.gz
  %i.hb = icmp eq i32 %i.ha, 1702195828
  br i1 %i.hb, label %bb.z, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.hc = icmp eq i64 %i.gs, 4
  br i1 %i.hc, label %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit: ; preds = %bb.y
  %.0.copyload.i69 = load i32, ptr %i.y, align 1
  %.not.i66 = icmp eq i32 %.0.copyload.i69, 1702195828
  br i1 %.not.i66, label %bb.z, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %.noexc, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit
  store i64 8358680908399640576, ptr %i.u, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread979

bb.aa:                                            ; preds = %bb.b
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !147
  %i.hg = sub i64 %i.hf, %i.x                     ; 2 uses
  %i.hh = icmp ugt i64 %i.hg, 5
  br i1 %i.hh, label %.noexc72, label %bb.ab

.noexc72:                                         ; preds = %bb.aa
  %i.hi = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i73 = load i32, ptr %i.hi, align 1
  %i.hj = xor i32 %.0.copyload.i.i73, 1702063201
  %i.hk = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !9
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hp = zext nneg i8 %i.ho to i32
  %i.hq = or i32 %i.hj, %i.hp
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.ac, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hs = icmp eq i64 %i.hg, 5
  br i1 %i.hs, label %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit: ; preds = %bb.ab
  %i.ht = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i = load i32, ptr %i.ht, align 1
  %.not.i71 = icmp eq i32 %.0.copyload.i.i, 1702063201
  br i1 %.not.i71, label %bb.ac, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %.noexc72, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit
  store i64 7349874591868649472, ptr %i.u, align 8, !tbaa !13
  %i.hu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread979

bb.ad:                                            ; preds = %bb.b
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !147
  %i.hx = sub i64 %i.hw, %i.x                     ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, 4
  br i1 %i.hy, label %.noexc77, label %bb.ae

.noexc77:                                         ; preds = %bb.ad
  %.0.copyload.i.i78 = load i32, ptr %i.y, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !9
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !124, !range !37, !noundef !38
  %i.ie = zext nneg i8 %i.id to i32
  %i.if = or i32 %.0.copyload.i.i78, %i.ie
  %i.ig = icmp eq i32 %i.if, 1819047278
  br i1 %i.ig, label %bb.af, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ih = icmp eq i64 %i.hx, 4
  br i1 %i.ih, label %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit: ; preds = %bb.ae
  %.0.copyload.i.i75 = load i32, ptr %i.y, align 1
  %.not.i76 = icmp eq i32 %.0.copyload.i.i75, 1819047278
  br i1 %.not.i76, label %bb.af, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %.noexc77, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit
  store i64 7926335344172072960, ptr %i.u, align 8, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread979

bb.ag:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !147
  %i.il = add i64 %i.ik, 64
  %i.im = sub i64 %i.il, %i.x
  %i.in = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.im, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %2 = load i64, ptr %i.ij, align 8, !tbaa !147
  %3 = load i32, ptr %i.k, align 4, !tbaa !10
  %4 = zext i32 %3 to i64
  %i.ip = sub i64 %2, %4                          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.in, ptr nonnull align 1 %i.y, i64 %i.ip, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ip
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.iq, i8 32, i64 64, i1 false)
  %i.ir = load i8, ptr %i.in, align 1, !tbaa !9   ; 2 uses
  %i.is = icmp eq i8 %i.ir, 45                    ; 10 uses
  %i.it = zext i1 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.it ; 6 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !9   ; 4 uses
  %i.iw = add i8 %i.iv, -48                       ; 2 uses
  %i.ix = icmp ult i8 %i.iw, 10
  br i1 %i.ix, label %.lr.ph, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.iy = phi i8 [ %i.je, %.lr.ph ], [ %i.iw, %bb.ah ]
  %.08351478 = phi ptr [ %i.jc, %.lr.ph ], [ %i.iu, %bb.ah ]
  %.08431477 = phi i64 [ %i.jb, %.lr.ph ], [ 0, %bb.ah ]
  %i.iz = mul i64 %.08431477, 10
  %i.ja = zext nneg i8 %i.iy to i64
  %i.jb = add i64 %i.iz, %i.ja                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.08351478, i64 1 ; 3 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !9   ; 2 uses
  %i.je = add i8 %i.jd, -48                       ; 2 uses
  %i.jf = icmp ult i8 %i.je, 10
  br i1 %i.jf, label %.lr.ph, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, !llvm.loop !156

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit: ; preds = %.lr.ph, %bb.ah
  %.0843.lcssa = phi i64 [ 0, %bb.ah ], [ %i.jb, %.lr.ph ] ; 3 uses
  %.0835.lcssa = phi ptr [ %i.iu, %bb.ah ], [ %i.jc, %.lr.ph ] ; 6 uses
  %.lcssa1476 = phi i8 [ %i.iv, %bb.ah ], [ %i.jd, %.lr.ph ] ; 2 uses
  %i.jg = ptrtoint ptr %.0835.lcssa to i64
  %i.jh = ptrtoint ptr %i.iu to i64               ; 3 uses
  %i.ji = sub i64 %i.jg, %i.jh                    ; 3 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.jk = icmp eq i8 %i.iv, 48
  %i.jl = icmp ne i64 %i.ji, 1
  %or.cond.i = and i1 %i.jl, %i.jk
  br i1 %or.cond.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jm = icmp eq i8 %.lcssa1476, 46              ; 2 uses
  br i1 %i.jm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.ptr1418 = getelementptr inbounds nuw i8, ptr %.0835.lcssa, i64 1 ; 2 uses
  %.0.copyload.i96 = load i64, ptr %.ptr1418, align 1 ; 3 uses
  %i.jn = and i64 %.0.copyload.i96, -1085102592571150096
  %i.jo = add i64 %.0.copyload.i96, 434041037028460038
  %i.jp = lshr i64 %i.jo, 4
  %i.jq = and i64 %i.jp, 1085102592571150095
  %i.jr = or disjoint i64 %i.jq, %i.jn
  %i.js = icmp eq i64 %i.jr, 3689348814741910323
  %i.jt = trunc i64 %.0.copyload.i96 to i8
  br i1 %i.js, label %.noexc89, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

.noexc89:                                         ; preds = %bb.ak
  %i.ju = mul i64 %.0843.lcssa, 100000000
  %i.jv = load <16 x i8>, ptr %.ptr1418, align 1  ; 2 uses
  %i.jw = add <16 x i8> %i.jv, <i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.jx = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.jw, <16 x i8> <i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.jy = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jx, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.jz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jy, <4 x i32> poison)
  %i.ka = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jz, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.kb = extractelement <4 x i32> %i.ka, i64 0
  %i.kc = zext i32 %i.kb to i64
  %i.kd = add i64 %i.ju, %i.kc
  %i.ke = extractelement <16 x i8> %i.jv, i64 8
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i: ; preds = %.noexc89, %bb.ak
  %i.kf = phi i8 [ %i.ke, %.noexc89 ], [ %i.jt, %bb.ak ]
  %.3846 = phi i64 [ %i.kd, %.noexc89 ], [ %.0843.lcssa, %bb.ak ] ; 2 uses
  %.3838.idx = phi i64 [ 9, %.noexc89 ], [ 1, %bb.ak ]
  %i.kg = add i8 %i.kf, -48                       ; 2 uses
  %i.kh = icmp ult i8 %i.kg, 10                   ; 2 uses
  %i.ki = mul i64 %.3846, 10
  %i.kj = zext nneg i8 %i.kg to i64
  %i.kk = add i64 %i.ki, %i.kj
  %.4847926 = select i1 %i.kh, i64 %i.kk, i64 %.3846 ; 2 uses
  %.4839.idx = zext i1 %i.kh to i64
  %.3838.add = add nuw nsw i64 %.3838.idx, %.4839.idx ; 4 uses
  %.5840.ptr1482 = getelementptr inbounds nuw i8, ptr %.0835.lcssa, i64 %.3838.add
  %i.kl = load i8, ptr %.5840.ptr1482, align 1, !tbaa !9 ; 2 uses
  %i.km = add i8 %i.kl, -48                       ; 2 uses
  %i.kn = icmp ult i8 %i.km, 10
  br i1 %i.kn, label %.lr.ph1485, label %.noexc85

.lr.ph1485:                                       ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i, %.lr.ph1485
  %i.ko = phi i8 [ %i.kt, %.lr.ph1485 ], [ %i.km, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.5840.idx1484 = phi i64 [ %.5840.add, %.lr.ph1485 ], [ %.3838.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.58481483 = phi i64 [ %i.kr, %.lr.ph1485 ], [ %.4847926, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %i.kp = mul i64 %.58481483, 10
  %i.kq = zext nneg i8 %i.ko to i64
  %i.kr = add i64 %i.kp, %i.kq                    ; 2 uses
  %.5840.add = add nuw nsw i64 %.5840.idx1484, 1  ; 3 uses
  %.5840.ptr = getelementptr inbounds nuw i8, ptr %.0835.lcssa, i64 %.5840.add
  %i.ks = load i8, ptr %.5840.ptr, align 1, !tbaa !9 ; 2 uses
  %i.kt = add i8 %i.ks, -48                       ; 2 uses
  %i.ku = icmp ult i8 %i.kt, 10
  br i1 %i.ku, label %.lr.ph1485, label %.noexc85.thread, !llvm.loop !157

.noexc85:                                         ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3838.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc85.thread

.noexc85.thread:                                  ; preds = %.lr.ph1485, %.noexc85
  %.5848.lcssa1667 = phi i64 [ %.4847926, %.noexc85 ], [ %i.kr, %.lr.ph1485 ]
  %.5840.idx.lcssa14811666 = phi i64 [ %.3838.add, %.noexc85 ], [ %.5840.add, %.lr.ph1485 ] ; 2 uses
  %i.kv = phi i8 [ %i.kl, %.noexc85 ], [ %i.ks, %.lr.ph1485 ]
  %.5840.ptr.le = getelementptr inbounds nuw i8, ptr %.0835.lcssa, i64 %.5840.idx.lcssa14811666 ; 2 uses
  %i.kw = ptrtoint ptr %.5840.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5840.idx.lcssa14811666
  %i.kx = sub i64 %i.kw, %i.jh
  %sext.i = shl i64 %i.kx, 32
  %i.ky = ashr exact i64 %sext.i, 32
  br label %bb.al

bb.al:                                            ; preds = %.noexc85.thread, %bb.aj
  %i.kz = phi i8 [ %i.kv, %.noexc85.thread ], [ %.lcssa1476, %bb.aj ] ; 2 uses
  %.0850 = phi i64 [ %gepdiff, %.noexc85.thread ], [ 0, %bb.aj ] ; 2 uses
  %.1844 = phi i64 [ %.5848.lcssa1667, %.noexc85.thread ], [ %.0843.lcssa, %bb.aj ] ; 14 uses
  %.1836 = phi ptr [ %.5840.ptr.le, %.noexc85.thread ], [ %.0835.lcssa, %bb.aj ] ; 4 uses
  %.044.i = phi i64 [ %i.ky, %.noexc85.thread ], [ %i.ji, %bb.aj ] ; 4 uses
  switch i8 %i.kz, label %bb.ar [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.la = getelementptr inbounds nuw i8, ptr %.1836, i64 1 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !9   ; 3 uses
  %i.lc = icmp eq i8 %i.lb, 45
  switch i8 %i.lb, label %bb.ao [
    i8 45, label %bb.an
    i8 43, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.ld = getelementptr inbounds nuw i8, ptr %.1836, i64 2 ; 2 uses
  %.pre1601 = load i8, ptr %i.ld, align 1, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.le = phi i8 [ %i.lb, %bb.am ], [ %.pre1601, %bb.an ]
  %.6841 = phi ptr [ %i.la, %bb.am ], [ %i.ld, %bb.an ] ; 3 uses
  %i.lf = add i8 %i.le, -48                       ; 2 uses
  %i.lg = icmp ult i8 %i.lf, 10
  br i1 %i.lg, label %.lr.ph1492, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1492:                                       ; preds = %bb.ao, %.lr.ph1492
  %i.lh = phi i8 [ %i.lm, %.lr.ph1492 ], [ %i.lf, %bb.ao ]
  %.08321491 = phi i64 [ %i.lk, %.lr.ph1492 ], [ 0, %bb.ao ]
  %.7842.idx1490 = phi i64 [ %.7842.add, %.lr.ph1492 ], [ 0, %bb.ao ] ; 2 uses
  %i.li = mul nsw i64 %.08321491, 10
  %i.lj = zext nneg i8 %i.lh to i64
  %i.lk = add nsw i64 %i.li, %i.lj                ; 3 uses
  %.7842.add = add nuw nsw i64 %.7842.idx1490, 1  ; 3 uses
  %.7842.ptr = getelementptr inbounds nuw i8, ptr %.6841, i64 %.7842.add
  %i.ll = load i8, ptr %.7842.ptr, align 1, !tbaa !9 ; 2 uses
  %i.lm = add i8 %i.ll, -48                       ; 2 uses
  %i.ln = icmp ult i8 %i.lm, 10
  br i1 %i.ln, label %.lr.ph1492, label %bb.ap, !llvm.loop !158

bb.ap:                                            ; preds = %.lr.ph1492
  %.7842.ptr.le = getelementptr inbounds nuw i8, ptr %.6841, i64 %.7842.add
  %i.lo = icmp samesign ugt i64 %.7842.idx1490, 17
  br i1 %i.lo, label %.preheader1456, label %.thread936, !prof !107

.preheader1456:                                   ; preds = %bb.ap, %.preheader1456
  %.0.i90 = phi ptr [ %i.lr, %.preheader1456 ], [ %.6841, %bb.ap ] ; 3 uses
  %i.lp = load i8, ptr %.0.i90, align 1, !tbaa !9
  %i.lq = icmp eq i8 %i.lp, 48
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i90, i64 1
  br i1 %i.lq, label %.preheader1456, label %bb.aq, !llvm.loop !159

bb.aq:                                            ; preds = %.preheader1456
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.i90, i64 18
  %i.lt = icmp ugt ptr %.7842.ptr.le, %i.ls
  %spec.select = select i1 %i.lt, i64 999999999999999999, i64 %i.lk
  br label %.thread936

.thread936:                                       ; preds = %bb.aq, %bb.ap
  %.1833 = phi i64 [ %i.lk, %bb.ap ], [ %spec.select, %bb.aq ] ; 2 uses
  %i.lu = sub nsw i64 0, %.1833
  %i.lv = select i1 %i.lc, i64 %i.lu, i64 %.1833
  %i.lw = add nsw i64 %i.lv, %.0850
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  br i1 %i.jm, label %bb.as, label %bb.bm

bb.as:                                            ; preds = %.thread936, %bb.ar
  %i.lx = phi i8 [ %i.ll, %.thread936 ], [ %i.kz, %bb.ar ]
  %.1851940 = phi i64 [ %i.lw, %.thread936 ], [ %.0850, %bb.ar ] ; 9 uses
  %i.ly = zext i8 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !124, !range !37, !noundef !38
  %.not59.i = icmp eq i8 %i.ma, 0                 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.np = zext i64 %i.ni to i128                  ; 2 uses
  %i.nq = zext i64 %i.no to i128
  %i.nr = mul nuw i128 %i.nq, %i.np               ; 2 uses
  %i.ns = trunc i128 %i.nr to i64                 ; 2 uses
  %i.nt = lshr i128 %i.nr, 64
  %i.nu = trunc nuw i128 %i.nt to i64             ; 3 uses
  %i.nv = and i64 %i.nu, 511
  %i.nw = icmp eq i64 %i.nv, 511
  br i1 %i.nw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.nx = getelementptr i8, ptr %i.nm, i64 5480
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !13
  %i.nz = zext i64 %i.ny to i128
  %i.oa = mul nuw i128 %i.nz, %i.np
  %i.ob = lshr i128 %i.oa, 64
  %i.oc = trunc nuw i128 %i.ob to i64             ; 2 uses
  %i.od = add i64 %i.oc, %i.ns                    ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  %i.of = zext i1 %i.oe to i64
  %spec.select.i101 = add nuw i64 %i.of, %i.nu
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.1.i = phi i64 [ %spec.select.i101, %bb.bc ], [ %i.nu, %bb.bb ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.od, %bb.bc ], [ %i.ns, %bb.bb ]
  %i.og = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.oh = add nuw nsw i64 %i.og, 9                ; 2 uses
  %i.oi = lshr i64 %.sroa.7.1.i, %i.oh            ; 6 uses
  %reass.sub = sub nsw i64 %i.ng, %i.nh
  %.neg = add nsw i64 %reass.sub, %i.og           ; 4 uses
  %i.oj = add nsw i64 %.neg, 1086
  %i.ok = icmp slt i64 %.neg, -1085
  br i1 %i.ok, label %bb.be, label %bb.bh, !prof !107

bb.be:                                            ; preds = %bb.bd
  %i.ol = icmp samesign ult i64 %.neg, -1148
  br i1 %i.ol, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.om = select i1 %i.is, double -0.000000e+00, double 0.000000e+00
  br label %.noexc95.thread

bb.bg:                                            ; preds = %bb.be
  %i.on = sub nuw nsw i64 -1085, %.neg
  %i.oo = lshr i64 %i.oi, %i.on                   ; 2 uses
  %i.op = and i64 %i.oo, 1
  %i.oq = add nuw nsw i64 %i.op, %i.oo            ; 2 uses
  %i.or = lshr i64 %i.oq, 1
  %i.os = icmp samesign ugt i64 %i.oq, 9007199254740991
  %i.ot = and i64 %i.or, 13510798882111487
  %i.ou = select i1 %i.os, i64 4503599627370496, i64 0
  %i.ov = select i1 %i.is, i64 -9223372036854775808, i64 0
  %i.ow = or disjoint i64 %i.ou, %i.ov
  %i.ox = or disjoint i64 %i.ow, %i.ot
  %i.oy = bitcast i64 %i.ox to double
  br label %.noexc95.thread

bb.bh:                                            ; preds = %bb.bd
  %i.oz = icmp ult i64 %.sroa.037.0.i, 2
  %i.pa = add nsw i64 %.1851940, 4
  %i.pb = icmp ult i64 %i.pa, 28
  %or.cond7.i = and i1 %i.pb, %i.oz
  %i.pc = and i64 %i.oi, 3
  %i.pd = icmp eq i64 %i.pc, 1
  %i.pe = select i1 %or.cond7.i, i1 %i.pd, i1 false
  br i1 %i.pe, label %bb.bi, label %bb.bj, !prof !107

bb.bi:                                            ; preds = %bb.bh
  %i.pf = shl i64 %i.oi, %i.oh
  %i.pg = icmp eq i64 %i.pf, %.sroa.7.1.i
  %i.ph = and i64 %i.oi, 72057594037927932
  %spec.select90.i = select i1 %i.pg, i64 %i.ph, i64 %i.oi
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.080.i = phi i64 [ %i.oi, %bb.bh ], [ %spec.select90.i, %bb.bi ] ; 2 uses
  %i.pi = and i64 %.080.i, 1
  %i.pj = add nuw nsw i64 %i.pi, %.080.i          ; 2 uses
  %i.pk = icmp samesign ugt i64 %i.pj, 18014398509481983 ; 2 uses
  %i.pl = zext i1 %i.pk to i64
  %spec.select92.i = add nuw nsw i64 %i.oj, %i.pl ; 2 uses
  %i.pm = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.pm, label %.noexc95, label %bb.bk, !prof !107

bb.bk:                                            ; preds = %bb.bj
  %i.pn = lshr i64 %i.pj, 1
  %i.po = and i64 %i.pn, 13510798882111487
  %i.pp = select i1 %i.pk, i64 0, i64 %i.po
  %i.pq = shl nuw nsw i64 %spec.select92.i, 52
  %i.pr = select i1 %i.is, i64 -9223372036854775808, i64 0
  %i.ps = or disjoint i64 %i.pp, %i.pr
  %i.pt = or i64 %i.ps, %i.pq
  %i.pu = bitcast i64 %i.pt to double
  br label %.noexc95.thread

.noexc95:                                         ; preds = %bb.bj
  %i.pv = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.in, ptr noundef %i.f)
  br i1 %i.pv, label %.noexc95..noexc95.thread_crit_edge, label %bb.bl

.noexc95..noexc95.thread_crit_edge:               ; preds = %.noexc95
  %.pre1603 = load double, ptr %i.f, align 8, !tbaa !130
  br label %.noexc95.thread

.noexc95.thread:                                  ; preds = %bb.ay, %.noexc95..noexc95.thread_crit_edge, %bb.bk, %bb.bg, %bb.bf, %bb.ba
  %i.pw = phi double [ %.pre1603, %.noexc95..noexc95.thread_crit_edge ], [ %i.pu, %bb.bk ], [ %i.oy, %bb.bg ], [ %i.om, %bb.bf ], [ %spec.select1741, %bb.ay ], [ %i.ne, %bb.ba ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !13
  %i.px = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.pw, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc95.thread, %.noexc95
  %.sroa.0.22 = phi ptr [ %i.py, %.noexc95.thread ], [ %i.u, %.noexc95 ]
  %.0.i92 = phi i32 [ 0, %.noexc95.thread ], [ 9, %.noexc95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bm:                                            ; preds = %bb.ar
  %i.pz = select i1 %i.is, i64 19, i64 20         ; 2 uses
  %i.qa = icmp ugt i64 %.044.i, %i.pz
  br i1 %i.qa, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qb = icmp eq i64 %.044.i, %i.pz
  br i1 %i.qb, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.is, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.qc = icmp ugt i64 %.1844, -9223372036854775808
  br i1 %i.qc, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qd = sub i64 0, %.1844
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !13
  %i.qe = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.qd, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qg = load i8, ptr %.1836, align 1, !tbaa !9
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i = icmp eq i8 %i.qj, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.br:                                            ; preds = %bb.bo
  %i.qk = icmp ne i8 %i.ir, 49
  %i.ql = icmp sgt i64 %.1844, -1
  %or.cond5.i = select i1 %i.qk, i1 true, i1 %i.ql
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread943

bb.bs:                                            ; preds = %bb.bn
  %i.qm = icmp slt i64 %.1844, 0
  br i1 %i.qm, label %.thread943, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qn = sub nsw i64 0, %.1844
  %i.qo = select i1 %i.is, i64 %i.qn, i64 %.1844
  br label %.thread943

.thread943:                                       ; preds = %bb.bs, %bb.br, %bb.bt
  %.sink1743 = phi i64 [ 7782220156096217088, %bb.bt ], [ 8430738502437568512, %bb.br ], [ 8430738502437568512, %bb.bs ]
  %.sink = phi i64 [ %i.qo, %bb.bt ], [ %.1844, %bb.br ], [ %.1844, %bb.bs ]
  store i64 %.sink1743, ptr %i.u, align 8, !tbaa !13
  %i.qp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink, ptr %i.qp, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qq = load i8, ptr %.1836, align 1, !tbaa !9
  %i.qr = zext i8 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i = icmp eq i8 %i.qt, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948: ; preds = %bb.bm, %bb.bp
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qv = load i8, ptr %i.qu, align 8, !tbaa !133, !range !37, !noundef !38
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %.preheader1794, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1794:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, %.preheader1794
  %.122.i = phi ptr [ %i.ra, %.preheader1794 ], [ %i.iu, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948 ] ; 3 uses
  %i.qx = load i8, ptr %.122.i, align 1, !tbaa !9 ; 2 uses
  %i.qy = add i8 %i.qx, -48
  %i.qz = icmp ult i8 %i.qy, 10
  %i.ra = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.qz, label %.preheader1794, label %bb.bu, !llvm.loop !161

bb.bu:                                            ; preds = %.preheader1794
  %i.rb = zext i8 %i.qx to i64
  %i.rc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i80 = icmp eq i8 %i.rd, 0
  br i1 %.not.i80, label %bb.bv, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bv:                                            ; preds = %bb.bu
  %i.re = ptrtoint ptr %.122.i to i64
  %i.rf = ptrtoint ptr %i.in to i64
  %5 = sub i64 %i.re, %i.rf                       ; 3 uses
  %6 = load ptr, ptr %i.g, align 8, !tbaa !151
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = ptrtoint ptr %i.m to i64
  %10 = ptrtoint ptr %8 to i64
  %i.rg = sub i64 %9, %10
  %11 = or i64 %i.rg, 6485183463413514240
  store i64 %11, ptr %i.u, align 8, !tbaa !13
  %i.rh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ri, ptr nonnull align 1 %i.in, i64 %5, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %5
  %i.rk = trunc i64 %5 to i32
  store i32 %i.rk, ptr %i.m, align 1
  store i8 0, ptr %i.rj, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.at, %bb.bu, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948, %.noexc85, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread943, %bb.br, %bb.bq, %.noexc87.thread, %bb.ao
  %.0.i51333.ph = phi i32 [ 9, %.noexc87.thread ], [ 9, %bb.bq ], [ 9, %bb.br ], [ 9, %.thread943 ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc85 ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread948 ], [ 9, %bb.bu ], [ 9, %bb.at ], [ 9, %bb.ao ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.in) #43
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677: ; preds = %bb.bv, %.thread943, %bb.bq, %.noexc87.thread
  %.sroa.0.171332.ph = phi ptr [ %i.qf, %bb.bq ], [ %i.rh, %bb.bv ], [ %.sroa.0.20, %.thread943 ], [ %i.mq, %.noexc87.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.in) #43
  br label %.thread979

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc94, %bb.bl
  %.sroa.0.23 = phi ptr [ %i.mk, %.noexc94 ], [ %.sroa.0.22, %bb.bl ]
  %.1.i93 = phi i32 [ %i.mh, %.noexc94 ], [ %.0.i92, %bb.bl ] ; 2 uses
  %.not60.i = icmp eq i32 %.1.i93, 0              ; 2 uses
  %..i = select i1 %.not59.i, i32 0, i32 9
  %spec.select1412 = select i1 %.not60.i, i32 %..i, i32 %.1.i93
  tail call void @_ZdaPv(ptr noundef nonnull %i.in) #43
  %.not163.i = and i1 %.not60.i, %.not59.i
  br i1 %.not163.i, label %.thread979, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bw:                                            ; preds = %select.unfold1300, %select.unfold1143, %.thread
  %.sroa.123.2 = phi i32 [ %.sroa.123.3, %select.unfold1143 ], [ %.sroa.123.1, %select.unfold1300 ], [ 0, %.thread ]
  %.sroa.25.4 = phi ptr [ %i.ye, %select.unfold1143 ], [ %i.axr, %select.unfold1300 ], [ %i.v, %.thread ] ; 3 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold1143 ], [ %.sroa.172.2, %select.unfold1300 ], [ %i.m, %.thread ] ; 4 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold1143 ], [ %.sroa.0.3, %select.unfold1300 ], [ %i.u, %.thread ] ; 3 uses
  %i.rl = add i32 %.sroa.123.2, 1                 ; 3 uses
  %i.rm = zext i32 %i.rl to i64                   ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !135
  %.not164.i = icmp ugt i64 %i.ro, %i.rm
  br i1 %.not164.i, label %bb.bx, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %bb.bw
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !136
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rm
  store i8 0, ptr %i.rr, align 1, !tbaa !124
  %i.rs = load ptr, ptr %i.g, align 8, !tbaa !151 ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !118
  %i.ru = ptrtoint ptr %.sroa.0.4 to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = lshr exact i64 %i.rw, 3
  %i.ry = trunc i64 %i.rx to i32
  %i.rz = load ptr, ptr %i.r, align 8, !tbaa !152
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.rm ; 2 uses
  store i32 %i.ry, ptr %i.sa, align 4, !tbaa !153
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4 ; 2 uses
  store i32 0, ptr %i.sb, align 4, !tbaa !155
  %i.sc = load i32, ptr %.sroa.25.4, align 4, !tbaa !10
  %i.sd = zext i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.sd ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !9
  %.not165.i = icmp eq i8 %i.sf, 34
  br i1 %.not165.i, label %bb.by, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %bb.bx
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.sb, align 4, !tbaa !155
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !20
  %i.sj = ptrtoint ptr %.sroa.172.4 to i64
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = or i64 %i.sl, 2449958197289549824
  store i64 %i.sm, ptr %i.sg, align 8, !tbaa !13
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 5 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.se, i64 1 ; 2 uses
  %i.sq = load <8 x i64>, ptr %i.sp, align 1, !tbaa !9 ; 2 uses
  store <8 x i64> %i.sq, ptr %i.so, align 1, !tbaa !9
  %i.sr = bitcast <8 x i64> %i.sq to <64 x i8>    ; 2 uses
  %i.ss = icmp eq <64 x i8> %i.sr, splat (i8 92)
  %i.st = bitcast <64 x i1> %i.ss to i64          ; 2 uses
  %i.su = icmp eq <64 x i8> %i.sr, splat (i8 34)
  %i.sv = bitcast <64 x i1> %i.su to i64          ; 3 uses
  %i.sw = add i64 %i.st, -1
  %i.sx = and i64 %i.sw, %i.sv
  %.not14221502 = icmp eq i64 %i.sx, 0
  br i1 %.not14221502, label %.lr.ph1505, label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i43

.lr.ph1505:                                       ; preds = %bb.by, %bb.co
  %i.sy = phi i64 [ %i.xq, %bb.co ], [ %i.sv, %bb.by ]
  %i.sz = phi i64 [ %i.xo, %bb.co ], [ %i.st, %bb.by ] ; 2 uses
  %.08531504 = phi ptr [ %.1854, %bb.co ], [ %i.sp, %bb.by ] ; 4 uses
  %.08611503 = phi ptr [ %.1862, %bb.co ], [ %i.so, %bb.by ] ; 4 uses
  %i.ta = add i64 %i.sy, -1
  %i.tb = and i64 %i.ta, %i.sz
  %.not1423 = icmp eq i64 %i.tb, 0
  br i1 %.not1423, label %bb.cn, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1505
  %i.tc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sz, i1 true) ; 5 uses
  %i.td = add nuw nsw i64 %i.tc, 1                ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.08531504, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !9   ; 2 uses
  %i.tg = icmp eq i8 %i.tf, 117
  br i1 %i.tg, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %bb.bz
  %i.th = getelementptr inbounds nuw i8, ptr %.08531504, i64 %i.tc ; 11 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.08611503, i64 %i.tc ; 8 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 2
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !9
  %i.tl = zext i8 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 2520
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !10
  %i.tp = getelementptr inbounds nuw i8, ptr %i.th, i64 3
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !9
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1680
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !10
  %i.tv = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !9
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 840
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !10
  %i.ub = getelementptr inbounds nuw i8, ptr %i.th, i64 5
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !9
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !10
  %i.ug = or i32 %i.tu, %i.to
  %i.uh = or i32 %i.ug, %i.ua
  %i.ui = or i32 %i.uh, %i.uf                     ; 13 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.th, i64 6 ; 5 uses
  %i.uk = and i32 %i.ui, -1024
  switch i32 %i.uk, label %bb.cd [
    i32 55296, label %bb.cb
    i32 56320, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ul = load i8, ptr %i.uj, align 1, !tbaa !9
  %i.um = zext i8 %i.ul to i32
  %i.un = shl nuw nsw i32 %i.um, 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.th, i64 7
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !9
  %i.uq = zext i8 %i.up to i32
  %i.ur = or disjoint i32 %i.un, %i.uq
  %.not.i14.i60 = icmp eq i32 %i.ur, 23669
  br i1 %.not.i14.i60, label %bb.cc, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cc:                                            ; preds = %bb.cb
  %i.us = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !9
  %i.uu = zext i8 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 2520
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !10
  %i.uy = getelementptr inbounds nuw i8, ptr %i.th, i64 9
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !9
  %i.va = zext i8 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 1680
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !10
  %i.ve = getelementptr inbounds nuw i8, ptr %i.th, i64 10
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !9
  %i.vg = zext i8 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 840
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !10
  %i.vk = getelementptr inbounds nuw i8, ptr %i.th, i64 11
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !9
  %i.vm = zext i8 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !10
  %i.vp = or i32 %i.vd, %i.ux
  %i.vq = or i32 %i.vp, %i.vj
  %i.vr = or i32 %i.vq, %i.vo
  %i.vs = add i32 %i.vr, -56320                   ; 2 uses
  %.not35.i.i61 = icmp ult i32 %i.vs, 1024
  br i1 %.not35.i.i61, label %.thread1019, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1019:                                      ; preds = %bb.cc
  %i.vt = shl nuw nsw i32 %i.ui, 10
  %i.vu = add nsw i32 %i.vt, -56557568
  %i.vv = or disjoint i32 %i.vu, %i.vs
  %i.vw = getelementptr inbounds nuw i8, ptr %i.th, i64 12
  br label %bb.ck

bb.cd:                                            ; preds = %bb.ca
  %i.vx = icmp ult i32 %i.ui, 128
  br i1 %i.vx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.vy = trunc nuw nsw i32 %i.ui to i8
  store i8 %i.vy, ptr %i.ti, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1028

bb.cf:                                            ; preds = %bb.cd
  %i.vz = icmp ult i32 %i.ui, 2048
  br i1 %i.vz, label %bb.cg, label %bb.ch
end_hunk_8
begin_hunk_9_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %or.cond5.i.i137 = select i1 %i.bmt, i1 true, i1 %i.bmu
  br i1 %or.cond5.i.i137, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1289

bb.ig:                                            ; preds = %bb.ib
  %i.bmv = icmp slt i64 %.2761, 0
  br i1 %i.bmv, label %.thread1289, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bmw = sub nsw i64 0, %.2761
  %i.bmx = select i1 %i.bfb, i64 %i.bmw, i64 %.2761
  br label %.thread1289

.thread1289:                                      ; preds = %bb.ig, %bb.if, %bb.ih
  %.sink1787 = phi i64 [ 7782220156096217088, %bb.ih ], [ 8430738502437568512, %bb.if ], [ 8430738502437568512, %bb.ig ]
  %.sink1785 = phi i64 [ %i.bmx, %bb.ih ], [ %.2761, %bb.if ], [ %.2761, %bb.ig ]
  store i64 %.sink1787, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bmy = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1785, ptr %i.bmy, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bmz = load i8, ptr %.1752, align 1, !tbaa !9
  %i.bna = zext i8 %i.bmz to i64
  %i.bnb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bna
  %i.bnc = load i8, ptr %i.bnb, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i135 = icmp eq i8 %i.bnc, 0
  br i1 %.not57.i.i135, label %select.unfold1300, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295: ; preds = %bb.ia, %bb.id
  %i.bnd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bne = load i8, ptr %i.bnd, align 8, !tbaa !133, !range !37, !noundef !38
  %i.bnf = trunc nuw i8 %i.bne to i1
  br i1 %i.bnf, label %.preheader1788, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !107

.preheader1788:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295, %.preheader1788
  %.122.i.i131 = phi ptr [ %i.bnj, %.preheader1788 ], [ %i.bfd, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295 ] ; 3 uses
  %i.bng = load i8, ptr %.122.i.i131, align 1, !tbaa !9 ; 2 uses
  %i.bnh = add i8 %i.bng, -48
  %i.bni = icmp ult i8 %i.bnh, 10
  %i.bnj = getelementptr inbounds nuw i8, ptr %.122.i.i131, i64 1
  br i1 %i.bni, label %.preheader1788, label %bb.ii, !llvm.loop !161

bb.ii:                                            ; preds = %.preheader1788
  %i.bnk = zext i8 %i.bng to i64
  %i.bnl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnk
  %i.bnm = load i8, ptr %i.bnl, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i.i132 = icmp eq i8 %i.bnm, 0
  br i1 %.not.i.i132, label %.split1706, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1706:                                       ; preds = %bb.ii
  %i.bnn = ptrtoint ptr %.122.i.i131 to i64
  %i.bno = ptrtoint ptr %i.axu to i64
  %i.bnp = sub i64 %i.bnn, %i.bno                 ; 3 uses
  %i.bnq = load ptr, ptr %i.g, align 8, !tbaa !151
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 8
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !20
  %i.bnt = ptrtoint ptr %.sroa.172.2 to i64
  %i.bnu = ptrtoint ptr %i.bns to i64
  %i.bnv = sub i64 %i.bnt, %i.bnu
  %i.bnw = or i64 %i.bnv, 6485183463413514240
  store i64 %i.bnw, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bnx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bny = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bny, ptr nonnull align 1 %i.axu, i64 %i.bnp, i1 false)
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 %i.bnp ; 2 uses
  %i.boa = trunc i64 %i.bnp to i32
  store i32 %i.boa, ptr %.sroa.172.2, align 1
  store i8 0, ptr %i.bnz, align 1, !tbaa !9
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnz, i64 1
  br label %bb.in

bb.ij:                                            ; preds = %bb.gt
  switch i8 %i.axv, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 116, label %bb.ik
    i8 102, label %bb.il
    i8 110, label %bb.im
  ]

bb.ik:                                            ; preds = %bb.ij
  %.0.copyload.i.i211 = load i32, ptr %i.axu, align 1
  %i.boc = getelementptr inbounds nuw i8, ptr %i.axu, i64 4
  %i.bod = load i8, ptr %i.boc, align 1, !tbaa !9
  %i.boe = zext i8 %i.bod to i64
  %i.bof = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.boe
  %i.bog = load i8, ptr %i.bof, align 1, !tbaa !124, !range !37, !noundef !38
  %i.boh = zext nneg i8 %i.bog to i32
  %i.boi = or i32 %.0.copyload.i.i211, %i.boh
  %i.boj = icmp eq i32 %i.boi, 1702195828
  br i1 %i.boj, label %.split1704, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1704:                                       ; preds = %bb.ik
  store i64 8358680908399640576, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bok = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.in

bb.il:                                            ; preds = %bb.ij
  %i.bol = getelementptr inbounds nuw i8, ptr %i.axu, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.bol, align 1
  %i.bom = xor i32 %.0.copyload.i.i.i, 1702063201
  %i.bon = getelementptr inbounds nuw i8, ptr %i.axu, i64 5
  %i.boo = load i8, ptr %i.bon, align 1, !tbaa !9
  %i.bop = zext i8 %i.boo to i64
  %i.boq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bop
  %i.bor = load i8, ptr %i.boq, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bos = zext nneg i8 %i.bor to i32
  %i.bot = or i32 %i.bom, %i.bos
  %i.bou = icmp eq i32 %i.bot, 0
  br i1 %i.bou, label %.split1705, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1705:                                       ; preds = %bb.il
  store i64 7349874591868649472, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bov = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.in

bb.im:                                            ; preds = %bb.ij
  %.0.copyload.i.i.i220 = load i32, ptr %i.axu, align 1
  %i.bow = getelementptr inbounds nuw i8, ptr %i.axu, i64 4
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !9
  %i.boy = zext i8 %i.box to i64
  %i.boz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.boy
  %i.bpa = load i8, ptr %i.boz, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bpb = zext nneg i8 %i.bpa to i32
  %i.bpc = or i32 %.0.copyload.i.i.i220, %i.bpb
  %i.bpd = icmp eq i32 %i.bpc, 1819047278
  br i1 %i.bpd, label %.split1707, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1707:                                       ; preds = %bb.im
  store i64 7926335344172072960, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bpe = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.in

select.unfold1300:                                ; preds = %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156.thread, %bb.ie, %.thread1289, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156, %bb.ga
  %.sroa.0.3 = phi ptr [ %i.biz, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156.thread ], [ %i.bmo, %bb.ie ], [ %.sroa.0.2, %bb.ga ], [ %.sroa.0.36, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156 ], [ %.sroa.0.34, %.thread1289 ] ; 2 uses
  %i.bpf = phi i1 [ true, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156.thread ], [ true, %bb.ie ], [ false, %bb.ga ], [ true, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156 ], [ true, %.thread1289 ]
  br i1 %i.bpf, label %bb.in, label %bb.bw

bb.in:                                            ; preds = %.split1707, %.split1705, %.split1704, %.split1706, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i188, %.split1702, %.split1703, %select.unfold1300, %bb.fx
  %.sroa.123.6 = phi i32 [ %i.awr, %bb.fx ], [ %.sroa.123.1, %select.unfold1300 ], [ %.sroa.123.1, %.split1702 ], [ %.sroa.123.1, %.split1703 ], [ %.sroa.123.1, %.split1704 ], [ %.sroa.123.1, %.split1705 ], [ %.sroa.123.1, %.split1706 ], [ %.sroa.123.1, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i188 ], [ %.sroa.123.1, %.split1707 ] ; 3 uses
  %.sroa.25.9 = phi ptr [ %.sroa.25.8, %bb.fx ], [ %i.axr, %select.unfold1300 ], [ %i.ayt, %.split1702 ], [ %i.ayb, %.split1703 ], [ %i.axr, %.split1704 ], [ %i.axr, %.split1705 ], [ %i.axr, %.split1706 ], [ %i.axr, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i188 ], [ %i.axr, %.split1707 ] ; 2 uses
  %.sroa.172.10 = phi ptr [ %.sroa.172.9, %bb.fx ], [ %.sroa.172.2, %select.unfold1300 ], [ %.sroa.172.2, %.split1702 ], [ %.sroa.172.2, %.split1703 ], [ %.sroa.172.2, %.split1704 ], [ %.sroa.172.2, %.split1705 ], [ %i.bob, %.split1706 ], [ %i.bez, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i188 ], [ %.sroa.172.2, %.split1707 ] ; 2 uses
  %.sroa.0.10 = phi ptr [ %i.awb, %bb.fx ], [ %.sroa.0.3, %select.unfold1300 ], [ %i.azf, %.split1702 ], [ %i.ayn, %.split1703 ], [ %i.bok, %.split1704 ], [ %i.bov, %.split1705 ], [ %i.bnx, %.split1706 ], [ %i.azn, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i188 ], [ %i.bpe, %.split1707 ] ; 2 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %.sroa.25.9, i64 4 ; 2 uses
  %i.bph = load i32, ptr %.sroa.25.9, align 4, !tbaa !10
  %i.bpi = zext i32 %i.bph to i64
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bpi
  %i.bpk = load i8, ptr %i.bpj, align 1, !tbaa !9
  switch i8 %i.bpk, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.io
    i8 93, label %bb.fw
  ]

bb.io:                                            ; preds = %bb.in
  %i.bpl = zext i32 %.sroa.123.6 to i64
  %i.bpm = load ptr, ptr %i.r, align 8, !tbaa !152
  %i.bpn = getelementptr inbounds nuw [8 x i8], ptr %i.bpm, i64 %i.bpl
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 4 ; 2 uses
  %i.bpp = load i32, ptr %i.bpo, align 4, !tbaa !155
  %i.bpq = add i32 %i.bpp, 1
  store i32 %i.bpq, ptr %i.bpo, align 4, !tbaa !155
  br label %bb.fz

.thread979:                                       ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i, %bb.af, %bb.z, %bb.ac, %bb.f, %bb.e, %bb.fw
  %.sroa.25.10 = phi ptr [ %.sroa.25.8, %bb.fw ], [ %i.v, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.at, %bb.e ], [ %i.bb, %bb.f ], [ %i.v, %bb.ac ], [ %i.v, %bb.z ], [ %i.v, %bb.af ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677 ]
  %.sroa.0.11 = phi ptr [ %i.awb, %bb.fw ], [ %i.be, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.av, %bb.e ], [ %i.bd, %bb.f ], [ %i.hu, %bb.ac ], [ %i.hd, %bb.z ], [ %i.ii, %bb.af ], [ %.sroa.0.23, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %.sroa.0.171332.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1677 ] ; 2 uses
  store i64 8214565720323784704, ptr %.sroa.0.11, align 8, !tbaa !13
  %i.bpr = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 8
  %i.bps = load ptr, ptr %i.g, align 8, !tbaa !151
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !118 ; 2 uses
  %i.bpu = ptrtoint ptr %i.bpr to i64
  %i.bpv = ptrtoint ptr %i.bpt to i64
  %i.bpw = sub i64 %i.bpu, %i.bpv
  %i.bpx = lshr exact i64 %i.bpw, 3
  %i.bpy = and i64 %i.bpx, 4294967295
  %i.bpz = or disjoint i64 %i.bpy, 8214565720323784704
  store i64 %i.bpz, ptr %i.bpt, align 8, !tbaa !13
  %i.bqa = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.bqb = ptrtoint ptr %.sroa.25.10 to i64
  %i.bqc = ptrtoint ptr %i.bqa to i64
  %i.bqd = sub i64 %i.bqb, %i.bqc
  %i.bqe = lshr exact i64 %i.bqd, 2
  %i.bqf = trunc i64 %i.bqe to i32                ; 2 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bqf, ptr %i.bqg, align 8, !tbaa !83
  %i.bqh = load i32, ptr %i.n, align 8, !tbaa !73
  %.not173.i = icmp eq i32 %i.bqh, %i.bqf
  %spec.select1417 = select i1 %.not173.i, i32 0, i32 3
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit: ; preds = %bb.j, %bb.k, %bb.r, %bb.t, %bb.i, %bb.cb, %bb.cc, %bb.cj, %bb.cl, %bb.ca, %bb.cv, %bb.cw, %bb.dd, %bb.df, %bb.cu, %bb.gf, %bb.gg, %bb.gn, %bb.gp, %bb.ge, %bb.fi, %bb.fj, %bb.fq, %bb.fs, %bb.fh, %bb.hc, %bb.ds, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, %.thread979, %bb.b, %bb.hh, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156.thread, %bb.gv, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i116, %bb.if, %bb.ie, %.thread1289, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295, %bb.ii, %bb.ik, %bb.ij, %bb.im, %bb.il, %bb.dx, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.dl, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i105, %bb.ev, %bb.eu, %.thread1132, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1138, %bb.ey, %bb.fa, %bb.ez, %bb.fc, %bb.fb, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156, %bb.fe, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i, %bb.bx, %bb.ag, %bb.ae, %bb.ab, %bb.y, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, %.noexc72, %.noexc, %.noexc77, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.c, %bb.d, %bb.in, %.thread993, %bb.fd, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i43, %bb.bw, %bb.a
  %.37.i = phi i32 [ 3, %bb.fd ], [ 8, %bb.im ], [ 13, %bb.a ], [ 9, %bb.hh ], [ 3, %bb.in ], [ %spec.select1417, %.thread979 ], [ 4, %bb.bw ], [ %spec.select1416, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156 ], [ %spec.select1414, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i ], [ 2, %bb.ag ], [ 9, %bb.dx ], [ 6, %bb.ik ], [ 3, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i43 ], [ 4, %.thread993 ], [ %spec.select1412, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ 3, %bb.d ], [ 3, %bb.c ], [ 3, %bb.b ], [ 8, %bb.ae ], [ 7, %bb.ab ], [ 8, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit ], [ 6, %bb.y ], [ 7, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit ], [ 8, %.noexc77 ], [ 6, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit ], [ 9, %bb.ds ], [ 7, %.noexc72 ], [ 6, %.noexc ], [ 3, %bb.ij ], [ 3, %bb.bx ], [ 5, %bb.gf ], [ 3, %bb.fe ], [ 10, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i126.thread1295 ], [ 5, %bb.cv ], [ 7, %bb.fb ], [ 9, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.dl ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i105 ], [ 9, %bb.ev ], [ 9, %bb.eu ], [ 9, %.thread1132 ], [ 9, %bb.hc ], [ 10, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1138 ], [ 9, %bb.ey ], [ %.0.i51333.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread ], [ 6, %bb.fa ], [ 3, %bb.ez ], [ 8, %bb.fc ], [ 9, %bb.ii ], [ 5, %bb.fi ], [ 7, %bb.il ], [ 9, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i156.thread ], [ 9, %bb.gv ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i177 ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i116 ], [ 9, %bb.if ], [ 9, %bb.ie ], [ 9, %.thread1289 ], [ 5, %bb.cb ], [ 5, %bb.fh ], [ 5, %bb.fs ], [ 5, %bb.fq ], [ 5, %bb.fj ], [ 5, %bb.ge ], [ 5, %bb.gp ], [ 5, %bb.gn ], [ 5, %bb.gg ], [ 5, %bb.cu ], [ 5, %bb.df ], [ 5, %bb.dd ], [ 5, %bb.cw ], [ 5, %bb.ca ], [ 5, %bb.cl ], [ 5, %bb.cj ], [ 5, %bb.cc ], [ 5, %bb.i ], [ 5, %bb.t ], [ 5, %bb.r ], [ 5, %bb.k ], [ 5, %bb.j ]
  ret i32 %.37.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !151
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138  ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73
  %i.q = icmp eq i32 %i.i, %i.p
  br i1 %i.q, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.i to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152  ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !155
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 10 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ab = zext i32 %i.aa to i64                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ab ; 12 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  switch i8 %i.ad, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.e
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !10
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = icmp eq i8 %i.ah, 125
  br i1 %i.ai, label %bb.d, label %bb.bx

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 8863084066665136131, ptr %i.y, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 9007199254740992001, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread752

bb.e:                                             ; preds = %bb.b
  %i.am = load i32, ptr %i.z, align 4, !tbaa !10
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, 93
  br i1 %i.aq, label %bb.f, label %.thread766

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 6557241057451442179, ptr %i.y, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 6701356245527298049, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread752

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.y, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ax = load <8 x i64>, ptr %i.aw, align 1, !tbaa !9 ; 2 uses
  store <8 x i64> %i.ax, ptr %i.av, align 1, !tbaa !9
  %i.ay = bitcast <8 x i64> %i.ax to <64 x i8>    ; 2 uses
  %i.az = icmp eq <64 x i8> %i.ay, splat (i8 92)
  %i.ba = bitcast <64 x i1> %i.az to i64          ; 2 uses
  %i.bb = icmp eq <64 x i8> %i.ay, splat (i8 34)
  %i.bc = bitcast <64 x i1> %i.bb to i64          ; 3 uses
  %i.bd = add i64 %i.ba, -1
  %i.be = and i64 %i.bd, %i.bc
  %.not11921268 = icmp eq i64 %i.be, 0
  br i1 %.not11921268, label %.lr.ph1271, label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i

.lr.ph1271:                                       ; preds = %bb.g, %bb.w
  %i.bf = phi i64 [ %i.fx, %bb.w ], [ %i.bc, %bb.g ]
  %i.bg = phi i64 [ %i.fv, %bb.w ], [ %i.ba, %bb.g ] ; 2 uses
  %.05151270 = phi ptr [ %.1516, %bb.w ], [ %i.av, %bb.g ] ; 4 uses
  %.05181269 = phi ptr [ %.1519, %bb.w ], [ %i.aw, %bb.g ] ; 4 uses
  %i.bh = add i64 %i.bf, -1
  %i.bi = and i64 %i.bh, %i.bg
  %.not1193 = icmp eq i64 %i.bi, 0
  br i1 %.not1193, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.lr.ph1271
  %i.bj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bg, i1 true) ; 5 uses
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05181269, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9   ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 117
  br i1 %i.bn, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.05181269, i64 %i.bj ; 11 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05151270, i64 %i.bj ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2520
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1680
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 840
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !10
  %i.cn = or i32 %i.cb, %i.bv
  %i.co = or i32 %i.cn, %i.ch
  %i.cp = or i32 %i.co, %i.cm                     ; 13 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 6 ; 5 uses
  %i.cr = and i32 %i.cp, -1024
  switch i32 %i.cr, label %bb.l [
    i32 55296, label %bb.j
    i32 56320, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !9
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 7
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx
  %.not.i14.i.i = icmp eq i32 %i.cy, 23669
  br i1 %.not.i14.i.i, label %bb.k, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2520
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1680
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 840
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 11
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !10
  %i.dw = or i32 %i.dk, %i.de
  %i.dx = or i32 %i.dw, %i.dq
  %i.dy = or i32 %i.dx, %i.dv
  %i.dz = add i32 %i.dy, -56320                   ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.dz, 1024
  br i1 %.not35.i.i.i, label %.thread659, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread659:                                       ; preds = %bb.k
  %i.ea = shl nuw nsw i32 %i.cp, 10
  %i.eb = add nsw i32 %i.ea, -56557568
  %i.ec = or disjoint i32 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  br label %bb.s

bb.l:                                             ; preds = %bb.i
  %i.ee = icmp ult i32 %i.cp, 128
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ef = trunc nuw nsw i32 %i.cp to i8
  store i8 %i.ef, ptr %i.bp, align 1, !tbaa !9
end_hunk_9
begin_hunk_10_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.em = or disjoint i8 %i.el, -128
  %i.en = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 %i.em, ptr %i.en, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread668

bb.p:                                             ; preds = %bb.n
  %i.eo = icmp ult i32 %i.cp, 65536
  br i1 %i.eo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ep = lshr i32 %i.cp, 12
  %i.eq = trunc nuw nsw i32 %i.ep to i8
  %i.er = or disjoint i8 %i.eq, -32
  store i8 %i.er, ptr %i.bp, align 1, !tbaa !9
  %i.es = lshr i32 %i.cp, 6
  %i.et = trunc i32 %i.es to i8
  %i.eu = and i8 %i.et, 63
  %i.ev = or disjoint i8 %i.eu, -128
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !9
  %i.ex = trunc i32 %i.cp to i8
  %i.ey = and i8 %i.ex, 63
  %i.ez = or disjoint i8 %i.ey, -128
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread668

bb.r:                                             ; preds = %bb.p
  %i.fb = icmp ult i32 %i.cp, 1114112
  br i1 %i.fb, label %bb.s, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.s:                                             ; preds = %.thread659, %bb.r
  %.6647653657663 = phi ptr [ %i.ed, %.thread659 ], [ %i.cq, %bb.r ]
  %.4.i.i.i648652658662 = phi i32 [ %i.ec, %.thread659 ], [ %i.cp, %bb.r ]
  %i.fc = insertelement <4 x i32> poison, i32 %.4.i.i.i648652658662, i64 0
  %i.fd = shufflevector <4 x i32> %i.fc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fe = lshr <4 x i32> %i.fd, <i32 18, i32 12, i32 6, i32 0>
  %i.ff = trunc <4 x i32> %i.fe to <4 x i8>
  %i.fg = and <4 x i8> %i.ff, <i8 -1, i8 63, i8 63, i8 63>
  %i.fh = or <4 x i8> %i.fg, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fh, ptr %i.bp, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread668

_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread668: ; preds = %bb.m, %bb.o, %bb.q, %bb.s
  %.6646.ph = phi ptr [ %.6647653657663, %bb.s ], [ %i.cq, %bb.q ], [ %i.cq, %bb.o ], [ %i.cq, %bb.m ]
  %.0.i.i.i.ph = phi i64 [ 4, %bb.s ], [ 3, %bb.q ], [ 2, %bb.o ], [ 1, %bb.m ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.0.i.i.i.ph
  br label %bb.w

bb.t:                                             ; preds = %bb.h
  %i.fj = zext i8 %i.bm to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fm = getelementptr inbounds nuw i8, ptr %.05151270, i64 %i.bj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %.05181269, i64 %i.bj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.05151270, i64 %i.bk
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph1271
  %i.fq = getelementptr inbounds nuw i8, ptr %.05181269, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %.05151270, i64 64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread668, %bb.v
  %.1519 = phi ptr [ %i.fo, %bb.u ], [ %i.fq, %bb.v ], [ %.6646.ph, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread668 ] ; 2 uses
  %.1516 = phi ptr [ %i.fp, %bb.u ], [ %i.fr, %bb.v ], [ %i.fi, %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread668 ] ; 3 uses
  %i.fs = load <8 x i64>, ptr %.1519, align 1, !tbaa !9 ; 2 uses
  store <8 x i64> %i.fs, ptr %.1516, align 1, !tbaa !9
  %i.ft = bitcast <8 x i64> %i.fs to <64 x i8>    ; 2 uses
  %i.fu = icmp eq <64 x i8> %i.ft, splat (i8 92)
  %i.fv = bitcast <64 x i1> %i.fu to i64          ; 2 uses
  %i.fw = icmp eq <64 x i8> %i.ft, splat (i8 34)
  %i.fx = bitcast <64 x i1> %i.fw to i64          ; 3 uses
  %i.fy = add i64 %i.fv, -1
  %i.fz = and i64 %i.fy, %i.fx
  %.not1192 = icmp eq i64 %i.fz, 0
  br i1 %.not1192, label %.lr.ph1271, label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i

_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i: ; preds = %bb.w, %bb.g
  %.0515.lcssa = phi ptr [ %i.av, %bb.g ], [ %.1516, %bb.w ]
  %.lcssa1244 = phi i64 [ %i.bc, %bb.g ], [ %i.fx, %bb.w ]
  %i.ga = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa1244, i1 true)
  %i.gb = getelementptr inbounds nuw i8, ptr %.0515.lcssa, i64 %i.ga ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.av to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.n, align 1
  store i8 0, ptr %i.gb, align 1, !tbaa !9
  br label %.thread752

bb.x:                                             ; preds = %bb.b
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !147
  %i.gi = sub i64 %i.gh, %i.ab                    ; 2 uses
  %i.gj = icmp ugt i64 %i.gi, 4
  br i1 %i.gj, label %.split, label %bb.y

.split:                                           ; preds = %bb.x
  %.0.copyload.i.i = load i32, ptr %i.ac, align 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = or i32 %.0.copyload.i.i, %i.gp
  %i.gr = icmp eq i32 %i.gq, 1702195828
  br i1 %i.gr, label %bb.z, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.gs = icmp eq i64 %i.gi, 4
  br i1 %i.gs, label %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i: ; preds = %bb.y
  %.0.copyload.i239.i = load i32, ptr %i.ac, align 1
  %.not.i.i = icmp eq i32 %.0.copyload.i239.i, 1702195828
  br i1 %.not.i.i, label %bb.z, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %.split, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i
  store i64 8358680908399640576, ptr %i.y, align 8, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread752

bb.aa:                                            ; preds = %bb.b
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !147
  %i.gw = sub i64 %i.gv, %i.ab                    ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, 5
  br i1 %i.gx, label %.split693, label %bb.ab

.split693:                                        ; preds = %bb.aa
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i243.i = load i32, ptr %i.gy, align 1
  %i.gz = xor i32 %.0.copyload.i.i243.i, 1702063201
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !9
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hf = zext nneg i8 %i.he to i32
  %i.hg = or i32 %i.gz, %i.hf
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.ac, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hi = icmp eq i64 %i.gw, 5
  br i1 %i.hi, label %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i: ; preds = %bb.ab
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.hj, align 1
  %.not.i241.i = icmp eq i32 %.0.copyload.i.i.i, 1702063201
  br i1 %.not.i241.i, label %bb.ac, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %.split693, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i
  store i64 7349874591868649472, ptr %i.y, align 8, !tbaa !13
  %i.hk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread752

bb.ad:                                            ; preds = %bb.b
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !147
  %i.hn = sub i64 %i.hm, %i.ab                    ; 2 uses
  %i.ho = icmp ugt i64 %i.hn, 4
  br i1 %i.ho, label %.split695, label %bb.ae

.split695:                                        ; preds = %bb.ad
  %.0.copyload.i.i248.i = load i32, ptr %i.ac, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hu = zext nneg i8 %i.ht to i32
  %i.hv = or i32 %.0.copyload.i.i248.i, %i.hu
  %i.hw = icmp eq i32 %i.hv, 1819047278
  br i1 %i.hw, label %bb.af, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.hx = icmp eq i64 %i.hn, 4
  br i1 %i.hx, label %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i: ; preds = %bb.ae
  %.0.copyload.i.i245.i = load i32, ptr %i.ac, align 1
  %.not.i246.i = icmp eq i32 %.0.copyload.i.i245.i, 1819047278
  br i1 %.not.i246.i, label %bb.af, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %.split695, %_ZN8simdjson7icelake12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i
  store i64 7926335344172072960, ptr %i.y, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread752

bb.ag:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !147
  %i.ib = add i64 %i.ia, 64
  %i.ic = sub i64 %i.ib, %i.ab
  %i.id = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.ic, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %2 = load i64, ptr %i.hz, align 8, !tbaa !147   ; 2 uses
  %i.if = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ig = zext i32 %i.if to i64
  %i.ih = sub i64 %2, %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.id, ptr nonnull align 1 %i.ac, i64 %i.ih, i1 false)
  %i.ii = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ij = zext i32 %i.ii to i64
  %i.ik = sub i64 %2, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ik
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.il, i8 32, i64 64, i1 false)
  %i.im = load i8, ptr %i.id, align 1, !tbaa !9   ; 2 uses
  %i.in = icmp eq i8 %i.im, 45                    ; 10 uses
  %i.io = zext i1 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.io ; 6 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !9   ; 4 uses
  %i.ir = add i8 %i.iq, -48                       ; 2 uses
  %i.is = icmp ult i8 %i.ir, 10
  br i1 %i.is, label %.lr.ph, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.it = phi i8 [ %i.iz, %.lr.ph ], [ %i.ir, %bb.ah ]
  %.06081250 = phi ptr [ %i.ix, %.lr.ph ], [ %i.ip, %bb.ah ]
  %.06161249 = phi i64 [ %i.iw, %.lr.ph ], [ 0, %bb.ah ]
  %i.iu = mul i64 %.06161249, 10
  %i.iv = zext nneg i8 %i.it to i64
  %i.iw = add i64 %i.iu, %i.iv                    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.06081250, i64 1 ; 3 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !9   ; 2 uses
  %i.iz = add i8 %i.iy, -48                       ; 2 uses
  %i.ja = icmp ult i8 %i.iz, 10
  br i1 %i.ja, label %.lr.ph, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, !llvm.loop !156

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i: ; preds = %.lr.ph, %bb.ah
  %.0616.lcssa = phi i64 [ 0, %bb.ah ], [ %i.iw, %.lr.ph ] ; 3 uses
  %.0608.lcssa = phi ptr [ %i.ip, %bb.ah ], [ %i.ix, %.lr.ph ] ; 6 uses
  %.lcssa1248 = phi i8 [ %i.iq, %bb.ah ], [ %i.iy, %.lr.ph ] ; 2 uses
  %i.jb = ptrtoint ptr %.0608.lcssa to i64
  %i.jc = ptrtoint ptr %i.ip to i64               ; 3 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 3 uses
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i
  %i.jf = icmp eq i8 %i.iq, 48
  %i.jg = icmp ne i64 %i.jd, 1
  %or.cond.i.i = and i1 %i.jg, %i.jf
  br i1 %or.cond.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jh = icmp eq i8 %.lcssa1248, 46              ; 2 uses
  br i1 %i.jh, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.ptr1190 = getelementptr inbounds nuw i8, ptr %.0608.lcssa, i64 1 ; 2 uses
  %.0.copyload.i263.i = load i64, ptr %.ptr1190, align 1 ; 3 uses
  %i.ji = and i64 %.0.copyload.i263.i, -1085102592571150096
  %i.jj = add i64 %.0.copyload.i263.i, 434041037028460038
  %i.jk = lshr i64 %i.jj, 4
  %i.jl = and i64 %i.jk, 1085102592571150095
  %i.jm = or disjoint i64 %i.jl, %i.ji
  %i.jn = icmp eq i64 %i.jm, 3689348814741910323
  %i.jo = trunc i64 %.0.copyload.i263.i to i8
  br i1 %i.jn, label %bb.al, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

bb.al:                                            ; preds = %bb.ak
  %i.jp = mul i64 %.0616.lcssa, 100000000
  %i.jq = load <16 x i8>, ptr %.ptr1190, align 1  ; 2 uses
  %i.jr = add <16 x i8> %i.jq, <i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.js = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.jr, <16 x i8> <i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.jt = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.js, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ju = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jt, <4 x i32> poison)
  %i.jv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ju, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.jw = extractelement <4 x i32> %i.jv, i64 0
  %i.jx = zext i32 %i.jw to i64
  %i.jy = add i64 %i.jp, %i.jx
  %i.jz = extractelement <16 x i8> %i.jq, i64 8
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i: ; preds = %bb.al, %bb.ak
  %i.ka = phi i8 [ %i.jz, %bb.al ], [ %i.jo, %bb.ak ]
  %.3619 = phi i64 [ %i.jy, %bb.al ], [ %.0616.lcssa, %bb.ak ] ; 2 uses
  %.5613.idx = phi i64 [ 9, %bb.al ], [ 1, %bb.ak ]
  %i.kb = add i8 %i.ka, -48                       ; 2 uses
  %i.kc = icmp ult i8 %i.kb, 10                   ; 2 uses
  %i.kd = mul i64 %.3619, 10
  %i.ke = zext nneg i8 %i.kb to i64
  %i.kf = add i64 %i.kd, %i.ke
  %.4620699 = select i1 %i.kc, i64 %i.kf, i64 %.3619 ; 2 uses
  %.6614.idx = zext i1 %i.kc to i64
  %.5613.add = add nuw nsw i64 %.5613.idx, %.6614.idx ; 4 uses
  %.7615.ptr1254 = getelementptr inbounds nuw i8, ptr %.0608.lcssa, i64 %.5613.add
  %i.kg = load i8, ptr %.7615.ptr1254, align 1, !tbaa !9 ; 2 uses
  %i.kh = add i8 %i.kg, -48                       ; 2 uses
  %i.ki = icmp ult i8 %i.kh, 10
  br i1 %i.ki, label %.lr.ph1257, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i

.lr.ph1257:                                       ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i, %.lr.ph1257
  %i.kj = phi i8 [ %i.ko, %.lr.ph1257 ], [ %i.kh, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.7615.idx1256 = phi i64 [ %.7615.add, %.lr.ph1257 ], [ %.5613.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.56211255 = phi i64 [ %i.km, %.lr.ph1257 ], [ %.4620699, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %i.kk = mul i64 %.56211255, 10
  %i.kl = zext nneg i8 %i.kj to i64
  %i.km = add i64 %i.kk, %i.kl                    ; 2 uses
  %.7615.add = add nuw nsw i64 %.7615.idx1256, 1  ; 3 uses
  %.7615.ptr = getelementptr inbounds nuw i8, ptr %.0608.lcssa, i64 %.7615.add
  %i.kn = load i8, ptr %.7615.ptr, align 1, !tbaa !9 ; 2 uses
  %i.ko = add i8 %i.kn, -48                       ; 2 uses
  %i.kp = icmp ult i8 %i.ko, 10
  br i1 %i.kp, label %.lr.ph1257, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !157

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5613.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1257, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5621.lcssa1439 = phi i64 [ %.4620699, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.km, %.lr.ph1257 ]
  %.7615.idx.lcssa12531438 = phi i64 [ %.5613.add, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7615.add, %.lr.ph1257 ] ; 2 uses
  %i.kq = phi i8 [ %i.kg, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kn, %.lr.ph1257 ]
  %.7615.ptr.le = getelementptr inbounds nuw i8, ptr %.0608.lcssa, i64 %.7615.idx.lcssa12531438 ; 2 uses
  %i.kr = ptrtoint ptr %.7615.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7615.idx.lcssa12531438
  %i.ks = sub i64 %i.kr, %i.jc
  %sext.i.i = shl i64 %i.ks, 32
  %i.kt = ashr exact i64 %sext.i.i, 32
  br label %bb.am

bb.am:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.aj
  %i.ku = phi i8 [ %i.kq, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1248, %bb.aj ] ; 2 uses
  %.0623 = phi i64 [ %gepdiff, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.aj ] ; 2 uses
  %.2618 = phi i64 [ %.5621.lcssa1439, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0616.lcssa, %bb.aj ] ; 14 uses
  %.1609 = phi ptr [ %.7615.ptr.le, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0608.lcssa, %bb.aj ] ; 4 uses
  %.044.i.i = phi i64 [ %i.kt, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.jd, %bb.aj ] ; 4 uses
  switch i8 %i.ku, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.kv = getelementptr inbounds nuw i8, ptr %.1609, i64 1 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !9   ; 3 uses
  %i.kx = icmp eq i8 %i.kw, 45
  switch i8 %i.kw, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.ky = getelementptr inbounds nuw i8, ptr %.1609, i64 2 ; 2 uses
  %.pre1373 = load i8, ptr %i.ky, align 1, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kz = phi i8 [ %i.kw, %bb.an ], [ %.pre1373, %bb.ao ]
  %.2610 = phi ptr [ %i.kv, %bb.an ], [ %i.ky, %bb.ao ] ; 3 uses
  %i.la = add i8 %i.kz, -48                       ; 2 uses
  %i.lb = icmp ult i8 %i.la, 10
  br i1 %i.lb, label %.lr.ph1264, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1264:                                       ; preds = %bb.ap, %.lr.ph1264
  %i.lc = phi i8 [ %i.lh, %.lr.ph1264 ], [ %i.la, %bb.ap ]
  %.06051263 = phi i64 [ %i.lf, %.lr.ph1264 ], [ 0, %bb.ap ]
  %.3611.idx1262 = phi i64 [ %.3611.add, %.lr.ph1264 ], [ 0, %bb.ap ] ; 2 uses
  %i.ld = mul nsw i64 %.06051263, 10
  %i.le = zext nneg i8 %i.lc to i64
  %i.lf = add nsw i64 %i.ld, %i.le                ; 3 uses
  %.3611.add = add nuw nsw i64 %.3611.idx1262, 1  ; 3 uses
  %.3611.ptr = getelementptr inbounds nuw i8, ptr %.2610, i64 %.3611.add
  %i.lg = load i8, ptr %.3611.ptr, align 1, !tbaa !9 ; 2 uses
  %i.lh = add i8 %i.lg, -48                       ; 2 uses
  %i.li = icmp ult i8 %i.lh, 10
  br i1 %i.li, label %.lr.ph1264, label %bb.aq, !llvm.loop !158

bb.aq:                                            ; preds = %.lr.ph1264
  %.3611.ptr.le = getelementptr inbounds nuw i8, ptr %.2610, i64 %.3611.add
  %i.lj = icmp samesign ugt i64 %.3611.idx1262, 17
  br i1 %i.lj, label %.preheader1228, label %.thread709, !prof !107

.preheader1228:                                   ; preds = %bb.aq, %.preheader1228
  %.0.i257.i = phi ptr [ %i.lm, %.preheader1228 ], [ %.2610, %bb.aq ] ; 3 uses
  %i.lk = load i8, ptr %.0.i257.i, align 1, !tbaa !9
  %i.ll = icmp eq i8 %i.lk, 48
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 1
  br i1 %i.ll, label %.preheader1228, label %bb.ar, !llvm.loop !159

bb.ar:                                            ; preds = %.preheader1228
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 18
  %i.lo = icmp ugt ptr %.3611.ptr.le, %i.ln
  %spec.select = select i1 %i.lo, i64 999999999999999999, i64 %i.lf
  br label %.thread709

.thread709:                                       ; preds = %bb.ar, %bb.aq
  %.2607 = phi i64 [ %i.lf, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.lp = sub nsw i64 0, %.2607
  %i.lq = select i1 %i.kx, i64 %i.lp, i64 %.2607
  %i.lr = add nsw i64 %i.lq, %.0623
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.jh, label %bb.at, label %bb.bn

bb.at:                                            ; preds = %.thread709, %bb.as
  %i.ls = phi i8 [ %i.lg, %.thread709 ], [ %i.ku, %bb.as ]
  %.2625713 = phi i64 [ %i.lr, %.thread709 ], [ %.0623, %bb.as ] ; 9 uses
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !124, !range !37, !noundef !38
  %.not59.i.i = icmp eq i8 %i.lv, 0               ; 3 uses
  %i.lw = icmp ugt i64 %.044.i.i, 19
end_hunk_10
begin_hunk_11_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.nk = zext i64 %i.nd to i128                  ; 2 uses
  %i.nl = zext i64 %i.nj to i128
  %i.nm = mul nuw i128 %i.nl, %i.nk               ; 2 uses
  %i.nn = trunc i128 %i.nm to i64                 ; 2 uses
  %i.no = lshr i128 %i.nm, 64
  %i.np = trunc nuw i128 %i.no to i64             ; 3 uses
  %i.nq = and i64 %i.np, 511
  %i.nr = icmp eq i64 %i.nq, 511
  br i1 %i.nr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ns = getelementptr i8, ptr %i.nh, i64 5480
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !13
  %i.nu = zext i64 %i.nt to i128
  %i.nv = mul nuw i128 %i.nu, %i.nk
  %i.nw = lshr i128 %i.nv, 64
  %i.nx = trunc nuw i128 %i.nw to i64             ; 2 uses
  %i.ny = add i64 %i.nx, %i.nn                    ; 2 uses
  %i.nz = icmp ult i64 %i.ny, %i.nx
  %i.oa = zext i1 %i.nz to i64
  %spec.select.i268.i = add nuw i64 %i.oa, %i.np
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i268.i, %bb.bd ], [ %i.np, %bb.bc ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.ny, %bb.bd ], [ %i.nn, %bb.bc ]
  %i.ob = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.oc = add nuw nsw i64 %i.ob, 9                ; 2 uses
  %i.od = lshr i64 %.sroa.7.1.i.i, %i.oc          ; 6 uses
  %reass.sub = sub nsw i64 %i.nb, %i.nc
  %.neg = add nsw i64 %reass.sub, %i.ob           ; 4 uses
  %i.oe = add nsw i64 %.neg, 1086
  %i.of = icmp slt i64 %.neg, -1085
  br i1 %i.of, label %bb.bf, label %bb.bi, !prof !107

bb.bf:                                            ; preds = %bb.be
  %i.og = icmp samesign ult i64 %.neg, -1148
  br i1 %i.og, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.oh = select i1 %i.in, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bh:                                            ; preds = %bb.bf
  %i.oi = sub nuw nsw i64 -1085, %.neg
  %i.oj = lshr i64 %i.od, %i.oi                   ; 2 uses
  %i.ok = and i64 %i.oj, 1
  %i.ol = add nuw nsw i64 %i.ok, %i.oj            ; 2 uses
  %i.om = lshr i64 %i.ol, 1
  %i.on = icmp samesign ugt i64 %i.ol, 9007199254740991
  %i.oo = and i64 %i.om, 13510798882111487
  %i.op = select i1 %i.on, i64 4503599627370496, i64 0
  %i.oq = select i1 %i.in, i64 -9223372036854775808, i64 0
  %i.or = or disjoint i64 %i.op, %i.oq
  %i.os = or disjoint i64 %i.or, %i.oo
  %i.ot = bitcast i64 %i.os to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.be
  %i.ou = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.ov = add nsw i64 %.2625713, 4
  %i.ow = icmp ult i64 %i.ov, 28
  %or.cond7.i.i = and i1 %i.ow, %i.ou
  %i.ox = and i64 %i.od, 3
  %i.oy = icmp eq i64 %i.ox, 1
  %i.oz = select i1 %or.cond7.i.i, i1 %i.oy, i1 false
  br i1 %i.oz, label %bb.bj, label %bb.bk, !prof !107

bb.bj:                                            ; preds = %bb.bi
  %i.pa = shl i64 %i.od, %i.oc
  %i.pb = icmp eq i64 %i.pa, %.sroa.7.1.i.i
  %i.pc = and i64 %i.od, 72057594037927932
  %spec.select90.i.i = select i1 %i.pb, i64 %i.pc, i64 %i.od
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i.i = phi i64 [ %i.od, %bb.bi ], [ %spec.select90.i.i, %bb.bj ] ; 2 uses
  %i.pd = and i64 %.080.i.i, 1
  %i.pe = add nuw nsw i64 %i.pd, %.080.i.i        ; 2 uses
  %i.pf = icmp samesign ugt i64 %i.pe, 18014398509481983 ; 2 uses
  %i.pg = zext i1 %i.pf to i64
  %spec.select92.i.i = add nuw nsw i64 %i.oe, %i.pg ; 2 uses
  %i.ph = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.ph, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bl, !prof !107

bb.bl:                                            ; preds = %bb.bk
  %i.pi = lshr i64 %i.pe, 1
  %i.pj = and i64 %i.pi, 13510798882111487
  %i.pk = select i1 %i.pf, i64 0, i64 %i.pj
  %i.pl = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.pm = select i1 %i.in, i64 -9223372036854775808, i64 0
  %i.pn = or disjoint i64 %i.pk, %i.pm
  %i.po = or i64 %i.pn, %i.pl
  %i.pp = bitcast i64 %i.po to double
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bk
  %i.pq = call fastcc noundef zeroext i1 @_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.id, ptr noundef %i.f)
  br i1 %i.pq, label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bm

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1375 = load double, ptr %i.f, align 8, !tbaa !130
  br label %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.az, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %i.pr = phi double [ %.pre1375, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.pp, %bb.bl ], [ %i.ot, %bb.bh ], [ %i.oh, %bb.bg ], [ %spec.select1514, %bb.az ], [ %i.mz, %bb.bb ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !13
  %i.ps = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.pr, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.pt, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i259.i = phi i32 [ 0, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.as
  %i.pu = select i1 %i.in, i64 19, i64 20         ; 2 uses
  %i.pv = icmp ugt i64 %.044.i.i, %i.pu
  br i1 %i.pv, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pw = icmp eq i64 %.044.i.i, %i.pu
  br i1 %i.pw, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.in, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.px = icmp ugt i64 %.2618, -9223372036854775808
  br i1 %i.px, label %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.py = sub i64 0, %.2618
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !13
  %i.pz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.py, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qb = load i8, ptr %.1609, align 1, !tbaa !9
  %i.qc = zext i8 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i.i = icmp eq i8 %i.qe, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.qf = icmp ne i8 %i.im, 49
  %i.qg = icmp sgt i64 %.2618, -1
  %or.cond5.i.i = select i1 %i.qf, i1 true, i1 %i.qg
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread716

bb.bt:                                            ; preds = %bb.bo
  %i.qh = icmp slt i64 %.2618, 0
  br i1 %i.qh, label %.thread716, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qi = sub nsw i64 0, %.2618
  %i.qj = select i1 %i.in, i64 %i.qi, i64 %.2618
  br label %.thread716

.thread716:                                       ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1516 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink = phi i64 [ %i.qj, %bb.bu ], [ %.2618, %bb.bs ], [ %.2618, %bb.bt ]
  store i64 %.sink1516, ptr %i.y, align 8, !tbaa !13
  %i.qk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %i.qk, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ql = load i8, ptr %.1609, align 1, !tbaa !9
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i = icmp eq i8 %i.qo, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721: ; preds = %bb.bn, %bb.bq
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !133, !range !37, !noundef !38
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %.preheader1567, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1567:                                   ; preds = %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, %.preheader1567
  %.122.i.i = phi ptr [ %i.qv, %.preheader1567 ], [ %i.ip, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721 ] ; 3 uses
  %i.qs = load i8, ptr %.122.i.i, align 1, !tbaa !9 ; 2 uses
  %i.qt = add i8 %i.qs, -48
  %i.qu = icmp ult i8 %i.qt, 10
  %i.qv = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.qu, label %.preheader1567, label %bb.bv, !llvm.loop !161

bb.bv:                                            ; preds = %.preheader1567
  %i.qw = zext i8 %i.qs to i64
  %i.qx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i249.i = icmp eq i8 %i.qy, 0
  br i1 %.not.i249.i, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.qz = ptrtoint ptr %.122.i.i to i64
  %i.ra = ptrtoint ptr %i.id to i64
  %3 = sub i64 %i.qz, %i.ra                       ; 3 uses
  %4 = load ptr, ptr %i.g, align 8, !tbaa !151
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = ptrtoint ptr %i.n to i64
  %8 = ptrtoint ptr %6 to i64
  %i.rb = sub i64 %7, %8
  %9 = or i64 %i.rb, 6485183463413514240
  store i64 %9, ptr %i.y, align 8, !tbaa !13
  %i.rc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rd, ptr nonnull align 1 %i.id, i64 %3, i1 false)
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %3
  %i.rf = trunc i64 %3 to i32
  store i32 %i.rf, ptr %i.n, align 1
  store i8 0, ptr %i.re, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.au, %bb.bv, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread716, %bb.bs, %bb.br, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.ap
  %.0.i176.i1106.ph = phi i32 [ 9, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread716 ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson7icelake13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson7icelake13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread721 ], [ 9, %bb.bv ], [ 9, %bb.au ], [ 9, %bb.ap ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.id) #43
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1449: ; preds = %bb.bw, %.thread716, %bb.br, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread
  %.sroa.0.361105.ph = phi ptr [ %i.qa, %bb.br ], [ %i.rc, %bb.bw ], [ %.sroa.0.38, %.thread716 ], [ %i.ml, %_ZN8simdjson7icelake13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.id) #43
  br label %.thread752

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc261.i, %bb.bm
  %.sroa.0.40 = phi ptr [ %i.mf, %.noexc261.i ], [ %.sroa.0.39, %bb.bm ]
  %.1.i260.i = phi i32 [ %i.mc, %.noexc261.i ], [ %.0.i259.i, %bb.bm ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i260.i, 0         ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1185 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i260.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.id) #43
  %.not.i = and i1 %.not60.i.i, %.not59.i.i
  br i1 %.not.i, label %.thread752, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %select.unfold1073, %select.unfold916, %bb.c
  %.sroa.119.2 = phi i32 [ %.sroa.119.3, %select.unfold916 ], [ %.sroa.119.1, %select.unfold1073 ], [ 0, %bb.c ]
  %.sroa.23.4 = phi ptr [ %i.xz, %select.unfold916 ], [ %i.axm, %select.unfold1073 ], [ %i.z, %bb.c ] ; 3 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold916 ], [ %.sroa.172.2, %select.unfold1073 ], [ %i.n, %bb.c ] ; 4 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold916 ], [ %.sroa.0.3, %select.unfold1073 ], [ %i.y, %bb.c ] ; 3 uses
  %i.rg = add i32 %.sroa.119.2, 1                 ; 3 uses
  %i.rh = zext i32 %i.rg to i64                   ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !135
  %.not161.i = icmp ugt i64 %i.rj, %i.rh
  br i1 %.not161.i, label %bb.by, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %bb.bx
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !136
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rh
  store i8 0, ptr %i.rm, align 1, !tbaa !124
  %i.rn = load ptr, ptr %i.g, align 8, !tbaa !151 ; 2 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !118
  %i.rp = ptrtoint ptr %.sroa.0.4 to i64
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = sub i64 %i.rp, %i.rq
  %i.rs = lshr exact i64 %i.rr, 3
  %i.rt = trunc i64 %i.rs to i32
  %i.ru = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.rh ; 2 uses
  store i32 %i.rt, ptr %i.rv, align 4, !tbaa !153
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 4 ; 2 uses
  store i32 0, ptr %i.rw, align 4, !tbaa !155
  %i.rx = load i32, ptr %.sroa.23.4, align 4, !tbaa !10
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ry ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.sa, 34
  br i1 %.not162.i, label %bb.bz, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bz:                                            ; preds = %bb.by
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.rw, align 4, !tbaa !155
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !20
  %i.se = ptrtoint ptr %.sroa.172.4 to i64
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = or i64 %i.sg, 2449958197289549824
  store i64 %i.sh, ptr %i.sb, align 8, !tbaa !13
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 5 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rz, i64 1 ; 2 uses
  %i.sl = load <8 x i64>, ptr %i.sk, align 1, !tbaa !9 ; 2 uses
  store <8 x i64> %i.sl, ptr %i.sj, align 1, !tbaa !9
  %i.sm = bitcast <8 x i64> %i.sl to <64 x i8>    ; 2 uses
  %i.sn = icmp eq <64 x i8> %i.sm, splat (i8 92)
  %i.so = bitcast <64 x i1> %i.sn to i64          ; 2 uses
  %i.sp = icmp eq <64 x i8> %i.sm, splat (i8 34)
  %i.sq = bitcast <64 x i1> %i.sp to i64          ; 3 uses
  %i.sr = add i64 %i.so, -1
  %i.ss = and i64 %i.sr, %i.sq
  %.not11941274 = icmp eq i64 %i.ss, 0
  br i1 %.not11941274, label %.lr.ph1277, label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i185.i

.lr.ph1277:                                       ; preds = %bb.bz, %bb.cp
  %i.st = phi i64 [ %i.xl, %bb.cp ], [ %i.sq, %bb.bz ]
  %i.su = phi i64 [ %i.xj, %bb.cp ], [ %i.so, %bb.bz ] ; 2 uses
  %.05741276 = phi ptr [ %.1575, %bb.cp ], [ %i.sj, %bb.bz ] ; 4 uses
  %.05801275 = phi ptr [ %.1581, %bb.cp ], [ %i.sk, %bb.bz ] ; 4 uses
  %i.sv = add i64 %i.st, -1
  %i.sw = and i64 %i.sv, %i.su
  %.not1195 = icmp eq i64 %i.sw, 0
  br i1 %.not1195, label %bb.co, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1277
  %i.sx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.su, i1 true) ; 5 uses
  %i.sy = add nuw nsw i64 %i.sx, 1                ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.05801275, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !9   ; 2 uses
  %i.tb = icmp eq i8 %i.ta, 117
  br i1 %i.tb, label %bb.cb, label %bb.cm

bb.cb:                                            ; preds = %bb.ca
  %i.tc = getelementptr inbounds nuw i8, ptr %.05801275, i64 %i.sx ; 11 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.05741276, i64 %i.sx ; 8 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 2
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !9
  %i.tg = zext i8 %i.tf to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 2520
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !10
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tc, i64 3
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !9
  %i.tm = zext i8 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 1680
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !10
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !9
  %i.ts = zext i8 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 840
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !10
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tc, i64 5
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !9
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !10
  %i.ub = or i32 %i.tp, %i.tj
  %i.uc = or i32 %i.ub, %i.tv
  %i.ud = or i32 %i.uc, %i.ua                     ; 13 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tc, i64 6 ; 5 uses
  %i.uf = and i32 %i.ud, -1024
  switch i32 %i.uf, label %bb.ce [
    i32 55296, label %bb.cc
    i32 56320, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.ug = load i8, ptr %i.ue, align 1, !tbaa !9
  %i.uh = zext i8 %i.ug to i32
  %i.ui = shl nuw nsw i32 %i.uh, 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tc, i64 7
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !9
  %i.ul = zext i8 %i.uk to i32
  %i.um = or disjoint i32 %i.ui, %i.ul
  %.not.i14.i202.i = icmp eq i32 %i.um, 23669
  br i1 %.not.i14.i202.i, label %bb.cd, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cd:                                            ; preds = %bb.cc
  %i.un = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !9
  %i.up = zext i8 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 2520
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !10
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tc, i64 9
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !9
  %i.uv = zext i8 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 1680
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !10
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tc, i64 10
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !9
  %i.vb = zext i8 %i.va to i64
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 840
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !10
  %i.vf = getelementptr inbounds nuw i8, ptr %i.tc, i64 11
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !9
  %i.vh = zext i8 %i.vg to i64
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vh
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !10
  %i.vk = or i32 %i.uy, %i.us
  %i.vl = or i32 %i.vk, %i.ve
  %i.vm = or i32 %i.vl, %i.vj
  %i.vn = add i32 %i.vm, -56320                   ; 2 uses
  %.not35.i.i203.i = icmp ult i32 %i.vn, 1024
  br i1 %.not35.i.i203.i, label %.thread792, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread792:                                       ; preds = %bb.cd
  %i.vo = shl nuw nsw i32 %i.ud, 10
  %i.vp = add nsw i32 %i.vo, -56557568
  %i.vq = or disjoint i32 %i.vp, %i.vn
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cb
  %i.vs = icmp ult i32 %i.ud, 128
  br i1 %i.vs, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.vt = trunc nuw nsw i32 %i.ud to i8
  store i8 %i.vt, ptr %i.td, align 1, !tbaa !9
  br label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread801

bb.cg:                                            ; preds = %bb.ce
  %i.vu = icmp ult i32 %i.ud, 2048
  br i1 %i.vu, label %bb.ch, label %bb.ci
end_hunk_11
begin_hunk_12_@_ZNK8simdjson8westmere14implementation13validate_utf8EPKcm:bb.a
  %i.ch = and <16 x i8> %i.cg, splat (i8 15)
  %i.ci = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ch)
  %i.cj = and <16 x i8> %i.cd, splat (i8 15)
  %i.ck = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cj)
  %i.cl = bitcast <2 x i64> %i.i to <8 x i16>
  %i.cm = lshr <8 x i16> %i.cl, splat (i16 4)
  %i.cn = bitcast <8 x i16> %i.cm to <16 x i8>
  %i.co = and <16 x i8> %i.cn, splat (i8 15)
  %i.cp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.co)
  %i.cq = and <16 x i8> %i.ck, %i.ci
  %i.cr = and <16 x i8> %i.cq, %i.cp
  %i.cs = shufflevector <16 x i8> %i.bh, <16 x i8> %i.cc, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ct = shufflevector <16 x i8> %i.bh, <16 x i8> %i.cc, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.cu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cs, <16 x i8> splat (i8 96))
  %i.cv = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ct, <16 x i8> splat (i8 112))
  %i.cw = or <16 x i8> %i.cu, %i.cv
  %.inner15 = and <16 x i8> %i.cw, splat (i8 -128)
  %.inner16 = xor <16 x i8> %.inner15, %i.cr
  %.inner17 = or <16 x i8> %.inner8, %.inner4
  %.inner18 = or <16 x i8> %.inner17, %.inner12
  %.inner19 = or <16 x i8> %.inner18, %.inner16
  %i.cx = bitcast <16 x i8> %.inner19 to <2 x i64>
  %i.cy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cc, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.cz = bitcast <16 x i8> %i.cy to <2 x i64>
  br label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i

_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.32.2.i.i = phi <2 x i64> [ %i.cz, %bb.b ], [ %.sroa.32.0681.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.27.1.i.i = phi <2 x i64> [ %i.i, %bb.b ], [ %.sroa.27.0682.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.32.0681.i.pn.i = phi <2 x i64> [ %i.cx, %bb.b ], [ %.sroa.32.0681.i.i, %.lr.ph.i.i ]
  %.sroa.073.2.i.i = or <2 x i64> %.sroa.32.0681.i.pn.i, %.sroa.073.0683.i.i ; 3 uses
  %i.da = add nuw i64 %.sroa.11.0684.i.i, 64      ; 3 uses
  %i.db = icmp ult i64 %i.da, %spec.select.i.i.i
  br i1 %i.db, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !176

._crit_edge.loopexit.i.i:                         ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %i.dc = bitcast <2 x i64> %.sroa.27.1.i.i to <16 x i8>
  %i.dd = or <2 x i64> %.sroa.073.2.i.i, %.sroa.32.2.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.sroa.32.0.lcssa.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.dd, %._crit_edge.loopexit.i.i ]
  %.sroa.27.0.lcssa.i.i = phi <16 x i8> [ zeroinitializer, %bb.a ], [ %i.dc, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.sroa.073.0.lcssa.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.073.2.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.da, %._crit_edge.loopexit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.de = icmp eq i64 %2, %.sroa.11.0.lcssa.i.i
  br i1 %i.de, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i.i
  %i.dg = sub i64 %2, %.sroa.11.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.df, i64 %i.dg, i1 false)
  %.0..0..0..0..0..0..0..pre.i.i = load <2 x i64>, ptr %i.a, align 16, !tbaa !9
  %.16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..16..16..pre.i.i = load <2 x i64>, ptr %.16..16..16..16..16..16..16..sroa_idx, align 16, !tbaa !9
  %.32..32..32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..32..32..pre.i.i = load <2 x i64>, ptr %.32..32..32..32..32..32..32..sroa_idx, align 16, !tbaa !9
  %.48..48..48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..48..48..pre.i.i = load <2 x i64>, ptr %.48..48..48..48..48..48..48..sroa_idx, align 16, !tbaa !9
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %.48..48..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.48..48..48..48..48..48..48..pre.i.i, %bb.c ] ; 3 uses
  %.32..32..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.32..32..32..32..32..32..32..pre.i.i, %bb.c ] ; 3 uses
  %.16..16..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.16..16..16..16..16..16..16..pre.i.i, %bb.c ] ; 3 uses
  %.0..0..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.0..0..0..0..0..0..0..pre.i.i, %bb.c ] ; 3 uses
  %i.dh = or <2 x i64> %.32..32..i.i, %.48..48..i.i
  %i.di = or <2 x i64> %i.dh, %.16..16..i.i
  %i.dj = or <2 x i64> %i.di, %.0..0..i.i
  %i.dk = bitcast <2 x i64> %i.dj to <16 x i8>
  %i.dl = icmp slt <16 x i8> %i.dk, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %i.do = bitcast <2 x i64> %.0..0..i.i to <16 x i8> ; 6 uses
  %i.dp = shufflevector <16 x i8> %.sroa.27.0.lcssa.i.i, <16 x i8> %i.do, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dq = bitcast <16 x i8> %i.dp to <8 x i16>
  %i.dr = lshr <8 x i16> %i.dq, splat (i16 4)
  %i.ds = bitcast <8 x i16> %i.dr to <16 x i8>
  %i.dt = and <16 x i8> %i.ds, splat (i8 15)
  %i.du = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.dt)
  %i.dv = and <16 x i8> %i.dp, splat (i8 15)
  %i.dw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.dv)
  %i.dx = bitcast <2 x i64> %.0..0..i.i to <8 x i16>
  %i.dy = lshr <8 x i16> %i.dx, splat (i16 4)
  %i.dz = bitcast <8 x i16> %i.dy to <16 x i8>
  %i.ea = and <16 x i8> %i.dz, splat (i8 15)
  %i.eb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ea)
  %i.ec = and <16 x i8> %i.dw, %i.du
  %i.ed = and <16 x i8> %i.ec, %i.eb
  %i.ee = shufflevector <16 x i8> %.sroa.27.0.lcssa.i.i, <16 x i8> %i.do, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ef = shufflevector <16 x i8> %.sroa.27.0.lcssa.i.i, <16 x i8> %i.do, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.eg = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ee, <16 x i8> splat (i8 96))
  %i.eh = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ef, <16 x i8> splat (i8 112))
  %i.ei = or <16 x i8> %i.eg, %i.eh
  %.inner22 = and <16 x i8> %i.ei, splat (i8 -128)
  %.inner23 = xor <16 x i8> %.inner22, %i.ed
  %i.ej = bitcast <16 x i8> %.inner23 to <2 x i64>
  %i.ek = bitcast <2 x i64> %.16..16..i.i to <16 x i8> ; 6 uses
  %i.el = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.em = bitcast <16 x i8> %i.el to <8 x i16>
  %i.en = lshr <8 x i16> %i.em, splat (i16 4)
  %i.eo = bitcast <8 x i16> %i.en to <16 x i8>
  %i.ep = and <16 x i8> %i.eo, splat (i8 15)
  %i.eq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ep)
  %i.er = and <16 x i8> %i.el, splat (i8 15)
  %i.es = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.er)
  %i.et = bitcast <2 x i64> %.16..16..i.i to <8 x i16>
  %i.eu = lshr <8 x i16> %i.et, splat (i16 4)
  %i.ev = bitcast <8 x i16> %i.eu to <16 x i8>
  %i.ew = and <16 x i8> %i.ev, splat (i8 15)
  %i.ex = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ew)
  %i.ey = and <16 x i8> %i.es, %i.eq
  %i.ez = and <16 x i8> %i.ey, %i.ex
  %i.fa = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fb = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fc = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fa, <16 x i8> splat (i8 96))
  %i.fd = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fb, <16 x i8> splat (i8 112))
  %i.fe = or <16 x i8> %i.fc, %i.fd
  %.inner26 = and <16 x i8> %i.fe, splat (i8 -128)
  %.inner27 = xor <16 x i8> %.inner26, %i.ez
  %i.ff = bitcast <16 x i8> %.inner27 to <2 x i64>
  %i.fg = bitcast <2 x i64> %.32..32..i.i to <16 x i8> ; 6 uses
  %i.fh = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.fi = bitcast <16 x i8> %i.fh to <8 x i16>
  %i.fj = lshr <8 x i16> %i.fi, splat (i16 4)
  %i.fk = bitcast <8 x i16> %i.fj to <16 x i8>
  %i.fl = and <16 x i8> %i.fk, splat (i8 15)
  %i.fm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.fl)
  %i.fn = and <16 x i8> %i.fh, splat (i8 15)
  %i.fo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.fn)
  %i.fp = bitcast <2 x i64> %.32..32..i.i to <8 x i16>
  %i.fq = lshr <8 x i16> %i.fp, splat (i16 4)
  %i.fr = bitcast <8 x i16> %i.fq to <16 x i8>
  %i.fs = and <16 x i8> %i.fr, splat (i8 15)
  %i.ft = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.fs)
  %i.fu = and <16 x i8> %i.fo, %i.fm
  %i.fv = and <16 x i8> %i.fu, %i.ft
  %i.fw = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fx = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fw, <16 x i8> splat (i8 96))
  %i.fz = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fx, <16 x i8> splat (i8 112))
  %i.ga = or <16 x i8> %i.fy, %i.fz
  %.inner30 = and <16 x i8> %i.ga, splat (i8 -128)
  %.inner31 = xor <16 x i8> %.inner30, %i.fv
  %i.gb = bitcast <16 x i8> %.inner31 to <2 x i64>
  %i.gc = bitcast <2 x i64> %.48..48..i.i to <16 x i8> ; 4 uses
  %i.gd = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ge = bitcast <16 x i8> %i.gd to <8 x i16>
  %i.gf = lshr <8 x i16> %i.ge, splat (i16 4)
  %i.gg = bitcast <8 x i16> %i.gf to <16 x i8>
  %i.gh = and <16 x i8> %i.gg, splat (i8 15)
  %i.gi = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.gh)
  %i.gj = and <16 x i8> %i.gd, splat (i8 15)
  %i.gk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.gj)
  %i.gl = bitcast <2 x i64> %.48..48..i.i to <8 x i16>
  %i.gm = lshr <8 x i16> %i.gl, splat (i16 4)
  %i.gn = bitcast <8 x i16> %i.gm to <16 x i8>
  %i.go = and <16 x i8> %i.gn, splat (i8 15)
  %i.gp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.go)
  %i.gq = and <16 x i8> %i.gk, %i.gi
  %i.gr = and <16 x i8> %i.gq, %i.gp
  %i.gs = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.gt = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.gu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gs, <16 x i8> splat (i8 96))
  %i.gv = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gt, <16 x i8> splat (i8 112))
  %i.gw = or <16 x i8> %i.gu, %i.gv
  %.inner34 = and <16 x i8> %i.gw, splat (i8 -128)
  %.inner35 = xor <16 x i8> %.inner34, %i.gr
  %i.gx = bitcast <16 x i8> %.inner35 to <2 x i64>
  %i.gy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gc, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.gz = bitcast <16 x i8> %i.gy to <2 x i64>
  %i.ha = or <2 x i64> %.sroa.073.0.lcssa.i.i, %i.gz
  %i.hb = or <2 x i64> %i.ha, %i.ej
  %i.hc = or <2 x i64> %i.hb, %i.ff
  %i.hd = or <2 x i64> %i.hc, %i.gb
  %i.he = or <2 x i64> %i.hd, %i.gx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %.sroa.073.1.i.i = phi <2 x i64> [ %i.he, %bb.d ], [ %.sroa.32.0.lcssa.i.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i ] ; 2 uses
  %i.hf = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.073.1.i.i, <2 x i64> %.sroa.073.1.i.i)
  %i.hg = icmp ne i32 %i.hf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.hg
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163  ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  switch i8 %i.z, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.y
    i8 102, label %bb.ab
    i8 110, label %bb.ae
    i8 45, label %bb.ah
    i8 48, label %bb.ah
    i8 49, label %bb.ah
    i8 50, label %bb.ah
    i8 51, label %bb.ah
    i8 52, label %bb.ah
    i8 53, label %bb.ah
    i8 54, label %bb.ah
    i8 55, label %bb.ah
    i8 56, label %bb.ah
    i8 57, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.o, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.ag, 125
  br i1 %.not162.i, label %.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = add i32 %i.o, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.an, 93
  br i1 %.not.i, label %.thread963, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread:                                          ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 125
  br i1 %i.as, label %bb.e, label %bb.bx

bb.e:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8863084066665136131, ptr %i.u, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 9007199254740992001, ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread1075

.thread963:                                       ; preds = %bb.d
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = icmp eq i8 %i.az, 93
  br i1 %i.ba, label %bb.f, label %.thread1089

bb.f:                                             ; preds = %.thread963
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 6557241057451442179, ptr %i.u, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 6701356245527298049, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread1075

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.u, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.backedge1930, %bb.g
  %.0841 = phi ptr [ %i.bg, %bb.g ], [ %.0841.be, %.backedge1930 ] ; 6 uses
  %.0838 = phi ptr [ %i.bf, %bb.g ], [ %.0838.be, %.backedge1930 ] ; 7 uses
  %i.bh = load <2 x i64>, ptr %.0841, align 1, !tbaa !9 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0841, i64 16
  %i.bj = load <2 x i64>, ptr %i.bi, align 1, !tbaa !9 ; 3 uses
  store <2 x i64> %i.bh, ptr %.0838, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %.0838, i64 16
  store <2 x i64> %i.bj, ptr %i.bk, align 1, !tbaa !9
  %i.bl = shufflevector <2 x i64> %i.bh, <2 x i64> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bm = bitcast <4 x i64> %i.bl to <32 x i8>
  %i.bn = icmp eq <32 x i8> %i.bm, splat (i8 92)
  %.sroa.0467.0.extract.trunc = bitcast <32 x i1> %i.bn to i32 ; 3 uses
  %i.bo = shufflevector <2 x i64> %i.bh, <2 x i64> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bp = bitcast <4 x i64> %i.bo to <32 x i8>
  %i.bq = icmp eq <32 x i8> %i.bp, splat (i8 34)
  %.sroa.6.0.extract.trunc = bitcast <32 x i1> %i.bq to i32 ; 2 uses
  %i.br = add i32 %.sroa.0467.0.extract.trunc, -1
  %i.bs = and i32 %i.br, %.sroa.6.0.extract.trunc
  %.not1516 = icmp eq i32 %i.bs, 0
  br i1 %.not1516, label %bb.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i

bb.i:                                             ; preds = %bb.h
  %.not1517 = icmp eq i32 %.sroa.0467.0.extract.trunc, 0
  br i1 %.not1517, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0467.0.extract.trunc, i1 true) ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64              ; 4 uses
  %i.bv = add nuw nsw i32 %i.bt, 1
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0841, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9   ; 2 uses
  %i.bz = icmp eq i8 %i.by, 117
  br i1 %i.bz, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.0841, i64 %i.bu ; 11 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0838, i64 %i.bu ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2520
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1680
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 840
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cz = or i32 %i.cn, %i.ch
  %i.da = or i32 %i.cz, %i.ct
  %i.db = or i32 %i.da, %i.cy                     ; 13 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 6 ; 5 uses
  %i.dd = and i32 %i.db, -1024
  switch i32 %i.dd, label %bb.n [
    i32 55296, label %bb.l
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj
  %.not.i20.i = icmp eq i32 %i.dk, 23669
  br i1 %.not.i20.i, label %bb.m, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !9
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2520
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1680
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 840
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !10
  %i.ei = or i32 %i.dw, %i.dq
  %i.ej = or i32 %i.ei, %i.ec
  %i.ek = or i32 %i.ej, %i.eh
  %i.el = add i32 %i.ek, -56320                   ; 2 uses
  %.not35.i.i = icmp ult i32 %i.el, 1024
  br i1 %.not35.i.i, label %.thread984, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread984:                                       ; preds = %bb.m
  %i.em = shl nuw nsw i32 %i.db, 10
  %i.en = add nsw i32 %i.em, -56557568
end_hunk_12
begin_hunk_13_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ev = or disjoint i8 %i.eu, -64
  store i8 %i.ev, ptr %i.cb, align 1, !tbaa !9
  %i.ew = trunc i32 %i.db to i8
  %i.ex = and i8 %i.ew, 63
  %i.ey = or disjoint i8 %i.ex, -128
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !9
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread993

bb.r:                                             ; preds = %bb.p
  %i.fa = icmp ult i32 %i.db, 65536
  br i1 %i.fa, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fb = lshr i32 %i.db, 12
  %i.fc = trunc nuw nsw i32 %i.fb to i8
  %i.fd = or disjoint i8 %i.fc, -32
  store i8 %i.fd, ptr %i.cb, align 1, !tbaa !9
  %i.fe = lshr i32 %i.db, 6
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = and i8 %i.ff, 63
  %i.fh = or disjoint i8 %i.fg, -128
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !9
  %i.fj = trunc i32 %i.db to i8
  %i.fk = and i8 %i.fj, 63
  %i.fl = or disjoint i8 %i.fk, -128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !9
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread993

bb.t:                                             ; preds = %bb.r
  %i.fn = icmp ult i32 %i.db, 1114112
  br i1 %i.fn, label %bb.u, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.u:                                             ; preds = %.thread984, %bb.t
  %.6972978982988 = phi ptr [ %i.ep, %.thread984 ], [ %i.dc, %bb.t ]
  %.4.i.i973977983987 = phi i32 [ %i.eo, %.thread984 ], [ %i.db, %bb.t ] ; 4 uses
  %i.fo = lshr i32 %.4.i.i973977983987, 6
  %i.fp = lshr i32 %.4.i.i973977983987, 12
  %i.fq = lshr i32 %.4.i.i973977983987, 18
  %i.fr = trunc i32 %.4.i.i973977983987 to i8
  %i.fs = trunc i32 %i.fo to i8
  %i.ft = trunc i32 %i.fp to i8
  %i.fu = trunc nsw i32 %i.fq to i8
  %i.fv = insertelement <4 x i8> poison, i8 %i.fu, i64 0
  %i.fw = insertelement <4 x i8> %i.fv, i8 %i.ft, i64 1
  %i.fx = insertelement <4 x i8> %i.fw, i8 %i.fs, i64 2
  %i.fy = insertelement <4 x i8> %i.fx, i8 %i.fr, i64 3
  %i.fz = and <4 x i8> %i.fy, <i8 -1, i8 63, i8 63, i8 63>
  %i.ga = or disjoint <4 x i8> %i.fz, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ga, ptr %i.cb, align 1, !tbaa !9
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread993

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread993: ; preds = %bb.o, %bb.q, %bb.s, %bb.u
  %.6971.ph = phi ptr [ %.6972978982988, %bb.u ], [ %i.dc, %bb.s ], [ %i.dc, %bb.q ], [ %i.dc, %bb.o ]
  %.0.i.i.ph = phi i64 [ 4, %bb.u ], [ 3, %bb.s ], [ 2, %bb.q ], [ 1, %bb.o ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0.i.i.ph
  br label %.backedge1930

bb.v:                                             ; preds = %bb.j
  %i.gc = zext i8 %i.by to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !9   ; 2 uses
  %.not.i.i = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %.0838, i64 %i.bu
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !9
  %i.gg = getelementptr inbounds nuw i8, ptr %.0841, i64 %i.bu
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gi = getelementptr inbounds nuw i8, ptr %.0838, i64 %i.bw
  br label %.backedge1930

.backedge1930:                                    ; preds = %bb.w, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread993, %bb.x
  %.0841.be = phi ptr [ %i.gh, %bb.w ], [ %i.gj, %bb.x ], [ %.6971.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread993 ]
  %.0838.be = phi ptr [ %i.gi, %bb.w ], [ %i.gk, %bb.x ], [ %i.gb, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread993 ]
  br label %bb.h

bb.x:                                             ; preds = %bb.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.0841, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %.0838, i64 32
  br label %.backedge1930

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i: ; preds = %bb.h
  %i.gl = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.6.0.extract.trunc, i1 true)
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %.0838, i64 %i.gm ; 2 uses
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.bf to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = trunc i64 %i.gq to i32
  store i32 %i.gr, ptr %i.m, align 1
  store i8 0, ptr %i.gn, align 1, !tbaa !9
  br label %.thread1075

bb.y:                                             ; preds = %bb.b
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !172
  %i.gu = sub i64 %i.gt, %i.x                     ; 2 uses
  %i.gv = icmp ugt i64 %i.gu, 4
  br i1 %i.gv, label %.noexc, label %bb.z

.noexc:                                           ; preds = %bb.y
  %.0.copyload.i = load i32, ptr %i.y, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !9
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hb = zext nneg i8 %i.ha to i32
  %i.hc = or i32 %.0.copyload.i, %i.hb
  %i.hd = icmp eq i32 %i.hc, 1702195828
  br i1 %i.hd, label %bb.aa, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.he = icmp eq i64 %i.gu, 4
  br i1 %i.he, label %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit: ; preds = %bb.z
  %.0.copyload.i69 = load i32, ptr %i.y, align 1
  %.not.i66 = icmp eq i32 %.0.copyload.i69, 1702195828
  br i1 %.not.i66, label %bb.aa, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.aa:                                            ; preds = %.noexc, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit
  store i64 8358680908399640576, ptr %i.u, align 8, !tbaa !13
  %i.hf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread1075

bb.ab:                                            ; preds = %bb.b
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !172
  %i.hi = sub i64 %i.hh, %i.x                     ; 2 uses
  %i.hj = icmp ugt i64 %i.hi, 5
  br i1 %i.hj, label %.noexc72, label %bb.ac

.noexc72:                                         ; preds = %bb.ab
  %i.hk = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i73 = load i32, ptr %i.hk, align 1
  %i.hl = xor i32 %.0.copyload.i.i73, 1702063201
  %i.hm = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !9
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hr = zext nneg i8 %i.hq to i32
  %i.hs = or i32 %i.hl, %i.hr
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.ad, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.hu = icmp eq i64 %i.hi, 5
  br i1 %i.hu, label %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit: ; preds = %bb.ac
  %i.hv = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i = load i32, ptr %i.hv, align 1
  %.not.i71 = icmp eq i32 %.0.copyload.i.i, 1702063201
  br i1 %.not.i71, label %bb.ad, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ad:                                            ; preds = %.noexc72, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit
  store i64 7349874591868649472, ptr %i.u, align 8, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread1075

bb.ae:                                            ; preds = %bb.b
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !172
  %i.hz = sub i64 %i.hy, %i.x                     ; 2 uses
  %i.ia = icmp ugt i64 %i.hz, 4
  br i1 %i.ia, label %.noexc77, label %bb.af

.noexc77:                                         ; preds = %bb.ae
  %.0.copyload.i.i78 = load i32, ptr %i.y, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !9
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !124, !range !37, !noundef !38
  %i.ig = zext nneg i8 %i.if to i32
  %i.ih = or i32 %.0.copyload.i.i78, %i.ig
  %i.ii = icmp eq i32 %i.ih, 1819047278
  br i1 %i.ii, label %bb.ag, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.ij = icmp eq i64 %i.hz, 4
  br i1 %i.ij, label %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit: ; preds = %bb.af
  %.0.copyload.i.i75 = load i32, ptr %i.y, align 1
  %.not.i76 = icmp eq i32 %.0.copyload.i.i75, 1819047278
  br i1 %.not.i76, label %bb.ag, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ag:                                            ; preds = %.noexc77, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit
  store i64 7926335344172072960, ptr %i.u, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread1075

bb.ah:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !172
  %i.in = add i64 %i.im, 64
  %i.io = sub i64 %i.in, %i.x
  %i.ip = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.io, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %2 = load i64, ptr %i.il, align 8, !tbaa !172
  %3 = load i32, ptr %i.k, align 4, !tbaa !10
  %4 = zext i32 %3 to i64
  %i.ir = sub i64 %2, %4                          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr nonnull align 1 %i.y, i64 %i.ir, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.is, i8 32, i64 64, i1 false)
  %i.it = load i8, ptr %i.ip, align 1, !tbaa !9   ; 2 uses
  %i.iu = icmp eq i8 %i.it, 45                    ; 10 uses
  %i.iv = zext i1 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iv ; 6 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !9   ; 4 uses
  %i.iy = add i8 %i.ix, -48                       ; 2 uses
  %i.iz = icmp ult i8 %i.iy, 10
  br i1 %i.iz, label %.lr.ph, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit

.lr.ph:                                           ; preds = %bb.ai, %.lr.ph
  %i.ja = phi i8 [ %i.jg, %.lr.ph ], [ %i.iy, %bb.ai ]
  %.09171569 = phi ptr [ %i.je, %.lr.ph ], [ %i.iw, %bb.ai ]
  %.09251568 = phi i64 [ %i.jd, %.lr.ph ], [ 0, %bb.ai ]
  %i.jb = mul i64 %.09251568, 10
  %i.jc = zext nneg i8 %i.ja to i64
  %i.jd = add i64 %i.jb, %i.jc                    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.09171569, i64 1 ; 3 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !9   ; 2 uses
  %i.jg = add i8 %i.jf, -48                       ; 2 uses
  %i.jh = icmp ult i8 %i.jg, 10
  br i1 %i.jh, label %.lr.ph, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, !llvm.loop !182

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit: ; preds = %.lr.ph, %bb.ai
  %.0925.lcssa = phi i64 [ 0, %bb.ai ], [ %i.jd, %.lr.ph ] ; 3 uses
  %.0917.lcssa = phi ptr [ %i.iw, %bb.ai ], [ %i.je, %.lr.ph ] ; 6 uses
  %.lcssa1567 = phi i8 [ %i.ix, %bb.ai ], [ %i.jf, %.lr.ph ] ; 2 uses
  %i.ji = ptrtoint ptr %.0917.lcssa to i64
  %i.jj = ptrtoint ptr %i.iw to i64               ; 3 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 3 uses
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.jm = icmp eq i8 %i.ix, 48
  %i.jn = icmp ne i64 %i.jk, 1
  %or.cond.i = and i1 %i.jn, %i.jm
  br i1 %or.cond.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jo = icmp eq i8 %.lcssa1567, 46              ; 2 uses
  br i1 %i.jo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.ptr1514 = getelementptr inbounds nuw i8, ptr %.0917.lcssa, i64 1 ; 2 uses
  %.0.copyload.i96 = load i64, ptr %.ptr1514, align 1 ; 3 uses
  %i.jp = and i64 %.0.copyload.i96, -1085102592571150096
  %i.jq = add i64 %.0.copyload.i96, 434041037028460038
  %i.jr = lshr i64 %i.jq, 4
  %i.js = and i64 %i.jr, 1085102592571150095
  %i.jt = or disjoint i64 %i.js, %i.jp
  %i.ju = icmp eq i64 %i.jt, 3689348814741910323
  %i.jv = trunc i64 %.0.copyload.i96 to i8
  br i1 %i.ju, label %.noexc89, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

.noexc89:                                         ; preds = %bb.al
  %i.jw = mul i64 %.0925.lcssa, 100000000
  %i.jx = load <16 x i8>, ptr %.ptr1514, align 1  ; 2 uses
  %i.jy = add <16 x i8> %i.jx, <i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.jz = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.jy, <16 x i8> <i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.ka = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jz, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.kb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ka, <4 x i32> poison)
  %i.kc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kb, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.kd = extractelement <4 x i32> %i.kc, i64 0
  %i.ke = zext i32 %i.kd to i64
  %i.kf = add i64 %i.jw, %i.ke
  %i.kg = extractelement <16 x i8> %i.jx, i64 8
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i: ; preds = %.noexc89, %bb.al
  %i.kh = phi i8 [ %i.kg, %.noexc89 ], [ %i.jv, %bb.al ]
  %.3928 = phi i64 [ %i.kf, %.noexc89 ], [ %.0925.lcssa, %bb.al ] ; 2 uses
  %.3920.idx = phi i64 [ 9, %.noexc89 ], [ 1, %bb.al ]
  %i.ki = add i8 %i.kh, -48                       ; 2 uses
  %i.kj = icmp ult i8 %i.ki, 10                   ; 2 uses
  %i.kk = mul i64 %.3928, 10
  %i.kl = zext nneg i8 %i.ki to i64
  %i.km = add i64 %i.kk, %i.kl
  %.49291022 = select i1 %i.kj, i64 %i.km, i64 %.3928 ; 2 uses
  %.4921.idx = zext i1 %i.kj to i64
  %.3920.add = add nuw nsw i64 %.3920.idx, %.4921.idx ; 4 uses
  %.5922.ptr1573 = getelementptr inbounds nuw i8, ptr %.0917.lcssa, i64 %.3920.add
  %i.kn = load i8, ptr %.5922.ptr1573, align 1, !tbaa !9 ; 2 uses
  %i.ko = add i8 %i.kn, -48                       ; 2 uses
  %i.kp = icmp ult i8 %i.ko, 10
  br i1 %i.kp, label %.lr.ph1576, label %.noexc85

.lr.ph1576:                                       ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i, %.lr.ph1576
  %i.kq = phi i8 [ %i.kv, %.lr.ph1576 ], [ %i.ko, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.5922.idx1575 = phi i64 [ %.5922.add, %.lr.ph1576 ], [ %.3920.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.59301574 = phi i64 [ %i.kt, %.lr.ph1576 ], [ %.49291022, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %i.kr = mul i64 %.59301574, 10
  %i.ks = zext nneg i8 %i.kq to i64
  %i.kt = add i64 %i.kr, %i.ks                    ; 2 uses
  %.5922.add = add nuw nsw i64 %.5922.idx1575, 1  ; 3 uses
  %.5922.ptr = getelementptr inbounds nuw i8, ptr %.0917.lcssa, i64 %.5922.add
  %i.ku = load i8, ptr %.5922.ptr, align 1, !tbaa !9 ; 2 uses
  %i.kv = add i8 %i.ku, -48                       ; 2 uses
  %i.kw = icmp ult i8 %i.kv, 10
  br i1 %i.kw, label %.lr.ph1576, label %.noexc85.thread, !llvm.loop !183

.noexc85:                                         ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3920.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc85.thread

.noexc85.thread:                                  ; preds = %.lr.ph1576, %.noexc85
  %.5930.lcssa1732 = phi i64 [ %.49291022, %.noexc85 ], [ %i.kt, %.lr.ph1576 ]
  %.5922.idx.lcssa15721731 = phi i64 [ %.3920.add, %.noexc85 ], [ %.5922.add, %.lr.ph1576 ] ; 2 uses
  %i.kx = phi i8 [ %i.kn, %.noexc85 ], [ %i.ku, %.lr.ph1576 ]
  %.5922.ptr.le = getelementptr inbounds nuw i8, ptr %.0917.lcssa, i64 %.5922.idx.lcssa15721731 ; 2 uses
  %i.ky = ptrtoint ptr %.5922.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5922.idx.lcssa15721731
  %i.kz = sub i64 %i.ky, %i.jj
  %sext.i = shl i64 %i.kz, 32
  %i.la = ashr exact i64 %sext.i, 32
  br label %bb.am

bb.am:                                            ; preds = %.noexc85.thread, %bb.ak
  %i.lb = phi i8 [ %i.kx, %.noexc85.thread ], [ %.lcssa1567, %bb.ak ] ; 2 uses
  %.0932 = phi i64 [ %gepdiff, %.noexc85.thread ], [ 0, %bb.ak ] ; 2 uses
  %.1926 = phi i64 [ %.5930.lcssa1732, %.noexc85.thread ], [ %.0925.lcssa, %bb.ak ] ; 14 uses
  %.1918 = phi ptr [ %.5922.ptr.le, %.noexc85.thread ], [ %.0917.lcssa, %bb.ak ] ; 4 uses
  %.044.i = phi i64 [ %i.la, %.noexc85.thread ], [ %i.jk, %bb.ak ] ; 4 uses
  switch i8 %i.lb, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.lc = getelementptr inbounds nuw i8, ptr %.1918, i64 1 ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !9   ; 3 uses
  %i.le = icmp eq i8 %i.ld, 45
  switch i8 %i.ld, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %.1918, i64 2 ; 2 uses
  %.pre1666 = load i8, ptr %i.lf, align 1, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.lg = phi i8 [ %i.ld, %bb.an ], [ %.pre1666, %bb.ao ]
  %.6923 = phi ptr [ %i.lc, %bb.an ], [ %i.lf, %bb.ao ] ; 3 uses
  %i.lh = add i8 %i.lg, -48                       ; 2 uses
  %i.li = icmp ult i8 %i.lh, 10
  br i1 %i.li, label %.lr.ph1583, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1583:                                       ; preds = %bb.ap, %.lr.ph1583
  %i.lj = phi i8 [ %i.lo, %.lr.ph1583 ], [ %i.lh, %bb.ap ]
  %.09141582 = phi i64 [ %i.lm, %.lr.ph1583 ], [ 0, %bb.ap ]
  %.7924.idx1581 = phi i64 [ %.7924.add, %.lr.ph1583 ], [ 0, %bb.ap ] ; 2 uses
  %i.lk = mul nsw i64 %.09141582, 10
  %i.ll = zext nneg i8 %i.lj to i64
  %i.lm = add nsw i64 %i.lk, %i.ll                ; 3 uses
  %.7924.add = add nuw nsw i64 %.7924.idx1581, 1  ; 3 uses
  %.7924.ptr = getelementptr inbounds nuw i8, ptr %.6923, i64 %.7924.add
  %i.ln = load i8, ptr %.7924.ptr, align 1, !tbaa !9 ; 2 uses
  %i.lo = add i8 %i.ln, -48                       ; 2 uses
  %i.lp = icmp ult i8 %i.lo, 10
  br i1 %i.lp, label %.lr.ph1583, label %bb.aq, !llvm.loop !184

bb.aq:                                            ; preds = %.lr.ph1583
  %.7924.ptr.le = getelementptr inbounds nuw i8, ptr %.6923, i64 %.7924.add
  %i.lq = icmp samesign ugt i64 %.7924.idx1581, 17
  br i1 %i.lq, label %.preheader1552, label %.thread1032, !prof !107

.preheader1552:                                   ; preds = %bb.aq, %.preheader1552
  %.0.i90 = phi ptr [ %i.lt, %.preheader1552 ], [ %.6923, %bb.aq ] ; 3 uses
  %i.lr = load i8, ptr %.0.i90, align 1, !tbaa !9
  %i.ls = icmp eq i8 %i.lr, 48
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i90, i64 1
  br i1 %i.ls, label %.preheader1552, label %bb.ar, !llvm.loop !185

bb.ar:                                            ; preds = %.preheader1552
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i90, i64 18
  %i.lv = icmp ugt ptr %.7924.ptr.le, %i.lu
  %spec.select = select i1 %i.lv, i64 999999999999999999, i64 %i.lm
  br label %.thread1032

.thread1032:                                      ; preds = %bb.ar, %bb.aq
  %.1915 = phi i64 [ %i.lm, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.lw = sub nsw i64 0, %.1915
  %i.lx = select i1 %i.le, i64 %i.lw, i64 %.1915
  %i.ly = add nsw i64 %i.lx, %.0932
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.jo, label %bb.at, label %bb.bn

bb.at:                                            ; preds = %.thread1032, %bb.as
  %i.lz = phi i8 [ %i.ln, %.thread1032 ], [ %i.lb, %bb.as ]
  %.19331036 = phi i64 [ %i.ly, %.thread1032 ], [ %.0932, %bb.as ] ; 9 uses
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !124, !range !37, !noundef !38
  %.not59.i = icmp eq i8 %i.mc, 0                 ; 3 uses
end_hunk_13
begin_hunk_14_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.nr = zext i64 %i.nk to i128                  ; 2 uses
  %i.ns = zext i64 %i.nq to i128
  %i.nt = mul nuw i128 %i.ns, %i.nr               ; 2 uses
  %i.nu = trunc i128 %i.nt to i64                 ; 2 uses
  %i.nv = lshr i128 %i.nt, 64
  %i.nw = trunc nuw i128 %i.nv to i64             ; 3 uses
  %i.nx = and i64 %i.nw, 511
  %i.ny = icmp eq i64 %i.nx, 511
  br i1 %i.ny, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nz = getelementptr i8, ptr %i.no, i64 5480
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !13
  %i.ob = zext i64 %i.oa to i128
  %i.oc = mul nuw i128 %i.ob, %i.nr
  %i.od = lshr i128 %i.oc, 64
  %i.oe = trunc nuw i128 %i.od to i64             ; 2 uses
  %i.of = add i64 %i.oe, %i.nu                    ; 2 uses
  %i.og = icmp ult i64 %i.of, %i.oe
  %i.oh = zext i1 %i.og to i64
  %spec.select.i101 = add nuw i64 %i.oh, %i.nw
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i = phi i64 [ %spec.select.i101, %bb.bd ], [ %i.nw, %bb.bc ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.of, %bb.bd ], [ %i.nu, %bb.bc ]
  %i.oi = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.oj = add nuw nsw i64 %i.oi, 9                ; 2 uses
  %i.ok = lshr i64 %.sroa.7.1.i, %i.oj            ; 6 uses
  %reass.sub = sub nsw i64 %i.ni, %i.nj
  %.neg = add nsw i64 %reass.sub, %i.oi           ; 4 uses
  %i.ol = add nsw i64 %.neg, 1086
  %i.om = icmp slt i64 %.neg, -1085
  br i1 %i.om, label %bb.bf, label %bb.bi, !prof !107

bb.bf:                                            ; preds = %bb.be
  %i.on = icmp samesign ult i64 %.neg, -1148
  br i1 %i.on, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.oo = select i1 %i.iu, double -0.000000e+00, double 0.000000e+00
  br label %.noexc95.thread

bb.bh:                                            ; preds = %bb.bf
  %i.op = sub nuw nsw i64 -1085, %.neg
  %i.oq = lshr i64 %i.ok, %i.op                   ; 2 uses
  %i.or = and i64 %i.oq, 1
  %i.os = add nuw nsw i64 %i.or, %i.oq            ; 2 uses
  %i.ot = lshr i64 %i.os, 1
  %i.ou = icmp samesign ugt i64 %i.os, 9007199254740991
  %i.ov = and i64 %i.ot, 13510798882111487
  %i.ow = select i1 %i.ou, i64 4503599627370496, i64 0
  %i.ox = select i1 %i.iu, i64 -9223372036854775808, i64 0
  %i.oy = or disjoint i64 %i.ow, %i.ox
  %i.oz = or disjoint i64 %i.oy, %i.ov
  %i.pa = bitcast i64 %i.oz to double
  br label %.noexc95.thread

bb.bi:                                            ; preds = %bb.be
  %i.pb = icmp ult i64 %.sroa.037.0.i, 2
  %i.pc = add nsw i64 %.19331036, 4
  %i.pd = icmp ult i64 %i.pc, 28
  %or.cond7.i = and i1 %i.pd, %i.pb
  %i.pe = and i64 %i.ok, 3
  %i.pf = icmp eq i64 %i.pe, 1
  %i.pg = select i1 %or.cond7.i, i1 %i.pf, i1 false
  br i1 %i.pg, label %bb.bj, label %bb.bk, !prof !107

bb.bj:                                            ; preds = %bb.bi
  %i.ph = shl i64 %i.ok, %i.oj
  %i.pi = icmp eq i64 %i.ph, %.sroa.7.1.i
  %i.pj = and i64 %i.ok, 72057594037927932
  %spec.select90.i = select i1 %i.pi, i64 %i.pj, i64 %i.ok
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i = phi i64 [ %i.ok, %bb.bi ], [ %spec.select90.i, %bb.bj ] ; 2 uses
  %i.pk = and i64 %.080.i, 1
  %i.pl = add nuw nsw i64 %i.pk, %.080.i          ; 2 uses
  %i.pm = icmp samesign ugt i64 %i.pl, 18014398509481983 ; 2 uses
  %i.pn = zext i1 %i.pm to i64
  %spec.select92.i = add nuw nsw i64 %i.ol, %i.pn ; 2 uses
  %i.po = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.po, label %.noexc95, label %bb.bl, !prof !107

bb.bl:                                            ; preds = %bb.bk
  %i.pp = lshr i64 %i.pl, 1
  %i.pq = and i64 %i.pp, 13510798882111487
  %i.pr = select i1 %i.pm, i64 0, i64 %i.pq
  %i.ps = shl nuw nsw i64 %spec.select92.i, 52
  %i.pt = select i1 %i.iu, i64 -9223372036854775808, i64 0
  %i.pu = or disjoint i64 %i.pr, %i.pt
  %i.pv = or i64 %i.pu, %i.ps
  %i.pw = bitcast i64 %i.pv to double
  br label %.noexc95.thread

.noexc95:                                         ; preds = %bb.bk
  %i.px = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ip, ptr noundef %i.f)
  br i1 %i.px, label %.noexc95..noexc95.thread_crit_edge, label %bb.bm

.noexc95..noexc95.thread_crit_edge:               ; preds = %.noexc95
  %.pre1668 = load double, ptr %i.f, align 8, !tbaa !130
  br label %.noexc95.thread

.noexc95.thread:                                  ; preds = %bb.az, %.noexc95..noexc95.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %i.py = phi double [ %.pre1668, %.noexc95..noexc95.thread_crit_edge ], [ %i.pw, %bb.bl ], [ %i.pa, %bb.bh ], [ %i.oo, %bb.bg ], [ %spec.select1810, %bb.az ], [ %i.ng, %bb.bb ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !13
  %i.pz = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.py, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc95.thread, %.noexc95
  %.sroa.0.22 = phi ptr [ %i.qa, %.noexc95.thread ], [ %i.u, %.noexc95 ]
  %.0.i92 = phi i32 [ 0, %.noexc95.thread ], [ 9, %.noexc95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.as
  %i.qb = select i1 %i.iu, i64 19, i64 20         ; 2 uses
  %i.qc = icmp ugt i64 %.044.i, %i.qb
  br i1 %i.qc, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qd = icmp eq i64 %.044.i, %i.qb
  br i1 %i.qd, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.iu, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.qe = icmp ugt i64 %.1926, -9223372036854775808
  br i1 %i.qe, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qf = sub i64 0, %.1926
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !13
  %i.qg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.qf, ptr %i.qg, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qi = load i8, ptr %.1918, align 1, !tbaa !9
  %i.qj = zext i8 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i = icmp eq i8 %i.ql, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.qm = icmp ne i8 %i.it, 49
  %i.qn = icmp sgt i64 %.1926, -1
  %or.cond5.i = select i1 %i.qm, i1 true, i1 %i.qn
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread1039

bb.bt:                                            ; preds = %bb.bo
  %i.qo = icmp slt i64 %.1926, 0
  br i1 %i.qo, label %.thread1039, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qp = sub nsw i64 0, %.1926
  %i.qq = select i1 %i.iu, i64 %i.qp, i64 %.1926
  br label %.thread1039

.thread1039:                                      ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1812 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink = phi i64 [ %i.qq, %bb.bu ], [ %.1926, %bb.bs ], [ %.1926, %bb.bt ]
  store i64 %.sink1812, ptr %i.u, align 8, !tbaa !13
  %i.qr = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink, ptr %i.qr, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qs = load i8, ptr %.1918, align 1, !tbaa !9
  %i.qt = zext i8 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i = icmp eq i8 %i.qv, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044: ; preds = %bb.bn, %bb.bq
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !133, !range !37, !noundef !38
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %.preheader1865, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1865:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, %.preheader1865
  %.122.i = phi ptr [ %i.rc, %.preheader1865 ], [ %i.iw, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044 ] ; 3 uses
  %i.qz = load i8, ptr %.122.i, align 1, !tbaa !9 ; 2 uses
  %i.ra = add i8 %i.qz, -48
  %i.rb = icmp ult i8 %i.ra, 10
  %i.rc = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.rb, label %.preheader1865, label %bb.bv, !llvm.loop !187

bb.bv:                                            ; preds = %.preheader1865
  %i.rd = zext i8 %i.qz to i64
  %i.re = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i80 = icmp eq i8 %i.rf, 0
  br i1 %.not.i80, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.rg = ptrtoint ptr %.122.i to i64
  %i.rh = ptrtoint ptr %i.ip to i64
  %5 = sub i64 %i.rg, %i.rh                       ; 3 uses
  %6 = load ptr, ptr %i.g, align 8, !tbaa !177
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = ptrtoint ptr %i.m to i64
  %10 = ptrtoint ptr %8 to i64
  %i.ri = sub i64 %9, %10
  %11 = or i64 %i.ri, 6485183463413514240
  store i64 %11, ptr %i.u, align 8, !tbaa !13
  %i.rj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rk, ptr nonnull align 1 %i.ip, i64 %5, i1 false)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %5
  %i.rm = trunc i64 %5 to i32
  store i32 %i.rm, ptr %i.m, align 1
  store i8 0, ptr %i.rl, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.aj, %bb.au, %bb.bv, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044, %.noexc85, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread1039, %bb.bs, %bb.br, %.noexc87.thread, %bb.ap
  %.0.i51429.ph = phi i32 [ 9, %.noexc87.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread1039 ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc85 ], [ 9, %bb.aj ], [ 10, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread1044 ], [ 9, %bb.bv ], [ 9, %bb.au ], [ 9, %bb.ap ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ip) #43
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742: ; preds = %bb.bw, %.thread1039, %bb.br, %.noexc87.thread
  %.sroa.0.171428.ph = phi ptr [ %i.qh, %bb.br ], [ %i.rj, %bb.bw ], [ %.sroa.0.20, %.thread1039 ], [ %i.ms, %.noexc87.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ip) #43
  br label %.thread1075

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc94, %bb.bm
  %.sroa.0.23 = phi ptr [ %i.mm, %.noexc94 ], [ %.sroa.0.22, %bb.bm ]
  %.1.i93 = phi i32 [ %i.mj, %.noexc94 ], [ %.0.i92, %bb.bm ] ; 2 uses
  %.not60.i = icmp eq i32 %.1.i93, 0              ; 2 uses
  %..i = select i1 %.not59.i, i32 0, i32 9
  %spec.select1508 = select i1 %.not60.i, i32 %..i, i32 %.1.i93
  tail call void @_ZdaPv(ptr noundef nonnull %i.ip) #43
  %.not163.i = and i1 %.not60.i, %.not59.i
  br i1 %.not163.i, label %.thread1075, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %select.unfold1396, %select.unfold1239, %.thread
  %.sroa.123.2 = phi i32 [ %.sroa.123.3, %select.unfold1239 ], [ %.sroa.123.1, %select.unfold1396 ], [ 0, %.thread ]
  %.sroa.25.4 = phi ptr [ %i.yi, %select.unfold1239 ], [ %i.axy, %select.unfold1396 ], [ %i.v, %.thread ] ; 2 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold1239 ], [ %.sroa.172.2, %select.unfold1396 ], [ %i.m, %.thread ] ; 3 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold1239 ], [ %.sroa.0.3, %select.unfold1396 ], [ %i.u, %.thread ] ; 3 uses
  %i.rn = add i32 %.sroa.123.2, 1                 ; 2 uses
  %i.ro = zext i32 %i.rn to i64                   ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !135
  %.not164.i = icmp ugt i64 %i.rq, %i.ro
  br i1 %.not164.i, label %bb.by, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %bb.bx
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !136
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.ro
  store i8 0, ptr %i.rt, align 1, !tbaa !124
  %i.ru = load ptr, ptr %i.g, align 8, !tbaa !177 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !118
  %i.rw = ptrtoint ptr %.sroa.0.4 to i64
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = sub i64 %i.rw, %i.rx
  %i.rz = lshr exact i64 %i.ry, 3
  %i.sa = trunc i64 %i.rz to i32
  %i.sb = load ptr, ptr %i.r, align 8, !tbaa !178
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.ro ; 2 uses
  store i32 %i.sa, ptr %i.sc, align 4, !tbaa !179
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4 ; 2 uses
  store i32 0, ptr %i.sd, align 4, !tbaa !181
  %i.se = load i32, ptr %.sroa.25.4, align 4, !tbaa !10
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.sf ; 2 uses
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !9
  %.not165.i = icmp eq i8 %i.sh, 34
  br i1 %.not165.i, label %bb.bz, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bz:                                            ; preds = %bb.by
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.sd, align 4, !tbaa !181
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !20
  %i.sl = ptrtoint ptr %.sroa.172.4 to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = sub i64 %i.sl, %i.sm
  %i.so = or i64 %i.sn, 2449958197289549824
  store i64 %i.so, ptr %i.si, align 8, !tbaa !13
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  br label %bb.ca

bb.ca:                                            ; preds = %.backedge1926, %bb.bz
  %.0943 = phi ptr [ %i.sq, %bb.bz ], [ %.0943.be, %.backedge1926 ] ; 7 uses
  %.0935 = phi ptr [ %i.sr, %bb.bz ], [ %.0935.be, %.backedge1926 ] ; 6 uses
  %i.ss = load <2 x i64>, ptr %.0935, align 1, !tbaa !9 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.0935, i64 16
  %i.su = load <2 x i64>, ptr %i.st, align 1, !tbaa !9 ; 3 uses
  store <2 x i64> %i.ss, ptr %.0943, align 1, !tbaa !9
  %i.sv = getelementptr inbounds nuw i8, ptr %.0943, i64 16
  store <2 x i64> %i.su, ptr %i.sv, align 1, !tbaa !9
  %i.sw = shufflevector <2 x i64> %i.ss, <2 x i64> %i.su, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sx = bitcast <4 x i64> %i.sw to <32 x i8>
  %i.sy = icmp eq <32 x i8> %i.sx, splat (i8 92)
  %.sroa.0569.0.extract.trunc = bitcast <32 x i1> %i.sy to i32 ; 3 uses
  %i.sz = shufflevector <2 x i64> %i.ss, <2 x i64> %i.su, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ta = bitcast <4 x i64> %i.sz to <32 x i8>
  %i.tb = icmp eq <32 x i8> %i.ta, splat (i8 34)
  %.sroa.6572.0.extract.trunc = bitcast <32 x i1> %i.tb to i32 ; 2 uses
  %i.tc = add i32 %.sroa.0569.0.extract.trunc, -1
  %i.td = and i32 %i.tc, %.sroa.6572.0.extract.trunc
  %.not1518 = icmp eq i32 %i.td, 0
  br i1 %.not1518, label %bb.cb, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14

bb.cb:                                            ; preds = %bb.ca
  %.not1519 = icmp eq i32 %.sroa.0569.0.extract.trunc, 0
  br i1 %.not1519, label %bb.cq, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.te = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0569.0.extract.trunc, i1 true) ; 2 uses
  %i.tf = zext nneg i32 %i.te to i64              ; 4 uses
  %i.tg = add nuw nsw i32 %i.te, 1
  %i.th = zext nneg i32 %i.tg to i64              ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.0935, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !9   ; 2 uses
  %i.tk = icmp eq i8 %i.tj, 117
  br i1 %i.tk, label %bb.cd, label %bb.co

bb.cd:                                            ; preds = %bb.cc
  %i.tl = getelementptr inbounds nuw i8, ptr %.0935, i64 %i.tf ; 11 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.0943, i64 %i.tf ; 8 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !9
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 2520
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !10
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 3
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !9
  %i.tv = zext i8 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1680
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !10
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !9
  %i.ub = zext i8 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 840
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !10
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tl, i64 5
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !9
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !10
  %i.uk = or i32 %i.ty, %i.ts
  %i.ul = or i32 %i.uk, %i.ue
  %i.um = or i32 %i.ul, %i.uj                     ; 13 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.tl, i64 6 ; 5 uses
  %i.uo = and i32 %i.um, -1024
  switch i32 %i.uo, label %bb.cg [
    i32 55296, label %bb.ce
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.up = load i8, ptr %i.un, align 1, !tbaa !9
  %i.uq = zext i8 %i.up to i32
  %i.ur = shl nuw nsw i32 %i.uq, 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.tl, i64 7
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !9
  %i.uu = zext i8 %i.ut to i32
  %i.uv = or disjoint i32 %i.ur, %i.uu
  %.not.i20.i60 = icmp eq i32 %i.uv, 23669
  br i1 %.not.i20.i60, label %bb.cf, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cf:                                            ; preds = %bb.ce
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !9
  %i.uy = zext i8 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 2520
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !10
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tl, i64 9
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !9
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 1680
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !10
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tl, i64 10
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !9
  %i.vk = zext i8 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 840
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !10
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tl, i64 11
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !9
  %i.vq = zext i8 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !10
  %i.vt = or i32 %i.vh, %i.vb
  %i.vu = or i32 %i.vt, %i.vn
  %i.vv = or i32 %i.vu, %i.vs
  %i.vw = add i32 %i.vv, -56320                   ; 2 uses
  %.not35.i.i61 = icmp ult i32 %i.vw, 1024
  br i1 %.not35.i.i61, label %.thread1115, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1115:                                      ; preds = %bb.cf
  %i.vx = shl nuw nsw i32 %i.um, 10
  %i.vy = add nsw i32 %i.vx, -56557568
  %i.vz = or disjoint i32 %i.vy, %i.vw
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  br label %bb.cn

bb.cg:                                            ; preds = %bb.cd
  %i.wb = icmp ult i32 %i.um, 128
  br i1 %i.wb, label %bb.ch, label %bb.ci

end_hunk_14
begin_hunk_15_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %or.cond5.i.i135 = select i1 %i.bnc, i1 true, i1 %i.bnd
  br i1 %or.cond5.i.i135, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1385

bb.il:                                            ; preds = %bb.ig
  %i.bne = icmp slt i64 %.2857, 0
  br i1 %i.bne, label %.thread1385, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bnf = sub nsw i64 0, %.2857
  %i.bng = select i1 %i.bfk, i64 %i.bnf, i64 %.2857
  br label %.thread1385

.thread1385:                                      ; preds = %bb.il, %bb.ik, %bb.im
  %.sink1857 = phi i64 [ 7782220156096217088, %bb.im ], [ 8430738502437568512, %bb.ik ], [ 8430738502437568512, %bb.il ]
  %.sink1855 = phi i64 [ %i.bng, %bb.im ], [ %.2857, %bb.ik ], [ %.2857, %bb.il ]
  store i64 %.sink1857, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bnh = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1855, ptr %i.bnh, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bni = load i8, ptr %.1848, align 1, !tbaa !9
  %i.bnj = zext i8 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnj
  %i.bnl = load i8, ptr %i.bnk, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i133 = icmp eq i8 %i.bnl, 0
  br i1 %.not57.i.i133, label %select.unfold1396, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391: ; preds = %bb.if, %bb.ii
  %i.bnm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bnn = load i8, ptr %i.bnm, align 8, !tbaa !133, !range !37, !noundef !38
  %i.bno = trunc nuw i8 %i.bnn to i1
  br i1 %i.bno, label %.preheader1858, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !107

.preheader1858:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391, %.preheader1858
  %.122.i.i129 = phi ptr [ %i.bns, %.preheader1858 ], [ %i.bfm, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391 ] ; 3 uses
  %i.bnp = load i8, ptr %.122.i.i129, align 1, !tbaa !9 ; 2 uses
  %i.bnq = add i8 %i.bnp, -48
  %i.bnr = icmp ult i8 %i.bnq, 10
  %i.bns = getelementptr inbounds nuw i8, ptr %.122.i.i129, i64 1
  br i1 %i.bnr, label %.preheader1858, label %bb.in, !llvm.loop !187

bb.in:                                            ; preds = %.preheader1858
  %i.bnt = zext i8 %i.bnp to i64
  %i.bnu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bnt
  %i.bnv = load i8, ptr %i.bnu, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i.i130 = icmp eq i8 %i.bnv, 0
  br i1 %.not.i.i130, label %.split1771, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1771:                                       ; preds = %bb.in
  %i.bnw = ptrtoint ptr %.122.i.i129 to i64
  %i.bnx = ptrtoint ptr %i.ayb to i64
  %i.bny = sub i64 %i.bnw, %i.bnx                 ; 3 uses
  %i.bnz = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !20
  %i.boc = ptrtoint ptr %.sroa.172.2 to i64
  %i.bod = ptrtoint ptr %i.bob to i64
  %i.boe = sub i64 %i.boc, %i.bod
  %i.bof = or i64 %i.boe, 6485183463413514240
  store i64 %i.bof, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bog = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.boh = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.boh, ptr nonnull align 1 %i.ayb, i64 %i.bny, i1 false)
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 %i.bny ; 2 uses
  %i.boj = trunc i64 %i.bny to i32
  store i32 %i.boj, ptr %.sroa.172.2, align 1
  store i8 0, ptr %i.boi, align 1, !tbaa !9
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boi, i64 1
  br label %bb.is

bb.io:                                            ; preds = %bb.gy
  switch i8 %i.ayc, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 116, label %bb.ip
    i8 102, label %bb.iq
    i8 110, label %bb.ir
  ]

bb.ip:                                            ; preds = %bb.io
  %.0.copyload.i.i209 = load i32, ptr %i.ayb, align 1
  %i.bol = getelementptr inbounds nuw i8, ptr %i.ayb, i64 4
  %i.bom = load i8, ptr %i.bol, align 1, !tbaa !9
  %i.bon = zext i8 %i.bom to i64
  %i.boo = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bon
  %i.bop = load i8, ptr %i.boo, align 1, !tbaa !124, !range !37, !noundef !38
  %i.boq = zext nneg i8 %i.bop to i32
  %i.bor = or i32 %.0.copyload.i.i209, %i.boq
  %i.bos = icmp eq i32 %i.bor, 1702195828
  br i1 %i.bos, label %.split1769, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1769:                                       ; preds = %bb.ip
  store i64 8358680908399640576, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bot = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.is

bb.iq:                                            ; preds = %bb.io
  %i.bou = getelementptr inbounds nuw i8, ptr %i.ayb, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.bou, align 1
  %i.bov = xor i32 %.0.copyload.i.i.i, 1702063201
  %i.bow = getelementptr inbounds nuw i8, ptr %i.ayb, i64 5
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !9
  %i.boy = zext i8 %i.box to i64
  %i.boz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.boy
  %i.bpa = load i8, ptr %i.boz, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bpb = zext nneg i8 %i.bpa to i32
  %i.bpc = or i32 %i.bov, %i.bpb
  %i.bpd = icmp eq i32 %i.bpc, 0
  br i1 %i.bpd, label %.split1770, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1770:                                       ; preds = %bb.iq
  store i64 7349874591868649472, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bpe = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.is

bb.ir:                                            ; preds = %bb.io
  %.0.copyload.i.i.i218 = load i32, ptr %i.ayb, align 1
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.ayb, i64 4
  %i.bpg = load i8, ptr %i.bpf, align 1, !tbaa !9
  %i.bph = zext i8 %i.bpg to i64
  %i.bpi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bph
  %i.bpj = load i8, ptr %i.bpi, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bpk = zext nneg i8 %i.bpj to i32
  %i.bpl = or i32 %.0.copyload.i.i.i218, %i.bpk
  %i.bpm = icmp eq i32 %i.bpl, 1819047278
  br i1 %i.bpm, label %.split1772, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1772:                                       ; preds = %bb.ir
  store i64 7926335344172072960, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bpn = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.is

select.unfold1396:                                ; preds = %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154.thread, %bb.ij, %.thread1385, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154, %bb.ge
  %.sroa.0.3 = phi ptr [ %i.bji, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154.thread ], [ %i.bmx, %bb.ij ], [ %.sroa.0.2, %bb.ge ], [ %.sroa.0.36, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154 ], [ %.sroa.0.34, %.thread1385 ] ; 2 uses
  %i.bpo = phi i1 [ true, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154.thread ], [ true, %bb.ij ], [ false, %bb.ge ], [ true, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154 ], [ true, %.thread1385 ]
  br i1 %i.bpo, label %bb.is, label %bb.bx

bb.is:                                            ; preds = %.split1772, %.split1770, %.split1769, %.split1771, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i186, %.split1767, %.split1768, %select.unfold1396, %bb.gb
  %.sroa.123.6 = phi i32 [ %i.awy, %bb.gb ], [ %.sroa.123.1, %select.unfold1396 ], [ %.sroa.123.1, %.split1767 ], [ %.sroa.123.1, %.split1768 ], [ %.sroa.123.1, %.split1769 ], [ %.sroa.123.1, %.split1770 ], [ %.sroa.123.1, %.split1771 ], [ %.sroa.123.1, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i186 ], [ %.sroa.123.1, %.split1772 ] ; 3 uses
  %.sroa.25.9 = phi ptr [ %.sroa.25.8, %bb.gb ], [ %i.axy, %select.unfold1396 ], [ %i.aza, %.split1767 ], [ %i.ayi, %.split1768 ], [ %i.axy, %.split1769 ], [ %i.axy, %.split1770 ], [ %i.axy, %.split1771 ], [ %i.axy, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i186 ], [ %i.axy, %.split1772 ] ; 2 uses
  %.sroa.172.10 = phi ptr [ %.sroa.172.9, %bb.gb ], [ %.sroa.172.2, %select.unfold1396 ], [ %.sroa.172.2, %.split1767 ], [ %.sroa.172.2, %.split1768 ], [ %.sroa.172.2, %.split1769 ], [ %.sroa.172.2, %.split1770 ], [ %i.bok, %.split1771 ], [ %i.bfi, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i186 ], [ %.sroa.172.2, %.split1772 ] ; 2 uses
  %.sroa.0.10 = phi ptr [ %i.awi, %bb.gb ], [ %.sroa.0.3, %select.unfold1396 ], [ %i.azm, %.split1767 ], [ %i.ayu, %.split1768 ], [ %i.bot, %.split1769 ], [ %i.bpe, %.split1770 ], [ %i.bog, %.split1771 ], [ %i.azu, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i186 ], [ %i.bpn, %.split1772 ] ; 2 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %.sroa.25.9, i64 4 ; 2 uses
  %i.bpq = load i32, ptr %.sroa.25.9, align 4, !tbaa !10
  %i.bpr = zext i32 %i.bpq to i64
  %i.bps = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bpr
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !9
  switch i8 %i.bpt, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.it
    i8 93, label %bb.ga
  ]

bb.it:                                            ; preds = %bb.is
  %i.bpu = zext i32 %.sroa.123.6 to i64
  %i.bpv = load ptr, ptr %i.r, align 8, !tbaa !178
  %i.bpw = getelementptr inbounds nuw [8 x i8], ptr %i.bpv, i64 %i.bpu
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 4 ; 2 uses
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !181
  %i.bpz = add i32 %i.bpy, 1
  store i32 %i.bpz, ptr %i.bpx, align 4, !tbaa !181
  br label %bb.gd

.thread1075:                                      ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i, %bb.ag, %bb.aa, %bb.ad, %bb.f, %bb.e, %bb.ga
  %.sroa.25.10 = phi ptr [ %.sroa.25.8, %bb.ga ], [ %i.v, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.at, %bb.e ], [ %i.bb, %bb.f ], [ %i.v, %bb.ad ], [ %i.v, %bb.aa ], [ %i.v, %bb.ag ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742 ]
  %.sroa.0.11 = phi ptr [ %i.awi, %bb.ga ], [ %i.be, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.av, %bb.e ], [ %i.bd, %bb.f ], [ %i.hw, %bb.ad ], [ %i.hf, %bb.aa ], [ %i.ik, %bb.ag ], [ %.sroa.0.23, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %.sroa.0.171428.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1742 ] ; 2 uses
  store i64 8214565720323784704, ptr %.sroa.0.11, align 8, !tbaa !13
  %i.bqa = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 8
  %i.bqb = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !118 ; 2 uses
  %i.bqd = ptrtoint ptr %i.bqa to i64
  %i.bqe = ptrtoint ptr %i.bqc to i64
  %i.bqf = sub i64 %i.bqd, %i.bqe
  %i.bqg = lshr exact i64 %i.bqf, 3
  %i.bqh = and i64 %i.bqg, 4294967295
  %i.bqi = or disjoint i64 %i.bqh, 8214565720323784704
  store i64 %i.bqi, ptr %i.bqc, align 8, !tbaa !13
  %i.bqj = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.bqk = ptrtoint ptr %.sroa.25.10 to i64
  %i.bql = ptrtoint ptr %i.bqj to i64
  %i.bqm = sub i64 %i.bqk, %i.bql
  %i.bqn = lshr exact i64 %i.bqm, 2
  %i.bqo = trunc i64 %i.bqn to i32                ; 2 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bqo, ptr %i.bqp, align 8, !tbaa !83
  %i.bqq = load i32, ptr %i.n, align 8, !tbaa !73
  %.not173.i = icmp eq i32 %i.bqq, %i.bqo
  %spec.select1513 = select i1 %.not173.i, i32 0, i32 3
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.t, %bb.v, %bb.cd, %bb.ce, %bb.cf, %bb.cm, %bb.co, %bb.cy, %bb.cz, %bb.da, %bb.dh, %bb.dj, %bb.gk, %bb.gl, %bb.gm, %bb.gt, %bb.gv, %bb.fm, %bb.fn, %bb.fo, %bb.fv, %bb.fx, %bb.hh, %bb.dv, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, %.thread1075, %bb.b, %bb.hm, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154.thread, %bb.ha, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i114, %bb.ik, %bb.ij, %.thread1385, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391, %bb.in, %bb.io, %bb.ip, %bb.ir, %bb.iq, %bb.ea, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.do, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i105, %bb.ey, %bb.ex, %.thread1228, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1234, %bb.fb, %bb.fc, %bb.fd, %bb.ff, %bb.fe, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154, %bb.fh, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i, %bb.by, %bb.ah, %bb.af, %bb.ac, %bb.z, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, %.noexc72, %.noexc, %.noexc77, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.c, %bb.d, %bb.is, %.thread1089, %bb.fg, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14, %bb.bx, %bb.a
  %.37.i = phi i32 [ 3, %bb.fg ], [ 8, %bb.ir ], [ 13, %bb.a ], [ 9, %bb.hm ], [ 3, %bb.is ], [ %spec.select1513, %.thread1075 ], [ 4, %bb.bx ], [ %spec.select1512, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154 ], [ %spec.select1510, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i ], [ 2, %bb.ah ], [ 9, %bb.ea ], [ 6, %bb.ip ], [ 3, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14 ], [ 4, %.thread1089 ], [ %spec.select1508, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ 3, %bb.d ], [ 3, %bb.c ], [ 3, %bb.b ], [ 8, %bb.af ], [ 7, %bb.ac ], [ 8, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit ], [ 6, %bb.z ], [ 7, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit ], [ 5, %bb.fm ], [ 6, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit ], [ 8, %.noexc77 ], [ 7, %.noexc72 ], [ 6, %.noexc ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i114 ], [ 8, %bb.ff ], [ 9, %bb.in ], [ 10, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i124.thread1391 ], [ 5, %bb.cy ], [ 3, %bb.by ], [ 9, %bb.ik ], [ 3, %bb.fh ], [ 9, %bb.dv ], [ 3, %bb.io ], [ 9, %bb.ij ], [ 9, %.thread1385 ], [ 5, %bb.gk ], [ %.0.i51429.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread ], [ 7, %bb.fe ], [ 9, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.do ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i105 ], [ 9, %bb.ey ], [ 9, %bb.ex ], [ 9, %.thread1228 ], [ 9, %bb.hh ], [ 7, %bb.iq ], [ 9, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i154.thread ], [ 9, %bb.ha ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i175 ], [ 10, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1234 ], [ 9, %bb.fb ], [ 3, %bb.fc ], [ 6, %bb.fd ], [ 5, %bb.cd ], [ 5, %bb.fx ], [ 5, %bb.fv ], [ 5, %bb.fo ], [ 5, %bb.fn ], [ 5, %bb.gv ], [ 5, %bb.gt ], [ 5, %bb.gm ], [ 5, %bb.gl ], [ 5, %bb.dj ], [ 5, %bb.dh ], [ 5, %bb.da ], [ 5, %bb.cz ], [ 5, %bb.co ], [ 5, %bb.cm ], [ 5, %bb.cf ], [ 5, %bb.ce ], [ 5, %bb.v ], [ 5, %bb.t ], [ 5, %bb.m ], [ 5, %bb.l ], [ 5, %bb.k ]
  ret i32 %.37.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !163  ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73
  %i.q = icmp eq i32 %i.i, %i.p
  br i1 %i.q, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.i to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !178  ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !179
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 10 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ab = zext i32 %i.aa to i64                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ab ; 12 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  switch i8 %i.ad, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.e
    i8 34, label %bb.g
    i8 116, label %bb.y
    i8 102, label %bb.ab
    i8 110, label %bb.ae
    i8 45, label %bb.ah
    i8 48, label %bb.ah
    i8 49, label %bb.ah
    i8 50, label %bb.ah
    i8 51, label %bb.ah
    i8 52, label %bb.ah
    i8 53, label %bb.ah
    i8 54, label %bb.ah
    i8 55, label %bb.ah
    i8 56, label %bb.ah
    i8 57, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !10
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = icmp eq i8 %i.ah, 125
  br i1 %i.ai, label %bb.d, label %bb.by

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 8863084066665136131, ptr %i.y, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 9007199254740992001, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread850

bb.e:                                             ; preds = %bb.b
  %i.am = load i32, ptr %i.z, align 4, !tbaa !10
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, 93
  br i1 %i.aq, label %bb.f, label %.thread864

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 6557241057451442179, ptr %i.y, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 6701356245527298049, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread850

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.y, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.backedge1705, %bb.g
  %.0616 = phi ptr [ %i.aw, %bb.g ], [ %.0616.be, %.backedge1705 ] ; 6 uses
  %.0613 = phi ptr [ %i.av, %bb.g ], [ %.0613.be, %.backedge1705 ] ; 7 uses
  %i.ax = load <2 x i64>, ptr %.0616, align 1, !tbaa !9 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0616, i64 16
  %i.az = load <2 x i64>, ptr %i.ay, align 1, !tbaa !9 ; 3 uses
  store <2 x i64> %i.ax, ptr %.0613, align 1, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %.0613, i64 16
  store <2 x i64> %i.az, ptr %i.ba, align 1, !tbaa !9
  %i.bb = shufflevector <2 x i64> %i.ax, <2 x i64> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bc = bitcast <4 x i64> %i.bb to <32 x i8>
  %i.bd = icmp eq <32 x i8> %i.bc, splat (i8 92)
  %.sroa.0242.0.extract.trunc = bitcast <32 x i1> %i.bd to i32 ; 3 uses
  %i.be = shufflevector <2 x i64> %i.ax, <2 x i64> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bf = bitcast <4 x i64> %i.be to <32 x i8>
  %i.bg = icmp eq <32 x i8> %i.bf, splat (i8 34)
  %.sroa.6.0.extract.trunc = bitcast <32 x i1> %i.bg to i32 ; 2 uses
  %i.bh = add i32 %.sroa.0242.0.extract.trunc, -1
  %i.bi = and i32 %i.bh, %.sroa.6.0.extract.trunc
  %.not1290 = icmp eq i32 %i.bi, 0
  br i1 %.not1290, label %bb.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i

bb.i:                                             ; preds = %bb.h
  %.not1291 = icmp eq i32 %.sroa.0242.0.extract.trunc, 0
  br i1 %.not1291, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0242.0.extract.trunc, i1 true) ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 4 uses
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0616, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9   ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 117
  br i1 %i.bp, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.0616, i64 %i.bk ; 11 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0613, i64 %i.bk ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2520
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1680
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 840
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10
  %i.cp = or i32 %i.cd, %i.bx
  %i.cq = or i32 %i.cp, %i.cj
  %i.cr = or i32 %i.cq, %i.co                     ; 13 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 6 ; 5 uses
  %i.ct = and i32 %i.cr, -1024
  switch i32 %i.ct, label %bb.n [
    i32 55296, label %bb.l
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 7
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !9
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz
  %.not.i20.i.i = icmp eq i32 %i.da, 23669
  br i1 %.not.i20.i.i, label %bb.m, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2520
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 9
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1680
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 840
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 11
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !9
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !10
  %i.dy = or i32 %i.dm, %i.dg
  %i.dz = or i32 %i.dy, %i.ds
  %i.ea = or i32 %i.dz, %i.dx
  %i.eb = add i32 %i.ea, -56320                   ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.eb, 1024
  br i1 %.not35.i.i.i, label %.thread757, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread757:                                       ; preds = %bb.m
  %i.ec = shl nuw nsw i32 %i.cr, 10
  %i.ed = add nsw i32 %i.ec, -56557568
  %i.ee = or disjoint i32 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  br label %bb.u
end_hunk_15
begin_hunk_16_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.el = or disjoint i8 %i.ek, -64
  store i8 %i.el, ptr %i.br, align 1, !tbaa !9
  %i.em = trunc i32 %i.cr to i8
  %i.en = and i8 %i.em, 63
  %i.eo = or disjoint i8 %i.en, -128
  %i.ep = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !9
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread766

bb.r:                                             ; preds = %bb.p
  %i.eq = icmp ult i32 %i.cr, 65536
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.er = lshr i32 %i.cr, 12
  %i.es = trunc nuw nsw i32 %i.er to i8
  %i.et = or disjoint i8 %i.es, -32
  store i8 %i.et, ptr %i.br, align 1, !tbaa !9
  %i.eu = lshr i32 %i.cr, 6
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = and i8 %i.ev, 63
  %i.ex = or disjoint i8 %i.ew, -128
  %i.ey = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !9
  %i.ez = trunc i32 %i.cr to i8
  %i.fa = and i8 %i.ez, 63
  %i.fb = or disjoint i8 %i.fa, -128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !9
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread766

bb.t:                                             ; preds = %bb.r
  %i.fd = icmp ult i32 %i.cr, 1114112
  br i1 %i.fd, label %bb.u, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.u:                                             ; preds = %.thread757, %bb.t
  %.6745751755761 = phi ptr [ %i.ef, %.thread757 ], [ %i.cs, %bb.t ]
  %.4.i.i.i746750756760 = phi i32 [ %i.ee, %.thread757 ], [ %i.cr, %bb.t ] ; 4 uses
  %i.fe = lshr i32 %.4.i.i.i746750756760, 6
  %i.ff = lshr i32 %.4.i.i.i746750756760, 12
  %i.fg = lshr i32 %.4.i.i.i746750756760, 18
  %i.fh = trunc i32 %.4.i.i.i746750756760 to i8
  %i.fi = trunc i32 %i.fe to i8
  %i.fj = trunc i32 %i.ff to i8
  %i.fk = trunc nsw i32 %i.fg to i8
  %i.fl = insertelement <4 x i8> poison, i8 %i.fk, i64 0
  %i.fm = insertelement <4 x i8> %i.fl, i8 %i.fj, i64 1
  %i.fn = insertelement <4 x i8> %i.fm, i8 %i.fi, i64 2
  %i.fo = insertelement <4 x i8> %i.fn, i8 %i.fh, i64 3
  %i.fp = and <4 x i8> %i.fo, <i8 -1, i8 63, i8 63, i8 63>
  %i.fq = or disjoint <4 x i8> %i.fp, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fq, ptr %i.br, align 1, !tbaa !9
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread766

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread766: ; preds = %bb.o, %bb.q, %bb.s, %bb.u
  %.6744.ph = phi ptr [ %.6745751755761, %bb.u ], [ %i.cs, %bb.s ], [ %i.cs, %bb.q ], [ %i.cs, %bb.o ]
  %.0.i.i.i.ph = phi i64 [ 4, %bb.u ], [ 3, %bb.s ], [ 2, %bb.q ], [ 1, %bb.o ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0.i.i.i.ph
  br label %.backedge1705

bb.v:                                             ; preds = %bb.j
  %i.fs = zext i8 %i.bo to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !9   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = getelementptr inbounds nuw i8, ptr %.0613, i64 %i.bk
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %.0616, i64 %i.bk
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fy = getelementptr inbounds nuw i8, ptr %.0613, i64 %i.bm
  br label %.backedge1705

.backedge1705:                                    ; preds = %bb.w, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread766, %bb.x
  %.0616.be = phi ptr [ %i.fx, %bb.w ], [ %i.fz, %bb.x ], [ %.6744.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread766 ]
  %.0613.be = phi ptr [ %i.fy, %bb.w ], [ %i.ga, %bb.x ], [ %i.fr, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread766 ]
  br label %bb.h

bb.x:                                             ; preds = %bb.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.0616, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %.0613, i64 32
  br label %.backedge1705

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i: ; preds = %bb.h
  %i.gb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.6.0.extract.trunc, i1 true)
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.0613, i64 %i.gc ; 2 uses
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.av to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = trunc i64 %i.gg to i32
  store i32 %i.gh, ptr %i.n, align 1
  store i8 0, ptr %i.gd, align 1, !tbaa !9
  br label %.thread850

bb.y:                                             ; preds = %bb.b
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !172
  %i.gk = sub i64 %i.gj, %i.ab                    ; 2 uses
  %i.gl = icmp ugt i64 %i.gk, 4
  br i1 %i.gl, label %.split, label %bb.z

.split:                                           ; preds = %bb.y
  %.0.copyload.i.i = load i32, ptr %i.ac, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !9
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gr = zext nneg i8 %i.gq to i32
  %i.gs = or i32 %.0.copyload.i.i, %i.gr
  %i.gt = icmp eq i32 %i.gs, 1702195828
  br i1 %i.gt, label %bb.aa, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.gu = icmp eq i64 %i.gk, 4
  br i1 %i.gu, label %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i: ; preds = %bb.z
  %.0.copyload.i239.i = load i32, ptr %i.ac, align 1
  %.not.i.i = icmp eq i32 %.0.copyload.i239.i, 1702195828
  br i1 %.not.i.i, label %bb.aa, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.aa:                                            ; preds = %.split, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i
  store i64 8358680908399640576, ptr %i.y, align 8, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread850

bb.ab:                                            ; preds = %bb.b
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !172
  %i.gy = sub i64 %i.gx, %i.ab                    ; 2 uses
  %i.gz = icmp ugt i64 %i.gy, 5
  br i1 %i.gz, label %.split791, label %bb.ac

.split791:                                        ; preds = %bb.ab
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i243.i = load i32, ptr %i.ha, align 1
  %i.hb = xor i32 %.0.copyload.i.i243.i, 1702063201
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !9
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = or i32 %i.hb, %i.hh
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.ad, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.hk = icmp eq i64 %i.gy, 5
  br i1 %i.hk, label %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i: ; preds = %bb.ac
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.hl, align 1
  %.not.i241.i = icmp eq i32 %.0.copyload.i.i.i, 1702063201
  br i1 %.not.i241.i, label %bb.ad, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ad:                                            ; preds = %.split791, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i
  store i64 7349874591868649472, ptr %i.y, align 8, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread850

bb.ae:                                            ; preds = %bb.b
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !172
  %i.hp = sub i64 %i.ho, %i.ab                    ; 2 uses
  %i.hq = icmp ugt i64 %i.hp, 4
  br i1 %i.hq, label %.split793, label %bb.af

.split793:                                        ; preds = %bb.ae
  %.0.copyload.i.i248.i = load i32, ptr %i.ac, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = or i32 %.0.copyload.i.i248.i, %i.hw
  %i.hy = icmp eq i32 %i.hx, 1819047278
  br i1 %i.hy, label %bb.ag, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.hz = icmp eq i64 %i.hp, 4
  br i1 %i.hz, label %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i: ; preds = %bb.af
  %.0.copyload.i.i245.i = load i32, ptr %i.ac, align 1
  %.not.i246.i = icmp eq i32 %.0.copyload.i.i245.i, 1819047278
  br i1 %.not.i246.i, label %bb.ag, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ag:                                            ; preds = %.split793, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i
  store i64 7926335344172072960, ptr %i.y, align 8, !tbaa !13
  %i.ia = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread850

bb.ah:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !172
  %i.id = add i64 %i.ic, 64
  %i.ie = sub i64 %i.id, %i.ab
  %i.if = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.ie, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %2 = load i64, ptr %i.ib, align 8, !tbaa !172   ; 2 uses
  %i.ih = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ii = zext i32 %i.ih to i64
  %i.ij = sub i64 %2, %i.ii
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull align 1 %i.ac, i64 %i.ij, i1 false)
  %i.ik = load i32, ptr %i.t, align 4, !tbaa !10
  %i.il = zext i32 %i.ik to i64
  %i.im = sub i64 %2, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.im
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.in, i8 32, i64 64, i1 false)
  %i.io = load i8, ptr %i.if, align 1, !tbaa !9   ; 2 uses
  %i.ip = icmp eq i8 %i.io, 45                    ; 10 uses
  %i.iq = zext i1 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.iq ; 6 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !9   ; 4 uses
  %i.it = add i8 %i.is, -48                       ; 2 uses
  %i.iu = icmp ult i8 %i.it, 10
  br i1 %i.iu, label %.lr.ph, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i

.lr.ph:                                           ; preds = %bb.ai, %.lr.ph
  %i.iv = phi i8 [ %i.jb, %.lr.ph ], [ %i.it, %bb.ai ]
  %.06921343 = phi ptr [ %i.iz, %.lr.ph ], [ %i.ir, %bb.ai ]
  %.07001342 = phi i64 [ %i.iy, %.lr.ph ], [ 0, %bb.ai ]
  %i.iw = mul i64 %.07001342, 10
  %i.ix = zext nneg i8 %i.iv to i64
  %i.iy = add i64 %i.iw, %i.ix                    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.06921343, i64 1 ; 3 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !9   ; 2 uses
  %i.jb = add i8 %i.ja, -48                       ; 2 uses
  %i.jc = icmp ult i8 %i.jb, 10
  br i1 %i.jc, label %.lr.ph, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, !llvm.loop !182

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i: ; preds = %.lr.ph, %bb.ai
  %.0700.lcssa = phi i64 [ 0, %bb.ai ], [ %i.iy, %.lr.ph ] ; 3 uses
  %.0692.lcssa = phi ptr [ %i.ir, %bb.ai ], [ %i.iz, %.lr.ph ] ; 6 uses
  %.lcssa1341 = phi i8 [ %i.is, %bb.ai ], [ %i.ja, %.lr.ph ] ; 2 uses
  %i.jd = ptrtoint ptr %.0692.lcssa to i64
  %i.je = ptrtoint ptr %i.ir to i64               ; 3 uses
  %i.jf = sub i64 %i.jd, %i.je                    ; 3 uses
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i
  %i.jh = icmp eq i8 %i.is, 48
  %i.ji = icmp ne i64 %i.jf, 1
  %or.cond.i.i = and i1 %i.ji, %i.jh
  br i1 %or.cond.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jj = icmp eq i8 %.lcssa1341, 46              ; 2 uses
  br i1 %i.jj, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.ptr1288 = getelementptr inbounds nuw i8, ptr %.0692.lcssa, i64 1 ; 2 uses
  %.0.copyload.i263.i = load i64, ptr %.ptr1288, align 1 ; 3 uses
  %i.jk = and i64 %.0.copyload.i263.i, -1085102592571150096
  %i.jl = add i64 %.0.copyload.i263.i, 434041037028460038
  %i.jm = lshr i64 %i.jl, 4
  %i.jn = and i64 %i.jm, 1085102592571150095
  %i.jo = or disjoint i64 %i.jn, %i.jk
  %i.jp = icmp eq i64 %i.jo, 3689348814741910323
  %i.jq = trunc i64 %.0.copyload.i263.i to i8
  br i1 %i.jp, label %bb.am, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

bb.am:                                            ; preds = %bb.al
  %i.jr = mul i64 %.0700.lcssa, 100000000
  %i.js = load <16 x i8>, ptr %.ptr1288, align 1  ; 2 uses
  %i.jt = add <16 x i8> %i.js, <i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ju = tail call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %i.jt, <16 x i8> <i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 10, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.jv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ju, <8 x i16> <i16 100, i16 1, i16 100, i16 1, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.jw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jv, <4 x i32> poison)
  %i.jx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jw, <8 x i16> <i16 10000, i16 1, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.jy = extractelement <4 x i32> %i.jx, i64 0
  %i.jz = zext i32 %i.jy to i64
  %i.ka = add i64 %i.jr, %i.jz
  %i.kb = extractelement <16 x i8> %i.js, i64 8
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i: ; preds = %bb.am, %bb.al
  %i.kc = phi i8 [ %i.kb, %bb.am ], [ %i.jq, %bb.al ]
  %.3703 = phi i64 [ %i.ka, %bb.am ], [ %.0700.lcssa, %bb.al ] ; 2 uses
  %.5697.idx = phi i64 [ 9, %bb.am ], [ 1, %bb.al ]
  %i.kd = add i8 %i.kc, -48                       ; 2 uses
  %i.ke = icmp ult i8 %i.kd, 10                   ; 2 uses
  %i.kf = mul i64 %.3703, 10
  %i.kg = zext nneg i8 %i.kd to i64
  %i.kh = add i64 %i.kf, %i.kg
  %.4704797 = select i1 %i.ke, i64 %i.kh, i64 %.3703 ; 2 uses
  %.6698.idx = zext i1 %i.ke to i64
  %.5697.add = add nuw nsw i64 %.5697.idx, %.6698.idx ; 4 uses
  %.7699.ptr1347 = getelementptr inbounds nuw i8, ptr %.0692.lcssa, i64 %.5697.add
  %i.ki = load i8, ptr %.7699.ptr1347, align 1, !tbaa !9 ; 2 uses
  %i.kj = add i8 %i.ki, -48                       ; 2 uses
  %i.kk = icmp ult i8 %i.kj, 10
  br i1 %i.kk, label %.lr.ph1350, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i

.lr.ph1350:                                       ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i, %.lr.ph1350
  %i.kl = phi i8 [ %i.kq, %.lr.ph1350 ], [ %i.kj, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.7699.idx1349 = phi i64 [ %.7699.add, %.lr.ph1350 ], [ %.5697.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.57051348 = phi i64 [ %i.ko, %.lr.ph1350 ], [ %.4704797, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %i.km = mul i64 %.57051348, 10
  %i.kn = zext nneg i8 %i.kl to i64
  %i.ko = add i64 %i.km, %i.kn                    ; 2 uses
  %.7699.add = add nuw nsw i64 %.7699.idx1349, 1  ; 3 uses
  %.7699.ptr = getelementptr inbounds nuw i8, ptr %.0692.lcssa, i64 %.7699.add
  %i.kp = load i8, ptr %.7699.ptr, align 1, !tbaa !9 ; 2 uses
  %i.kq = add i8 %i.kp, -48                       ; 2 uses
  %i.kr = icmp ult i8 %i.kq, 10
  br i1 %i.kr, label %.lr.ph1350, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !183

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5697.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1350, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5705.lcssa1506 = phi i64 [ %.4704797, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.ko, %.lr.ph1350 ]
  %.7699.idx.lcssa13461505 = phi i64 [ %.5697.add, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7699.add, %.lr.ph1350 ] ; 2 uses
  %i.ks = phi i8 [ %i.ki, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.kp, %.lr.ph1350 ]
  %.7699.ptr.le = getelementptr inbounds nuw i8, ptr %.0692.lcssa, i64 %.7699.idx.lcssa13461505 ; 2 uses
  %i.kt = ptrtoint ptr %.7699.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7699.idx.lcssa13461505
  %i.ku = sub i64 %i.kt, %i.je
  %sext.i.i = shl i64 %i.ku, 32
  %i.kv = ashr exact i64 %sext.i.i, 32
  br label %bb.an

bb.an:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.ak
  %i.kw = phi i8 [ %i.ks, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1341, %bb.ak ] ; 2 uses
  %.0707 = phi i64 [ %gepdiff, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.ak ] ; 2 uses
  %.2702 = phi i64 [ %.5705.lcssa1506, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0700.lcssa, %bb.ak ] ; 14 uses
  %.1693 = phi ptr [ %.7699.ptr.le, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0692.lcssa, %bb.ak ] ; 4 uses
  %.044.i.i = phi i64 [ %i.kv, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.jf, %bb.ak ] ; 4 uses
  switch i8 %i.kw, label %bb.at [
    i8 101, label %bb.ao
    i8 69, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.kx = getelementptr inbounds nuw i8, ptr %.1693, i64 1 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !9   ; 3 uses
  %i.kz = icmp eq i8 %i.ky, 45
  switch i8 %i.ky, label %bb.aq [
    i8 45, label %bb.ap
    i8 43, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.la = getelementptr inbounds nuw i8, ptr %.1693, i64 2 ; 2 uses
  %.pre1440 = load i8, ptr %i.la, align 1, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.lb = phi i8 [ %i.ky, %bb.ao ], [ %.pre1440, %bb.ap ]
  %.2694 = phi ptr [ %i.kx, %bb.ao ], [ %i.la, %bb.ap ] ; 3 uses
  %i.lc = add i8 %i.lb, -48                       ; 2 uses
  %i.ld = icmp ult i8 %i.lc, 10
  br i1 %i.ld, label %.lr.ph1357, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1357:                                       ; preds = %bb.aq, %.lr.ph1357
  %i.le = phi i8 [ %i.lj, %.lr.ph1357 ], [ %i.lc, %bb.aq ]
  %.06891356 = phi i64 [ %i.lh, %.lr.ph1357 ], [ 0, %bb.aq ]
  %.3695.idx1355 = phi i64 [ %.3695.add, %.lr.ph1357 ], [ 0, %bb.aq ] ; 2 uses
  %i.lf = mul nsw i64 %.06891356, 10
  %i.lg = zext nneg i8 %i.le to i64
  %i.lh = add nsw i64 %i.lf, %i.lg                ; 3 uses
  %.3695.add = add nuw nsw i64 %.3695.idx1355, 1  ; 3 uses
  %.3695.ptr = getelementptr inbounds nuw i8, ptr %.2694, i64 %.3695.add
  %i.li = load i8, ptr %.3695.ptr, align 1, !tbaa !9 ; 2 uses
  %i.lj = add i8 %i.li, -48                       ; 2 uses
  %i.lk = icmp ult i8 %i.lj, 10
  br i1 %i.lk, label %.lr.ph1357, label %bb.ar, !llvm.loop !184

bb.ar:                                            ; preds = %.lr.ph1357
  %.3695.ptr.le = getelementptr inbounds nuw i8, ptr %.2694, i64 %.3695.add
  %i.ll = icmp samesign ugt i64 %.3695.idx1355, 17
  br i1 %i.ll, label %.preheader1326, label %.thread807, !prof !107

.preheader1326:                                   ; preds = %bb.ar, %.preheader1326
  %.0.i257.i = phi ptr [ %i.lo, %.preheader1326 ], [ %.2694, %bb.ar ] ; 3 uses
  %i.lm = load i8, ptr %.0.i257.i, align 1, !tbaa !9
  %i.ln = icmp eq i8 %i.lm, 48
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 1
  br i1 %i.ln, label %.preheader1326, label %bb.as, !llvm.loop !185

bb.as:                                            ; preds = %.preheader1326
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i257.i, i64 18
  %i.lq = icmp ugt ptr %.3695.ptr.le, %i.lp
  %spec.select = select i1 %i.lq, i64 999999999999999999, i64 %i.lh
  br label %.thread807

.thread807:                                       ; preds = %bb.as, %bb.ar
  %.2691 = phi i64 [ %i.lh, %bb.ar ], [ %spec.select, %bb.as ] ; 2 uses
  %i.lr = sub nsw i64 0, %.2691
  %i.ls = select i1 %i.kz, i64 %i.lr, i64 %.2691
  %i.lt = add nsw i64 %i.ls, %.0707
  br label %bb.au

bb.at:                                            ; preds = %bb.an
  br i1 %i.jj, label %bb.au, label %bb.bo

bb.au:                                            ; preds = %.thread807, %bb.at
  %i.lu = phi i8 [ %i.li, %.thread807 ], [ %i.kw, %bb.at ]
  %.2709811 = phi i64 [ %i.lt, %.thread807 ], [ %.0707, %bb.at ] ; 9 uses
  %i.lv = zext i8 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !124, !range !37, !noundef !38
  %.not59.i.i = icmp eq i8 %i.lx, 0               ; 3 uses
  %i.ly = icmp ugt i64 %.044.i.i, 19
end_hunk_16
begin_hunk_17_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.nm = zext i64 %i.nf to i128                  ; 2 uses
  %i.nn = zext i64 %i.nl to i128
  %i.no = mul nuw i128 %i.nn, %i.nm               ; 2 uses
  %i.np = trunc i128 %i.no to i64                 ; 2 uses
  %i.nq = lshr i128 %i.no, 64
  %i.nr = trunc nuw i128 %i.nq to i64             ; 3 uses
  %i.ns = and i64 %i.nr, 511
  %i.nt = icmp eq i64 %i.ns, 511
  br i1 %i.nt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nu = getelementptr i8, ptr %i.nj, i64 5480
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !13
  %i.nw = zext i64 %i.nv to i128
  %i.nx = mul nuw i128 %i.nw, %i.nm
  %i.ny = lshr i128 %i.nx, 64
  %i.nz = trunc nuw i128 %i.ny to i64             ; 2 uses
  %i.oa = add i64 %i.nz, %i.np                    ; 2 uses
  %i.ob = icmp ult i64 %i.oa, %i.nz
  %i.oc = zext i1 %i.ob to i64
  %spec.select.i268.i = add nuw i64 %i.oc, %i.nr
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i268.i, %bb.be ], [ %i.nr, %bb.bd ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.oa, %bb.be ], [ %i.np, %bb.bd ]
  %i.od = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.oe = add nuw nsw i64 %i.od, 9                ; 2 uses
  %i.of = lshr i64 %.sroa.7.1.i.i, %i.oe          ; 6 uses
  %reass.sub = sub nsw i64 %i.nd, %i.ne
  %.neg = add nsw i64 %reass.sub, %i.od           ; 4 uses
  %i.og = add nsw i64 %.neg, 1086
  %i.oh = icmp slt i64 %.neg, -1085
  br i1 %i.oh, label %bb.bg, label %bb.bj, !prof !107

bb.bg:                                            ; preds = %bb.bf
  %i.oi = icmp samesign ult i64 %.neg, -1148
  br i1 %i.oi, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.oj = select i1 %i.ip, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.bg
  %i.ok = sub nuw nsw i64 -1085, %.neg
  %i.ol = lshr i64 %i.of, %i.ok                   ; 2 uses
  %i.om = and i64 %i.ol, 1
  %i.on = add nuw nsw i64 %i.om, %i.ol            ; 2 uses
  %i.oo = lshr i64 %i.on, 1
  %i.op = icmp samesign ugt i64 %i.on, 9007199254740991
  %i.oq = and i64 %i.oo, 13510798882111487
  %i.or = select i1 %i.op, i64 4503599627370496, i64 0
  %i.os = select i1 %i.ip, i64 -9223372036854775808, i64 0
  %i.ot = or disjoint i64 %i.or, %i.os
  %i.ou = or disjoint i64 %i.ot, %i.oq
  %i.ov = bitcast i64 %i.ou to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bj:                                            ; preds = %bb.bf
  %i.ow = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.ox = add nsw i64 %.2709811, 4
  %i.oy = icmp ult i64 %i.ox, 28
  %or.cond7.i.i = and i1 %i.oy, %i.ow
  %i.oz = and i64 %i.of, 3
  %i.pa = icmp eq i64 %i.oz, 1
  %i.pb = select i1 %or.cond7.i.i, i1 %i.pa, i1 false
  br i1 %i.pb, label %bb.bk, label %bb.bl, !prof !107

bb.bk:                                            ; preds = %bb.bj
  %i.pc = shl i64 %i.of, %i.oe
  %i.pd = icmp eq i64 %i.pc, %.sroa.7.1.i.i
  %i.pe = and i64 %i.of, 72057594037927932
  %spec.select90.i.i = select i1 %i.pd, i64 %i.pe, i64 %i.of
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.080.i.i = phi i64 [ %i.of, %bb.bj ], [ %spec.select90.i.i, %bb.bk ] ; 2 uses
  %i.pf = and i64 %.080.i.i, 1
  %i.pg = add nuw nsw i64 %i.pf, %.080.i.i        ; 2 uses
  %i.ph = icmp samesign ugt i64 %i.pg, 18014398509481983 ; 2 uses
  %i.pi = zext i1 %i.ph to i64
  %spec.select92.i.i = add nuw nsw i64 %i.og, %i.pi ; 2 uses
  %i.pj = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.pj, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bm, !prof !107

bb.bm:                                            ; preds = %bb.bl
  %i.pk = lshr i64 %i.pg, 1
  %i.pl = and i64 %i.pk, 13510798882111487
  %i.pm = select i1 %i.ph, i64 0, i64 %i.pl
  %i.pn = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.po = select i1 %i.ip, i64 -9223372036854775808, i64 0
  %i.pp = or disjoint i64 %i.pm, %i.po
  %i.pq = or i64 %i.pp, %i.pn
  %i.pr = bitcast i64 %i.pq to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bl
  %i.ps = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.if, ptr noundef %i.f)
  br i1 %i.ps, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bn

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1442 = load double, ptr %i.f, align 8, !tbaa !130
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.ba, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bm, %bb.bi, %bb.bh, %bb.bc
  %i.pt = phi double [ %.pre1442, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.pr, %bb.bm ], [ %i.ov, %bb.bi ], [ %i.oj, %bb.bh ], [ %spec.select1585, %bb.ba ], [ %i.nb, %bb.bc ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !13
  %i.pu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.pt, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.pv, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i259.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bo:                                            ; preds = %bb.at
  %i.pw = select i1 %i.ip, i64 19, i64 20         ; 2 uses
  %i.px = icmp ugt i64 %.044.i.i, %i.pw
  br i1 %i.px, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.py = icmp eq i64 %.044.i.i, %i.pw
  br i1 %i.py, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ip, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.pz = icmp ugt i64 %.2702, -9223372036854775808
  br i1 %i.pz, label %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qa = sub i64 0, %.2702
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !13
  %i.qb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.qa, ptr %i.qb, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qd = load i8, ptr %.1693, align 1, !tbaa !9
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i.i = icmp eq i8 %i.qg, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bt:                                            ; preds = %bb.bq
  %i.qh = icmp ne i8 %i.io, 49
  %i.qi = icmp sgt i64 %.2702, -1
  %or.cond5.i.i = select i1 %i.qh, i1 true, i1 %i.qi
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread814

bb.bu:                                            ; preds = %bb.bp
  %i.qj = icmp slt i64 %.2702, 0
  br i1 %i.qj, label %.thread814, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qk = sub nsw i64 0, %.2702
  %i.ql = select i1 %i.ip, i64 %i.qk, i64 %.2702
  br label %.thread814

.thread814:                                       ; preds = %bb.bu, %bb.bt, %bb.bv
  %.sink1587 = phi i64 [ 7782220156096217088, %bb.bv ], [ 8430738502437568512, %bb.bt ], [ 8430738502437568512, %bb.bu ]
  %.sink = phi i64 [ %i.ql, %bb.bv ], [ %.2702, %bb.bt ], [ %.2702, %bb.bu ]
  store i64 %.sink1587, ptr %i.y, align 8, !tbaa !13
  %i.qm = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %i.qm, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qn = load i8, ptr %.1693, align 1, !tbaa !9
  %i.qo = zext i8 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i = icmp eq i8 %i.qq, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819: ; preds = %bb.bo, %bb.br
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qs = load i8, ptr %i.qr, align 8, !tbaa !133, !range !37, !noundef !38
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %.preheader1640, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1640:                                   ; preds = %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, %.preheader1640
  %.122.i.i = phi ptr [ %i.qx, %.preheader1640 ], [ %i.ir, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819 ] ; 3 uses
  %i.qu = load i8, ptr %.122.i.i, align 1, !tbaa !9 ; 2 uses
  %i.qv = add i8 %i.qu, -48
  %i.qw = icmp ult i8 %i.qv, 10
  %i.qx = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.qw, label %.preheader1640, label %bb.bw, !llvm.loop !187

bb.bw:                                            ; preds = %.preheader1640
  %i.qy = zext i8 %i.qu to i64
  %i.qz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i249.i = icmp eq i8 %i.ra, 0
  br i1 %.not.i249.i, label %bb.bx, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bx:                                            ; preds = %bb.bw
  %i.rb = ptrtoint ptr %.122.i.i to i64
  %i.rc = ptrtoint ptr %i.if to i64
  %3 = sub i64 %i.rb, %i.rc                       ; 3 uses
  %4 = load ptr, ptr %i.g, align 8, !tbaa !177
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = ptrtoint ptr %i.n to i64
  %8 = ptrtoint ptr %6 to i64
  %i.rd = sub i64 %7, %8
  %9 = or i64 %i.rd, 6485183463413514240
  store i64 %9, ptr %i.y, align 8, !tbaa !13
  %i.re = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rf, ptr nonnull align 1 %i.if, i64 %3, i1 false)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %3
  %i.rh = trunc i64 %3 to i32
  store i32 %i.rh, ptr %i.n, align 1
  store i8 0, ptr %i.rg, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.aj, %bb.av, %bb.bw, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread814, %bb.bt, %bb.bs, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.aq
  %.0.i176.i1204.ph = phi i32 [ 9, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.bs ], [ 9, %bb.bt ], [ 9, %.thread814 ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.aj ], [ 10, %_ZN8simdjson8westmere13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread819 ], [ 9, %bb.bw ], [ 9, %bb.av ], [ 9, %bb.aq ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.if) #43
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1516: ; preds = %bb.bx, %.thread814, %bb.bs, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread
  %.sroa.0.361203.ph = phi ptr [ %i.qc, %bb.bs ], [ %i.re, %bb.bx ], [ %.sroa.0.38, %.thread814 ], [ %i.mn, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.if) #43
  br label %.thread850

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc261.i, %bb.bn
  %.sroa.0.40 = phi ptr [ %i.mh, %.noexc261.i ], [ %.sroa.0.39, %bb.bn ]
  %.1.i260.i = phi i32 [ %i.me, %.noexc261.i ], [ %.0.i259.i, %bb.bn ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i260.i, 0         ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1283 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i260.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.if) #43
  %.not.i = and i1 %.not60.i.i, %.not59.i.i
  br i1 %.not.i, label %.thread850, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %select.unfold1171, %select.unfold1014, %bb.c
  %.sroa.119.2 = phi i32 [ %.sroa.119.3, %select.unfold1014 ], [ %.sroa.119.1, %select.unfold1171 ], [ 0, %bb.c ]
  %.sroa.23.4 = phi ptr [ %i.yd, %select.unfold1014 ], [ %i.axt, %select.unfold1171 ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold1014 ], [ %.sroa.172.2, %select.unfold1171 ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold1014 ], [ %.sroa.0.3, %select.unfold1171 ], [ %i.y, %bb.c ] ; 3 uses
  %i.ri = add i32 %.sroa.119.2, 1                 ; 2 uses
  %i.rj = zext i32 %i.ri to i64                   ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !135
  %.not161.i = icmp ugt i64 %i.rl, %i.rj
  br i1 %.not161.i, label %bb.bz, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bz:                                            ; preds = %bb.by
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !136
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rj
  store i8 0, ptr %i.ro, align 1, !tbaa !124
  %i.rp = load ptr, ptr %i.g, align 8, !tbaa !177 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !118
  %i.rr = ptrtoint ptr %.sroa.0.4 to i64
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = lshr exact i64 %i.rt, 3
  %i.rv = trunc i64 %i.ru to i32
  %i.rw = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rj ; 2 uses
  store i32 %i.rv, ptr %i.rx, align 4, !tbaa !179
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 4 ; 2 uses
  store i32 0, ptr %i.ry, align 4, !tbaa !181
  %i.rz = load i32, ptr %.sroa.23.4, align 4, !tbaa !10
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.sa ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.sc, 34
  br i1 %.not162.i, label %bb.ca, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.ry, align 4, !tbaa !181
  %i.se = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !20
  %i.sg = ptrtoint ptr %.sroa.172.4 to i64
  %i.sh = ptrtoint ptr %i.sf to i64
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = or i64 %i.si, 2449958197289549824
  store i64 %i.sj, ptr %i.sd, align 8, !tbaa !13
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  br label %bb.cb

bb.cb:                                            ; preds = %.backedge1701, %bb.ca
  %.0732 = phi ptr [ %i.sl, %bb.ca ], [ %.0732.be, %.backedge1701 ] ; 7 uses
  %.0724 = phi ptr [ %i.sm, %bb.ca ], [ %.0724.be, %.backedge1701 ] ; 6 uses
  %i.sn = load <2 x i64>, ptr %.0724, align 1, !tbaa !9 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.0724, i64 16
  %i.sp = load <2 x i64>, ptr %i.so, align 1, !tbaa !9 ; 3 uses
  store <2 x i64> %i.sn, ptr %.0732, align 1, !tbaa !9
  %i.sq = getelementptr inbounds nuw i8, ptr %.0732, i64 16
  store <2 x i64> %i.sp, ptr %i.sq, align 1, !tbaa !9
  %i.sr = shufflevector <2 x i64> %i.sn, <2 x i64> %i.sp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ss = bitcast <4 x i64> %i.sr to <32 x i8>
  %i.st = icmp eq <32 x i8> %i.ss, splat (i8 92)
  %.sroa.0291.0.extract.trunc = bitcast <32 x i1> %i.st to i32 ; 3 uses
  %i.su = shufflevector <2 x i64> %i.sn, <2 x i64> %i.sp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sv = bitcast <4 x i64> %i.su to <32 x i8>
  %i.sw = icmp eq <32 x i8> %i.sv, splat (i8 34)
  %.sroa.6294.0.extract.trunc = bitcast <32 x i1> %i.sw to i32 ; 2 uses
  %i.sx = add i32 %.sroa.0291.0.extract.trunc, -1
  %i.sy = and i32 %i.sx, %.sroa.6294.0.extract.trunc
  %.not1292 = icmp eq i32 %i.sy, 0
  br i1 %.not1292, label %bb.cc, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i214.i

bb.cc:                                            ; preds = %bb.cb
  %.not1293 = icmp eq i32 %.sroa.0291.0.extract.trunc, 0
  br i1 %.not1293, label %bb.cr, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0291.0.extract.trunc, i1 true) ; 2 uses
  %i.ta = zext nneg i32 %i.sz to i64              ; 4 uses
  %i.tb = add nuw nsw i32 %i.sz, 1
  %i.tc = zext nneg i32 %i.tb to i64              ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0724, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !9   ; 2 uses
  %i.tf = icmp eq i8 %i.te, 117
  br i1 %i.tf, label %bb.ce, label %bb.cp

bb.ce:                                            ; preds = %bb.cd
  %i.tg = getelementptr inbounds nuw i8, ptr %.0724, i64 %i.ta ; 11 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.0732, i64 %i.ta ; 8 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 2
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !9
  %i.tk = zext i8 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 2520
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !10
  %i.to = getelementptr inbounds nuw i8, ptr %i.tg, i64 3
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !9
  %i.tq = zext i8 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1680
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !10
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !9
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 840
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !10
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tg, i64 5
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !9
  %i.uc = zext i8 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !10
  %i.uf = or i32 %i.tt, %i.tn
  %i.ug = or i32 %i.uf, %i.tz
  %i.uh = or i32 %i.ug, %i.ue                     ; 13 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tg, i64 6 ; 5 uses
  %i.uj = and i32 %i.uh, -1024
  switch i32 %i.uj, label %bb.ch [
    i32 55296, label %bb.cf
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.uk = load i8, ptr %i.ui, align 1, !tbaa !9
  %i.ul = zext i8 %i.uk to i32
  %i.um = shl nuw nsw i32 %i.ul, 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.tg, i64 7
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !9
  %i.up = zext i8 %i.uo to i32
  %i.uq = or disjoint i32 %i.um, %i.up
  %.not.i20.i202.i = icmp eq i32 %i.uq, 23669
  br i1 %.not.i20.i202.i, label %bb.cg, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cg:                                            ; preds = %bb.cf
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !9
  %i.ut = zext i8 %i.us to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 2520
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !10
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tg, i64 9
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !9
  %i.uz = zext i8 %i.uy to i64
  %i.va = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 1680
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !10
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tg, i64 10
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !9
  %i.vf = zext i8 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 840
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !10
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tg, i64 11
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !9
  %i.vl = zext i8 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !10
  %i.vo = or i32 %i.vc, %i.uw
  %i.vp = or i32 %i.vo, %i.vi
  %i.vq = or i32 %i.vp, %i.vn
  %i.vr = add i32 %i.vq, -56320                   ; 2 uses
  %.not35.i.i203.i = icmp ult i32 %i.vr, 1024
  br i1 %.not35.i.i203.i, label %.thread890, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread890:                                       ; preds = %bb.cg
  %i.vs = shl nuw nsw i32 %i.uh, 10
  %i.vt = add nsw i32 %i.vs, -56557568
  %i.vu = or disjoint i32 %i.vt, %i.vr
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tg, i64 12
  br label %bb.co

bb.ch:                                            ; preds = %bb.ce
  %i.vw = icmp ult i32 %i.uh, 128
  br i1 %i.vw, label %bb.ci, label %bb.cj

end_hunk_17
begin_hunk_18_@_ZNK8simdjson8fallback14implementation6minifyEPKhmPhRm
define dso_local noundef range(i32 0, 16) i32 @_ZNK8simdjson8fallback14implementation6minifyEPKhmPhRm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #5 align 2 {
bb.a:
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.01924 = phi i64 [ %i.n, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02023 = phi i8 [ %i.s, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.02122 = phi i8 [ %i.h, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.025
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9     ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = mul nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallbackL10jump_tableE, i64 %i.d ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, %.02023                     ; 2 uses
  %i.h = xor i8 %i.g, %.02122                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.01924
  store i8 %i.b, ptr %i.i, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = or i8 %i.k, %i.h
  %i.m = zext i8 %i.l to i64
  %i.n = add i64 %.01924, %i.m                    ; 2 uses
  %i.o = add nuw i64 %.025, 1                     ; 2 uses
  %i.p = xor i8 %.02023, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = or i8 %i.r, %i.p
  %exitcond.not = icmp eq i64 %i.o, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !205

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.t = icmp eq i8 %i.g, %.02122
  %i.u = select i1 %i.t, i32 0, i32 15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.021.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  %.019.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  store i64 %.019.lcssa, ptr %4, align 8, !tbaa !13
  ret i32 %.021.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson8fallback14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.t
  %.077101 = phi i64 [ %.4, %bb.t ], [ 0, %bb.a ] ; 7 uses
  %i.b = add i64 %.077101, 16                     ; 2 uses
  %.not = icmp ugt i64 %i.b, %2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 %.077101 ; 3 uses
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.b

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %.0.copyload18 = load i64, ptr %.phi.trans.insert, align 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.0.copyload = load i64, ptr %i.c, align 1
  %i.d = or i64 %.0.copyload, %.0.copyload18
  %i.e = and i64 %i.d, -9187201950435737472
  %.not91 = icmp eq i64 %i.e, 0
  %i.f = trunc i64 %.0.copyload18 to i8
  br i1 %.not91, label %bb.t, label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge, %bb.b
  %i.g = phi i8 [ %.pre, %.lr.ph._crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.077101 ; 6 uses
  %i.i = zext i8 %i.g to i32                      ; 6 uses
  %i.j = icmp sgt i8 %i.g, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add i64 %.077101, 1
  br label %bb.t, !llvm.loop !206

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %i.i, 224
  %i.m = icmp eq i32 %i.l, 192
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %.077101, 2                      ; 2 uses
  %i.o = icmp ugt i64 %i.n, %2
  br i1 %i.o, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.h, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %.not97 = icmp sgt i8 %i.q, -65
  %i.r = and i32 %i.i, 30
  %i.s = icmp eq i32 %i.r, 0
  %or.cond = or i1 %i.s, %.not97
  br i1 %or.cond, label %.thread, label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.t = and i32 %i.i, 240
  %i.u = icmp eq i32 %i.t, 224
  br i1 %i.u, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.v = add i64 %.077101, 3                      ; 2 uses
  %i.w = icmp ugt i64 %i.v, %2
  br i1 %i.w, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %i.h, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 192
  %.not95 = icmp eq i32 %i.aa, 128
  br i1 %.not95, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.h, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %.not96 = icmp slt i8 %i.ac, -64
  br i1 %.not96, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ad = shl nuw nsw i32 %i.i, 12
  %i.ae = and i32 %i.ad, 61440                    ; 2 uses
  %i.af = shl nuw nsw i32 %i.z, 6
  %i.ag = and i32 %i.af, 4032
  %i.ah = or disjoint i32 %i.ag, %i.ae            ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 2048
  br i1 %i.ai, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp samesign ugt i32 %i.ah, 55295
  %i.ak = icmp samesign ult i32 %i.ae, 57344
  %or.cond5 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond5, label %.thread, label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.al = and i32 %i.i, 248
  %i.am = icmp eq i32 %i.al, 240
  br i1 %i.am, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.an = add i64 %.077101, 4                     ; 2 uses
  %i.ao = icmp ugt i64 %i.an, %2
  br i1 %i.ao, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %i.h, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %.not92 = icmp eq i32 %i.as, 128
  br i1 %.not92, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr i8, ptr %i.h, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %.not93 = icmp slt i8 %i.au, -64
  br i1 %.not93, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %i.h, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %.not94 = icmp slt i8 %i.aw, -64
  br i1 %.not94, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ax = shl nuw nsw i32 %i.i, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ar, 12
  %i.ba = and i32 %i.az, 196608
  %i.bb = add nsw i32 %i.ay, -1114112
  %i.bc = add nsw i32 %i.bb, %i.ba
  %or.cond7 = icmp ult i32 %i.bc, -1048576
  br i1 %or.cond7, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.s, %bb.g, %bb.d, %bb.b
  %.4 = phi i64 [ %i.b, %bb.b ], [ %i.k, %bb.d ], [ %i.n, %bb.g ], [ %i.v, %bb.m ], [ %i.an, %bb.s ] ; 2 uses
  %.not128 = icmp ult i64 %.4, %2
  br i1 %.not128, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.t, %bb.s, %bb.f, %bb.g, %bb.n, %bb.i, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.q, %bb.r, %bb.m, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.m ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.s ], [ true, %bb.t ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !207
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !188  ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !208  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !209
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !211
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  switch i8 %i.z, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.o, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.ag, 125
  br i1 %.not162.i, label %.thread, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = add i32 %i.o, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.an, 93
  br i1 %.not.i, label %.thread791, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread:                                          ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 125
  br i1 %i.as, label %bb.e, label %bb.bx

bb.e:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8863084066665136131, ptr %i.u, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 9007199254740992001, ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread903

.thread791:                                       ; preds = %bb.d
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = icmp eq i8 %i.az, 93
  br i1 %i.ba, label %bb.f, label %.thread917

bb.f:                                             ; preds = %.thread791
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 6557241057451442179, ptr %i.u, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 6701356245527298049, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread903

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.u, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821, %bb.g
  %.0669 = phi ptr [ %i.bg, %bb.g ], [ %.1670, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821 ] ; 15 uses
  %.0666 = phi ptr [ %i.bf, %bb.g ], [ %i.fp, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821 ] ; 12 uses
  %i.bh = load i8, ptr %.0669, align 1, !tbaa !9  ; 2 uses
  store i8 %i.bh, ptr %.0666, align 1, !tbaa !9
  switch i8 %i.bh, label %bb.w [
    i8 34, label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i
    i8 92, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.0669, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9   ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 117
  br i1 %i.bk, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0669, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2520
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %.0669, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1680
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.0669, i64 4
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 840
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %.0669, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10
  %i.ci = or i32 %i.bw, %i.bq
  %i.cj = or i32 %i.ci, %i.cc
  %i.ck = or i32 %i.cj, %i.ch                     ; 13 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0669, i64 6 ; 5 uses
  %i.cm = and i32 %i.ck, -1024
  switch i32 %i.cm, label %bb.m [
    i32 55296, label %bb.k
    i32 56320, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0669, i64 7
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9
  %i.cs = zext i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cp, %i.cs
  %.not.i11.i = icmp eq i32 %i.ct, 23669
  br i1 %.not.i11.i, label %bb.l, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.0669, i64 8
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2520
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %.0669, i64 9
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1680
  %i.df = load i32, ptr %i.de, align 4, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %.0669, i64 10
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 840
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %.0669, i64 11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  %i.dr = or i32 %i.df, %i.cz
  %i.ds = or i32 %i.dr, %i.dl
  %i.dt = or i32 %i.ds, %i.dq
  %i.du = add i32 %i.dt, -56320                   ; 2 uses
  %.not35.i.i = icmp ult i32 %i.du, 1024
  br i1 %.not35.i.i, label %.thread812, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread812:                                       ; preds = %bb.l
  %i.dv = shl nuw nsw i32 %i.ck, 10
  %i.dw = add nsw i32 %i.dv, -56557568
  %i.dx = or disjoint i32 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %.0669, i64 12
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = icmp ult i32 %i.ck, 128
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ea = trunc nuw nsw i32 %i.ck to i8
  store i8 %i.ea, ptr %.0666, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821

bb.o:                                             ; preds = %bb.m
  %i.eb = icmp ult i32 %i.ck, 2048
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = lshr i32 %i.ck, 6
  %i.ed = trunc nuw nsw i32 %i.ec to i8
  %i.ee = or disjoint i8 %i.ed, -64
  store i8 %i.ee, ptr %.0666, align 1, !tbaa !9
  %i.ef = trunc i32 %i.ck to i8
  %i.eg = and i8 %i.ef, 63
  %i.eh = or disjoint i8 %i.eg, -128
  %i.ei = getelementptr inbounds nuw i8, ptr %.0666, i64 1
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821

bb.q:                                             ; preds = %bb.o
  %i.ej = icmp ult i32 %i.ck, 65536
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = lshr i32 %i.ck, 12
  %i.el = trunc nuw nsw i32 %i.ek to i8
  %i.em = or disjoint i8 %i.el, -32
  store i8 %i.em, ptr %.0666, align 1, !tbaa !9
  %i.en = lshr i32 %i.ck, 6
  %i.eo = trunc i32 %i.en to i8
  %i.ep = and i8 %i.eo, 63
  %i.eq = or disjoint i8 %i.ep, -128
  %i.er = getelementptr inbounds nuw i8, ptr %.0666, i64 1
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !9
  %i.es = trunc i32 %i.ck to i8
  %i.et = and i8 %i.es, 63
  %i.eu = or disjoint i8 %i.et, -128
  %i.ev = getelementptr inbounds nuw i8, ptr %.0666, i64 2
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821

bb.s:                                             ; preds = %bb.q
  %i.ew = icmp ult i32 %i.ck, 1114112
  br i1 %i.ew, label %bb.t, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.t:                                             ; preds = %.thread812, %bb.s
  %.6800806810816 = phi ptr [ %i.dy, %.thread812 ], [ %i.cl, %bb.s ]
  %.4.i.i801805811815 = phi i32 [ %i.dx, %.thread812 ], [ %i.ck, %bb.s ] ; 4 uses
  %i.ex = lshr i32 %.4.i.i801805811815, 6
  %i.ey = lshr i32 %.4.i.i801805811815, 12
  %i.ez = lshr i32 %.4.i.i801805811815, 18
  %i.fa = trunc i32 %.4.i.i801805811815 to i8
  %i.fb = trunc i32 %i.ex to i8
  %i.fc = trunc i32 %i.ey to i8
  %i.fd = trunc nsw i32 %i.ez to i8
  %i.fe = insertelement <4 x i8> poison, i8 %i.fd, i64 0
  %i.ff = insertelement <4 x i8> %i.fe, i8 %i.fc, i64 1
  %i.fg = insertelement <4 x i8> %i.ff, i8 %i.fb, i64 2
  %i.fh = insertelement <4 x i8> %i.fg, i8 %i.fa, i64 3
  %i.fi = and <4 x i8> %i.fh, <i8 -1, i8 63, i8 63, i8 63>
  %i.fj = or disjoint <4 x i8> %i.fi, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fj, ptr %.0666, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821

bb.u:                                             ; preds = %bb.i
  %i.fk = zext i8 %i.bj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9   ; 2 uses
  %.not.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 %i.fm, ptr %.0666, align 1, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %.0669, i64 2
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821

bb.w:                                             ; preds = %bb.h
  %i.fo = getelementptr inbounds nuw i8, ptr %.0669, i64 1
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821

_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread821: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.v, %bb.w
  %.sink = phi i64 [ 1, %bb.v ], [ 1, %bb.w ], [ 4, %bb.t ], [ 3, %bb.r ], [ 2, %bb.p ], [ 1, %bb.n ]
  %.1670 = phi ptr [ %i.fn, %bb.v ], [ %i.fo, %bb.w ], [ %.6800806810816, %bb.t ], [ %i.cl, %bb.r ], [ %i.cl, %bb.p ], [ %i.cl, %bb.n ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0666, i64 %.sink
  br label %bb.h

_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i: ; preds = %bb.h
  %i.fq = ptrtoint ptr %.0666 to i64
  %i.fr = ptrtoint ptr %i.bf to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = trunc i64 %i.fs to i32
  store i32 %i.ft, ptr %i.m, align 1
  store i8 0, ptr %.0666, align 1, !tbaa !9
  br label %.thread903

bb.x:                                             ; preds = %bb.b
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !197
  %i.fw = sub i64 %i.fv, %i.x                     ; 2 uses
  %i.fx = icmp ugt i64 %i.fw, 4
  br i1 %i.fx, label %.noexc, label %bb.y

.noexc:                                           ; preds = %bb.x
  %.0.copyload.i = load i32, ptr %i.y, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !9
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = or i32 %.0.copyload.i, %i.gd
  %i.gf = icmp eq i32 %i.ge, 1702195828
  br i1 %i.gf, label %bb.z, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.gg = icmp eq i64 %i.fw, 4
  br i1 %i.gg, label %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit: ; preds = %bb.y
  %.0.copyload.i61 = load i32, ptr %i.y, align 1
  %.not.i58 = icmp eq i32 %.0.copyload.i61, 1702195828
  br i1 %.not.i58, label %bb.z, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %.noexc, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit
  store i64 8358680908399640576, ptr %i.u, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread903

bb.aa:                                            ; preds = %bb.b
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !197
  %i.gk = sub i64 %i.gj, %i.x                     ; 2 uses
  %i.gl = icmp ugt i64 %i.gk, 5
  br i1 %i.gl, label %.noexc64, label %bb.ab

.noexc64:                                         ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i65 = load i32, ptr %i.gm, align 1
  %i.gn = xor i32 %.0.copyload.i.i65, 1702063201
  %i.go = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or i32 %i.gn, %i.gt
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.ac, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gw = icmp eq i64 %i.gk, 5
  br i1 %i.gw, label %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit: ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload.i.i = load i32, ptr %i.gx, align 1
  %.not.i63 = icmp eq i32 %.0.copyload.i.i, 1702063201
  br i1 %.not.i63, label %bb.ac, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %.noexc64, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit
  store i64 7349874591868649472, ptr %i.u, align 8, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread903

bb.ad:                                            ; preds = %bb.b
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !197
  %i.hb = sub i64 %i.ha, %i.x                     ; 2 uses
  %i.hc = icmp ugt i64 %i.hb, 4
  br i1 %i.hc, label %.noexc69, label %bb.ae

.noexc69:                                         ; preds = %bb.ad
  %.0.copyload.i.i70 = load i32, ptr %i.y, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = zext i8 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !124, !range !37, !noundef !38
  %i.hi = zext nneg i8 %i.hh to i32
  %i.hj = or i32 %.0.copyload.i.i70, %i.hi
  %i.hk = icmp eq i32 %i.hj, 1819047278
  br i1 %i.hk, label %bb.af, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.hl = icmp eq i64 %i.hb, 4
  br i1 %i.hl, label %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit: ; preds = %bb.ae
  %.0.copyload.i.i67 = load i32, ptr %i.y, align 1
  %.not.i68 = icmp eq i32 %.0.copyload.i.i67, 1819047278
  br i1 %.not.i68, label %bb.af, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %.noexc69, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit
  store i64 7926335344172072960, ptr %i.u, align 8, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %.thread903

bb.ag:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !197
  %i.hp = add i64 %i.ho, 64
  %i.hq = sub i64 %i.hp, %i.x
  %i.hr = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.hq, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %2 = load i64, ptr %i.hn, align 8, !tbaa !197
  %3 = load i32, ptr %i.k, align 4, !tbaa !10
  %4 = zext i32 %3 to i64
  %i.ht = sub i64 %2, %4                          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr nonnull align 1 %i.y, i64 %i.ht, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.ht
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.hu, i8 32, i64 64, i1 false)
  %i.hv = load i8, ptr %i.hr, align 1, !tbaa !9   ; 2 uses
  %i.hw = icmp eq i8 %i.hv, 45                    ; 10 uses
  %i.hx = zext i1 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hx ; 6 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !9   ; 4 uses
  %i.ia = add i8 %i.hz, -48                       ; 2 uses
  %i.ib = icmp ult i8 %i.ia, 10
  br i1 %i.ib, label %.lr.ph, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.ic = phi i8 [ %i.ii, %.lr.ph ], [ %i.ia, %bb.ah ]
  %.07061382 = phi i64 [ %i.if, %.lr.ph ], [ 0, %bb.ah ]
  %.07131381 = phi ptr [ %i.ig, %.lr.ph ], [ %i.hy, %bb.ah ]
  %i.id = mul i64 %.07061382, 10
  %i.ie = zext nneg i8 %i.ic to i64
  %i.if = add i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.07131381, i64 1 ; 3 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !9   ; 2 uses
  %i.ii = add i8 %i.ih, -48                       ; 2 uses
  %i.ij = icmp ult i8 %i.ii, 10
  br i1 %i.ij, label %.lr.ph, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, !llvm.loop !212

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit: ; preds = %.lr.ph, %bb.ah
  %.0713.lcssa = phi ptr [ %i.hy, %bb.ah ], [ %i.ig, %.lr.ph ] ; 7 uses
  %.0706.lcssa = phi i64 [ 0, %bb.ah ], [ %i.if, %.lr.ph ] ; 3 uses
  %.lcssa1380 = phi i8 [ %i.hz, %bb.ah ], [ %i.ih, %.lr.ph ] ; 2 uses
  %i.ik = ptrtoint ptr %.0713.lcssa to i64
  %i.il = ptrtoint ptr %i.hy to i64               ; 3 uses
  %i.im = sub i64 %i.ik, %i.il                    ; 3 uses
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit
  %i.io = icmp eq i8 %i.hz, 48
  %i.ip = icmp ne i64 %i.im, 1
  %or.cond.i = and i1 %i.ip, %i.io
  br i1 %or.cond.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iq = icmp eq i8 %.lcssa1380, 46              ; 2 uses
  br i1 %i.iq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.ptr1342 = getelementptr inbounds nuw i8, ptr %.0713.lcssa, i64 1
  %.0.copyload.i88 = load i64, ptr %.ptr1342, align 1 ; 4 uses
  %i.ir = and i64 %.0.copyload.i88, -1085102592571150096
  %i.is = add i64 %.0.copyload.i88, 434041037028460038
  %i.it = lshr i64 %i.is, 4
  %i.iu = and i64 %i.it, 1085102592571150095
  %i.iv = or disjoint i64 %i.iu, %i.ir
  %i.iw = icmp eq i64 %i.iv, 3689348814741910323
  %i.ix = trunc i64 %.0.copyload.i88 to i8
  br i1 %i.iw, label %.noexc81, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

.noexc81:                                         ; preds = %bb.ak
  %i.iy = mul i64 %.0706.lcssa, 100000000
  %i.iz = and i64 %.0.copyload.i88, 1085102592571150095
  %i.ja = mul i64 %i.iz, 2561
  %i.jb = lshr i64 %i.ja, 8
  %i.jc = and i64 %i.jb, 71777214294589695
  %i.jd = mul i64 %i.jc, 6553601
  %i.je = lshr i64 %i.jd, 16
  %i.jf = and i64 %i.je, 281470681808895
  %i.jg = mul i64 %i.jf, 42949672960001
  %i.jh = lshr i64 %i.jg, 32
  %i.ji = add i64 %i.jh, %i.iy
  %.3716.ptr.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0713.lcssa, i64 9
  %.pre = load i8, ptr %.3716.ptr.phi.trans.insert, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i: ; preds = %.noexc81, %bb.ak
  %i.jj = phi i8 [ %.pre, %.noexc81 ], [ %i.ix, %bb.ak ]
  %.3716.idx = phi i64 [ 9, %.noexc81 ], [ 1, %bb.ak ]
  %.3709 = phi i64 [ %i.ji, %.noexc81 ], [ %.0706.lcssa, %bb.ak ] ; 2 uses
  %i.jk = add i8 %i.jj, -48                       ; 2 uses
  %i.jl = icmp ult i8 %i.jk, 10                   ; 2 uses
  %i.jm = mul i64 %.3709, 10
  %i.jn = zext nneg i8 %i.jk to i64
  %i.jo = add i64 %i.jm, %i.jn
  %.4710850 = select i1 %i.jl, i64 %i.jo, i64 %.3709 ; 2 uses
  %.4717.idx = zext i1 %i.jl to i64
  %.3716.add = add nuw nsw i64 %.3716.idx, %.4717.idx ; 4 uses
  %.5718.ptr1386 = getelementptr inbounds nuw i8, ptr %.0713.lcssa, i64 %.3716.add
  %i.jp = load i8, ptr %.5718.ptr1386, align 1, !tbaa !9 ; 2 uses
  %i.jq = add i8 %i.jp, -48                       ; 2 uses
  %i.jr = icmp ult i8 %i.jq, 10
  br i1 %i.jr, label %.lr.ph1389, label %.noexc77

.lr.ph1389:                                       ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i, %.lr.ph1389
  %i.js = phi i8 [ %i.jx, %.lr.ph1389 ], [ %i.jq, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.57111388 = phi i64 [ %i.jv, %.lr.ph1389 ], [ %.4710850, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %.5718.idx1387 = phi i64 [ %.5718.add, %.lr.ph1389 ], [ %.3716.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i ]
  %i.jt = mul i64 %.57111388, 10
  %i.ju = zext nneg i8 %i.js to i64
  %i.jv = add i64 %i.jt, %i.ju                    ; 2 uses
  %.5718.add = add nuw nsw i64 %.5718.idx1387, 1  ; 3 uses
  %.5718.ptr = getelementptr inbounds nuw i8, ptr %.0713.lcssa, i64 %.5718.add
  %i.jw = load i8, ptr %.5718.ptr, align 1, !tbaa !9 ; 2 uses
  %i.jx = add i8 %i.jw, -48                       ; 2 uses
  %i.jy = icmp ult i8 %i.jx, 10
  br i1 %i.jy, label %.lr.ph1389, label %.noexc77.thread, !llvm.loop !213

.noexc77:                                         ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i
  %.not = icmp eq i64 %.3716.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.noexc77.thread

.noexc77.thread:                                  ; preds = %.lr.ph1389, %.noexc77
  %.5711.lcssa1540 = phi i64 [ %.4710850, %.noexc77 ], [ %i.jv, %.lr.ph1389 ]
  %.5718.idx.lcssa13851539 = phi i64 [ %.3716.add, %.noexc77 ], [ %.5718.add, %.lr.ph1389 ] ; 2 uses
  %i.jz = phi i8 [ %i.jp, %.noexc77 ], [ %i.jw, %.lr.ph1389 ]
  %.5718.ptr.le = getelementptr inbounds nuw i8, ptr %.0713.lcssa, i64 %.5718.idx.lcssa13851539 ; 2 uses
  %i.ka = ptrtoint ptr %.5718.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.5718.idx.lcssa13851539
  %i.kb = sub i64 %i.ka, %i.il
  %sext.i = shl i64 %i.kb, 32
  %i.kc = ashr exact i64 %sext.i, 32
  br label %bb.al

bb.al:                                            ; preds = %.noexc77.thread, %bb.aj
  %i.kd = phi i8 [ %i.jz, %.noexc77.thread ], [ %.lcssa1380, %bb.aj ] ; 2 uses
  %.1714 = phi ptr [ %.5718.ptr.le, %.noexc77.thread ], [ %.0713.lcssa, %bb.aj ] ; 4 uses
  %.1707 = phi i64 [ %.5711.lcssa1540, %.noexc77.thread ], [ %.0706.lcssa, %bb.aj ] ; 14 uses
  %.0703 = phi i64 [ %gepdiff, %.noexc77.thread ], [ 0, %bb.aj ] ; 2 uses
  %.044.i = phi i64 [ %i.kc, %.noexc77.thread ], [ %i.im, %bb.aj ] ; 4 uses
  switch i8 %i.kd, label %bb.ar [
    i8 101, label %bb.am
    i8 69, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.ke = getelementptr inbounds nuw i8, ptr %.1714, i64 1 ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !9   ; 3 uses
  %i.kg = icmp eq i8 %i.kf, 45
  switch i8 %i.kf, label %bb.ao [
    i8 45, label %bb.an
    i8 43, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.kh = getelementptr inbounds nuw i8, ptr %.1714, i64 2 ; 2 uses
  %.pre1474 = load i8, ptr %i.kh, align 1, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ki = phi i8 [ %i.kf, %bb.am ], [ %.pre1474, %bb.an ]
  %.6719 = phi ptr [ %i.ke, %bb.am ], [ %i.kh, %bb.an ] ; 3 uses
  %i.kj = add i8 %i.ki, -48                       ; 2 uses
  %i.kk = icmp ult i8 %i.kj, 10
  br i1 %i.kk, label %.lr.ph1396, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1396:                                       ; preds = %bb.ao, %.lr.ph1396
  %i.kl = phi i8 [ %i.kq, %.lr.ph1396 ], [ %i.kj, %bb.ao ]
  %.7720.idx1395 = phi i64 [ %.7720.add, %.lr.ph1396 ], [ 0, %bb.ao ] ; 2 uses
  %.07211394 = phi i64 [ %i.ko, %.lr.ph1396 ], [ 0, %bb.ao ]
  %i.km = mul nsw i64 %.07211394, 10
  %i.kn = zext nneg i8 %i.kl to i64
  %i.ko = add nsw i64 %i.km, %i.kn                ; 3 uses
  %.7720.add = add nuw nsw i64 %.7720.idx1395, 1  ; 3 uses
  %.7720.ptr = getelementptr inbounds nuw i8, ptr %.6719, i64 %.7720.add
  %i.kp = load i8, ptr %.7720.ptr, align 1, !tbaa !9 ; 2 uses
  %i.kq = add i8 %i.kp, -48                       ; 2 uses
  %i.kr = icmp ult i8 %i.kq, 10
  br i1 %i.kr, label %.lr.ph1396, label %bb.ap, !llvm.loop !214

bb.ap:                                            ; preds = %.lr.ph1396
  %.7720.ptr.le = getelementptr inbounds nuw i8, ptr %.6719, i64 %.7720.add
  %i.ks = icmp samesign ugt i64 %.7720.idx1395, 17
  br i1 %i.ks, label %.preheader1370, label %.thread860, !prof !107

.preheader1370:                                   ; preds = %bb.ap, %.preheader1370
  %.0.i82 = phi ptr [ %i.kv, %.preheader1370 ], [ %.6719, %bb.ap ] ; 3 uses
  %i.kt = load i8, ptr %.0.i82, align 1, !tbaa !9
  %i.ku = icmp eq i8 %i.kt, 48
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i82, i64 1
  br i1 %i.ku, label %.preheader1370, label %bb.aq, !llvm.loop !215

bb.aq:                                            ; preds = %.preheader1370
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i82, i64 18
  %i.kx = icmp ugt ptr %.7720.ptr.le, %i.kw
  %spec.select = select i1 %i.kx, i64 999999999999999999, i64 %i.ko
  br label %.thread860

.thread860:                                       ; preds = %bb.aq, %bb.ap
  %.1722 = phi i64 [ %i.ko, %bb.ap ], [ %spec.select, %bb.aq ] ; 2 uses
  %i.ky = sub nsw i64 0, %.1722
  %i.kz = select i1 %i.kg, i64 %i.ky, i64 %.1722
  %i.la = add nsw i64 %i.kz, %.0703
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  br i1 %i.iq, label %bb.as, label %bb.bn

bb.as:                                            ; preds = %.thread860, %bb.ar
  %i.lb = phi i8 [ %i.kp, %.thread860 ], [ %i.kd, %bb.ar ]
  %.1704865 = phi i64 [ %i.la, %.thread860 ], [ %.0703, %bb.ar ] ; 9 uses
  %i.lc = zext i8 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.lc
end_hunk_18
begin_hunk_19_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.mt = zext i64 %i.mm to i128                  ; 2 uses
  %i.mu = zext i64 %i.ms to i128
  %i.mv = mul nuw i128 %i.mu, %i.mt               ; 2 uses
  %i.mw = trunc i128 %i.mv to i64                 ; 2 uses
  %i.mx = lshr i128 %i.mv, 64
  %i.my = trunc nuw i128 %i.mx to i64             ; 3 uses
  %i.mz = and i64 %i.my, 511
  %i.na = icmp eq i64 %i.mz, 511
  br i1 %i.na, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nb = getelementptr i8, ptr %i.mq, i64 5480
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !13
  %i.nd = zext i64 %i.nc to i128
  %i.ne = mul nuw i128 %i.nd, %i.mt
  %i.nf = lshr i128 %i.ne, 64
  %i.ng = trunc nuw i128 %i.nf to i64             ; 2 uses
  %i.nh = add i64 %i.ng, %i.mw                    ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.ng
  %i.nj = zext i1 %i.ni to i64
  %spec.select.i94 = add nuw i64 %i.nj, %i.my
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.7.1.i = phi i64 [ %spec.select.i94, %bb.bd ], [ %i.my, %bb.bc ] ; 3 uses
  %.sroa.037.0.i = phi i64 [ %i.nh, %bb.bd ], [ %i.mw, %bb.bc ]
  %i.nk = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.nl = add nuw nsw i64 %i.nk, 9                ; 2 uses
  %i.nm = lshr i64 %.sroa.7.1.i, %i.nl            ; 6 uses
  %reass.sub = sub nsw i64 %i.mk, %i.ml
  %.neg = add nsw i64 %reass.sub, %i.nk           ; 4 uses
  %i.nn = add nsw i64 %.neg, 1086
  %i.no = icmp slt i64 %.neg, -1085
  br i1 %i.no, label %bb.bf, label %bb.bi, !prof !107

bb.bf:                                            ; preds = %bb.be
  %i.np = icmp samesign ult i64 %.neg, -1148
  br i1 %i.np, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.nq = select i1 %i.hw, double -0.000000e+00, double 0.000000e+00
  br label %.noexc87.thread

bb.bh:                                            ; preds = %bb.bf
  %i.nr = sub nuw nsw i64 -1085, %.neg
  %i.ns = lshr i64 %i.nm, %i.nr                   ; 2 uses
  %i.nt = and i64 %i.ns, 1
  %i.nu = add nuw nsw i64 %i.nt, %i.ns            ; 2 uses
  %i.nv = lshr i64 %i.nu, 1
  %i.nw = icmp samesign ugt i64 %i.nu, 9007199254740991
  %i.nx = and i64 %i.nv, 13510798882111487
  %i.ny = select i1 %i.nw, i64 4503599627370496, i64 0
  %i.nz = select i1 %i.hw, i64 -9223372036854775808, i64 0
  %i.oa = or disjoint i64 %i.ny, %i.nz
  %i.ob = or disjoint i64 %i.oa, %i.nx
  %i.oc = bitcast i64 %i.ob to double
  br label %.noexc87.thread

bb.bi:                                            ; preds = %bb.be
  %i.od = icmp ult i64 %.sroa.037.0.i, 2
  %i.oe = add nsw i64 %.1704865, 4
  %i.of = icmp ult i64 %i.oe, 28
  %or.cond7.i = and i1 %i.of, %i.od
  %i.og = and i64 %i.nm, 3
  %i.oh = icmp eq i64 %i.og, 1
  %i.oi = select i1 %or.cond7.i, i1 %i.oh, i1 false
  br i1 %i.oi, label %bb.bj, label %bb.bk, !prof !107

bb.bj:                                            ; preds = %bb.bi
  %i.oj = shl i64 %i.nm, %i.nl
  %i.ok = icmp eq i64 %i.oj, %.sroa.7.1.i
  %i.ol = and i64 %i.nm, 72057594037927932
  %spec.select90.i = select i1 %i.ok, i64 %i.ol, i64 %i.nm
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i = phi i64 [ %i.nm, %bb.bi ], [ %spec.select90.i, %bb.bj ] ; 2 uses
  %i.om = and i64 %.080.i, 1
  %i.on = add nuw nsw i64 %i.om, %.080.i          ; 2 uses
  %i.oo = icmp samesign ugt i64 %i.on, 18014398509481983 ; 2 uses
  %i.op = zext i1 %i.oo to i64
  %spec.select92.i = add nuw nsw i64 %i.nn, %i.op ; 2 uses
  %i.oq = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.oq, label %.noexc87, label %bb.bl, !prof !107

bb.bl:                                            ; preds = %bb.bk
  %i.or = lshr i64 %i.on, 1
  %i.os = and i64 %i.or, 13510798882111487
  %i.ot = select i1 %i.oo, i64 0, i64 %i.os
  %i.ou = shl nuw nsw i64 %spec.select92.i, 52
  %i.ov = select i1 %i.hw, i64 -9223372036854775808, i64 0
  %i.ow = or disjoint i64 %i.ot, %i.ov
  %i.ox = or i64 %i.ow, %i.ou
  %i.oy = bitcast i64 %i.ox to double
  br label %.noexc87.thread

.noexc87:                                         ; preds = %bb.bk
  %i.oz = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.hr, ptr noundef %i.f)
  br i1 %i.oz, label %.noexc87..noexc87.thread_crit_edge, label %bb.bm

.noexc87..noexc87.thread_crit_edge:               ; preds = %.noexc87
  %.pre1476 = load double, ptr %i.f, align 8, !tbaa !130
  br label %.noexc87.thread

.noexc87.thread:                                  ; preds = %.noexc87..noexc87.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.az, %bb.bb, %bb.ay
  %i.pa = phi double [ %.pre1476, %.noexc87..noexc87.thread_crit_edge ], [ %i.oy, %bb.bl ], [ %i.oc, %bb.bh ], [ %i.nq, %bb.bg ], [ %i.mg, %bb.az ], [ %i.mi, %bb.bb ], [ %storemerge.i, %bb.ay ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !13
  %i.pb = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.pa, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc87.thread, %.noexc87
  %.sroa.0.22 = phi ptr [ %i.pc, %.noexc87.thread ], [ %i.u, %.noexc87 ]
  %.0.i84 = phi i32 [ 0, %.noexc87.thread ], [ 9, %.noexc87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bn:                                            ; preds = %bb.ar
  %i.pd = select i1 %i.hw, i64 19, i64 20         ; 2 uses
  %i.pe = icmp ugt i64 %.044.i, %i.pd
  br i1 %i.pe, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pf = icmp eq i64 %.044.i, %i.pd
  br i1 %i.pf, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hw, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pg = icmp ugt i64 %.1707, -9223372036854775808
  br i1 %i.pg, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ph = sub i64 0, %.1707
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !13
  %i.pi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ph, ptr %i.pi, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.pk = load i8, ptr %.1714, align 1, !tbaa !9
  %i.pl = zext i8 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i = icmp eq i8 %i.pn, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.po = icmp ne i8 %i.hv, 49
  %i.pp = icmp sgt i64 %.1707, -1
  %or.cond5.i = select i1 %i.po, i1 true, i1 %i.pp
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread867

bb.bt:                                            ; preds = %bb.bo
  %i.pq = icmp slt i64 %.1707, 0
  br i1 %i.pq, label %.thread867, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pr = sub nsw i64 0, %.1707
  %i.ps = select i1 %i.hw, i64 %i.pr, i64 %.1707
  br label %.thread867

.thread867:                                       ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1615 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink1613 = phi i64 [ %i.ps, %bb.bu ], [ %.1707, %bb.bs ], [ %.1707, %bb.bt ]
  store i64 %.sink1615, ptr %i.u, align 8, !tbaa !13
  %i.pt = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink1613, ptr %i.pt, align 8
  %.sroa.0.20 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.pu = load i8, ptr %.1714, align 1, !tbaa !9
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i = icmp eq i8 %i.px, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872: ; preds = %bb.bn, %bb.bq
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !133, !range !37, !noundef !38
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %.preheader1667, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1667:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, %.preheader1667
  %.122.i = phi ptr [ %i.qe, %.preheader1667 ], [ %i.hy, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872 ] ; 3 uses
  %i.qb = load i8, ptr %.122.i, align 1, !tbaa !9 ; 2 uses
  %i.qc = add i8 %i.qb, -48
  %i.qd = icmp ult i8 %i.qc, 10
  %i.qe = getelementptr inbounds nuw i8, ptr %.122.i, i64 1
  br i1 %i.qd, label %.preheader1667, label %bb.bv, !llvm.loop !217

bb.bv:                                            ; preds = %.preheader1667
  %i.qf = zext i8 %i.qb to i64
  %i.qg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i72 = icmp eq i8 %i.qh, 0
  br i1 %.not.i72, label %bb.bw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bw:                                            ; preds = %bb.bv
  %i.qi = ptrtoint ptr %.122.i to i64
  %i.qj = ptrtoint ptr %i.hr to i64
  %5 = sub i64 %i.qi, %i.qj                       ; 3 uses
  %6 = load ptr, ptr %i.g, align 8, !tbaa !207
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = ptrtoint ptr %i.m to i64
  %10 = ptrtoint ptr %8 to i64
  %i.qk = sub i64 %9, %10
  %11 = or i64 %i.qk, 6485183463413514240
  store i64 %11, ptr %i.u, align 8, !tbaa !13
  %i.ql = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.qm = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qm, ptr nonnull align 1 %i.hr, i64 %5, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %5
  %i.qo = trunc i64 %5 to i32
  store i32 %i.qo, ptr %i.m, align 1
  store i8 0, ptr %i.qn, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.at, %bb.bv, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872, %.noexc77, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread867, %bb.bs, %bb.br, %.noexc79.thread, %bb.ao
  %.0.i51257.ph = phi i32 [ 9, %.noexc79.thread ], [ 9, %bb.br ], [ 9, %bb.bs ], [ 9, %.thread867 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc77 ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.thread872 ], [ 9, %bb.bv ], [ 9, %bb.at ], [ 9, %bb.ao ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.hr) #43
  br label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550: ; preds = %bb.bw, %.thread867, %bb.br, %.noexc79.thread
  %.sroa.0.171256.ph = phi ptr [ %i.pj, %bb.br ], [ %i.ql, %bb.bw ], [ %.sroa.0.20, %.thread867 ], [ %i.lu, %.noexc79.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.hr) #43
  br label %.thread903

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc86, %bb.bm
  %.sroa.0.23 = phi ptr [ %i.lo, %.noexc86 ], [ %.sroa.0.22, %bb.bm ]
  %.1.i85 = phi i32 [ %i.ll, %.noexc86 ], [ %.0.i84, %bb.bm ] ; 2 uses
  %.not60.i = icmp eq i32 %.1.i85, 0              ; 2 uses
  %..i = select i1 %.not59.i, i32 0, i32 9
  %spec.select1336 = select i1 %.not60.i, i32 %..i, i32 %.1.i85
  tail call void @_ZdaPv(ptr noundef nonnull %i.hr) #43
  %.not163.i = and i1 %.not60.i, %.not59.i
  br i1 %.not163.i, label %.thread903, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %select.unfold1224, %select.unfold1067, %.thread
  %.sroa.123.2 = phi i32 [ %.sroa.123.3, %select.unfold1067 ], [ %.sroa.123.1, %select.unfold1224 ], [ 0, %.thread ]
  %.sroa.25.4 = phi ptr [ %i.wm, %select.unfold1067 ], [ %i.auj, %select.unfold1224 ], [ %i.v, %.thread ] ; 2 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold1067 ], [ %.sroa.172.2, %select.unfold1224 ], [ %i.m, %.thread ] ; 3 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold1067 ], [ %.sroa.0.3, %select.unfold1224 ], [ %i.u, %.thread ] ; 3 uses
  %i.qp = add i32 %.sroa.123.2, 1                 ; 2 uses
  %i.qq = zext i32 %i.qp to i64                   ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !135
  %.not164.i = icmp ugt i64 %i.qs, %i.qq
  br i1 %.not164.i, label %bb.by, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %bb.bx
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !136
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qq
  store i8 0, ptr %i.qv, align 1, !tbaa !124
  %i.qw = load ptr, ptr %i.g, align 8, !tbaa !207 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !118
  %i.qy = ptrtoint ptr %.sroa.0.4 to i64
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = lshr exact i64 %i.ra, 3
  %i.rc = trunc i64 %i.rb to i32
  %i.rd = load ptr, ptr %i.r, align 8, !tbaa !208
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.qq ; 2 uses
  store i32 %i.rc, ptr %i.re, align 4, !tbaa !209
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4 ; 2 uses
  store i32 0, ptr %i.rf, align 4, !tbaa !211
  %i.rg = load i32, ptr %.sroa.25.4, align 4, !tbaa !10
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.rh ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !9
  %.not165.i = icmp eq i8 %i.rj, 34
  br i1 %.not165.i, label %bb.bz, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bz:                                            ; preds = %bb.by
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.rf, align 4, !tbaa !211
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !20
  %i.rn = ptrtoint ptr %.sroa.172.4 to i64
  %i.ro = ptrtoint ptr %i.rm to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = or i64 %i.rp, 2449958197289549824
  store i64 %i.rq, ptr %i.rk, align 8, !tbaa !13
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i47.thread952, %bb.bz
  %.0695 = phi ptr [ %i.rt, %bb.bz ], [ %.1696, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i47.thread952 ] ; 15 uses
  %.0689 = phi ptr [ %i.rs, %bb.bz ], [ %i.wc, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i47.thread952 ] ; 11 uses
  %i.ru = load i8, ptr %.0695, align 1, !tbaa !9  ; 2 uses
  store i8 %i.ru, ptr %.0689, align 1, !tbaa !9
  switch i8 %i.ru, label %bb.cp [
    i8 34, label %.loopexit
    i8 92, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.rv = getelementptr inbounds nuw i8, ptr %.0695, i64 1
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !9   ; 2 uses
  %i.rx = icmp eq i8 %i.rw, 117
  br i1 %i.rx, label %bb.cc, label %bb.cn

bb.cc:                                            ; preds = %bb.cb
  %i.ry = getelementptr inbounds nuw i8, ptr %.0695, i64 2
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !9
  %i.sa = zext i8 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 2520
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !10
  %i.se = getelementptr inbounds nuw i8, ptr %.0695, i64 3
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !9
  %i.sg = zext i8 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1680
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !10
  %i.sk = getelementptr inbounds nuw i8, ptr %.0695, i64 4
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !9
  %i.sm = zext i8 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 840
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !10
  %i.sq = getelementptr inbounds nuw i8, ptr %.0695, i64 5
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !9
  %i.ss = zext i8 %i.sr to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !10
  %i.sv = or i32 %i.sj, %i.sd
  %i.sw = or i32 %i.sv, %i.sp
  %i.sx = or i32 %i.sw, %i.su                     ; 13 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.0695, i64 6 ; 5 uses
  %i.sz = and i32 %i.sx, -1024
  switch i32 %i.sz, label %bb.cf [
    i32 55296, label %bb.cd
    i32 56320, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.ta = load i8, ptr %i.sy, align 1, !tbaa !9
  %i.tb = zext i8 %i.ta to i32
  %i.tc = shl nuw nsw i32 %i.tb, 8
  %i.td = getelementptr inbounds nuw i8, ptr %.0695, i64 7
  %i.te = load i8, ptr %i.td, align 1, !tbaa !9
  %i.tf = zext i8 %i.te to i32
  %i.tg = or disjoint i32 %i.tc, %i.tf
  %.not.i11.i52 = icmp eq i32 %i.tg, 23669
  br i1 %.not.i11.i52, label %bb.ce, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ce:                                            ; preds = %bb.cd
  %i.th = getelementptr inbounds nuw i8, ptr %.0695, i64 8
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !9
  %i.tj = zext i8 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 2520
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !10
  %i.tn = getelementptr inbounds nuw i8, ptr %.0695, i64 9
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !9
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 1680
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !10
  %i.tt = getelementptr inbounds nuw i8, ptr %.0695, i64 10
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !9
  %i.tv = zext i8 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 840
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !10
  %i.tz = getelementptr inbounds nuw i8, ptr %.0695, i64 11
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !9
  %i.ub = zext i8 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !10
  %i.ue = or i32 %i.ts, %i.tm
  %i.uf = or i32 %i.ue, %i.ty
  %i.ug = or i32 %i.uf, %i.ud
  %i.uh = add i32 %i.ug, -56320                   ; 2 uses
  %.not35.i.i53 = icmp ult i32 %i.uh, 1024
  br i1 %.not35.i.i53, label %.thread943, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread943:                                       ; preds = %bb.ce
  %i.ui = shl nuw nsw i32 %i.sx, 10
  %i.uj = add nsw i32 %i.ui, -56557568
  %i.uk = or disjoint i32 %i.uj, %i.uh
  %i.ul = getelementptr inbounds nuw i8, ptr %.0695, i64 12
  br label %bb.cm

bb.cf:                                            ; preds = %bb.cc
  %i.um = icmp ult i32 %i.sx, 128
  br i1 %i.um, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.un = trunc nuw nsw i32 %i.sx to i8
  store i8 %i.un, ptr %.0689, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i47.thread952

bb.ch:                                            ; preds = %bb.cf
  %i.uo = icmp ult i32 %i.sx, 2048
  br i1 %i.uo, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.up = lshr i32 %i.sx, 6
  %i.uq = trunc nuw nsw i32 %i.up to i8
  %i.ur = or disjoint i8 %i.uq, -64
  store i8 %i.ur, ptr %.0689, align 1, !tbaa !9
  %i.us = trunc i32 %i.sx to i8
  %i.ut = and i8 %i.us, 63
  %i.uu = or disjoint i8 %i.ut, -128
  %i.uv = getelementptr inbounds nuw i8, ptr %.0689, i64 1
  store i8 %i.uu, ptr %i.uv, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i47.thread952

bb.cj:                                            ; preds = %bb.ch
end_hunk_19
begin_hunk_20_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %or.cond5.i.i128 = select i1 %i.bip, i1 true, i1 %i.biq
  br i1 %or.cond5.i.i128, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1213

bb.ij:                                            ; preds = %bb.ie
  %i.bir = icmp slt i64 %.2778, 0
  br i1 %i.bir, label %.thread1213, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bis = sub nsw i64 0, %.2778
  %i.bit = select i1 %i.bax, i64 %i.bis, i64 %.2778
  br label %.thread1213

.thread1213:                                      ; preds = %bb.ij, %bb.ii, %bb.ik
  %.sink1659 = phi i64 [ 7782220156096217088, %bb.ik ], [ 8430738502437568512, %bb.ii ], [ 8430738502437568512, %bb.ij ]
  %.sink1657 = phi i64 [ %i.bit, %bb.ik ], [ %.2778, %bb.ii ], [ %.2778, %bb.ij ]
  store i64 %.sink1659, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.biu = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1657, ptr %i.biu, align 8
  %.sroa.0.34 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.biv = load i8, ptr %.1784, align 1, !tbaa !9
  %i.biw = zext i8 %i.biv to i64
  %i.bix = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.biw
  %i.biy = load i8, ptr %i.bix, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i126 = icmp eq i8 %i.biy, 0
  br i1 %.not57.i.i126, label %select.unfold1224, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219: ; preds = %bb.id, %bb.ig
  %i.biz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bja = load i8, ptr %i.biz, align 8, !tbaa !133, !range !37, !noundef !38
  %i.bjb = trunc nuw i8 %i.bja to i1
  br i1 %i.bjb, label %.preheader1660, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !107

.preheader1660:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219, %.preheader1660
  %.122.i.i122 = phi ptr [ %i.bjf, %.preheader1660 ], [ %i.baz, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219 ] ; 3 uses
  %i.bjc = load i8, ptr %.122.i.i122, align 1, !tbaa !9 ; 2 uses
  %i.bjd = add i8 %i.bjc, -48
  %i.bje = icmp ult i8 %i.bjd, 10
  %i.bjf = getelementptr inbounds nuw i8, ptr %.122.i.i122, i64 1
  br i1 %i.bje, label %.preheader1660, label %bb.il, !llvm.loop !217

bb.il:                                            ; preds = %.preheader1660
  %i.bjg = zext i8 %i.bjc to i64
  %i.bjh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bjg
  %i.bji = load i8, ptr %i.bjh, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i.i123 = icmp eq i8 %i.bji, 0
  br i1 %.not.i.i123, label %.split1579, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1579:                                       ; preds = %bb.il
  %i.bjj = ptrtoint ptr %.122.i.i122 to i64
  %i.bjk = ptrtoint ptr %i.aum to i64
  %i.bjl = sub i64 %i.bjj, %i.bjk                 ; 3 uses
  %i.bjm = load ptr, ptr %i.g, align 8, !tbaa !207
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 8
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !20
  %i.bjp = ptrtoint ptr %.sroa.172.2 to i64
  %i.bjq = ptrtoint ptr %i.bjo to i64
  %i.bjr = sub i64 %i.bjp, %i.bjq
  %i.bjs = or i64 %i.bjr, 6485183463413514240
  store i64 %i.bjs, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bjt = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.bju = getelementptr inbounds nuw i8, ptr %.sroa.172.2, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bju, ptr nonnull align 1 %i.aum, i64 %i.bjl, i1 false)
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 %i.bjl ; 2 uses
  %i.bjw = trunc i64 %i.bjl to i32
  store i32 %i.bjw, ptr %.sroa.172.2, align 1
  store i8 0, ptr %i.bjv, align 1, !tbaa !9
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjv, i64 1
  br label %bb.iq

bb.im:                                            ; preds = %bb.gv
  switch i8 %i.aun, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 116, label %bb.in
    i8 102, label %bb.io
    i8 110, label %bb.ip
  ]

bb.in:                                            ; preds = %bb.im
  %.0.copyload.i.i199 = load i32, ptr %i.aum, align 1
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.aum, i64 4
  %i.bjz = load i8, ptr %i.bjy, align 1, !tbaa !9
  %i.bka = zext i8 %i.bjz to i64
  %i.bkb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bka
  %i.bkc = load i8, ptr %i.bkb, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bkd = zext nneg i8 %i.bkc to i32
  %i.bke = or i32 %.0.copyload.i.i199, %i.bkd
  %i.bkf = icmp eq i32 %i.bke, 1702195828
  br i1 %i.bkf, label %.split1577, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1577:                                       ; preds = %bb.in
  store i64 8358680908399640576, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bkg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.aum, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.bkh, align 1
  %i.bki = xor i32 %.0.copyload.i.i.i, 1702063201
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.aum, i64 5
  %i.bkk = load i8, ptr %i.bkj, align 1, !tbaa !9
  %i.bkl = zext i8 %i.bkk to i64
  %i.bkm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bkl
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bko = zext nneg i8 %i.bkn to i32
  %i.bkp = or i32 %i.bki, %i.bko
  %i.bkq = icmp eq i32 %i.bkp, 0
  br i1 %i.bkq, label %.split1578, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1578:                                       ; preds = %bb.io
  store i64 7349874591868649472, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bkr = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.iq

bb.ip:                                            ; preds = %bb.im
  %.0.copyload.i.i.i208 = load i32, ptr %i.aum, align 1
  %i.bks = getelementptr inbounds nuw i8, ptr %i.aum, i64 4
  %i.bkt = load i8, ptr %i.bks, align 1, !tbaa !9
  %i.bku = zext i8 %i.bkt to i64
  %i.bkv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bku
  %i.bkw = load i8, ptr %i.bkv, align 1, !tbaa !124, !range !37, !noundef !38
  %i.bkx = zext nneg i8 %i.bkw to i32
  %i.bky = or i32 %.0.copyload.i.i.i208, %i.bkx
  %i.bkz = icmp eq i32 %i.bky, 1819047278
  br i1 %i.bkz, label %.split1580, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1580:                                       ; preds = %bb.ip
  store i64 7926335344172072960, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.bla = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.iq

select.unfold1224:                                ; preds = %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147.thread, %bb.ih, %.thread1213, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147, %bb.gc
  %.sroa.0.3 = phi ptr [ %i.bev, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147.thread ], [ %i.bik, %bb.ih ], [ %.sroa.0.2, %bb.gc ], [ %.sroa.0.36, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147 ], [ %.sroa.0.34, %.thread1213 ] ; 2 uses
  %i.blb = phi i1 [ true, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147.thread ], [ true, %bb.ih ], [ false, %bb.gc ], [ true, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147 ], [ true, %.thread1213 ]
  br i1 %i.blb, label %bb.iq, label %bb.bx

bb.iq:                                            ; preds = %.split1580, %.split1578, %.split1577, %.split1579, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i176, %.split1575, %.split1576, %select.unfold1224, %bb.fz
  %.sroa.123.6 = phi i32 [ %i.atj, %bb.fz ], [ %.sroa.123.1, %select.unfold1224 ], [ %.sroa.123.1, %.split1575 ], [ %.sroa.123.1, %.split1576 ], [ %.sroa.123.1, %.split1577 ], [ %.sroa.123.1, %.split1578 ], [ %.sroa.123.1, %.split1579 ], [ %.sroa.123.1, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i176 ], [ %.sroa.123.1, %.split1580 ] ; 3 uses
  %.sroa.25.9 = phi ptr [ %.sroa.25.8, %bb.fz ], [ %i.auj, %select.unfold1224 ], [ %i.avl, %.split1575 ], [ %i.aut, %.split1576 ], [ %i.auj, %.split1577 ], [ %i.auj, %.split1578 ], [ %i.auj, %.split1579 ], [ %i.auj, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i176 ], [ %i.auj, %.split1580 ] ; 2 uses
  %.sroa.172.10 = phi ptr [ %.sroa.172.9, %bb.fz ], [ %.sroa.172.2, %select.unfold1224 ], [ %.sroa.172.2, %.split1575 ], [ %.sroa.172.2, %.split1576 ], [ %.sroa.172.2, %.split1577 ], [ %.sroa.172.2, %.split1578 ], [ %i.bjx, %.split1579 ], [ %i.bav, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i176 ], [ %.sroa.172.2, %.split1580 ] ; 2 uses
  %.sroa.0.10 = phi ptr [ %i.ast, %bb.fz ], [ %.sroa.0.3, %select.unfold1224 ], [ %i.avx, %.split1575 ], [ %i.avf, %.split1576 ], [ %i.bkg, %.split1577 ], [ %i.bkr, %.split1578 ], [ %i.bjt, %.split1579 ], [ %i.awf, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i176 ], [ %i.bla, %.split1580 ] ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %.sroa.25.9, i64 4 ; 2 uses
  %i.bld = load i32, ptr %.sroa.25.9, align 4, !tbaa !10
  %i.ble = zext i32 %i.bld to i64
  %i.blf = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ble
  %i.blg = load i8, ptr %i.blf, align 1, !tbaa !9
  switch i8 %i.blg, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.ir
    i8 93, label %bb.fy
  ]

bb.ir:                                            ; preds = %bb.iq
  %i.blh = zext i32 %.sroa.123.6 to i64
  %i.bli = load ptr, ptr %i.r, align 8, !tbaa !208
  %i.blj = getelementptr inbounds nuw [8 x i8], ptr %i.bli, i64 %i.blh
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 4 ; 2 uses
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !211
  %i.blm = add i32 %i.bll, 1
  store i32 %i.blm, ptr %i.blk, align 4, !tbaa !211
  br label %bb.gb

.thread903:                                       ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i, %bb.af, %bb.z, %bb.ac, %bb.f, %bb.e, %bb.fy
  %.sroa.25.10 = phi ptr [ %.sroa.25.8, %bb.fy ], [ %i.v, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.at, %bb.e ], [ %i.bb, %bb.f ], [ %i.v, %bb.ac ], [ %i.v, %bb.z ], [ %i.v, %bb.af ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550 ]
  %.sroa.0.11 = phi ptr [ %i.ast, %bb.fy ], [ %i.be, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.av, %bb.e ], [ %i.bd, %bb.f ], [ %i.gy, %bb.ac ], [ %i.gh, %bb.z ], [ %i.hm, %bb.af ], [ %.sroa.0.23, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %.sroa.0.171256.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1550 ] ; 2 uses
  store i64 8214565720323784704, ptr %.sroa.0.11, align 8, !tbaa !13
  %i.bln = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 8
  %i.blo = load ptr, ptr %i.g, align 8, !tbaa !207
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !118 ; 2 uses
  %i.blq = ptrtoint ptr %i.bln to i64
  %i.blr = ptrtoint ptr %i.blp to i64
  %i.bls = sub i64 %i.blq, %i.blr
  %i.blt = lshr exact i64 %i.bls, 3
  %i.blu = and i64 %i.blt, 4294967295
  %i.blv = or disjoint i64 %i.blu, 8214565720323784704
  store i64 %i.blv, ptr %i.blp, align 8, !tbaa !13
  %i.blw = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.blx = ptrtoint ptr %.sroa.25.10 to i64
  %i.bly = ptrtoint ptr %i.blw to i64
  %i.blz = sub i64 %i.blx, %i.bly
  %i.bma = lshr exact i64 %i.blz, 2
  %i.bmb = trunc i64 %i.bma to i32                ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bmb, ptr %i.bmc, align 8, !tbaa !83
  %i.bmd = load i32, ptr %i.n, align 8, !tbaa !73
  %.not173.i = icmp eq i32 %i.bmd, %i.bmb
  %spec.select1341 = select i1 %.not173.i, i32 0, i32 3
  br label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit: ; preds = %bb.j, %bb.u, %bb.s, %bb.l, %bb.k, %bb.cc, %bb.cn, %bb.cd, %bb.cl, %bb.ce, %bb.cw, %bb.cx, %bb.df, %bb.dh, %bb.cy, %bb.gh, %bb.gi, %bb.gq, %bb.gs, %bb.gj, %bb.fk, %bb.fv, %bb.fl, %bb.ft, %bb.fm, %bb.he, %bb.dt, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, %.thread903, %bb.b, %bb.hj, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147.thread, %bb.gx, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i107, %bb.ii, %bb.ih, %.thread1213, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219, %bb.il, %bb.im, %bb.in, %bb.ip, %bb.io, %bb.dy, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.dm, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i98, %bb.ex, %bb.ew, %.thread1056, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1062, %bb.fa, %bb.fb, %bb.fc, %bb.fe, %bb.fd, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147, %bb.fg, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i, %bb.by, %bb.ag, %bb.ae, %bb.ab, %bb.y, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, %.noexc64, %.noexc, %.noexc69, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.c, %bb.d, %bb.iq, %.thread917, %bb.ff, %.loopexit, %bb.bx, %bb.a
  %.37.i = phi i32 [ 3, %bb.ff ], [ 8, %bb.ip ], [ 13, %bb.a ], [ 9, %bb.hj ], [ 3, %bb.iq ], [ %spec.select1341, %.thread903 ], [ 4, %bb.bx ], [ %spec.select1340, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147 ], [ %spec.select1338, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i ], [ 2, %bb.ag ], [ 9, %bb.dy ], [ 9, %bb.dt ], [ 3, %.loopexit ], [ 4, %.thread917 ], [ %spec.select1336, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ 3, %bb.d ], [ 3, %bb.c ], [ 3, %bb.b ], [ 8, %bb.ae ], [ 7, %bb.ab ], [ 8, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit ], [ 6, %bb.y ], [ 7, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit ], [ 10, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i117.thread1219 ], [ 6, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit ], [ 3, %bb.im ], [ 8, %.noexc69 ], [ 7, %.noexc64 ], [ 6, %.noexc ], [ 6, %bb.in ], [ 5, %bb.gh ], [ 5, %bb.cw ], [ 3, %bb.by ], [ 7, %bb.io ], [ 3, %bb.fg ], [ 9, %bb.il ], [ 9, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i147.thread ], [ 9, %bb.gx ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i168 ], [ %.0.i51257.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread ], [ 7, %bb.fd ], [ 9, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.dm ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i98 ], [ 9, %bb.ex ], [ 9, %bb.ew ], [ 9, %.thread1056 ], [ 9, %bb.he ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i107 ], [ 9, %bb.ii ], [ 10, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread1062 ], [ 9, %bb.fa ], [ 9, %bb.ih ], [ 3, %bb.fb ], [ 6, %bb.fc ], [ 9, %.thread1213 ], [ 8, %bb.fe ], [ 5, %bb.fk ], [ 5, %bb.cc ], [ 5, %bb.fm ], [ 5, %bb.ft ], [ 5, %bb.fl ], [ 5, %bb.fv ], [ 5, %bb.gj ], [ 5, %bb.gs ], [ 5, %bb.gq ], [ 5, %bb.gi ], [ 5, %bb.cy ], [ 5, %bb.dh ], [ 5, %bb.df ], [ 5, %bb.cx ], [ 5, %bb.ce ], [ 5, %bb.cl ], [ 5, %bb.cd ], [ 5, %bb.cn ], [ 5, %bb.k ], [ 5, %bb.l ], [ 5, %bb.s ], [ 5, %bb.u ], [ 5, %bb.j ]
  ret i32 %.37.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !207
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !188  ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73
  %i.q = icmp eq i32 %i.i, %i.p
  br i1 %i.q, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.i to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !208  ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !209
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !211
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 10 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !10
  %i.ab = zext i32 %i.aa to i64                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ab ; 12 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  switch i8 %i.ad, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.e
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !10
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = icmp eq i8 %i.ah, 125
  br i1 %i.ai, label %bb.d, label %bb.by

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 8863084066665136131, ptr %i.y, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 9007199254740992001, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread688

bb.e:                                             ; preds = %bb.b
  %i.am = load i32, ptr %i.z, align 4, !tbaa !10
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = icmp eq i8 %i.ap, 93
  br i1 %i.aq, label %bb.f, label %.thread702

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 6557241057451442179, ptr %i.y, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 6701356245527298049, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread688

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.y, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604, %bb.g
  %.0454 = phi ptr [ %i.aw, %bb.g ], [ %.1455, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604 ] ; 15 uses
  %.0451 = phi ptr [ %i.av, %bb.g ], [ %i.ff, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604 ] ; 12 uses
  %i.ax = load i8, ptr %.0454, align 1, !tbaa !9  ; 2 uses
  store i8 %i.ax, ptr %.0451, align 1, !tbaa !9
  switch i8 %i.ax, label %bb.w [
    i8 34, label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i
    i8 92, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.0454, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9   ; 2 uses
  %i.ba = icmp eq i8 %i.az, 117
  br i1 %i.ba, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0454, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2520
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %.0454, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1680
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %.0454, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 840
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %.0454, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.by = or i32 %i.bm, %i.bg
  %i.bz = or i32 %i.by, %i.bs
  %i.ca = or i32 %i.bz, %i.bx                     ; 13 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0454, i64 6 ; 5 uses
  %i.cc = and i32 %i.ca, -1024
  switch i32 %i.cc, label %bb.m [
    i32 55296, label %bb.k
    i32 56320, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0454, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cf, %i.ci
  %.not.i11.i.i = icmp eq i32 %i.cj, 23669
  br i1 %.not.i11.i.i, label %bb.l, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.0454, i64 8
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2520
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.0454, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1680
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %.0454, i64 10
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !9
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 840
  %i.db = load i32, ptr %i.da, align 4, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %.0454, i64 11
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !10
  %i.dh = or i32 %i.cv, %i.cp
  %i.di = or i32 %i.dh, %i.db
  %i.dj = or i32 %i.di, %i.dg
  %i.dk = add i32 %i.dj, -56320                   ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.dk, 1024
  br i1 %.not35.i.i.i, label %.thread595, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread595:                                       ; preds = %bb.l
  %i.dl = shl nuw nsw i32 %i.ca, 10
  %i.dm = add nsw i32 %i.dl, -56557568
  %i.dn = or disjoint i32 %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %.0454, i64 12
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dp = icmp ult i32 %i.ca, 128
  br i1 %i.dp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dq = trunc nuw nsw i32 %i.ca to i8
  store i8 %i.dq, ptr %.0451, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604

bb.o:                                             ; preds = %bb.m
  %i.dr = icmp ult i32 %i.ca, 2048
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = lshr i32 %i.ca, 6
  %i.dt = trunc nuw nsw i32 %i.ds to i8
  %i.du = or disjoint i8 %i.dt, -64
  store i8 %i.du, ptr %.0451, align 1, !tbaa !9
  %i.dv = trunc i32 %i.ca to i8
  %i.dw = and i8 %i.dv, 63
  %i.dx = or disjoint i8 %i.dw, -128
  %i.dy = getelementptr inbounds nuw i8, ptr %.0451, i64 1
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604

bb.q:                                             ; preds = %bb.o
  %i.dz = icmp ult i32 %i.ca, 65536
  br i1 %i.dz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ea = lshr i32 %i.ca, 12
  %i.eb = trunc nuw nsw i32 %i.ea to i8
  %i.ec = or disjoint i8 %i.eb, -32
  store i8 %i.ec, ptr %.0451, align 1, !tbaa !9
  %i.ed = lshr i32 %i.ca, 6
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = and i8 %i.ee, 63
  %i.eg = or disjoint i8 %i.ef, -128
  %i.eh = getelementptr inbounds nuw i8, ptr %.0451, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !9
  %i.ei = trunc i32 %i.ca to i8
  %i.ej = and i8 %i.ei, 63
  %i.ek = or disjoint i8 %i.ej, -128
  %i.el = getelementptr inbounds nuw i8, ptr %.0451, i64 2
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604

bb.s:                                             ; preds = %bb.q
  %i.em = icmp ult i32 %i.ca, 1114112
  br i1 %i.em, label %bb.t, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.t:                                             ; preds = %.thread595, %bb.s
  %.6583589593599 = phi ptr [ %i.do, %.thread595 ], [ %i.cb, %bb.s ]
  %.4.i.i.i584588594598 = phi i32 [ %i.dn, %.thread595 ], [ %i.ca, %bb.s ] ; 4 uses
  %i.en = lshr i32 %.4.i.i.i584588594598, 6
  %i.eo = lshr i32 %.4.i.i.i584588594598, 12
  %i.ep = lshr i32 %.4.i.i.i584588594598, 18
  %i.eq = trunc i32 %.4.i.i.i584588594598 to i8
  %i.er = trunc i32 %i.en to i8
  %i.es = trunc i32 %i.eo to i8
  %i.et = trunc nsw i32 %i.ep to i8
  %i.eu = insertelement <4 x i8> poison, i8 %i.et, i64 0
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.es, i64 1
  %i.ew = insertelement <4 x i8> %i.ev, i8 %i.er, i64 2
  %i.ex = insertelement <4 x i8> %i.ew, i8 %i.eq, i64 3
  %i.ey = and <4 x i8> %i.ex, <i8 -1, i8 63, i8 63, i8 63>
  %i.ez = or disjoint <4 x i8> %i.ey, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ez, ptr %.0451, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604

bb.u:                                             ; preds = %bb.i
  %i.fa = zext i8 %i.az to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 %i.fc, ptr %.0451, align 1, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %.0454, i64 2
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604

bb.w:                                             ; preds = %bb.h
  %i.fe = getelementptr inbounds nuw i8, ptr %.0454, i64 1
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604

_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread604: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.v, %bb.w
  %.sink = phi i64 [ 1, %bb.v ], [ 1, %bb.w ], [ 4, %bb.t ], [ 3, %bb.r ], [ 2, %bb.p ], [ 1, %bb.n ]
  %.1455 = phi ptr [ %i.fd, %bb.v ], [ %i.fe, %bb.w ], [ %.6583589593599, %bb.t ], [ %i.cb, %bb.r ], [ %i.cb, %bb.p ], [ %i.cb, %bb.n ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0451, i64 %.sink
  br label %bb.h

_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i: ; preds = %bb.h
  %i.fg = ptrtoint ptr %.0451 to i64
  %i.fh = ptrtoint ptr %i.av to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.n, align 1
  store i8 0, ptr %.0451, align 1, !tbaa !9
  br label %.thread688

bb.x:                                             ; preds = %bb.b
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !197
  %i.fm = sub i64 %i.fl, %i.ab                    ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 4
  br i1 %i.fn, label %.split, label %bb.y

.split:                                           ; preds = %bb.x
  %.0.copyload.i.i = load i32, ptr %i.ac, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !9
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !124, !range !37, !noundef !38
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or i32 %.0.copyload.i.i, %i.ft
  %i.fv = icmp eq i32 %i.fu, 1702195828
  br i1 %i.fv, label %bb.z, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.fw = icmp eq i64 %i.fm, 4
  br i1 %i.fw, label %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i: ; preds = %bb.y
  %.0.copyload.i231.i = load i32, ptr %i.ac, align 1
  %.not.i.i = icmp eq i32 %.0.copyload.i231.i, 1702195828
  br i1 %.not.i.i, label %bb.z, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.z:                                             ; preds = %.split, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i
  store i64 8358680908399640576, ptr %i.y, align 8, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread688

bb.aa:                                            ; preds = %bb.b
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !197
  %i.ga = sub i64 %i.fz, %i.ab                    ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, 5
  br i1 %i.gb, label %.split629, label %bb.ab

.split629:                                        ; preds = %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i235.i = load i32, ptr %i.gc, align 1
  %i.gd = xor i32 %.0.copyload.i.i235.i, 1702063201
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !9
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gj = zext nneg i8 %i.gi to i32
  %i.gk = or i32 %i.gd, %i.gj
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ac, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gm = icmp eq i64 %i.ga, 5
  br i1 %i.gm, label %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i: ; preds = %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.0.copyload.i.i.i = load i32, ptr %i.gn, align 1
  %.not.i233.i = icmp eq i32 %.0.copyload.i.i.i, 1702063201
  br i1 %.not.i233.i, label %bb.ac, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ac:                                            ; preds = %.split629, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i
  store i64 7349874591868649472, ptr %i.y, align 8, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread688

bb.ad:                                            ; preds = %bb.b
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !197
  %i.gr = sub i64 %i.gq, %i.ab                    ; 2 uses
  %i.gs = icmp ugt i64 %i.gr, 4
  br i1 %i.gs, label %.split631, label %bb.ae

.split631:                                        ; preds = %bb.ad
  %.0.copyload.i.i240.i = load i32, ptr %i.ac, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !124, !range !37, !noundef !38
  %i.gy = zext nneg i8 %i.gx to i32
  %i.gz = or i32 %.0.copyload.i.i240.i, %i.gy
  %i.ha = icmp eq i32 %i.gz, 1819047278
  br i1 %i.ha, label %bb.af, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.hb = icmp eq i64 %i.gr, 4
  br i1 %i.hb, label %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i: ; preds = %bb.ae
  %.0.copyload.i.i237.i = load i32, ptr %i.ac, align 1
  %.not.i238.i = icmp eq i32 %.0.copyload.i.i237.i, 1819047278
  br i1 %.not.i238.i, label %bb.af, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.af:                                            ; preds = %.split631, %_ZN8simdjson8fallback12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i
  store i64 7926335344172072960, ptr %i.y, align 8, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %.thread688

bb.ag:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !197
  %i.hf = add i64 %i.he, 64
  %i.hg = sub i64 %i.hf, %i.ab
  %i.hh = tail call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.hg, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 12 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %2 = load i64, ptr %i.hd, align 8, !tbaa !197   ; 2 uses
  %i.hj = load i32, ptr %i.t, align 4, !tbaa !10
  %i.hk = zext i32 %i.hj to i64
  %i.hl = sub i64 %2, %i.hk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr nonnull align 1 %i.ac, i64 %i.hl, i1 false)
  %i.hm = load i32, ptr %i.t, align 4, !tbaa !10
  %i.hn = zext i32 %i.hm to i64
  %i.ho = sub i64 %2, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.ho
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.hp, i8 32, i64 64, i1 false)
  %i.hq = load i8, ptr %i.hh, align 1, !tbaa !9   ; 2 uses
  %i.hr = icmp eq i8 %i.hq, 45                    ; 10 uses
  %i.hs = zext i1 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hs ; 6 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !9   ; 4 uses
  %i.hv = add i8 %i.hu, -48                       ; 2 uses
  %i.hw = icmp ult i8 %i.hv, 10
  br i1 %i.hw, label %.lr.ph, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i

.lr.ph:                                           ; preds = %bb.ah, %.lr.ph
  %i.hx = phi i8 [ %i.id, %.lr.ph ], [ %i.hv, %bb.ah ]
  %.04911166 = phi i64 [ %i.ia, %.lr.ph ], [ 0, %bb.ah ]
  %.04981165 = phi ptr [ %i.ib, %.lr.ph ], [ %i.ht, %bb.ah ]
  %i.hy = mul i64 %.04911166, 10
  %i.hz = zext nneg i8 %i.hx to i64
  %i.ia = add i64 %i.hy, %i.hz                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.04981165, i64 1 ; 3 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !9   ; 2 uses
  %i.id = add i8 %i.ic, -48                       ; 2 uses
  %i.ie = icmp ult i8 %i.id, 10
  br i1 %i.ie, label %.lr.ph, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, !llvm.loop !212

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i: ; preds = %.lr.ph, %bb.ah
  %.0498.lcssa = phi ptr [ %i.ht, %bb.ah ], [ %i.ib, %.lr.ph ] ; 7 uses
  %.0491.lcssa = phi i64 [ 0, %bb.ah ], [ %i.ia, %.lr.ph ] ; 3 uses
  %.lcssa1164 = phi i8 [ %i.hu, %bb.ah ], [ %i.ic, %.lr.ph ] ; 2 uses
  %i.if = ptrtoint ptr %.0498.lcssa to i64
  %i.ig = ptrtoint ptr %i.ht to i64               ; 3 uses
  %i.ih = sub i64 %i.if, %i.ig                    ; 3 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i
  %i.ij = icmp eq i8 %i.hu, 48
  %i.ik = icmp ne i64 %i.ih, 1
  %or.cond.i.i = and i1 %i.ik, %i.ij
  br i1 %or.cond.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.il = icmp eq i8 %.lcssa1164, 46              ; 2 uses
  br i1 %i.il, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.ptr1126 = getelementptr inbounds nuw i8, ptr %.0498.lcssa, i64 1
  %.0.copyload.i255.i = load i64, ptr %.ptr1126, align 1 ; 4 uses
  %i.im = and i64 %.0.copyload.i255.i, -1085102592571150096
  %i.in = add i64 %.0.copyload.i255.i, 434041037028460038
  %i.io = lshr i64 %i.in, 4
  %i.ip = and i64 %i.io, 1085102592571150095
  %i.iq = or disjoint i64 %i.ip, %i.im
  %i.ir = icmp eq i64 %i.iq, 3689348814741910323
  %i.is = trunc i64 %.0.copyload.i255.i to i8
  br i1 %i.ir, label %bb.al, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

bb.al:                                            ; preds = %bb.ak
  %i.it = mul i64 %.0491.lcssa, 100000000
  %i.iu = and i64 %.0.copyload.i255.i, 1085102592571150095
  %i.iv = mul i64 %i.iu, 2561
  %i.iw = lshr i64 %i.iv, 8
  %i.ix = and i64 %i.iw, 71777214294589695
  %i.iy = mul i64 %i.ix, 6553601
  %i.iz = lshr i64 %i.iy, 16
  %i.ja = and i64 %i.iz, 281470681808895
  %i.jb = mul i64 %i.ja, 42949672960001
  %i.jc = lshr i64 %i.jb, 32
  %i.jd = add i64 %i.jc, %i.it
  %.5503.ptr.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0498.lcssa, i64 9
  %.pre = load i8, ptr %.5503.ptr.phi.trans.insert, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i: ; preds = %bb.al, %bb.ak
  %i.je = phi i8 [ %.pre, %bb.al ], [ %i.is, %bb.ak ]
  %.5503.idx = phi i64 [ 9, %bb.al ], [ 1, %bb.ak ]
  %.3494 = phi i64 [ %i.jd, %bb.al ], [ %.0491.lcssa, %bb.ak ] ; 2 uses
  %i.jf = add i8 %i.je, -48                       ; 2 uses
  %i.jg = icmp ult i8 %i.jf, 10                   ; 2 uses
  %i.jh = mul i64 %.3494, 10
  %i.ji = zext nneg i8 %i.jf to i64
  %i.jj = add i64 %i.jh, %i.ji
  %.4495635 = select i1 %i.jg, i64 %i.jj, i64 %.3494 ; 2 uses
  %.6504.idx = zext i1 %i.jg to i64
  %.5503.add = add nuw nsw i64 %.5503.idx, %.6504.idx ; 4 uses
  %.7505.ptr1170 = getelementptr inbounds nuw i8, ptr %.0498.lcssa, i64 %.5503.add
  %i.jk = load i8, ptr %.7505.ptr1170, align 1, !tbaa !9 ; 2 uses
  %i.jl = add i8 %i.jk, -48                       ; 2 uses
  %i.jm = icmp ult i8 %i.jl, 10
  br i1 %i.jm, label %.lr.ph1173, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i

.lr.ph1173:                                       ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i, %.lr.ph1173
  %i.jn = phi i8 [ %i.js, %.lr.ph1173 ], [ %i.jl, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.54961172 = phi i64 [ %i.jq, %.lr.ph1173 ], [ %.4495635, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %.7505.idx1171 = phi i64 [ %.7505.add, %.lr.ph1173 ], [ %.5503.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i ]
  %i.jo = mul i64 %.54961172, 10
  %i.jp = zext nneg i8 %i.jn to i64
  %i.jq = add i64 %i.jo, %i.jp                    ; 2 uses
  %.7505.add = add nuw nsw i64 %.7505.idx1171, 1  ; 3 uses
  %.7505.ptr = getelementptr inbounds nuw i8, ptr %.0498.lcssa, i64 %.7505.add
  %i.jr = load i8, ptr %.7505.ptr, align 1, !tbaa !9 ; 2 uses
  %i.js = add i8 %i.jr, -48                       ; 2 uses
  %i.jt = icmp ult i8 %i.js, 10
  br i1 %i.jt, label %.lr.ph1173, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, !llvm.loop !213

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit16.i.i
  %.not = icmp eq i64 %.5503.add, 1
  br i1 %.not, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread: ; preds = %.lr.ph1173, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i
  %.5496.lcssa1324 = phi i64 [ %.4495635, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.jq, %.lr.ph1173 ]
  %.7505.idx.lcssa11691323 = phi i64 [ %.5503.add, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %.7505.add, %.lr.ph1173 ] ; 2 uses
  %i.ju = phi i8 [ %i.jk, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ %i.jr, %.lr.ph1173 ]
  %.7505.ptr.le = getelementptr inbounds nuw i8, ptr %.0498.lcssa, i64 %.7505.idx.lcssa11691323 ; 2 uses
  %i.jv = ptrtoint ptr %.7505.ptr.le to i64
  %gepdiff = sub nsw i64 1, %.7505.idx.lcssa11691323
  %i.jw = sub i64 %i.jv, %i.ig
  %sext.i.i = shl i64 %i.jw, 32
  %i.jx = ashr exact i64 %sext.i.i, 32
  br label %bb.am

bb.am:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread, %bb.aj
  %i.jy = phi i8 [ %i.ju, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.lcssa1164, %bb.aj ] ; 2 uses
  %.1499 = phi ptr [ %.7505.ptr.le, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0498.lcssa, %bb.aj ] ; 4 uses
  %.2493 = phi i64 [ %.5496.lcssa1324, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %.0491.lcssa, %bb.aj ] ; 14 uses
  %.0488 = phi i64 [ %gepdiff, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ 0, %bb.aj ] ; 2 uses
  %.044.i.i = phi i64 [ %i.jx, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.thread ], [ %i.ih, %bb.aj ] ; 4 uses
  switch i8 %i.jy, label %bb.as [
    i8 101, label %bb.an
    i8 69, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.jz = getelementptr inbounds nuw i8, ptr %.1499, i64 1 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !9   ; 3 uses
  %i.kb = icmp eq i8 %i.ka, 45
  switch i8 %i.ka, label %bb.ap [
    i8 45, label %bb.ao
    i8 43, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %i.kc = getelementptr inbounds nuw i8, ptr %.1499, i64 2 ; 2 uses
  %.pre1258 = load i8, ptr %i.kc, align 1, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kd = phi i8 [ %i.ka, %bb.an ], [ %.pre1258, %bb.ao ]
  %.2500 = phi ptr [ %i.jz, %bb.an ], [ %i.kc, %bb.ao ] ; 3 uses
  %i.ke = add i8 %i.kd, -48                       ; 2 uses
  %i.kf = icmp ult i8 %i.ke, 10
  br i1 %i.kf, label %.lr.ph1180, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

.lr.ph1180:                                       ; preds = %bb.ap, %.lr.ph1180
  %i.kg = phi i8 [ %i.kl, %.lr.ph1180 ], [ %i.ke, %bb.ap ]
  %.3501.idx1179 = phi i64 [ %.3501.add, %.lr.ph1180 ], [ 0, %bb.ap ] ; 2 uses
  %.05061178 = phi i64 [ %i.kj, %.lr.ph1180 ], [ 0, %bb.ap ]
  %i.kh = mul nsw i64 %.05061178, 10
  %i.ki = zext nneg i8 %i.kg to i64
  %i.kj = add nsw i64 %i.kh, %i.ki                ; 3 uses
  %.3501.add = add nuw nsw i64 %.3501.idx1179, 1  ; 3 uses
  %.3501.ptr = getelementptr inbounds nuw i8, ptr %.2500, i64 %.3501.add
  %i.kk = load i8, ptr %.3501.ptr, align 1, !tbaa !9 ; 2 uses
  %i.kl = add i8 %i.kk, -48                       ; 2 uses
  %i.km = icmp ult i8 %i.kl, 10
  br i1 %i.km, label %.lr.ph1180, label %bb.aq, !llvm.loop !214

bb.aq:                                            ; preds = %.lr.ph1180
  %.3501.ptr.le = getelementptr inbounds nuw i8, ptr %.2500, i64 %.3501.add
  %i.kn = icmp samesign ugt i64 %.3501.idx1179, 17
  br i1 %i.kn, label %.preheader1154, label %.thread645, !prof !107

.preheader1154:                                   ; preds = %bb.aq, %.preheader1154
  %.0.i249.i = phi ptr [ %i.kq, %.preheader1154 ], [ %.2500, %bb.aq ] ; 3 uses
  %i.ko = load i8, ptr %.0.i249.i, align 1, !tbaa !9
  %i.kp = icmp eq i8 %i.ko, 48
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i249.i, i64 1
  br i1 %i.kp, label %.preheader1154, label %bb.ar, !llvm.loop !215

bb.ar:                                            ; preds = %.preheader1154
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i249.i, i64 18
  %i.ks = icmp ugt ptr %.3501.ptr.le, %i.kr
  %spec.select = select i1 %i.ks, i64 999999999999999999, i64 %i.kj
  br label %.thread645

.thread645:                                       ; preds = %bb.ar, %bb.aq
  %.2508 = phi i64 [ %i.kj, %bb.aq ], [ %spec.select, %bb.ar ] ; 2 uses
  %i.kt = sub nsw i64 0, %.2508
  %i.ku = select i1 %i.kb, i64 %i.kt, i64 %.2508
  %i.kv = add nsw i64 %i.ku, %.0488
  br label %bb.at

bb.as:                                            ; preds = %bb.am
  br i1 %i.il, label %bb.at, label %bb.bo

bb.at:                                            ; preds = %.thread645, %bb.as
  %i.kw = phi i8 [ %i.kk, %.thread645 ], [ %i.jy, %bb.as ]
  %.2490650 = phi i64 [ %i.kv, %.thread645 ], [ %.0488, %bb.as ] ; 9 uses
  %i.kx = zext i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !124, !range !37, !noundef !38
end_hunk_20
begin_hunk_21_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.mo = zext i64 %i.mh to i128                  ; 2 uses
  %i.mp = zext i64 %i.mn to i128
  %i.mq = mul nuw i128 %i.mp, %i.mo               ; 2 uses
  %i.mr = trunc i128 %i.mq to i64                 ; 2 uses
  %i.ms = lshr i128 %i.mq, 64
  %i.mt = trunc nuw i128 %i.ms to i64             ; 3 uses
  %i.mu = and i64 %i.mt, 511
  %i.mv = icmp eq i64 %i.mu, 511
  br i1 %i.mv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mw = getelementptr i8, ptr %i.ml, i64 5480
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !13
  %i.my = zext i64 %i.mx to i128
  %i.mz = mul nuw i128 %i.my, %i.mo
  %i.na = lshr i128 %i.mz, 64
  %i.nb = trunc nuw i128 %i.na to i64             ; 2 uses
  %i.nc = add i64 %i.nb, %i.mr                    ; 2 uses
  %i.nd = icmp ult i64 %i.nc, %i.nb
  %i.ne = zext i1 %i.nd to i64
  %spec.select.i261.i = add nuw i64 %i.ne, %i.mt
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i261.i, %bb.be ], [ %i.mt, %bb.bd ] ; 3 uses
  %.sroa.037.0.i.i = phi i64 [ %i.nc, %bb.be ], [ %i.mr, %bb.bd ]
  %i.nf = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.ng = add nuw nsw i64 %i.nf, 9                ; 2 uses
  %i.nh = lshr i64 %.sroa.7.1.i.i, %i.ng          ; 6 uses
  %reass.sub = sub nsw i64 %i.mf, %i.mg
  %.neg = add nsw i64 %reass.sub, %i.nf           ; 4 uses
  %i.ni = add nsw i64 %.neg, 1086
  %i.nj = icmp slt i64 %.neg, -1085
  br i1 %i.nj, label %bb.bg, label %bb.bj, !prof !107

bb.bg:                                            ; preds = %bb.bf
  %i.nk = icmp samesign ult i64 %.neg, -1148
  br i1 %i.nk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nl = select i1 %i.hr, double -0.000000e+00, double 0.000000e+00
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bi:                                            ; preds = %bb.bg
  %i.nm = sub nuw nsw i64 -1085, %.neg
  %i.nn = lshr i64 %i.nh, %i.nm                   ; 2 uses
  %i.no = and i64 %i.nn, 1
  %i.np = add nuw nsw i64 %i.no, %i.nn            ; 2 uses
  %i.nq = lshr i64 %i.np, 1
  %i.nr = icmp samesign ugt i64 %i.np, 9007199254740991
  %i.ns = and i64 %i.nq, 13510798882111487
  %i.nt = select i1 %i.nr, i64 4503599627370496, i64 0
  %i.nu = select i1 %i.hr, i64 -9223372036854775808, i64 0
  %i.nv = or disjoint i64 %i.nt, %i.nu
  %i.nw = or disjoint i64 %i.nv, %i.ns
  %i.nx = bitcast i64 %i.nw to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bj:                                            ; preds = %bb.bf
  %i.ny = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.nz = add nsw i64 %.2490650, 4
  %i.oa = icmp ult i64 %i.nz, 28
  %or.cond7.i.i = and i1 %i.oa, %i.ny
  %i.ob = and i64 %i.nh, 3
  %i.oc = icmp eq i64 %i.ob, 1
  %i.od = select i1 %or.cond7.i.i, i1 %i.oc, i1 false
  br i1 %i.od, label %bb.bk, label %bb.bl, !prof !107

bb.bk:                                            ; preds = %bb.bj
  %i.oe = shl i64 %i.nh, %i.ng
  %i.of = icmp eq i64 %i.oe, %.sroa.7.1.i.i
  %i.og = and i64 %i.nh, 72057594037927932
  %spec.select90.i.i = select i1 %i.of, i64 %i.og, i64 %i.nh
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.080.i.i = phi i64 [ %i.nh, %bb.bj ], [ %spec.select90.i.i, %bb.bk ] ; 2 uses
  %i.oh = and i64 %.080.i.i, 1
  %i.oi = add nuw nsw i64 %i.oh, %.080.i.i        ; 2 uses
  %i.oj = icmp samesign ugt i64 %i.oi, 18014398509481983 ; 2 uses
  %i.ok = zext i1 %i.oj to i64
  %spec.select92.i.i = add nuw nsw i64 %i.ni, %i.ok ; 2 uses
  %i.ol = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.ol, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bm, !prof !107

bb.bm:                                            ; preds = %bb.bl
  %i.om = lshr i64 %i.oi, 1
  %i.on = and i64 %i.om, 13510798882111487
  %i.oo = select i1 %i.oj, i64 0, i64 %i.on
  %i.op = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.oq = select i1 %i.hr, i64 -9223372036854775808, i64 0
  %i.or = or disjoint i64 %i.oo, %i.oq
  %i.os = or i64 %i.or, %i.op
  %i.ot = bitcast i64 %i.os to double
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bl
  %i.ou = call fastcc noundef zeroext i1 @_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.hh, ptr noundef %i.f)
  br i1 %i.ou, label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bn

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1260 = load double, ptr %i.f, align 8, !tbaa !130
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bm, %bb.bi, %bb.bh, %bb.ba, %bb.bc, %bb.az
  %i.ov = phi double [ %.pre1260, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.ot, %bb.bm ], [ %i.nx, %bb.bi ], [ %i.nl, %bb.bh ], [ %i.mb, %bb.ba ], [ %i.md, %bb.bc ], [ %storemerge.i.i, %bb.az ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !13
  %i.ow = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.ov, ptr %i.ow, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.39 = phi ptr [ %i.ox, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i251.i = phi i32 [ 0, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.bo:                                            ; preds = %bb.as
  %i.oy = select i1 %i.hr, i64 19, i64 20         ; 2 uses
  %i.oz = icmp ugt i64 %.044.i.i, %i.oy
  br i1 %i.oz, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pa = icmp eq i64 %.044.i.i, %i.oy
  br i1 %i.pa, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.hr, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.pb = icmp ugt i64 %.2493, -9223372036854775808
  br i1 %i.pb, label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pc = sub i64 0, %.2493
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !13
  %i.pd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.pc, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pf = load i8, ptr %.1499, align 1, !tbaa !9
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !124, !range !37, !noundef !38
  %.not58.i.i = icmp eq i8 %i.pi, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bt:                                            ; preds = %bb.bq
  %i.pj = icmp ne i8 %i.hq, 49
  %i.pk = icmp sgt i64 %.2493, -1
  %or.cond5.i.i = select i1 %i.pj, i1 true, i1 %i.pk
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread652

bb.bu:                                            ; preds = %bb.bp
  %i.pl = icmp slt i64 %.2493, 0
  br i1 %i.pl, label %.thread652, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pm = sub nsw i64 0, %.2493
  %i.pn = select i1 %i.hr, i64 %i.pm, i64 %.2493
  br label %.thread652

.thread652:                                       ; preds = %bb.bu, %bb.bt, %bb.bv
  %.sink1400 = phi i64 [ 7782220156096217088, %bb.bv ], [ 8430738502437568512, %bb.bt ], [ 8430738502437568512, %bb.bu ]
  %.sink1398 = phi i64 [ %i.pn, %bb.bv ], [ %.2493, %bb.bt ], [ %.2493, %bb.bu ]
  store i64 %.sink1400, ptr %i.y, align 8, !tbaa !13
  %i.po = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink1398, ptr %i.po, align 8
  %.sroa.0.38 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pp = load i8, ptr %.1499, align 1, !tbaa !9
  %i.pq = zext i8 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !124, !range !37, !noundef !38
  %.not57.i.i = icmp eq i8 %i.ps, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657: ; preds = %bb.bo, %bb.br
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pu = load i8, ptr %i.pt, align 8, !tbaa !133, !range !37, !noundef !38
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %.preheader1452, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, !prof !107

.preheader1452:                                   ; preds = %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, %.preheader1452
  %.122.i.i = phi ptr [ %i.pz, %.preheader1452 ], [ %i.ht, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657 ] ; 3 uses
  %i.pw = load i8, ptr %.122.i.i, align 1, !tbaa !9 ; 2 uses
  %i.px = add i8 %i.pw, -48
  %i.py = icmp ult i8 %i.px, 10
  %i.pz = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 1
  br i1 %i.py, label %.preheader1452, label %bb.bw, !llvm.loop !217

bb.bw:                                            ; preds = %.preheader1452
  %i.qa = zext i8 %i.pw to i64
  %i.qb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !124, !range !37, !noundef !38
  %.not.i241.i = icmp eq i8 %i.qc, 0
  br i1 %.not.i241.i, label %bb.bx, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bx:                                            ; preds = %bb.bw
  %i.qd = ptrtoint ptr %.122.i.i to i64
  %i.qe = ptrtoint ptr %i.hh to i64
  %3 = sub i64 %i.qd, %i.qe                       ; 3 uses
  %4 = load ptr, ptr %i.g, align 8, !tbaa !207
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = ptrtoint ptr %i.n to i64
  %8 = ptrtoint ptr %6 to i64
  %i.qf = sub i64 %7, %8
  %9 = or i64 %i.qf, 6485183463413514240
  store i64 %9, ptr %i.y, align 8, !tbaa !13
  %i.qg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qh, ptr nonnull align 1 %i.hh, i64 %3, i1 false)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %3
  %i.qj = trunc i64 %3 to i32
  store i32 %i.qj, ptr %i.n, align 1
  store i8 0, ptr %i.qi, align 1, !tbaa !9
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.ai, %bb.au, %bb.bw, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread652, %bb.bt, %bb.bs, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.ap
  %.0.i176.i1042.ph = phi i32 [ 9, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ 9, %bb.bs ], [ 9, %bb.bt ], [ 9, %.thread652 ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.ai ], [ 10, %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhRT_.exit.i.thread657 ], [ 9, %bb.bw ], [ 9, %bb.au ], [ 9, %bb.ap ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.hh) #43
  br label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1334: ; preds = %bb.bx, %.thread652, %bb.bs, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread
  %.sroa.0.361041.ph = phi ptr [ %i.pe, %bb.bs ], [ %i.qg, %bb.bx ], [ %.sroa.0.38, %.thread652 ], [ %i.lp, %_ZN8simdjson8fallback13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.hh) #43
  br label %.thread688

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc253.i, %bb.bn
  %.sroa.0.40 = phi ptr [ %i.lj, %.noexc253.i ], [ %.sroa.0.39, %bb.bn ]
  %.1.i252.i = phi i32 [ %i.lg, %.noexc253.i ], [ %.0.i251.i, %bb.bn ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i252.i, 0         ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %spec.select1121 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i252.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.hh) #43
  %.not.i = and i1 %.not60.i.i, %.not59.i.i
  br i1 %.not.i, label %.thread688, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %select.unfold1009, %select.unfold852, %bb.c
  %.sroa.119.2 = phi i32 [ %.sroa.119.3, %select.unfold852 ], [ %.sroa.119.1, %select.unfold1009 ], [ 0, %bb.c ]
  %.sroa.23.4 = phi ptr [ %i.wh, %select.unfold852 ], [ %i.aue, %select.unfold1009 ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.172.4 = phi ptr [ %.sroa.172.6, %select.unfold852 ], [ %.sroa.172.2, %select.unfold1009 ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold852 ], [ %.sroa.0.3, %select.unfold1009 ], [ %i.y, %bb.c ] ; 3 uses
  %i.qk = add i32 %.sroa.119.2, 1                 ; 2 uses
  %i.ql = zext i32 %i.qk to i64                   ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !135
  %.not161.i = icmp ugt i64 %i.qn, %i.ql
  br i1 %.not161.i, label %bb.bz, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bz:                                            ; preds = %bb.by
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !136
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.ql
  store i8 0, ptr %i.qq, align 1, !tbaa !124
  %i.qr = load ptr, ptr %i.g, align 8, !tbaa !207 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !118
  %i.qt = ptrtoint ptr %.sroa.0.4 to i64
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = sub i64 %i.qt, %i.qu
  %i.qw = lshr exact i64 %i.qv, 3
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = load ptr, ptr %i.v, align 8, !tbaa !208
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.ql ; 2 uses
  store i32 %i.qx, ptr %i.qz, align 4, !tbaa !209
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4 ; 2 uses
  store i32 0, ptr %i.ra, align 4, !tbaa !211
  %i.rb = load i32, ptr %.sroa.23.4, align 4, !tbaa !10
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.rc ; 2 uses
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.re, 34
  br i1 %.not162.i, label %bb.ca, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.ra, align 4, !tbaa !211
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !20
  %i.ri = ptrtoint ptr %.sroa.172.4 to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = or i64 %i.rk, 2449958197289549824
  store i64 %i.rl, ptr %i.rf, align 8, !tbaa !13
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.172.4, i64 4 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rd, i64 1
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i193.i.thread737, %bb.ca
  %.0466 = phi ptr [ %i.ro, %bb.ca ], [ %.1467, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i193.i.thread737 ] ; 15 uses
  %.0460 = phi ptr [ %i.rn, %bb.ca ], [ %i.vx, %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i193.i.thread737 ] ; 11 uses
  %i.rp = load i8, ptr %.0466, align 1, !tbaa !9  ; 2 uses
  store i8 %i.rp, ptr %.0460, align 1, !tbaa !9
  switch i8 %i.rp, label %bb.cq [
    i8 34, label %.loopexit
    i8 92, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.rq = getelementptr inbounds nuw i8, ptr %.0466, i64 1
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !9   ; 2 uses
  %i.rs = icmp eq i8 %i.rr, 117
  br i1 %i.rs, label %bb.cd, label %bb.co

bb.cd:                                            ; preds = %bb.cc
  %i.rt = getelementptr inbounds nuw i8, ptr %.0466, i64 2
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !9
  %i.rv = zext i8 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 2520
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !10
  %i.rz = getelementptr inbounds nuw i8, ptr %.0466, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !9
  %i.sb = zext i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 1680
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !10
  %i.sf = getelementptr inbounds nuw i8, ptr %.0466, i64 4
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !9
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 840
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !10
  %i.sl = getelementptr inbounds nuw i8, ptr %.0466, i64 5
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !9
  %i.sn = zext i8 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !10
  %i.sq = or i32 %i.se, %i.ry
  %i.sr = or i32 %i.sq, %i.sk
  %i.ss = or i32 %i.sr, %i.sp                     ; 13 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.0466, i64 6 ; 5 uses
  %i.su = and i32 %i.ss, -1024
  switch i32 %i.su, label %bb.cg [
    i32 55296, label %bb.ce
    i32 56320, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.sv = load i8, ptr %i.st, align 1, !tbaa !9
  %i.sw = zext i8 %i.sv to i32
  %i.sx = shl nuw nsw i32 %i.sw, 8
  %i.sy = getelementptr inbounds nuw i8, ptr %.0466, i64 7
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !9
  %i.ta = zext i8 %i.sz to i32
  %i.tb = or disjoint i32 %i.sx, %i.ta
  %.not.i11.i198.i = icmp eq i32 %i.tb, 23669
  br i1 %.not.i11.i198.i, label %bb.cf, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cf:                                            ; preds = %bb.ce
  %i.tc = getelementptr inbounds nuw i8, ptr %.0466, i64 8
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !9
  %i.te = zext i8 %i.td to i64
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 2520
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !10
  %i.ti = getelementptr inbounds nuw i8, ptr %.0466, i64 9
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !9
  %i.tk = zext i8 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 1680
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !10
  %i.to = getelementptr inbounds nuw i8, ptr %.0466, i64 10
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !9
  %i.tq = zext i8 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 840
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !10
  %i.tu = getelementptr inbounds nuw i8, ptr %.0466, i64 11
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !9
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tw
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !10
  %i.tz = or i32 %i.tn, %i.th
  %i.ua = or i32 %i.tz, %i.tt
  %i.ub = or i32 %i.ua, %i.ty
  %i.uc = add i32 %i.ub, -56320                   ; 2 uses
  %.not35.i.i199.i = icmp ult i32 %i.uc, 1024
  br i1 %.not35.i.i199.i, label %.thread728, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread728:                                       ; preds = %bb.cf
  %i.ud = shl nuw nsw i32 %i.ss, 10
  %i.ue = add nsw i32 %i.ud, -56557568
  %i.uf = or disjoint i32 %i.ue, %i.uc
  %i.ug = getelementptr inbounds nuw i8, ptr %.0466, i64 12
  br label %bb.cn

bb.cg:                                            ; preds = %bb.cd
  %i.uh = icmp ult i32 %i.ss, 128
  br i1 %i.uh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ui = trunc nuw nsw i32 %i.ss to i8
  store i8 %i.ui, ptr %.0460, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i193.i.thread737

bb.ci:                                            ; preds = %bb.cg
  %i.uj = icmp ult i32 %i.ss, 2048
  br i1 %i.uj, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.uk = lshr i32 %i.ss, 6
  %i.ul = trunc nuw nsw i32 %i.uk to i8
  %i.um = or disjoint i8 %i.ul, -64
  store i8 %i.um, ptr %.0460, align 1, !tbaa !9
  %i.un = trunc i32 %i.ss to i8
  %i.uo = and i8 %i.un, 63
  %i.up = or disjoint i8 %i.uo, -128
  %i.uq = getelementptr inbounds nuw i8, ptr %.0460, i64 1
  store i8 %i.up, ptr %i.uq, align 1, !tbaa !9
  br label %_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i193.i.thread737

bb.ck:                                            ; preds = %bb.ci
end_hunk_21
