Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.05?download=true
inline.NumInlined: 1337
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringETBC_TIBD_ReETIBD_NtNtB4_3fmt9ArgumentsEuEEEEECsbaWXNhtWAp9_11foundations:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !2695
  unreachable, !dbg !2695

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !2697

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !2698

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2698
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringETIBD_ReETIBD_NtNtB4_3fmt9ArgumentsEuEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(104) %i.d) #39
          to label %common.resume unwind label %bb.g, !dbg !2698

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2698 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringETIBD_ReETIBD_NtNtB4_3fmt9ArgumentsEuEEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.e, !dbg !2699

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.e)
          to label %common.resume unwind label %bb.f, !dbg !2700

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !2699
  unreachable, !dbg !2699

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !2698

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringETIBD_ReETIBD_NtNtB4_3fmt9ArgumentsEuEEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.e), !dbg !2701
  ret void, !dbg !2698

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !2698
  unreachable, !dbg !2698
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringETIBD_ReETIBD_NtNtB4_3fmt9ArgumentsEuEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !219 {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !2707

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.c, !dbg !2708

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !2707
  unreachable, !dbg !2707

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !2707

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0), !dbg !2709
  ret void, !dbg !2710
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs2zhaXXqUmnG_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2711 {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !dbg !2894, !noalias !2865
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2895
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !dbg !2896, !noalias !2866
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2897
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !dbg !2898, !noalias !2867
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2899 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !dbg !2900, !noalias !2868
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>, !dbg !2901 ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0>, !dbg !2902 ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0>, !dbg !2903 ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a, !dbg !2904

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cp, %bb.a ], !dbg !2905
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cl, %bb.a ], !dbg !2905
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %bb.a ]
  %i.i = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cm, %bb.a ]
  %i.j = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ce, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cq, %bb.a ]
  %i.l = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ci, %bb.a ] ; 2 uses
  %i.m = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cj, %bb.a ]
  %i.n = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cn, %bb.a ]
  %i.o = add nuw nsw i64 %.sroa.023.062.i, 1, !dbg !2906 ; 2 uses
  %i.p = add <8 x i32> %i.j, %i.i, !dbg !2907     ; 2 uses
  %i.q = bitcast <8 x i32> %i.p to <4 x i64>, !dbg !2908
  %i.r = xor <4 x i64> %.sroa.19.0.i, %i.q, !dbg !2909
  %i.s = bitcast <4 x i64> %i.r to <32 x i8>, !dbg !2910
  %i.t = shufflevector <32 x i8> %i.s, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !2911 ; 2 uses
  %i.u = add <8 x i32> %i.l, %i.k, !dbg !2907     ; 2 uses
  %i.v = bitcast <8 x i32> %i.u to <4 x i64>, !dbg !2908
  %i.w = xor <4 x i64> %.sroa.46.0.i, %i.v, !dbg !2909
  %i.x = bitcast <4 x i64> %i.w to <32 x i8>, !dbg !2910
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !2911 ; 2 uses
  %i.z = bitcast <32 x i8> %i.t to <8 x i32>, !dbg !2912
  %i.aa = add <8 x i32> %i.m, %i.z, !dbg !2913    ; 2 uses
  %i.ab = xor <8 x i32> %i.aa, %i.j, !dbg !2914   ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ab, <8 x i32> %i.ab, <8 x i32> splat (i32 12)), !dbg !2915 ; 2 uses
  %i.ad = bitcast <32 x i8> %i.y to <8 x i32>, !dbg !2912
  %i.ae = add <8 x i32> %i.n, %i.ad, !dbg !2913   ; 2 uses
  %i.af = xor <8 x i32> %i.ae, %i.l, !dbg !2914   ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.af, <8 x i32> %i.af, <8 x i32> splat (i32 12)), !dbg !2915 ; 2 uses
  %i.ah = add <8 x i32> %i.ac, %i.p, !dbg !2916   ; 2 uses
  %i.ai = bitcast <8 x i32> %i.ah to <32 x i8>, !dbg !2917
  %i.aj = xor <32 x i8> %i.t, %i.ai, !dbg !2917
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !2918
  %i.al = add <8 x i32> %i.ag, %i.u, !dbg !2916   ; 2 uses
  %i.am = bitcast <8 x i32> %i.al to <32 x i8>, !dbg !2917
  %i.an = xor <32 x i8> %i.y, %i.am, !dbg !2917
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !2918
  %i.ap = bitcast <32 x i8> %i.ak to <8 x i32>, !dbg !2919 ; 2 uses
  %i.aq = add <8 x i32> %i.aa, %i.ap, !dbg !2920  ; 2 uses
  %i.ar = xor <8 x i32> %i.aq, %i.ac, !dbg !2921  ; 2 uses
  %i.as = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ar, <8 x i32> %i.ar, <8 x i32> splat (i32 7)), !dbg !2922 ; 2 uses
  %i.at = bitcast <32 x i8> %i.ao to <8 x i32>, !dbg !2919 ; 2 uses
  %i.au = add <8 x i32> %i.ae, %i.at, !dbg !2920  ; 2 uses
  %i.av = xor <8 x i32> %i.au, %i.ag, !dbg !2921  ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.av, <8 x i32> %i.av, <8 x i32> splat (i32 7)), !dbg !2922 ; 2 uses
  %i.ax = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !2923
  %i.ay = shufflevector <8 x i32> %i.ap, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !2924
  %i.az = shufflevector <8 x i32> %i.ah, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !2925
  %i.ba = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !2923
  %i.bb = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !2924
  %i.bc = shufflevector <8 x i32> %i.al, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !2925
  %i.bd = add <8 x i32> %i.as, %i.az, !dbg !2926  ; 2 uses
  %i.be = xor <8 x i32> %i.bd, %i.ay, !dbg !2927
  %i.bf = bitcast <8 x i32> %i.be to <32 x i8>, !dbg !2928
  %i.bg = shufflevector <32 x i8> %i.bf, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !2929 ; 2 uses
  %i.bh = add <8 x i32> %i.aw, %i.bc, !dbg !2926  ; 2 uses
  %i.bi = xor <8 x i32> %i.bh, %i.bb, !dbg !2927
  %i.bj = bitcast <8 x i32> %i.bi to <32 x i8>, !dbg !2928
  %i.bk = shufflevector <32 x i8> %i.bj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !2929 ; 2 uses
  %i.bl = bitcast <32 x i8> %i.bg to <8 x i32>, !dbg !2930
  %i.bm = add <8 x i32> %i.ax, %i.bl, !dbg !2931  ; 2 uses
  %i.bn = xor <8 x i32> %i.bm, %i.as, !dbg !2932  ; 2 uses
  %i.bo = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bn, <8 x i32> %i.bn, <8 x i32> splat (i32 12)), !dbg !2933 ; 2 uses
  %i.bp = bitcast <32 x i8> %i.bk to <8 x i32>, !dbg !2930
  %i.bq = add <8 x i32> %i.ba, %i.bp, !dbg !2931  ; 2 uses
  %i.br = xor <8 x i32> %i.bq, %i.aw, !dbg !2932  ; 2 uses
  %i.bs = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.br, <8 x i32> %i.br, <8 x i32> splat (i32 12)), !dbg !2933 ; 2 uses
  %i.bt = add <8 x i32> %i.bo, %i.bd, !dbg !2934  ; 2 uses
  %i.bu = bitcast <8 x i32> %i.bt to <32 x i8>, !dbg !2935
  %i.bv = xor <32 x i8> %i.bg, %i.bu, !dbg !2935
  %i.bw = shufflevector <32 x i8> %i.bv, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !2936
  %i.bx = add <8 x i32> %i.bs, %i.bh, !dbg !2934  ; 2 uses
  %i.by = bitcast <8 x i32> %i.bx to <32 x i8>, !dbg !2935
  %i.bz = xor <32 x i8> %i.bk, %i.by, !dbg !2935
  %i.ca = shufflevector <32 x i8> %i.bz, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !2936
  %i.cb = bitcast <32 x i8> %i.bw to <8 x i32>, !dbg !2937 ; 2 uses
  %i.cc = add <8 x i32> %i.bm, %i.cb, !dbg !2938  ; 2 uses
  %i.cd = xor <8 x i32> %i.cc, %i.bo, !dbg !2939  ; 2 uses
  %i.ce = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cd, <8 x i32> %i.cd, <8 x i32> splat (i32 7)), !dbg !2940 ; 2 uses
  %i.cf = bitcast <32 x i8> %i.ca to <8 x i32>, !dbg !2937 ; 2 uses
  %i.cg = add <8 x i32> %i.bq, %i.cf, !dbg !2938  ; 2 uses
  %i.ch = xor <8 x i32> %i.cg, %i.bs, !dbg !2939  ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ch, <8 x i32> %i.ch, <8 x i32> splat (i32 7)), !dbg !2940 ; 2 uses
  %i.cj = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !2941 ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cb, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !2942 ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <4 x i64>, !dbg !2943
  %i.cm = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !2944 ; 2 uses
  %i.cn = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !2941 ; 2 uses
  %i.co = shufflevector <8 x i32> %i.cf, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !2942 ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <4 x i64>, !dbg !2943
  %i.cq = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !2944 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, 6, !dbg !2945
  br i1 %exitcond.not.i, label %_RNvMNtNtCs2zhaXXqUmnG_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsbaWXNhtWAp9_11foundations.exit, label %bb.a, !dbg !2904

