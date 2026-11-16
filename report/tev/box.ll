Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/box?download=true
inline.NumInlined: 11465
inline.NumDeleted: 5743
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL28get_signed_fixed_point_shiftd:bb.a
bb.w:                                             ; preds = %bb.v
  %i.ar = fmul nnan double %i.ap, 2.000000e+00    ; 2 uses
  %i.as = fcmp olt double %i.ar, f0x41D0000000000000
  br i1 %i.as, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.at = fmul nnan double %i.ar, 2.000000e+00    ; 2 uses
  %i.au = fcmp olt double %i.at, f0x41D0000000000000
  br i1 %i.au, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.av = fmul nnan double %i.at, 2.000000e+00    ; 2 uses
  %i.aw = fcmp olt double %i.av, f0x41D0000000000000
  br i1 %i.aw, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ax = fmul nnan double %i.av, 2.000000e+00    ; 2 uses
  %i.ay = fcmp olt double %i.ax, f0x41D0000000000000
  br i1 %i.ay, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.az = fmul nnan double %i.ax, 2.000000e+00    ; 2 uses
  %i.ba = fcmp olt double %i.az, f0x41D0000000000000
  br i1 %i.ba, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.bb = fmul nnan double %i.az, 2.000000e+00    ; 2 uses
  %i.bc = fcmp olt double %i.bb, f0x41D0000000000000
  br i1 %i.bc, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.bd = fmul nnan double %i.bb, 2.000000e+00    ; 2 uses
  %i.be = fcmp olt double %i.bd, f0x41D0000000000000
  br i1 %i.be, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.bf = fmul nnan double %i.bd, 2.000000e+00    ; 2 uses
  %i.bg = fcmp olt double %i.bf, f0x41D0000000000000
  br i1 %i.bg, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.bh = fmul nnan double %i.bf, 2.000000e+00    ; 2 uses
  %i.bi = fcmp olt double %i.bh, f0x41D0000000000000
  br i1 %i.bi, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.bj = fmul nnan double %i.bh, 2.000000e+00
  %i.bk = fcmp olt double %i.bj, f0x41D0000000000000
  %spec.select = select i1 %i.bk, i32 31, i32 30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.a
  %.1 = phi i32 [ 31, %bb.a ], [ 23, %bb.y ], [ 0, %bb.b ], [ 1, %bb.c ], [ %spec.select, %bb.af ], [ 2, %bb.d ], [ 16, %bb.r ], [ 3, %bb.e ], [ 29, %bb.ae ], [ 4, %bb.f ], [ 21, %bb.w ], [ 5, %bb.g ], [ 28, %bb.ad ], [ 6, %bb.h ], [ 17, %bb.s ], [ 7, %bb.i ], [ 27, %bb.ac ], [ 8, %bb.j ], [ 22, %bb.x ], [ 9, %bb.k ], [ 26, %bb.ab ], [ 10, %bb.l ], [ 18, %bb.t ], [ 11, %bb.m ], [ 25, %bb.aa ], [ 12, %bb.n ], [ 20, %bb.v ], [ 13, %bb.o ], [ 24, %bb.z ], [ 14, %bb.p ], [ 19, %bb.u ], [ 15, %bb.q ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8Box_cmin5writeER12StreamWriter(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.Error, align 8               ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !607
  %i.g = shl nuw i32 1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = load double, ptr %i.h, align 8, !tbaa !604
  %i.j = uitofp i32 %i.g to double                ; 4 uses
  %i.k = fmul double %i.i, %i.j
  %i.l = fptosi double %i.k to i32
  tail call void @_ZN12StreamWriter8write32sEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.n = load double, ptr %i.m, align 8, !tbaa !601
  %i.o = fmul double %i.n, %i.j
  %i.p = fptosi double %i.o to i32
  tail call void @_ZN12StreamWriter8write32sEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.r = load double, ptr %i.q, align 8, !tbaa !602
  %i.s = fmul double %i.r, %i.j
  %i.t = fptosi double %i.s to i32
  tail call void @_ZN12StreamWriter8write32sEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !90
  %i.w = and i32 %i.v, 1
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.y = load double, ptr %i.x, align 8, !tbaa !605
  %i.z = fmul double %i.y, %i.j
  %i.aa = fptosi double %i.z to i32
  tail call void @_ZN12StreamWriter8write32sEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !608
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.af = load double, ptr %i.ae, align 8, !tbaa !606
  %i.ag = uitofp i32 %i.ad to double
  %i.ah = fmul double %i.af, %i.ag
  %i.ai = fptosi double %i.ah to i32
  tail call void @_ZN12StreamWriter8write32sEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.ai)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38, !noalias !2515
  %i.al = load ptr, ptr %2, align 8, !tbaa !37, !noalias !2515
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = add i64 %i.d, %i.an
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 %i.d, ptr %i.aq, align 8, !tbaa !77, !noalias !2515
  %i.ar = load ptr, ptr %1, align 8, !tbaa !27, !noalias !2515
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !noalias !2515
  call void %i.at(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %3, ptr noundef nonnull align 8 dereferenceable(153) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ap, i1 noundef zeroext false), !inline_history !465
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !38, !noalias !2515
  %i.av = load ptr, ptr %2, align 8, !tbaa !37, !noalias !2515
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !77, !noalias !2515
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.d, label %_ZN5ErrorD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %i.be = load i64, ptr %i.az, align 8
  %i.bf = and i64 %i.be, -2
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bf) #39
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.c, %bb.d
  %i.bg = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.bg, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5ErrorD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !75
  br label %_ZN5ErrorC2ERKS_.exit

