Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/distribution_test_util?download=true
inline.NumInlined: 84
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd:bb.a
  %5 = alloca [7 x %"class.std::basic_string_view"], align 8 ; 17 uses
  %6 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 5 uses
  %i.a = fsub double %3, %2
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 2 uses
  %i.c = fcmp olt double %i.b, %4                 ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.e = call noundef i64 @_ZN4absl12lts_2026052616numbers_internal17SixDigitsToBufferEdPc(double noundef %2, ptr noundef nonnull %i.d)
  store i64 %i.e, ptr %8, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.h = call noundef i64 @_ZN4absl12lts_2026052616numbers_internal17SixDigitsToBufferEdPc(double noundef %3, ptr noundef nonnull %i.g) ; 2 uses
  store i64 %i.h, ptr %9, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !34
  %i.j = fdiv double %i.b, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !35
  store i64 %0, ptr %5, align 8, !noalias !35
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.k, align 8, !noalias !35
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 8, ptr %i.l, align 8, !noalias !35
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.1, ptr %i.m, align 8, !noalias !35
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.0.0.copyload.i12.i = load i64, ptr %8, align 8, !tbaa !36, !noalias !35
  %.sroa.2.0.copyload.i14.i = load ptr, ptr %i.f, align 8, !tbaa !37, !noalias !35
  store i64 %.sroa.0.0.copyload.i12.i, ptr %i.n, align 8, !noalias !35
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.sroa.2.0.copyload.i14.i, ptr %i.o, align 8, !noalias !35
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 10, ptr %i.p, align 8, !noalias !35
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @.str.2, ptr %i.q, align 8, !noalias !35
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.h, ptr %i.r, align 8, !noalias !35
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.g, ptr %i.s, align 8, !noalias !35
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 5, ptr %i.t, align 8, !noalias !35
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr @.str.3, ptr %i.u, align 8, !noalias !35
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !35
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.x = call noundef i64 @_ZN4absl12lts_2026052616numbers_internal17SixDigitsToBufferEdPc(double noundef %i.j, ptr noundef nonnull %i.w), !noalias !35 ; 2 uses
  store i64 %i.x, ptr %6, align 8, !tbaa !33, !noalias !35
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !34, !noalias !35
  store i64 %i.x, ptr %i.v, align 8, !noalias !35
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.w, ptr %i.z, align 8, !noalias !35
  call void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull %5, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.aa = load ptr, ptr %7, align 8, !tbaa !19
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 44), i32 noundef 95, ptr noundef nonnull @.str.5, ptr noundef %i.aa)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %i.ag

bb.e:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN4absl12lts_2026052615random_internal4betaEdd(double noundef %0, double noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call double @lgamma(double noundef %0) #13
  %i.b = tail call double @lgamma(double noundef %1) #13
  %i.c = fadd double %i.a, %i.b
  %i.d = fadd double %0, %1
  %i.e = tail call double @lgamma(double noundef %i.d) #13
  %i.f = fsub double %i.c, %i.e
  %i.g = tail call double @exp(double noundef %i.f) #13
  ret double %i.g
}

; Function Attrs: nounwind
declare double @lgamma(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN4absl12lts_2026052615random_internal14BetaIncompleteEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fcmp olt double %2, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  %i.c = fcmp olt double %0, 0.000000e+00
  %or.cond3 = or i1 %i.c, %or.cond
  %i.d = fcmp ogt double %0, 1.000000e+00
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %0, 0.000000e+00
  %i.f = fcmp oeq double %0, 1.000000e+00
  %or.cond7 = or i1 %i.e, %i.f
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @lgamma(double noundef %1) #13
  %i.h = tail call double @lgamma(double noundef %2) #13
  %i.i = fadd double %i.g, %i.h
  %i.j = fadd double %1, %2
  %i.k = tail call double @lgamma(double noundef %i.j) #13
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call fastcc noundef double @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %0, %bb.b ], [ %i.m, %bb.c ], [ +inf, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = fadd double %1, %2                       ; 3 uses
  %i.b = fmul double %0, %i.a
  %i.c = fcmp olt double %1, %i.b
  %i.d = fsub double 1.000000e+00, %0             ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

common.ret73:                                     ; preds = %bb.b, %._crit_edge
  %common.ret73.op = phi double [ %i.z, %._crit_edge ], [ %i.f, %bb.b ]
  ret double %common.ret73.op

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef double @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %i.d, double noundef %2, double noundef %1, double noundef %3)
  %i.f = fsub double 1.000000e+00, %i.e
  br label %common.ret73