_RNvMNtNtCs2zhaXXqUmnG_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.cr = bitcast <4 x i64> %i.f to <8 x i32>, !dbg !2946
  %i.cs = add <8 x i32> %i.co, %i.cr, !dbg !2947  ; 2 uses
  %i.ct = add <8 x i32> %i.cn, %.cast, !dbg !2948 ; 2 uses
  %i.cu = add <8 x i32> %i.ci, %i.g, !dbg !2948   ; 2 uses
  %i.cv = add <8 x i32> %i.cq, %i.h, !dbg !2948   ; 2 uses
  %i.cw = bitcast <4 x i64> %i.e to <8 x i32>, !dbg !2946
  %i.cx = add <8 x i32> %i.ck, %i.cw, !dbg !2947  ; 2 uses
  %i.cy = add <8 x i32> %i.cj, %.cast, !dbg !2948 ; 2 uses
  %i.cz = add <8 x i32> %i.ce, %i.g, !dbg !2948   ; 2 uses
  %i.da = add <8 x i32> %i.cm, %i.h, !dbg !2948   ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %2 = bitcast <4 x i32> %.sroa.2.32.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %3 = bitcast <4 x i32> %.sroa.2.48.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %4 = bitcast <4 x i32> %.sroa.5.64.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %5 = bitcast <4 x i32> %.sroa.5.80.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %6 = bitcast <4 x i32> %.sroa.8.96.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %7 = bitcast <4 x i32> %.sroa.8.112.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %8 = bitcast <4 x i32> %.sroa.11.128.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %9 = bitcast <4 x i32> %.sroa.11.144.vec.extract to <2 x i64>, !dbg !2949
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !2950
  %10 = shufflevector <2 x i64> %2, <2 x i64> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2951
  store <4 x i64> %10, ptr %1, align 4, !dbg !2951, !noalias !2892
  %11 = shufflevector <2 x i64> %3, <2 x i64> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2952
  store <4 x i64> %11, ptr %i.db, align 4, !dbg !2952, !noalias !2893
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !2953
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !2950
  %12 = shufflevector <2 x i64> %6, <2 x i64> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2951
  store <4 x i64> %12, ptr %i.dc, align 4, !dbg !2951, !noalias !2892
  %13 = shufflevector <2 x i64> %7, <2 x i64> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2952
  store <4 x i64> %13, ptr %i.dd, align 4, !dbg !2952, !noalias !2893
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !2954
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %14 = bitcast <4 x i32> %.sroa.14.160.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %15 = bitcast <4 x i32> %.sroa.14.176.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %16 = bitcast <4 x i32> %.sroa.17.192.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %17 = bitcast <4 x i32> %.sroa.17.208.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %18 = bitcast <4 x i32> %.sroa.20.224.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %19 = bitcast <4 x i32> %.sroa.20.240.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2949
  %20 = bitcast <4 x i32> %.sroa.23.256.vec.extract to <2 x i64>, !dbg !2949
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !2949
  %21 = bitcast <4 x i32> %.sroa.23.272.vec.extract to <2 x i64>, !dbg !2949
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !2950
  %22 = shufflevector <2 x i64> %14, <2 x i64> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2951
  store <4 x i64> %22, ptr %i.de, align 4, !dbg !2951, !noalias !2892
  %23 = shufflevector <2 x i64> %15, <2 x i64> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2952
  store <4 x i64> %23, ptr %i.df, align 4, !dbg !2952, !noalias !2893
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !2953
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !2950
  %24 = shufflevector <2 x i64> %18, <2 x i64> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2951
  store <4 x i64> %24, ptr %i.dg, align 4, !dbg !2951, !noalias !2892
  %25 = shufflevector <2 x i64> %19, <2 x i64> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !2952
  store <4 x i64> %25, ptr %i.dh, align 4, !dbg !2952, !noalias !2893
  %i.di = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>, !dbg !2955
  %i.dj = bitcast <4 x i64> %i.di to <8 x i32>, !dbg !2956
  %i.dk = shufflevector <8 x i32> %i.dj, <8 x i32> poison, <2 x i32> <i32 0, i32 1>, !dbg !2957
  store <2 x i32> %i.dk, ptr %i.c, align 4, !dbg !2957
  ret void, !dbg !2958
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i32 } @_RINvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsaL1QbXo9JQH_3std4time7InstantECsbaWXNhtWAp9_11foundations(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2959 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !dbg !3007
  %i.b = urem i64 %i.a, 67, !dbg !3008
  %i.c = getelementptr inbounds nuw [128 x i8], ptr @_RNvNvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell4lock5LOCKS, i64 %i.b, !dbg !3009 ; 5 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8, !dbg !3010 ; 2 uses
  %i.e = icmp eq i64 %i.d, 1, !dbg !3011
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !3011

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i128, ptr %0, align 8, !dbg !3012 ; 2 uses
  fence acquire, !dbg !3013
  %i.g = load atomic i64, ptr %i.c monotonic, align 8, !dbg !3014
  %i.h = icmp eq i64 %i.g, %i.d, !dbg !3015
  br i1 %i.h, label %bb.d, label %bb.c, !dbg !3016

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8, !dbg !3017 ; 2 uses
  %i.j = icmp eq i64 %i.i, 1, !dbg !3018
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !dbg !3018

bb.d:                                             ; preds = %bb.b
  %.sroa.2.0.extract.shift = lshr i128 %i.f, 64, !dbg !3012
  %.sroa.2.0.extract.trunc = trunc i128 %.sroa.2.0.extract.shift to i32, !dbg !3012
  %.sroa.02.0.extract.trunc = trunc i128 %i.f to i64, !dbg !3012
  br label %bb.e, !dbg !3019

.lr.ph:                                           ; preds = %bb.c, %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit
  %.sroa.0.067 = phi i32 [ %.sroa.0.1, %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ 0, %bb.c ] ; 5 uses
  %i.k = icmp ult i32 %.sroa.0.067, 7, !dbg !3020
  br i1 %i.k, label %.preheader.i, label %.loopexit.i, !dbg !3020

.loopexit.i:                                      ; preds = %.lr.ph
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !dbg !3021
  %i.l = icmp ult i32 %.sroa.0.067, 11, !dbg !3022
  br i1 %i.l, label %.loopexit.i.thread, label %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, !dbg !3022

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.m, %.preheader.i ], [ 0, %.lr.ph ]
  %i.m = add nuw nsw i32 %.sroa.0.03.i, 1, !dbg !3023 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !dbg !3024
  %.sroa.0.0.highbits.i = lshr i32 %i.m, %.sroa.0.067, !dbg !3025
  %i.n = icmp eq i32 %.sroa.0.0.highbits.i, 0, !dbg !3025
  br i1 %i.n, label %.preheader.i, label %.loopexit.i.thread, !dbg !3026

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.o = add nuw nsw i32 %.sroa.0.067, 1, !dbg !3027
  br label %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, !dbg !3028

_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.1 = phi i32 [ %i.o, %.loopexit.i.thread ], [ %.sroa.0.067, %.loopexit.i ], !dbg !3029
  %i.p = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8, !dbg !3017 ; 2 uses
  %i.q = icmp eq i64 %i.p, 1, !dbg !3018
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !dbg !3018

._crit_edge:                                      ; preds = %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %bb.c
  %.lcssa = phi i64 [ %i.i, %bb.c ], [ %i.p, %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], !dbg !3017
  fence release, !dbg !3030
  %i.r = load i64, ptr %0, align 8, !dbg !3031, !noundef !494
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3031
  %i.t = load i32, ptr %i.s, align 8, !dbg !3031, !range !688, !noundef !494
  store atomic i64 %.lcssa, ptr %i.c release, align 8, !dbg !3032
  br label %bb.e, !dbg !3033

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.3.0 = phi i32 [ %i.t, %._crit_edge ], [ %.sroa.2.0.extract.trunc, %bb.d ], !dbg !3034
  %.sroa.0.0 = phi i64 [ %i.r, %._crit_edge ], [ %.sroa.02.0.extract.trunc, %bb.d ], !dbg !3034
  %i.u = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0, !dbg !3019
  %i.v = insertvalue { i64, i32 } %i.u, i32 %.sroa.3.0, 1, !dbg !3019
  ret { i64, i32 } %i.v, !dbg !3019
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell28atomic_compare_exchange_weakNtNtCsaL1QbXo9JQH_3std4time7InstantECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, i64 noundef %4, i32 noundef range(i32 0, 1000000000) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3035 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64, !dbg !3079
  %i.b = urem i64 %i.a, 67, !dbg !3080
  %i.c = getelementptr inbounds nuw [128 x i8], ptr @_RNvNvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell4lock5LOCKS, i64 %i.b, !dbg !3081 ; 3 uses
  %i.d = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8, !dbg !3082 ; 2 uses
  %i.e = icmp eq i64 %i.d, 1, !dbg !3083
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !3083

.lr.ph:                                           ; preds = %bb.a, %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit
  %.sroa.015.017 = phi i32 [ %.sroa.015.1, %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ 0, %bb.a ] ; 5 uses
  %i.f = icmp ult i32 %.sroa.015.017, 7, !dbg !3084
  br i1 %i.f, label %.preheader.i, label %.loopexit.i, !dbg !3084

.loopexit.i:                                      ; preds = %.lr.ph
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !dbg !3085
  %i.g = icmp ult i32 %.sroa.015.017, 11, !dbg !3086
  br i1 %i.g, label %.loopexit.i.thread, label %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, !dbg !3086

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.h, %.preheader.i ], [ 0, %.lr.ph ]
  %i.h = add nuw nsw i32 %.sroa.0.03.i, 1, !dbg !3087 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !dbg !3088
  %.sroa.0.0.highbits.i = lshr i32 %i.h, %.sroa.015.017, !dbg !3089
  %i.i = icmp eq i32 %.sroa.0.0.highbits.i, 0, !dbg !3089
  br i1 %i.i, label %.preheader.i, label %.loopexit.i.thread, !dbg !3090

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.j = add nuw nsw i32 %.sroa.015.017, 1, !dbg !3091
  br label %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, !dbg !3092

_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.015.1 = phi i32 [ %i.j, %.loopexit.i.thread ], [ %.sroa.015.017, %.loopexit.i ], !dbg !3093
  %i.k = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8, !dbg !3082 ; 2 uses
  %i.l = icmp eq i64 %i.k, 1, !dbg !3083
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !dbg !3083