bb.f:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !40
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !40
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef %i.bk, i64 noundef %i.bl)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK8Box_cmex15ExtrinsicMatrix25calculate_rotation_matrixEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array.188") align 8 captures(none) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1) local_unnamed_addr #22 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !296, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <2 x double>, ptr %i.d, align 8, !tbaa !595 ; 10 uses
  %i.h = shufflevector <2 x double> %i.g, <2 x double> <double -2.000000e+00, double poison>, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !595 ; 7 uses
  %foldExtExtBinop = fmul <2 x double> %i.g, %i.i ; 2 uses
  %i.j = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.k = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.l = shufflevector <2 x double> %i.i, <2 x double> %i.g, <2 x i32> <i32 1, i32 2>
  %i.m = fmul <2 x double> %i.l, %i.i             ; 3 uses
  %i.n = fneg <2 x double> %i.m                   ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, <4 x double> %i.o, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.q = shufflevector <2 x double> %i.m, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <4 x double> %i.p, <4 x double> %i.q, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.s = shufflevector <4 x double> %i.r, <4 x double> %i.j, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.t = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.u = fneg double %i.k
  %i.v = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> %i.m, double %i.u, i64 0
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.v, <2 x double> %i.w)
  %i.y = fmul <2 x double> %i.x, splat (double 2.000000e+00)
  %i.z = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z            ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.g, <2 x double> %i.aa) ; 2 uses
  %i.ac = shufflevector <2 x double> %i.g, <2 x double> %i.ab, <4 x i32> <i32 3, i32 1, i32 poison, i32 1>
  %i.ad = shufflevector <2 x double> %i.i, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x double> %i.ac, <4 x double> %i.ad, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.af = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.h, <4 x double> %i.ae, <4 x double> %i.s) ; 2 uses
  %i.ag = fmul <4 x double> %i.af, <double poison, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00>
  %2 = shufflevector <4 x double> %i.af, <4 x double> %i.ag, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x double> %2, ptr %0, align 8, !tbaa !595
  %i.ah = shufflevector <2 x double> %i.aa, <2 x double> %i.n, <2 x i32> <i32 1, i32 3>
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.t, <2 x double> %i.ah)
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> <double 1.000000e+00, double -0.000000e+00>)
  store <2 x double> %i.aj, ptr %i.f, align 8, !tbaa !595
  %i.ak = extractelement <2 x double> %i.ab, i64 0
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double -2.000000e+00, double 1.000000e+00)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load <2 x double>, ptr %i.am, align 8, !tbaa !595
  %i.ao = fmul <2 x double> %i.an, splat (double f0x3F91DF46A2529D39) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !610
  %i.ar = fmul double %i.aq, f0x3F91DF46A2529D39  ; 2 uses
  %i.as = extractelement <2 x double> %i.ao, i64 1 ; 2 uses
  %i.at = tail call double @cos(double noundef %i.as) #40 ; 3 uses
  %i.au = tail call double @sin(double noundef %i.as) #40 ; 3 uses
  %i.av = fmul double %i.at, 0.000000e+00
  %i.aw = fmul double %i.au, -0.000000e+00
  %i.ax = extractelement <2 x double> %i.ao, i64 0 ; 2 uses
  %i.ay = tail call double @cos(double noundef %i.ax) #40 ; 3 uses
  %i.az = tail call double @sin(double noundef %i.ax) #40 ; 4 uses
  %i.ba = fneg double %i.az                       ; 2 uses
  %i.bb = fadd double %i.ay, 0.000000e+00
  %i.bc = fsub double 0.000000e+00, %i.az
  %i.bd = insertelement <2 x double> poison, double %i.ay, i64 0 ; 3 uses
  %i.be = insertelement <2 x double> %i.bd, double %i.ba, i64 1
  %i.bf = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> zeroinitializer, <2 x double> %i.bg) ; 2 uses
  %i.bi = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.at, i64 0 ; 3 uses
  %i.bj = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.au, i64 1 ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bl, <2 x double> %i.bn) ; 3 uses
  %i.bp = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x double> %i.bh, double %i.bc, i64 0
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bl, <2 x double> %i.bq) ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = tail call double @cos(double noundef %i.ar) #40 ; 2 uses
  %i.bt = tail call double @sin(double noundef %i.ar) #40 ; 3 uses
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0 ; 2 uses
  %i.bw = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.bu, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.bs, i64 0 ; 2 uses
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bu, i64 0
  %i.ca = insertelement <2 x double> %i.bx, double %i.bt, i64 1
  %i.cb = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.au, i64 1 ; 2 uses
  %i.cd = fsub <2 x double> %i.bi, %i.cc
  %i.ce = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.ay, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> zeroinitializer, <2 x double> %i.ch) ; 2 uses
  %i.cj = shufflevector <2 x double> %i.cc, <2 x double> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> zeroinitializer, <2 x double> %i.cd) ; 5 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = fmul double %i.cl, 0.000000e+00
  %i.cn = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cm, i64 1
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> zeroinitializer, <2 x double> %i.cn)
  %i.cp = fadd <2 x double> %i.br, %i.co
  %i.cq = extractelement <2 x double> %i.ci, i64 1
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.az, double %i.at, double %i.cq) ; 3 uses
  %i.cs = extractelement <2 x double> %i.ck, i64 1
  %i.ct = fmul double %i.cs, 0.000000e+00
  %i.cu = insertelement <2 x double> %i.bd, double %i.cr, i64 1
  %i.cv = insertelement <2 x double> %i.ci, double %i.ct, i64 1
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.bi, <2 x double> %i.cv) ; 3 uses
  %i.cx = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cw)
  %i.cy = shufflevector <2 x double> %i.bv, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cz = fmul <2 x double> %i.cy, %i.bw
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.bo, <2 x double> %i.cz)
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> zeroinitializer, <2 x double> %i.da)
  %i.dc = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x double> %i.dc, double %i.bs, i64 1
  %i.de = fmul <2 x double> %i.dd, %i.bz
  %i.df = insertelement <2 x double> %i.cb, double %i.cr, i64 0
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.df, <2 x double> %i.de)
  %i.dh = shufflevector <2 x double> %i.cw, <2 x double> %i.br, <2 x i32> <i32 0, i32 2>
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> zeroinitializer, <2 x double> %i.dg)
  %i.dj = fmul <2 x double> %i.ck, %i.by
  %i.dk = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x double> %i.cb, double %i.cr, i64 1
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dl, <2 x double> %i.dj)
  %i.dn = shufflevector <2 x double> %i.br, <2 x double> %i.cw, <2 x i32> <i32 1, i32 2>
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> zeroinitializer, <2 x double> %i.dm)
  store <2 x double> %i.db, ptr %0, align 8
  store <2 x double> %i.di, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x double> %i.do, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi double [ %i.al, %bb.b ], [ %i.cx, %bb.c ]
  %i.dp = phi <2 x double> [ %i.y, %bb.b ], [ %i.cp, %bb.c ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sink, ptr %i.dr, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8Box_cmex5parseER14BitstreamRangePK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(245) initializes((153, 154), (156, 160)) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr nofree readnone captures(none) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.Error, align 8               ; 3 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef i32 @_ZN14BitstreamRange6read32Ev(ptr noundef nonnull align 8 dereferenceable(41) %2), !noalias !2518 ; 2 uses
  %i.b = lshr i32 %i.a, 24
  %i.c = trunc nuw i32 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 153 ; 3 uses
  store i8 %i.c, ptr %i.d, align 1, !tbaa !89, !noalias !2518
  %i.e = and i32 %i.a, 16777215
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 6 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !90, !noalias !2518
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63, !noalias !2518
  %i.i = add i32 %i.h, 4
  store i32 %i.i, ptr %i.g, align 8, !tbaa !63, !noalias !2518
  call void @_ZNK14BitstreamRange9get_errorEv(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %4, ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN5ErrorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = load i64, ptr %i.j, align 8
  %i.p = and i64 %i.o, -2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #39
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.a, %bb.b
  %i.q = load i8, ptr %i.d, align 1, !tbaa !89
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5ErrorD2Ev.exit
  call void @_ZNK7FullBox25unsupported_version_errorEPKc(ptr dead_on_unwind writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull @.str.213)
  br label %bb.y

bb.d:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 2 uses
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 2 uses
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !609
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 173
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !609
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817.0..sroa_idx, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !595
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.12.0..sroa_idx, i8 0, i64 28, i1 false)
  %i.s = load i32, ptr %i.f, align 4, !tbaa !90   ; 2 uses
  %i.t = and i32 %i.s, 1
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i8 1, ptr %i.u, align 8, !tbaa !612
  %i.v = call noundef i32 @_ZN14BitstreamRange7read32sEv(ptr noundef nonnull align 8 dereferenceable(41) %2)
  store i32 %i.v, ptr %i.r, align 8, !tbaa !613
  %.pre = load i32, ptr %i.f, align 4, !tbaa !90
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.x = and i32 %i.w, 2
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 241
  store i8 1, ptr %i.y, align 1, !tbaa !614
  %i.z = call noundef i32 @_ZN14BitstreamRange7read32sEv(ptr noundef nonnull align 8 dereferenceable(41) %2)
end_hunk_0