bb.c:                                             ; preds = %bb.a
  %i.g = tail call double @log(double noundef %0) #13
  %i.h = fadd double %2, -1.000000e+00            ; 2 uses
  %i.i = tail call double @log(double noundef %i.d) #13
  %i.j = fmul double %i.h, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %1, double %i.g, double %i.j)
  %i.l = fsub double %i.k, %3
  %i.m = tail call double @exp(double noundef %i.l) #13
  %i.n = tail call double @llvm.fmuladd.f64(double %i.d, double %i.a, double %2)
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %4 = insertelement <2 x double> poison, double %i.m, i64 0
  %5 = insertelement <2 x double> %4, double %0, i64 1
  %6 = insertelement <2 x double> poison, double %1, i64 0
  %7 = insertelement <2 x double> %6, double %i.d, i64 1
  %8 = fdiv <2 x double> %5, %7                   ; 2 uses
  %9 = extractelement <2 x double> %8, i64 1
  %i.q = select i1 %i.p, double %0, double %9     ; 2 uses
  %i.r = fmul double %i.q, %i.h
  %i.s = fadd double %1, 1.000000e+00
  %i.t = fdiv double %i.r, %i.s                   ; 3 uses
  %i.u = fadd double %i.t, 1.000000e+00           ; 3 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.t) ; 2 uses
  %i.w = fcmp olt double %i.v, f0x3D06849B86A12B9B
  %i.x = fmul double %i.u, f0x3D06849B86A12B9B
  %i.y = fcmp olt double %i.v, %i.x
  %or.cond62 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.lcssa = phi double [ %i.u, %bb.c ], [ %i.am, %bb.g ]
  %10 = extractelement <2 x double> %8, i64 0
  %i.z = fmul double %10, %.lcssa
  br label %common.ret73

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %i.aa = phi double [ %i.am, %bb.g ], [ %i.u, %bb.c ]
  %i.ab = phi double [ %i.al, %bb.g ], [ %i.t, %bb.c ]
  %.04866 = phi double [ %.149, %bb.g ], [ %i.q, %bb.c ] ; 2 uses
  %.05065 = phi i32 [ %i.ad, %bb.g ], [ %i.o, %bb.c ] ; 2 uses
  %.05264 = phi double [ %i.ac, %bb.g ], [ 1.000000e+00, %bb.c ]
  %.05463 = phi double [ %.155, %bb.g ], [ %i.a, %bb.c ] ; 4 uses
  %i.ac = fadd double %.05264, 1.000000e+00       ; 3 uses
  %i.ad = add nsw i32 %.05065, -1                 ; 2 uses
  %i.ae = icmp sgt i32 %.05065, 0
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.af = fsub double %2, %i.ac                   ; 2 uses
  %i.ag = icmp eq i32 %i.ad, 0
  br i1 %i.ag, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ah = fadd double %.05463, 1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.155 = phi double [ %.05463, %bb.e ], [ %.05463, %bb.d ], [ %i.ah, %bb.f ]
  %.149 = phi double [ %0, %bb.e ], [ %.04866, %bb.d ], [ %.04866, %bb.f ] ; 2 uses
  %.1 = phi double [ %i.af, %bb.e ], [ %i.af, %bb.d ], [ %.05463, %bb.f ]
  %i.ai = fmul double %i.ab, %.1
  %i.aj = fmul double %.149, %i.ai
  %i.ak = fadd double %1, %i.ac
  %i.al = fdiv double %i.aj, %i.ak                ; 3 uses
  %i.am = fadd double %i.aa, %i.al                ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.ao = fcmp olt double %i.an, f0x3D06849B86A12B9B
  %i.ap = fmul double %i.am, f0x3D06849B86A12B9B
  %i.aq = fcmp olt double %i.an, %i.ap
  %or.cond = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !38
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN4absl12lts_2026052615random_internal17BetaIncompleteInvEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  %i.b = fcmp olt double %1, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  %i.c = fcmp olt double %2, 0.000000e+00
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = fcmp ogt double %2, 1.000000e+00
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %2, 0.000000e+00
  %i.f = fcmp oeq double %2, 1.000000e+00
  %or.cond7 = or i1 %i.e, %i.f
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @lgamma(double noundef %0) #13
  %i.h = tail call double @lgamma(double noundef %1) #13
  %i.i = fadd double %i.g, %i.h
  %i.j = fadd double %0, %1
  %i.k = tail call double @lgamma(double noundef %i.j) #13
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call fastcc noundef double @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %0, double noundef %1, double noundef %i.l, double noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %2, %bb.b ], [ %i.m, %bb.c ], [ +inf, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = fcmp olt double %3, 5.000000e-01
  br i1 %i.a, label %bb.b, label %bb.c

common.ret196:                                    ; preds = %bb.j, %bb.n, %.loopexit, %bb.k, %bb.l, %bb.b
  %common.ret196.op = phi double [ %i.d, %bb.b ], [ %.1162, %bb.n ], [ +inf, %bb.j ], [ %i.cg, %bb.k ], [ %.1162, %bb.l ], [ +inf, %.loopexit ]
  ret double %common.ret196.op

bb.b:                                             ; preds = %bb.a
  %i.b = fsub double 1.000000e+00, %3
  %i.c = tail call fastcc noundef double @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %1, double noundef %0, double noundef %2, double noundef %i.b)
  %i.d = fsub double 1.000000e+00, %i.c
  br label %common.ret196