._crit_edge:                                      ; preds = %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %bb.a
  %.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.k, %_RNvMNtCs5lJabBKj2Vx_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], !dbg !3082 ; 2 uses
  fence release, !dbg !3094
  %.val = load i64, ptr %1, align 8, !dbg !3095, !noundef !494 ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !3095 ; 2 uses
  %.val7 = load i32, ptr %i.m, align 8, !dbg !3095 ; 2 uses
  %i.n = icmp eq i64 %.val, %2, !dbg !3096
  %i.o = icmp eq i32 %.val7, %3, !dbg !3096
  %.sroa.0.0.i.i = select i1 %i.n, i1 %i.o, i1 false, !dbg !3096
  br i1 %.sroa.0.0.i.i, label %bb.b, label %bb.c, !dbg !3095

bb.b:                                             ; preds = %._crit_edge
  store i64 %4, ptr %1, align 8, !dbg !3097
  store i32 %5, ptr %i.m, align 8, !dbg !3097
  %i.p = add i64 %.lcssa, 2, !dbg !3098
  br label %bb.c, !dbg !3099

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sink21 = phi i64 [ %i.p, %bb.b ], [ %.lcssa, %._crit_edge ]
  %.sink = phi i64 [ 0, %bb.b ], [ 1, %._crit_edge ], !dbg !3100
  store atomic i64 %.sink21, ptr %i.c release, align 8, !dbg !3101
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3100
  store i64 %.val, ptr %i.q, align 8, !dbg !3100
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3100
  store i32 %.val7, ptr %i.r, align 8, !dbg !3100
  store i64 %.sink, ptr %0, align 8, !dbg !3100
  ret void, !dbg !3102
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11report_infoNtNtB2_4init11RuntimeInfoB12_EB6_(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3103 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10REGISTRIES, i64 344) acquire, align 8, !dbg !3148
  %i.c = icmp eq i32 %i.b, 0, !dbg !3149
  br i1 %i.c, label %_RNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internalNtB4_10Registries3get.exit, label %bb.b, !dbg !3150, !prof !614

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10RegistriesE10initializeNCINvB2_11get_or_initNCNvMs_BV_BT_3get0E0zEB11_(ptr noundef nonnull align 8 @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10REGISTRIES), !dbg !3151
  br label %_RNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internalNtB4_10Registries3get.exit, !dbg !3152

_RNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internalNtB4_10Registries3get.exit: ; preds = %bb.a, %bb.b
  %i.d = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10REGISTRIES, i64 256), i64 0, i64 8 acquire monotonic, align 8, !dbg !3153
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.d, 1, !dbg !3154
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c, !dbg !3155, !prof !614

bb.c:                                             ; preds = %_RNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internalNtB4_10Registries3get.exit
  %i.e = tail call noundef zeroext i1 @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10REGISTRIES, i64 256), i64 undef, i32 noundef -1), !dbg !3156 ; 0 uses
  br label %bb.d, !dbg !3157

bb.d:                                             ; preds = %_RNvMs_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internalNtB4_10Registries3get.exit, %bb.c
  %i.f = invoke noundef nonnull align 4 ptr @_RNvXNtNtCs1xwejQucwHj_5alloc5boxed7convertINtB4_3BoxNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics4init11RuntimeInfoEINtNtCs3oUPovFnLWP_4core7convert4FromBO_E4fromBW_(i32 noundef %0)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics4init11RuntimeInfoINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBy_EE4intoBG_.exit unwind label %bb.e, !dbg !3158

bb.e:                                             ; preds = %bb.d, %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics4init11RuntimeInfoINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBy_EE4intoBG_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !3159

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %bb.l ]
  %i.h = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10REGISTRIES, i64 256), i64 8, i64 0 release monotonic, align 8, !dbg !3160
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.h, 1, !dbg !3161
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal16ErasedInfoMetricEL_EEEEB4d_.exit, label %bb.f, !dbg !3162, !prof !614

bb.f:                                             ; preds = %.body
  invoke void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10REGISTRIES, i64 256), i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal16ErasedInfoMetricEL_EEEEB4d_.exit unwind label %bb.n, !dbg !3163

_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics4init11RuntimeInfoINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBy_EE4intoBG_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @10, i64 16, i1 false), !dbg !3164
  %i.i = invoke { ptr, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal16ErasedInfoMetricEL_ENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB23_(ptr noalias nofree noundef align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal10REGISTRIES, i64 264), ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @9)
          to label %bb.g unwind label %bb.e, !dbg !3165 ; 2 uses

bb.g:                                             ; preds = %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics4init11RuntimeInfoINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBy_EE4intoBG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3164
  %i.j = extractvalue { ptr, ptr } %i.i, 0, !dbg !3164 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1, !dbg !3164 ; 5 uses
  %i.l = icmp eq ptr %i.j, null, !dbg !3166
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal16ErasedInfoMetricEL_EEEB1F_.exit, label %bb.h, !dbg !3166