bb.c:                                             ; preds = %bb.a
  %i.e = fmul double %3, %3
  %i.f = tail call double @log(double noundef %i.e) #13
  %i.g = fneg double %i.f
  %i.h = tail call double @sqrt(double noundef %i.g) #13 ; 4 uses
  %i.i = tail call double @llvm.fma.f64(double %i.h, double 2.706100e-01, double 2.307530e+00)
  %i.j = tail call double @llvm.fma.f64(double %i.h, double 4.481000e-02, double 9.922900e-01)
  %i.k = tail call double @llvm.fma.f64(double %i.h, double %i.j, double 1.000000e+00)
  %i.l = fdiv double %i.i, %i.k
  %i.m = fsub double %i.h, %i.l                   ; 4 uses
  %i.n = fcmp ogt double %0, 1.000000e+00
  %i.o = fcmp ogt double %1, 1.000000e+00
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = insertelement <2 x double> poison, double %1, i64 0
  %i.q = insertelement <2 x double> %i.p, double %0, i64 1 ; 2 uses
  %i.r = fadd <2 x double> %i.q, %i.q
  %i.s = fadd <2 x double> %i.r, splat (double -1.000000e+00)
  %i.t = fdiv <2 x double> splat (double 1.000000e+00), %i.s ; 5 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double -3.000000e+00)
  %i.v = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.t, double 6.000000e+00, i64 0
  %i.x = fdiv <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = shufflevector <2 x double> <double f0x3FEAAAAAAAAAAAAB, double poison>, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.z = fadd <2 x double> %i.x, %i.y             ; 4 uses
  %shift = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.x
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ab = tail call double @sqrt(double noundef %i.aa) #13
  %i.ac = fmul double %i.m, %i.ab
  %i.ad = fmul <2 x double> %i.z, <double poison, double 3.000000e+00>
  %i.ae = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.af = insertelement <2 x double> %i.ae, double %i.ac, i64 0
  %i.ag = shufflevector <2 x double> %i.z, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ah = fdiv <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = shufflevector <2 x double> %i.t, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x double> %i.t, <2 x double> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.ak = fsub <2 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = fneg double %i.al
  %i.an = extractelement <2 x double> %i.ah, i64 0
  %i.ao = extractelement <2 x double> %i.ak, i64 1
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ao, double %i.an)
  %i.aq = fmul double %i.ap, 2.000000e+00
  %i.ar = tail call double @exp(double noundef %i.aq) #13
  %i.as = tail call double @llvm.fmuladd.f64(double %1, double %i.ar, double %0)
  %i.at = fdiv double %0, %i.as
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.au = fadd double %1, %1                      ; 2 uses
  %i.av = fmul double %1, 9.000000e+00
  %i.aw = fdiv double 1.000000e+00, %i.av         ; 2 uses
  %i.ax = fsub double 1.000000e+00, %i.aw
  %i.ay = tail call double @sqrt(double noundef %i.aw) #13
  %i.az = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ay, double %i.ax) ; 3 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fmul double %i.az, %i.ba
  %i.bc = fmul double %i.au, %i.bb                ; 2 uses
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = fsub double 1.000000e+00, %3
  %i.bf = fmul double %1, %i.be
  %i.bg = tail call double @log(double noundef %i.bf) #13
  %i.bh = fadd double %2, %i.bg
  %i.bi = fdiv double %i.bh, %1
  %i.bj = tail call double @exp(double noundef %i.bi) #13
  %i.bk = fsub double 1.000000e+00, %i.bj
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bl = tail call double @llvm.fmuladd.f64(double %0, double 4.000000e+00, double %i.au)
  %i.bm = fadd double %i.bl, -2.000000e+00
  %i.bn = fdiv double %i.bm, %i.bc                ; 2 uses
  %i.bo = fcmp ugt double %i.bn, 1.000000e+00
  br i1 %i.bo, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = fmul double %0, %3
  %i.bq = tail call double @log(double noundef %i.bp) #13
  %i.br = fadd double %2, %i.bq
  %i.bs = fdiv double %i.br, %0
  %i.bt = tail call double @exp(double noundef %i.bs) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bu = fadd double %i.bn, 1.000000e+00
  %i.bv = fdiv double 2.000000e+00, %i.bu
  %i.bw = fsub double 1.000000e+00, %i.bv
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.0144 = phi double [ %i.at, %bb.d ], [ %i.bw, %bb.i ], [ %i.bt, %bb.h ], [ %i.bk, %bb.f ] ; 2 uses
  %i.bx = fcmp olt double %.0144, f0x3D06849B86A12B9B
  %.sroa.speculated141 = select i1 %i.bx, double f0x3D06849B86A12B9B, double %.0144 ; 2 uses
  %i.by = fcmp ogt double %.sroa.speculated141, f0x3FEFFFFFFFFFFFA6
  %.sroa.speculated132 = select i1 %i.by, double f0x3FEFFFFFFFFFFFA6, double %.sroa.speculated141 ; 3 uses
  %i.bz = fsub double 1.000000e+00, %0
  %i.ca = fsub double 1.000000e+00, %1
  %i.cb = fcmp olt double %.sroa.speculated132, 0.000000e+00
  %i.cc = fcmp ogt double %.sroa.speculated132, 1.000000e+00
  %or.cond3161 = or i1 %i.cb, %i.cc
  br i1 %or.cond3161, label %common.ret196, label %.lr.ph

end_hunk_0