end_hunk_0
begin_hunk_1_@llvm.fshl.v8i32
!2639 = distinct !DILocation(line: 848, column: 1, scope: !206)
!2640 = distinct !DILocation(line: 848, column: 1, scope: !207, inlinedAt: !2639)
!2641 = distinct !DILocation(line: 848, column: 1, scope: !208, inlinedAt: !2640)
!2642 = distinct !DILocation(line: 848, column: 1, scope: !12, inlinedAt: !2641)
!2643 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2642)
!2644 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2642)
!2645 = !{!2638}
!2646 = !DILocation(line: 848, column: 1, scope: !207, inlinedAt: !2639)
!2647 = !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2642)
!2648 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2643)
!2649 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2644)
!2650 = !DILocation(line: 848, column: 1, scope: !206)
!2651 = distinct !DILocation(line: 848, column: 1, scope: !209)
!2652 = distinct !DILocation(line: 848, column: 1, scope: !210, inlinedAt: !2651)
!2653 = distinct !DILocation(line: 848, column: 1, scope: !211, inlinedAt: !2652)
!2654 = distinct !DILocation(line: 1993, column: 26, scope: !215, inlinedAt: !2653)
!2655 = distinct !DILocation(line: 261, column: 43, scope: !213, inlinedAt: !2654)
!2656 = distinct !DILocation(line: 261, column: 70, scope: !213, inlinedAt: !2654)
!2657 = distinct !DILocation(line: 159, column: 30, scope: !218, inlinedAt: !2656)
!2658 = distinct !DILocation(line: 1995, column: 24, scope: !216, inlinedAt: !2653)
!2659 = distinct !DILocation(line: 554, column: 23, scope: !78, inlinedAt: !2658)
!2660 = distinct !DILocation(line: 436, column: 9, scope: !77, inlinedAt: !2659)
!2661 = distinct !DILocation(line: 321, column: 22, scope: !76, inlinedAt: !2660)
!2662 = distinct !DILocation(line: 175, column: 14, scope: !75, inlinedAt: !2661)
!2663 = distinct !DILocation(line: 142, column: 39, scope: !74, inlinedAt: !2662)
!2664 = distinct !DILocation(line: 123, column: 21, scope: !73, inlinedAt: !2663)
!2665 = !DILocation(line: 848, column: 1, scope: !210, inlinedAt: !2651)
!2666 = !DILocation(line: 848, column: 1, scope: !211, inlinedAt: !2652)
!2667 = !DILocation(line: 468, column: 14, scope: !212, inlinedAt: !2655)
!2668 = !DILocation(line: 1994, column: 16, scope: !216, inlinedAt: !2653)
!2669 = !DILocation(line: 642, column: 14, scope: !217, inlinedAt: !2657)
!2670 = !DILocation(line: 68, column: 8, scope: !72, inlinedAt: !2664)
!2671 = !DILocation(line: 124, column: 9, scope: !79, inlinedAt: !2663)
!2672 = !DILocation(line: 1994, column: 13, scope: !216, inlinedAt: !2653)
!2673 = !DILocation(line: 848, column: 1, scope: !209)
!2674 = distinct !DISubprogram(name: "drop_glue<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsbaWXNhtWAp9_11foundations", scope: !559, file: !558, line: 848, type: !495, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2675 = distinct !DILocation(line: 848, column: 1, scope: !2674)
!2676 = distinct !DILocation(line: 848, column: 1, scope: !12, inlinedAt: !2675)
!2677 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2676)
!2678 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2676)
!2679 = !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2676)
!2680 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2677)
!2681 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2678)
!2682 = !DILocation(line: 848, column: 1, scope: !2674)
!2683 = distinct !DISubprogram(name: "drop_glue<(slog::SingleKV<alloc::string::String>, (slog::SingleKV<alloc::string::String>, (slog::SingleKV<&str>, (slog::SingleKV<core::fmt::Arguments>, ()))))>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtCscuJkFUZt1a2_4slog8SingleKVNtNtCs1xwejQucwHj_5alloc6string6StringETBC_TIBD_ReETIBD_NtNtB4_3fmt9ArgumentsEuEEEEECsbaWXNhtWAp9_11foundations", scope: !559, file: !558, line: 848, type: !495, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2684 = distinct !DILocation(line: 848, column: 1, scope: !2683)
!2685 = distinct !DILocation(line: 848, column: 1, scope: !10, inlinedAt: !2684)
!2686 = distinct !DILocation(line: 848, column: 1, scope: !12, inlinedAt: !2685)
!2687 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2686)
!2688 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2686)
!2689 = distinct !DILocation(line: 848, column: 1, scope: !2683)
!2690 = distinct !DILocation(line: 848, column: 1, scope: !219, inlinedAt: !2689)
!2691 = distinct !DILocation(line: 848, column: 1, scope: !10, inlinedAt: !2690)
!2692 = distinct !DILocation(line: 848, column: 1, scope: !12, inlinedAt: !2691)
!2693 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2692)
!2694 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2692)
!2695 = !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2686)
!2696 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2687)
!2697 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2688)
!2698 = !DILocation(line: 848, column: 1, scope: !2683)
!2699 = !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2692)
!2700 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2693)
!2701 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2694)
!2702 = distinct !DILocation(line: 848, column: 1, scope: !219)
!2703 = distinct !DILocation(line: 848, column: 1, scope: !10, inlinedAt: !2702)
!2704 = distinct !DILocation(line: 848, column: 1, scope: !12, inlinedAt: !2703)
!2705 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2704)
!2706 = distinct !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2704)
!2707 = !DILocation(line: 848, column: 1, scope: !11, inlinedAt: !2704)
!2708 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2705)
!2709 = !DILocation(line: 848, column: 1, scope: !13, inlinedAt: !2706)
!2710 = !DILocation(line: 848, column: 1, scope: !219)
!2711 = distinct !DISubprogram(name: "rng_inner<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RINvNtNtCs2zhaXXqUmnG_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECsbaWXNhtWAp9_11foundations", scope: !2864, file: !2863, line: 84, type: !495, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2712 = distinct !{!2712, i1 false, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2713 = distinct !{!2713, !2712, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2714 = distinct !DILexicalBlock(scope: !2711, file: !2863, line: 89, column: 5)
!2715 = distinct !DILocation(line: 91, column: 37, scope: !2714)
!2716 = distinct !DILocation(line: 1341, column: 5, scope: !222, inlinedAt: !2715)
!2717 = distinct !DILocation(line: 92, column: 63, scope: !2714)
!2718 = distinct !{!2718, i1 false, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2719 = distinct !{!2719, !2718, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2720 = distinct !DILocation(line: 92, column: 37, scope: !2714)
!2721 = distinct !DILocation(line: 1341, column: 5, scope: !222, inlinedAt: !2720)
!2722 = distinct !DILocation(line: 93, column: 63, scope: !2714)
!2723 = distinct !{!2723, i1 false, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2724 = distinct !{!2724, !2723, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2725 = distinct !DILocation(line: 93, column: 37, scope: !2714)
!2726 = distinct !DILocation(line: 1341, column: 5, scope: !222, inlinedAt: !2725)
!2727 = distinct !DILexicalBlock(scope: !2714, file: !2863, line: 90, column: 5)
!2728 = distinct !DILocation(line: 95, column: 71, scope: !2727)
!2729 = distinct !{!2729, i1 false, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!2730 = distinct !{!2730, !2729, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!2731 = distinct !DILocation(line: 95, column: 45, scope: !2727)
!2732 = distinct !DILocation(line: 1341, column: 5, scope: !222, inlinedAt: !2731)
!2733 = distinct !DISubprogram(name: "_mm256_broadcastsi128_si256", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx227__mm256_broadcastsi128_si256", scope: !2871, file: !2870, line: 589, type: !495, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2734 = distinct !DISubprogram(name: "_mm256_add_epi64", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx216__mm256_add_epi64", scope: !2871, file: !2870, line: 83, type: !495, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2735 = distinct !DILexicalBlock(scope: !2727, file: !2863, line: 95, column: 5)
!2736 = distinct !DILexicalBlock(scope: !2735, file: !2863, line: 97, column: 5)
!2737 = distinct !DILexicalBlock(scope: !2736, file: !2863, line: 98, column: 5)
!2738 = distinct !DILexicalBlock(scope: !2737, file: !2863, line: 98, column: 5)
!2739 = distinct !DISubprogram(name: "rounds<chacha20::R12>", linkageName: "_RINvNtNtCs2zhaXXqUmnG_8chacha208backends4avx26roundsNtB6_3R12ECsbaWXNhtWAp9_11foundations", scope: !2864, file: !2863, line: 209, type: !495, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2740 = distinct !DILexicalBlock(scope: !2739, file: !2863, line: 210, column: 5)
!2741 = distinct !DILexicalBlock(scope: !2740, file: !2863, line: 214, column: 5)
!2742 = distinct !DISubprogram(name: "rng_gen_par_ks_blocks<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMNtNtCs2zhaXXqUmnG_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCsbaWXNhtWAp9_11foundations", scope: !2875, file: !2863, line: 185, type: !495, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2743 = distinct !DILexicalBlock(scope: !2736, file: !2863, line: 102, column: 5)
!2744 = distinct !DILocation(line: 108, column: 13, scope: !2743)
!2745 = distinct !DILocation(line: 187, column: 22, scope: !2742, inlinedAt: !2744)
!2746 = distinct !DILocation(line: 214, column: 14, scope: !2741, inlinedAt: !2745)
!2747 = distinct !DILocation(line: 1185, column: 14, scope: !225, inlinedAt: !2746)
!2748 = distinct !DILocation(line: 1103, column: 35, scope: !228, inlinedAt: !2747)
!2749 = distinct !DILocation(line: 265, column: 28, scope: !227, inlinedAt: !2748)
!2750 = distinct !DISubprogram(name: "_mm256_add_epi32", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx216__mm256_add_epi32", scope: !2871, file: !2870, line: 95, type: !495, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2751 = distinct !DISubprogram(name: "add_xor_rot", linkageName: "_RNvNtNtCs2zhaXXqUmnG_8chacha208backends4avx211add_xor_rot", scope: !2864, file: !2863, line: 313, type: !495, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2752 = distinct !DILexicalBlock(scope: !2751, file: !2863, line: 314, column: 5)
!2753 = distinct !DILexicalBlock(scope: !2752, file: !2863, line: 320, column: 5)
!2754 = distinct !DILexicalBlock(scope: !2753, file: !2863, line: 328, column: 5)
!2755 = distinct !DILexicalBlock(scope: !2754, file: !2863, line: 328, column: 5)
!2756 = distinct !DISubprogram(name: "double_quarter_round", linkageName: "_RNvNtNtCs2zhaXXqUmnG_8chacha208backends4avx220double_quarter_round", scope: !2864, file: !2863, line: 230, type: !495, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2757 = distinct !DILocation(line: 215, column: 9, scope: !2741, inlinedAt: !2745)
!2758 = distinct !DILocation(line: 231, column: 5, scope: !2756, inlinedAt: !2757)
!2759 = distinct !DILocation(line: 329, column: 14, scope: !2755, inlinedAt: !2758)
!2760 = distinct !DISubprogram(name: "_mm256_xor_si256", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx216__mm256_xor_si256", scope: !2871, file: !2870, line: 3782, type: !495, scopeLine: 3782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2761 = distinct !DILocation(line: 330, column: 14, scope: !2755, inlinedAt: !2758)
!2762 = distinct !DISubprogram(name: "_mm256_shuffle_epi8", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx219__mm256_shuffle_epi8", scope: !2871, file: !2870, line: 2507, type: !495, scopeLine: 2507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2763 = distinct !DILocation(line: 331, column: 14, scope: !2755, inlinedAt: !2758)
!2764 = distinct !DILexicalBlock(scope: !2753, file: !2863, line: 335, column: 5)
!2765 = distinct !DILexicalBlock(scope: !2764, file: !2863, line: 335, column: 5)
!2766 = distinct !DILocation(line: 336, column: 14, scope: !2765, inlinedAt: !2758)
!2767 = distinct !DISubprogram(name: "_mm256_slli_epi32<12>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx217__mm256_slli_epi32Klc_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2756, type: !495, scopeLine: 2756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2768 = distinct !DILocation(line: 338, column: 31, scope: !2765, inlinedAt: !2758)
!2769 = distinct !DILocation(line: 338, column: 14, scope: !2765, inlinedAt: !2758)
!2770 = distinct !DILexicalBlock(scope: !2753, file: !2863, line: 342, column: 5)
!2771 = distinct !DILexicalBlock(scope: !2770, file: !2863, line: 342, column: 5)
!2772 = distinct !DILocation(line: 343, column: 14, scope: !2771, inlinedAt: !2758)
!2773 = distinct !DILocation(line: 345, column: 14, scope: !2771, inlinedAt: !2758)
!2774 = distinct !DILexicalBlock(scope: !2753, file: !2863, line: 349, column: 5)
!2775 = distinct !DILexicalBlock(scope: !2774, file: !2863, line: 349, column: 5)
!2776 = distinct !DILocation(line: 350, column: 14, scope: !2775, inlinedAt: !2758)
!2777 = distinct !DISubprogram(name: "_mm256_slli_epi32<7>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx217__mm256_slli_epi32Kl7_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2756, type: !495, scopeLine: 2756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2778 = distinct !DILocation(line: 352, column: 31, scope: !2775, inlinedAt: !2758)
!2779 = distinct !DILocation(line: 352, column: 14, scope: !2775, inlinedAt: !2758)
!2780 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<57>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl39_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2547, type: !495, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2781 = distinct !DISubprogram(name: "rows_to_cols", linkageName: "_RNvNtNtCs2zhaXXqUmnG_8chacha208backends4avx212rows_to_cols", scope: !2864, file: !2863, line: 274, type: !495, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2782 = distinct !DILexicalBlock(scope: !2781, file: !2863, line: 276, column: 5)
!2783 = distinct !DILexicalBlock(scope: !2782, file: !2863, line: 276, column: 5)
!2784 = distinct !DILocation(line: 232, column: 5, scope: !2756, inlinedAt: !2757)
!2785 = distinct !DILocation(line: 277, column: 14, scope: !2783, inlinedAt: !2784)
!2786 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<78>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl4e_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2547, type: !495, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2787 = distinct !DILocation(line: 278, column: 14, scope: !2783, inlinedAt: !2784)
!2788 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<147>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl93_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2547, type: !495, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2789 = distinct !DILocation(line: 279, column: 14, scope: !2783, inlinedAt: !2784)
!2790 = distinct !DILocation(line: 233, column: 5, scope: !2756, inlinedAt: !2757)
!2791 = distinct !DILocation(line: 329, column: 14, scope: !2755, inlinedAt: !2790)
!2792 = distinct !DILocation(line: 330, column: 14, scope: !2755, inlinedAt: !2790)
!2793 = distinct !DILocation(line: 331, column: 14, scope: !2755, inlinedAt: !2790)
!2794 = distinct !DILocation(line: 336, column: 14, scope: !2765, inlinedAt: !2790)
!2795 = distinct !DILocation(line: 338, column: 31, scope: !2765, inlinedAt: !2790)
!2796 = distinct !DILocation(line: 338, column: 14, scope: !2765, inlinedAt: !2790)
!2797 = distinct !DILocation(line: 343, column: 14, scope: !2771, inlinedAt: !2790)
!2798 = distinct !DILocation(line: 345, column: 14, scope: !2771, inlinedAt: !2790)
!2799 = distinct !DILocation(line: 350, column: 14, scope: !2775, inlinedAt: !2790)
!2800 = distinct !DILocation(line: 352, column: 31, scope: !2775, inlinedAt: !2790)
!2801 = distinct !DILocation(line: 352, column: 14, scope: !2775, inlinedAt: !2790)
!2802 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<147>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl93_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2547, type: !495, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2803 = distinct !DISubprogram(name: "cols_to_rows", linkageName: "_RNvNtNtCs2zhaXXqUmnG_8chacha208backends4avx212cols_to_rows", scope: !2864, file: !2863, line: 302, type: !495, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2804 = distinct !DILexicalBlock(scope: !2803, file: !2863, line: 304, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2804, file: !2863, line: 304, column: 5)
!2806 = distinct !DILocation(line: 234, column: 5, scope: !2756, inlinedAt: !2757)
!2807 = distinct !DILocation(line: 305, column: 14, scope: !2805, inlinedAt: !2806)
!2808 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<78>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl4e_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2547, type: !495, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2809 = distinct !DILocation(line: 306, column: 14, scope: !2805, inlinedAt: !2806)
!2810 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<57>", linkageName: "_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl39_ECsbaWXNhtWAp9_11foundations", scope: !2871, file: !2870, line: 2547, type: !495, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2811 = distinct !DILocation(line: 307, column: 14, scope: !2805, inlinedAt: !2806)
!2812 = distinct !DILocation(line: 1100, column: 12, scope: !224, inlinedAt: !2747)
!2813 = distinct !DILexicalBlock(scope: !2740, file: !2863, line: 218, column: 5)
!2814 = distinct !DILexicalBlock(scope: !2813, file: !2863, line: 218, column: 5)
!2815 = distinct !DISubprogram(name: "_mm256_add_epi32", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx216__mm256_add_epi32", scope: !2871, file: !2870, line: 95, type: !495, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2816 = distinct !DILocation(line: 222, column: 20, scope: !2814, inlinedAt: !2745)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !2863, line: 219, column: 9)
!2818 = distinct !DILexicalBlock(scope: !2817, file: !2863, line: 219, column: 9)
!2819 = distinct !DILocation(line: 220, column: 24, scope: !2818, inlinedAt: !2745)
!2820 = distinct !DISubprogram(name: "read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr4readANtNtNtB4_9core_arch3x867___m256ij4_ECsbaWXNhtWAp9_11foundations", scope: !559, file: !558, line: 1717, type: !495, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2821 = distinct !DISubprogram(name: "read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr9const_ptrPANtNtNtB6_9core_arch3x867___m256ij4_4readCsbaWXNhtWAp9_11foundations", scope: !657, file: !655, line: 1148, type: !495, scopeLine: 1148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2822 = distinct !DISubprogram(name: "assume_init_read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3mem12maybe_uninitINtB5_11MaybeUninitANtNtNtB9_9core_arch3x867___m256ij4_E16assume_init_readCsbaWXNhtWAp9_11foundations", scope: !670, file: !668, line: 794, type: !495, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2823 = distinct !DISubprogram(name: "{closure#0}<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNCNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB7_15PolymorphicIterSINtNtNtBd_3mem12maybe_uninit11MaybeUninitANtNtNtBd_9core_arch3x867___m256ij4_EE4next0CsbaWXNhtWAp9_11foundations", scope: !2887, file: !2882, line: 212, type: !495, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2824 = distinct !DISubprogram(name: "map<usize, [core::core_arch::x86::__m256i; 4], core::array::iter::iter_inner::{impl#10}::next::{closure_env#0}<[core::core_arch::x86::__m256i; 4]>>", linkageName: "_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3mapANtNtNtB5_9core_arch3x867___m256ij4_NCNvMs8_NtNtNtB5_5array4iter10iter_innerINtB1w_15PolymorphicIterSINtNtNtB5_3mem12maybe_uninit11MaybeUninitBO_EE4next0ECsbaWXNhtWAp9_11foundations", scope: !534, file: !532, line: 1158, type: !495, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2825 = distinct !DILexicalBlock(scope: !2824, file: !532, line: 1163, column: 13)
!2826 = distinct !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitANtNtNtBb_9core_arch3x867___m256ij4_EE4nextCsbaWXNhtWAp9_11foundations", scope: !2888, file: !2882, line: 206, type: !495, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2827 = distinct !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4], 2>", linkageName: "_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterANtNtNtB9_9core_arch3x867___m256ij4_Kj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations", scope: !2890, file: !2889, line: 245, type: !495, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2828 = distinct !DILexicalBlock(scope: !2742, file: !2863, line: 187, column: 13)
!2829 = distinct !DILexicalBlock(scope: !2828, file: !2863, line: 189, column: 13)
!2830 = distinct !DILexicalBlock(scope: !2829, file: !2863, line: 194, column: 13)
!2831 = distinct !DILexicalBlock(scope: !2830, file: !2863, line: 195, column: 13)
!2832 = distinct !DILocation(line: 195, column: 22, scope: !2891, inlinedAt: !2744)
!2833 = distinct !DILocation(line: 246, column: 27, scope: !2827, inlinedAt: !2832)
!2834 = distinct !DILocation(line: 212, column: 27, scope: !2826, inlinedAt: !2833)
!2835 = distinct !DILocation(line: 1163, column: 29, scope: !2825, inlinedAt: !2834)
!2836 = distinct !DILocation(line: 219, column: 51, scope: !2823, inlinedAt: !2835)
!2837 = distinct !DILocation(line: 799, column: 27, scope: !2822, inlinedAt: !2836)
!2838 = distinct !DILocation(line: 1153, column: 18, scope: !2821, inlinedAt: !2837)
!2839 = distinct !DISubprogram(name: "add<core::core_arch::x86::__m128i>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i3addCsbaWXNhtWAp9_11foundations", scope: !576, file: !574, line: 936, type: !495, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2840 = distinct !DILexicalBlock(scope: !2831, file: !2863, line: 195, column: 13)
!2841 = distinct !DILexicalBlock(scope: !2840, file: !2863, line: 196, column: 17)
!2842 = distinct !DILexicalBlock(scope: !2841, file: !2863, line: 197, column: 17)
!2843 = distinct !DILexicalBlock(scope: !2842, file: !2863, line: 197, column: 17)
!2844 = distinct !DILocation(line: 199, column: 48, scope: !2843, inlinedAt: !2744)
!2845 = distinct !DILocation(line: 198, column: 21, scope: !2843, inlinedAt: !2744)
!2846 = distinct !DILocation(line: 1405, column: 14, scope: !235, inlinedAt: !2845)
!2847 = distinct !DILocation(line: 1464, column: 18, scope: !234, inlinedAt: !2846)
!2848 = distinct !DILocation(line: 2057, column: 14, scope: !233, inlinedAt: !2847)
!2849 = distinct !{!2849, i1 false, !"_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsbaWXNhtWAp9_11foundations"}
!2850 = distinct !{!2850, !2849, !"_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsbaWXNhtWAp9_11foundations: argument 0"}
!2851 = distinct !DILocation(line: 199, column: 21, scope: !2843, inlinedAt: !2744)
!2852 = distinct !DILocation(line: 1405, column: 14, scope: !235, inlinedAt: !2851)
!2853 = distinct !DILocation(line: 1464, column: 18, scope: !234, inlinedAt: !2852)
!2854 = distinct !DILocation(line: 2057, column: 14, scope: !233, inlinedAt: !2853)
!2855 = distinct !{!2855, i1 false, !"_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsbaWXNhtWAp9_11foundations"}
!2856 = distinct !{!2856, !2855, !"_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsbaWXNhtWAp9_11foundations: argument 0"}
!2857 = distinct !DILocation(line: 198, column: 48, scope: !2843, inlinedAt: !2744)
!2858 = distinct !DILocation(line: 201, column: 39, scope: !2841, inlinedAt: !2744)
!2859 = distinct !DISubprogram(name: "_mm256_add_epi64", linkageName: "_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864avx216__mm256_add_epi64", scope: !2871, file: !2870, line: 83, type: !568, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2860 = distinct !DILexicalBlock(scope: !2829, file: !2863, line: 190, column: 13)
!2861 = distinct !DILexicalBlock(scope: !2860, file: !2863, line: 190, column: 13)
!2862 = distinct !DILocation(line: 191, column: 22, scope: !2861, inlinedAt: !2744)
!2863 = !DIFile(filename: "src/backends/avx2.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.1", checksumkind: CSK_MD5, checksum: "5475b59074661dfbf620f755aee7cf11")
!2864 = !DINamespace(name: "avx2", scope: !650)
!2865 = !{!2713}
!2866 = !{!2719}
!2867 = !{!2724}
!2868 = !{!2730}
!2869 = !DILexicalBlockFile(scope: !2733, file: !658, discriminator: 0)
!2870 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/avx2.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "18ed3b1487b9900bdb9d19b7fdd96a2b")
!2871 = !DINamespace(name: "avx2", scope: !653)
!2872 = !DILocation(line: 95, column: 17, scope: !2727)
!2873 = !DILocation(line: 96, column: 9, scope: !2735)
!2874 = !DILocation(line: 100, column: 13, scope: !2738)
!2875 = !DINamespace(name: "Backend", scope: !2864)
!2876 = !DILexicalBlockFile(scope: !2780, file: !658, discriminator: 0)
!2877 = !DILexicalBlockFile(scope: !2786, file: !658, discriminator: 0)
!2878 = !DILexicalBlockFile(scope: !2788, file: !658, discriminator: 0)
!2879 = !DILexicalBlockFile(scope: !2802, file: !658, discriminator: 0)
!2880 = !DILexicalBlockFile(scope: !2808, file: !658, discriminator: 0)
!2881 = !DILexicalBlockFile(scope: !2810, file: !658, discriminator: 0)
!2882 = !DIFile(filename: "library/core/src/array/iter/iter_inner.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "48722c666ec792ae4b3ada9f644ba487")
!2883 = !DINamespace(name: "array", scope: !497)
!2884 = !DINamespace(name: "iter", scope: !2883)
!2885 = !DINamespace(name: "iter_inner", scope: !2884)
!2886 = !DINamespace(name: "{impl#10}", scope: !2885)
!2887 = !DINamespace(name: "next", scope: !2886)
!2888 = !DINamespace(name: "PolymorphicIter", scope: !2885)
!2889 = !DIFile(filename: "library/core/src/array/iter.rs", directory: "/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7", checksumkind: CSK_MD5, checksum: "c1dd90260bb3443fb9d4fc76ebd1ded3")
!2890 = !DINamespace(name: "{impl#5}", scope: !2884)
!2891 = !DILexicalBlockFile(scope: !2831, file: !2863, discriminator: 2)
!2892 = !{!2850}
!2893 = !{!2856}
!2894 = !DILocation(line: 574, column: 14, scope: !220, inlinedAt: !2716)
!2895 = !DILocation(line: 871, column: 18, scope: !223, inlinedAt: !2717)
!2896 = !DILocation(line: 574, column: 14, scope: !220, inlinedAt: !2721)
!2897 = !DILocation(line: 871, column: 18, scope: !223, inlinedAt: !2722)
!2898 = !DILocation(line: 574, column: 14, scope: !220, inlinedAt: !2726)
!2899 = !DILocation(line: 871, column: 18, scope: !223, inlinedAt: !2728)
!2900 = !DILocation(line: 574, column: 14, scope: !220, inlinedAt: !2732)
!2901 = !DILocation(line: 173, column: 9, scope: !2869, inlinedAt: !2872)
!2902 = !DILocation(line: 84, column: 24, scope: !2734, inlinedAt: !2873)
!2903 = !DILocation(line: 84, column: 24, scope: !2734, inlinedAt: !2874)
!2904 = !DILocation(line: 1100, column: 12, scope: !224, inlinedAt: !2747)
!2905 = !DILocation(line: 0, scope: !2740, inlinedAt: !2745)
!2906 = !DILocation(line: 1043, column: 17, scope: !226, inlinedAt: !2749)
!2907 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2759)
!2908 = !DILocation(line: 3783, column: 47, scope: !2760, inlinedAt: !2761)
!2909 = !DILocation(line: 3783, column: 24, scope: !2760, inlinedAt: !2761)
!2910 = !DILocation(line: 2508, column: 33, scope: !2762, inlinedAt: !2763)
!2911 = !DILocation(line: 2508, column: 24, scope: !2762, inlinedAt: !2763)
!2912 = !DILocation(line: 336, column: 35, scope: !2765, inlinedAt: !2758)
!2913 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2766)
!2914 = !DILocation(line: 2762, column: 34, scope: !2767, inlinedAt: !2768)
!2915 = !DILocation(line: 3783, column: 24, scope: !2760, inlinedAt: !2769)
!2916 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2772)
!2917 = !DILocation(line: 2508, column: 33, scope: !2762, inlinedAt: !2773)
!2918 = !DILocation(line: 2508, column: 24, scope: !2762, inlinedAt: !2773)
!2919 = !DILocation(line: 350, column: 35, scope: !2775, inlinedAt: !2758)
!2920 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2776)
!2921 = !DILocation(line: 2762, column: 34, scope: !2777, inlinedAt: !2778)
!2922 = !DILocation(line: 3783, column: 24, scope: !2760, inlinedAt: !2779)
!2923 = !DILocation(line: 173, column: 9, scope: !2876, inlinedAt: !2785)
!2924 = !DILocation(line: 173, column: 9, scope: !2877, inlinedAt: !2787)
!2925 = !DILocation(line: 173, column: 9, scope: !2878, inlinedAt: !2789)
!2926 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2791)
!2927 = !DILocation(line: 3783, column: 24, scope: !2760, inlinedAt: !2792)
!2928 = !DILocation(line: 2508, column: 33, scope: !2762, inlinedAt: !2793)
!2929 = !DILocation(line: 2508, column: 24, scope: !2762, inlinedAt: !2793)
!2930 = !DILocation(line: 336, column: 35, scope: !2765, inlinedAt: !2790)
!2931 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2794)
!2932 = !DILocation(line: 2762, column: 34, scope: !2767, inlinedAt: !2795)
!2933 = !DILocation(line: 3783, column: 24, scope: !2760, inlinedAt: !2796)
!2934 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2797)
!2935 = !DILocation(line: 2508, column: 33, scope: !2762, inlinedAt: !2798)
!2936 = !DILocation(line: 2508, column: 24, scope: !2762, inlinedAt: !2798)
!2937 = !DILocation(line: 350, column: 35, scope: !2775, inlinedAt: !2790)
!2938 = !DILocation(line: 96, column: 24, scope: !2750, inlinedAt: !2799)
!2939 = !DILocation(line: 2762, column: 34, scope: !2777, inlinedAt: !2800)
!2940 = !DILocation(line: 3783, column: 24, scope: !2760, inlinedAt: !2801)
!2941 = !DILocation(line: 173, column: 9, scope: !2879, inlinedAt: !2807)
!2942 = !DILocation(line: 173, column: 9, scope: !2880, inlinedAt: !2809)
!2943 = !DILocation(line: 306, column: 9, scope: !2805, inlinedAt: !2806)
!2944 = !DILocation(line: 173, column: 9, scope: !2881, inlinedAt: !2811)
!2945 = !DILocation(line: 2192, column: 50, scope: !229, inlinedAt: !2812)
!2946 = !DILocation(line: 222, column: 47, scope: !2814, inlinedAt: !2745)
!2947 = !DILocation(line: 96, column: 24, scope: !2815, inlinedAt: !2816)
!2948 = !DILocation(line: 96, column: 24, scope: !2815, inlinedAt: !2819)
!2949 = !DILocation(line: 1756, column: 9, scope: !2820, inlinedAt: !2838)
!2950 = !DILocation(line: 970, column: 18, scope: !2839, inlinedAt: !2844)
!2951 = !DILocation(line: 1964, column: 41, scope: !230, inlinedAt: !2848)
!2952 = !DILocation(line: 1964, column: 41, scope: !230, inlinedAt: !2854)
!2953 = !DILocation(line: 970, column: 18, scope: !2839, inlinedAt: !2857)
!2954 = !DILocation(line: 970, column: 18, scope: !2839, inlinedAt: !2858)
!2955 = !DILocation(line: 84, column: 24, scope: !2859, inlinedAt: !2862)
!2956 = !DILocation(line: 110, column: 43, scope: !2743)
!2957 = !DILocation(line: 110, column: 5, scope: !2743)
!2958 = !DILocation(line: 112, column: 2, scope: !2711)
!2959 = distinct !DISubprogram(name: "atomic_load<std::time::Instant>", linkageName: "_RINvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsaL1QbXo9JQH_3std4time7InstantECsbaWXNhtWAp9_11foundations", scope: !674, file: !671, line: 1080, type: !495, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2960 = distinct !DISubprogram(name: "lock", linkageName: "_RNvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell4lock", scope: !674, file: !671, line: 1012, type: !495, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2961 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !500, file: !496, line: 2918, type: !495, scopeLine: 2918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2962 = distinct !DILexicalBlock(scope: !2959, file: !671, line: 1091, column: 13)
!2963 = distinct !DILexicalBlock(scope: !2962, file: !671, line: 1094, column: 57)
!2964 = distinct !DISubprogram(name: "optimistic_read", linkageName: "_RNvMNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic8seq_lockNtB2_7SeqLock15optimistic_read", scope: !677, file: !675, line: 26, type: !495, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2965 = distinct !DILocation(line: 2920, column: 26, scope: !2961, inlinedAt: !2998)
!2966 = distinct !DILexicalBlock(scope: !2964, file: !675, line: 27, column: 9)
!2967 = distinct !DISubprogram(name: "read_volatile<core::mem::maybe_uninit::MaybeUninit<std::time::Instant>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr13read_volatileINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCsaL1QbXo9JQH_3std4time7InstantEECsbaWXNhtWAp9_11foundations", scope: !559, file: !558, line: 2150, type: !495, scopeLine: 2150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2968 = distinct !DISubprogram(name: "validate_read", linkageName: "_RNvMNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic8seq_lockNtB2_7SeqLock13validate_read", scope: !677, file: !675, line: 40, type: !495, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2969 = distinct !DILexicalBlock(scope: !2963, file: !671, line: 1101, column: 17)
!2970 = distinct !DILocation(line: 41, column: 9, scope: !2968, inlinedAt: !3000)
!2971 = distinct !DILocation(line: 2920, column: 26, scope: !2961, inlinedAt: !3001)
!2972 = distinct !DISubprogram(name: "atomic_swap<usize>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_swapjECsbaWXNhtWAp9_11foundations", scope: !499, file: !496, line: 4011, type: !495, scopeLine: 4011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2973 = distinct !DISubprogram(name: "write", linkageName: "_RNvMNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic8seq_lockNtB2_7SeqLock5write", scope: !677, file: !675, line: 47, type: !495, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2974 = distinct !DILexicalBlock(scope: !2973, file: !675, line: 48, column: 9)
!2975 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE4swap", scope: !500, file: !496, line: 2979, type: !495, scopeLine: 2979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2976 = distinct !DILexicalBlock(scope: !2974, file: !675, line: 50, column: 13)
!2977 = distinct !DILocation(line: 61, column: 21, scope: !2976, inlinedAt: !3002)
!2978 = distinct !DILocation(line: 208, column: 22, scope: !684, inlinedAt: !2977)
!2979 = distinct !DILocation(line: 1185, column: 14, scope: !244, inlinedAt: !2978)
!2980 = distinct !DILocation(line: 1103, column: 35, scope: !243, inlinedAt: !2979)
!2981 = distinct !DILocation(line: 249, column: 28, scope: !241, inlinedAt: !2980)
!2982 = distinct !DILocation(line: 685, column: 31, scope: !240, inlinedAt: !2981)
!2983 = distinct !DILocation(line: 2637, column: 42, scope: !239, inlinedAt: !2982)
!2984 = distinct !DILocation(line: 209, column: 17, scope: !245, inlinedAt: !2977)
!2985 = distinct !DILocation(line: 287, column: 13, scope: !247, inlinedAt: !2984)
!2986 = distinct !DILocation(line: 1100, column: 12, scope: !242, inlinedAt: !2979)
!2987 = distinct !DILocation(line: 53, column: 17, scope: !2976, inlinedAt: !3002)
!2988 = distinct !DISubprogram(name: "read<std::time::Instant>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr4readNtNtCsaL1QbXo9JQH_3std4time7InstantECsbaWXNhtWAp9_11foundations", scope: !559, file: !558, line: 1717, type: !495, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2989 = distinct !DILexicalBlock(scope: !2962, file: !671, line: 1109, column: 13)
!2990 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !500, file: !496, line: 2948, type: !495, scopeLine: 2948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2991 = distinct !DISubprogram(name: "abort", linkageName: "_RNvMs_NtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic8seq_lockNtB4_17SeqLockWriteGuard5abort", scope: !3006, file: !675, line: 78, type: !495, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!2992 = distinct !DILexicalBlock(scope: !2989, file: !671, line: 1110, column: 13)
!2993 = distinct !DILocation(line: 1112, column: 19, scope: !2992)
!2994 = distinct !DILocation(line: 79, column: 25, scope: !2991, inlinedAt: !2993)
!2995 = distinct !DILocation(line: 2950, column: 26, scope: !2990, inlinedAt: !2994)
!2996 = !DILocation(line: 1091, column: 24, scope: !2959)
!2997 = !DILocation(line: 1094, column: 39, scope: !2963)
!2998 = !DILocation(line: 27, column: 32, scope: !2964, inlinedAt: !2997)
!2999 = !DILocation(line: 1101, column: 27, scope: !2963)
!3000 = !DILocation(line: 1103, column: 25, scope: !2969)
!3001 = !DILocation(line: 42, column: 20, scope: !2968, inlinedAt: !3000)
!3002 = !DILocation(line: 1109, column: 30, scope: !2962)
!3003 = !DILocation(line: 50, column: 39, scope: !2974, inlinedAt: !3002)
!3004 = !DILocation(line: 2981, column: 26, scope: !2975, inlinedAt: !3003)
!3005 = !DILocation(line: 1110, column: 23, scope: !2989)
!3006 = !DINamespace(name: "SeqLockWriteGuard", scope: !676)
!3007 = !DILocation(line: 1091, column: 29, scope: !2959)
!3008 = !DILocation(line: 1041, column: 12, scope: !2960, inlinedAt: !2996)
!3009 = !DILocation(line: 1041, column: 5, scope: !2960, inlinedAt: !2996)
!3010 = !DILocation(line: 3999, column: 24, scope: !1, inlinedAt: !2965)
!3011 = !DILocation(line: 28, column: 12, scope: !2966, inlinedAt: !2997)
!3012 = !DILocation(line: 2161, column: 9, scope: !2967, inlinedAt: !2999)
!3013 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !2970)
!3014 = !DILocation(line: 3998, column: 24, scope: !1, inlinedAt: !2971)
!3015 = !DILocation(line: 42, column: 9, scope: !2968, inlinedAt: !3000)
!3016 = !DILocation(line: 1103, column: 20, scope: !2969)
!3017 = !DILocation(line: 4016, column: 24, scope: !2972, inlinedAt: !3004)
!3018 = !DILocation(line: 52, column: 16, scope: !2976, inlinedAt: !3002)
!3019 = !DILocation(line: 1116, column: 2, scope: !2959)
!3020 = !DILocation(line: 207, column: 12, scope: !236, inlinedAt: !2977)
!3021 = !DILocation(line: 218, column: 13, scope: !236, inlinedAt: !2977)
!3022 = !DILocation(line: 221, column: 12, scope: !236, inlinedAt: !2977)
!3023 = !DILocation(line: 2553, column: 26, scope: !237, inlinedAt: !2983)
!3024 = !DILocation(line: 25, column: 14, scope: !246, inlinedAt: !2985)
!3025 = !DILocation(line: 2192, column: 50, scope: !248, inlinedAt: !2986)
!3026 = !DILocation(line: 1100, column: 12, scope: !242, inlinedAt: !2979)
!3027 = !DILocation(line: 222, column: 27, scope: !236, inlinedAt: !2977)
!3028 = !DILocation(line: 221, column: 9, scope: !236, inlinedAt: !2977)
!3029 = !DILocation(line: 0, scope: !2973, inlinedAt: !3002)
!3030 = !DILocation(line: 4498, column: 24, scope: !21, inlinedAt: !2987)
!3031 = !DILocation(line: 1756, column: 9, scope: !2988, inlinedAt: !3005)
!3032 = !DILocation(line: 3983, column: 24, scope: !249, inlinedAt: !2995)
!3033 = !DILocation(line: 378, column: 13, scope: !2959)
!3034 = !DILocation(line: 0, scope: !2962)
!3035 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<std::time::Instant>", linkageName: "_RINvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell28atomic_compare_exchange_weakNtNtCsaL1QbXo9JQH_3std4time7InstantECsbaWXNhtWAp9_11foundations", scope: !674, file: !671, line: 1165, type: !495, scopeLine: 1165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3036 = distinct !DISubprogram(name: "lock", linkageName: "_RNvNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic11atomic_cell4lock", scope: !674, file: !671, line: 1012, type: !495, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3037 = distinct !DISubprogram(name: "atomic_swap<usize>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_swapjECsbaWXNhtWAp9_11foundations", scope: !499, file: !496, line: 4011, type: !495, scopeLine: 4011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3038 = distinct !DISubprogram(name: "write", linkageName: "_RNvMNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic8seq_lockNtB2_7SeqLock5write", scope: !677, file: !675, line: 47, type: !495, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3039 = distinct !DILexicalBlock(scope: !3038, file: !675, line: 48, column: 9)
!3040 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE4swap", scope: !500, file: !496, line: 2979, type: !495, scopeLine: 2979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3041 = distinct !DILexicalBlock(scope: !3039, file: !675, line: 50, column: 13)
!3042 = distinct !DILocation(line: 61, column: 21, scope: !3041, inlinedAt: !3070)
!3043 = distinct !DILocation(line: 208, column: 22, scope: !684, inlinedAt: !3042)
!3044 = distinct !DILocation(line: 1185, column: 14, scope: !244, inlinedAt: !3043)
!3045 = distinct !DILocation(line: 1103, column: 35, scope: !243, inlinedAt: !3044)
!3046 = distinct !DILocation(line: 249, column: 28, scope: !241, inlinedAt: !3045)
!3047 = distinct !DILocation(line: 685, column: 31, scope: !240, inlinedAt: !3046)
!3048 = distinct !DILocation(line: 2637, column: 42, scope: !239, inlinedAt: !3047)
!3049 = distinct !DILocation(line: 209, column: 17, scope: !245, inlinedAt: !3042)
!3050 = distinct !DILocation(line: 287, column: 13, scope: !247, inlinedAt: !3049)
!3051 = distinct !DILocation(line: 1100, column: 12, scope: !242, inlinedAt: !3044)
!3052 = distinct !DILocation(line: 53, column: 17, scope: !3041, inlinedAt: !3070)
!3053 = distinct !DILexicalBlock(scope: !3035, file: !671, line: 1202, column: 13)
!3054 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs3_NtNtNtNtCsaL1QbXo9JQH_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !3073, file: !689, line: 25, type: !568, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3055 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsg_NtNtNtCsaL1QbXo9JQH_3std3sys4time4unixNtB5_7InstantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !3074, file: !693, line: 49, type: !495, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3056 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXsk_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !3075, file: !696, line: 153, type: !568, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3057 = distinct !DILocation(line: 1204, column: 16, scope: !3053)
!3058 = distinct !DILocation(line: 156, column: 20, scope: !3056, inlinedAt: !3057)
!3059 = distinct !DILocation(line: 49, column: 23, scope: !3055, inlinedAt: !3058)
!3060 = distinct !DISubprogram(name: "replace<std::time::Instant>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3mem7replaceNtNtCsaL1QbXo9JQH_3std4time7InstantECsbaWXNhtWAp9_11foundations", scope: !582, file: !581, line: 961, type: !495, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3061 = distinct !DILexicalBlock(scope: !3060, file: !581, line: 975, column: 9)
!3062 = distinct !DISubprogram(name: "replace<std::time::Instant>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr7replaceNtNtCsaL1QbXo9JQH_3std4time7InstantECsbaWXNhtWAp9_11foundations", scope: !559, file: !558, line: 1582, type: !495, scopeLine: 1582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3063 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj12wrapping_add", scope: !664, file: !539, line: 2681, type: !495, scopeLine: 2681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3064 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs0_NtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic8seq_lockNtB5_17SeqLockWriteGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop", scope: !3078, file: !675, line: 89, type: !495, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3065 = distinct !DISubprogram(name: "drop_glue<crossbeam_utils::atomic::seq_lock::SeqLockWriteGuard>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5lJabBKj2Vx_15crossbeam_utils6atomic8seq_lock17SeqLockWriteGuardECsbaWXNhtWAp9_11foundations", scope: !559, file: !558, line: 848, type: !495, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3066 = distinct !DILocation(line: 1212, column: 9, scope: !3035)
!3067 = distinct !DILocation(line: 848, column: 1, scope: !3065, inlinedAt: !3066)
!3068 = distinct !DILocation(line: 93, column: 31, scope: !3064, inlinedAt: !3067)
!3069 = !DILocation(line: 1202, column: 25, scope: !3035)
!3070 = !DILocation(line: 1202, column: 44, scope: !3035)
!3071 = !DILocation(line: 50, column: 39, scope: !3039, inlinedAt: !3070)
!3072 = !DILocation(line: 2981, column: 26, scope: !3040, inlinedAt: !3071)
!3073 = !DINamespace(name: "{impl#5}", scope: !692)
!3074 = !DINamespace(name: "{impl#18}", scope: !695)
!3075 = !DINamespace(name: "{impl#22}", scope: !697)
!3076 = !DILocation(line: 1205, column: 20, scope: !3053)
!3077 = !DILocation(line: 1603, column: 9, scope: !3062, inlinedAt: !3076)
!3078 = !DINamespace(name: "{impl#2}", scope: !676)
!3079 = !DILocation(line: 1202, column: 30, scope: !3035)
!3080 = !DILocation(line: 1041, column: 12, scope: !3036, inlinedAt: !3069)
!3081 = !DILocation(line: 1041, column: 5, scope: !3036, inlinedAt: !3069)
!3082 = !DILocation(line: 4016, column: 24, scope: !3037, inlinedAt: !3072)
!3083 = !DILocation(line: 52, column: 16, scope: !3041, inlinedAt: !3070)
!3084 = !DILocation(line: 207, column: 12, scope: !236, inlinedAt: !3042)
!3085 = !DILocation(line: 218, column: 13, scope: !236, inlinedAt: !3042)
!3086 = !DILocation(line: 221, column: 12, scope: !236, inlinedAt: !3042)
!3087 = !DILocation(line: 2553, column: 26, scope: !237, inlinedAt: !3048)
!3088 = !DILocation(line: 25, column: 14, scope: !246, inlinedAt: !3050)
!3089 = !DILocation(line: 2192, column: 50, scope: !248, inlinedAt: !3051)
!3090 = !DILocation(line: 1100, column: 12, scope: !242, inlinedAt: !3044)
!3091 = !DILocation(line: 222, column: 27, scope: !236, inlinedAt: !3042)
!3092 = !DILocation(line: 221, column: 9, scope: !236, inlinedAt: !3042)
!3093 = !DILocation(line: 0, scope: !3038, inlinedAt: !3070)
!3094 = !DILocation(line: 4498, column: 24, scope: !21, inlinedAt: !3052)
!3095 = !DILocation(line: 1204, column: 16, scope: !3053)
!3096 = !DILocation(line: 27, column: 5, scope: !3054, inlinedAt: !3059)
!3097 = !DILocation(line: 976, column: 49, scope: !3061, inlinedAt: !3077)
!3098 = !DILocation(line: 2682, column: 13, scope: !3063, inlinedAt: !3068)
!3099 = !DILocation(line: 1212, column: 9, scope: !3035)
!3100 = !DILocation(line: 0, scope: !3053)
!3101 = !DILocation(line: 0, scope: !3035)
!3102 = !DILocation(line: 1214, column: 2, scope: !3035)
!3103 = distinct !DISubprogram(name: "report_info<foundations::telemetry::metrics::init::RuntimeInfo, foundations::telemetry::metrics::init::RuntimeInfo>", linkageName: "_RINvNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11report_infoNtNtB2_4init11RuntimeInfoB12_EB6_", scope: !700, file: !698, line: 602, type: !495, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3104 = distinct !DILocation(line: 608, column: 9, scope: !3103)
!3105 = distinct !DILocation(line: 145, column: 20, scope: !259, inlinedAt: !3104)
!3106 = distinct !DILocation(line: 350, column: 20, scope: !258, inlinedAt: !3105)
!3107 = distinct !DILocation(line: 436, column: 35, scope: !257, inlinedAt: !3106)
!3108 = distinct !DILocation(line: 185, column: 17, scope: !255, inlinedAt: !3107)
!3109 = distinct !DILocation(line: 547, column: 19, scope: !254, inlinedAt: !3108)
!3110 = distinct !DILocation(line: 273, column: 20, scope: !253, inlinedAt: !3109)
!3111 = distinct !DILocation(line: 87, column: 31, scope: !252, inlinedAt: !3110)
!3112 = distinct !DILocation(line: 2920, column: 26, scope: !251, inlinedAt: !3111)
!3113 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !500, file: !496, line: 3183, type: !495, scopeLine: 3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3114 = distinct !DISubprogram(name: "write<parking_lot::raw_rwlock::RawRwLock, std::collections::hash::map::HashMap<core::any::TypeId, alloc::boxed::Box<dyn foundations::telemetry::metrics::internal::ErasedInfoMetric, alloc::alloc::Global>, std::hash::random::RandomState, alloc::alloc::Global>>", linkageName: "_RNvMs2_NtCs7hp7eIiX3bT_8lock_api6rwlockINtB5_6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal16ErasedInfoMetricEL_EEE5writeB3P_", scope: !714, file: !610, line: 491, type: !495, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3115 = distinct !DISubprogram(name: "lock_exclusive", linkageName: "_RNvXNtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs7hp7eIiX3bT_8lock_api6rwlock9RawRwLock14lock_exclusive", scope: !609, file: !606, line: 67, type: !495, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3116 = distinct !DILocation(line: 3190, column: 21, scope: !3113, inlinedAt: !3146)
!3117 = distinct !DISubprogram(name: "into<foundations::telemetry::metrics::init::RuntimeInfo, alloc::boxed::Box<foundations::telemetry::metrics::init::RuntimeInfo, alloc::alloc::Global>>", linkageName: "_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics4init11RuntimeInfoINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxBy_EE4intoBG_", scope: !717, file: !715, line: 779, type: !568, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3118 = distinct !DILocation(line: 610, column: 25, scope: !3103)
!3119 = distinct !DILocation(line: 611, column: 10, scope: !3103)
!3120 = distinct !DILocation(line: 848, column: 1, scope: !262, inlinedAt: !3119)
!3121 = distinct !DILocation(line: 1832, column: 29, scope: !261, inlinedAt: !3120)
!3122 = distinct !DILocation(line: 98, column: 14, scope: !103, inlinedAt: !3121)
!3123 = distinct !DILocation(line: 3123, column: 26, scope: !102, inlinedAt: !3122)
!3124 = distinct !DISubprogram(name: "insert<core::any::TypeId, alloc::boxed::Box<dyn foundations::telemetry::metrics::internal::ErasedInfoMetric, alloc::alloc::Global>, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB5_7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal16ErasedInfoMetricEL_EE6insertB2j_", scope: !722, file: !718, line: 1332, type: !495, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!3125 = distinct !DILocation(line: 611, column: 10, scope: !3103)
!3126 = distinct !DILocation(line: 848, column: 1, scope: !263, inlinedAt: !3125)
!3127 = distinct !DILocation(line: 848, column: 1, scope: !264, inlinedAt: !3126)
!3128 = distinct !DILocation(line: 1993, column: 26, scope: !268, inlinedAt: !3127)
!3129 = distinct !DILocation(line: 261, column: 43, scope: !266, inlinedAt: !3128)
!3130 = distinct !DILocation(line: 261, column: 70, scope: !266, inlinedAt: !3128)
!3131 = distinct !DILocation(line: 159, column: 30, scope: !271, inlinedAt: !3130)
!3132 = distinct !DILocation(line: 1995, column: 24, scope: !269, inlinedAt: !3127)
!3133 = distinct !DILocation(line: 554, column: 23, scope: !78, inlinedAt: !3132)
!3134 = distinct !DILocation(line: 436, column: 9, scope: !77, inlinedAt: !3133)
!3135 = distinct !DILocation(line: 321, column: 22, scope: !76, inlinedAt: !3134)
!3136 = distinct !DILocation(line: 175, column: 14, scope: !75, inlinedAt: !3135)
!3137 = distinct !DILocation(line: 142, column: 39, scope: !74, inlinedAt: !3136)
!3138 = distinct !DILocation(line: 123, column: 21, scope: !73, inlinedAt: !3137)
!3139 = distinct !DILocation(line: 611, column: 10, scope: !3103)
!3140 = distinct !DILocation(line: 848, column: 1, scope: !262, inlinedAt: !3139)
!3141 = distinct !DILocation(line: 1832, column: 29, scope: !261, inlinedAt: !3140)
!3142 = distinct !DILocation(line: 98, column: 14, scope: !103, inlinedAt: !3141)
!3143 = distinct !DILocation(line: 3123, column: 26, scope: !102, inlinedAt: !3142)
!3144 = !DILocation(line: 608, column: 32, scope: !3103)
!3145 = !DILocation(line: 492, column: 18, scope: !3114, inlinedAt: !3144)
!3146 = !DILocation(line: 70, column: 14, scope: !3115, inlinedAt: !3145)
!3147 = !DILocation(line: 608, column: 40, scope: !3103)
!3148 = !DILocation(line: 3999, column: 24, scope: !250, inlinedAt: !3112)
!3149 = !DILocation(line: 87, column: 9, scope: !252, inlinedAt: !3110)
!3150 = !DILocation(line: 185, column: 12, scope: !255, inlinedAt: !3107)
!3151 = !DILocation(line: 439, column: 14, scope: !256, inlinedAt: !3106)
!3152 = !DILocation(line: 443, column: 5, scope: !256, inlinedAt: !3106)
!3153 = !DILocation(line: 4153, column: 17, scope: !260, inlinedAt: !3116)
!3154 = !DILocation(line: 0, scope: !260, inlinedAt: !3116)
end_hunk_1
