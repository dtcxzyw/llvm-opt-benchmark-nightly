inline.NumInlined: 84
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2025051215random_internal6erfinvEd:bb.a
; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051215random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 %0, ptr %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [7 x %"class.std::basic_string_view"], align 8 ; 17 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.a = fsub double %3, %2
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 2 uses
  %i.c = fcmp olt double %i.b, %4                 ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.e = call noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef %2, ptr noundef nonnull %i.d)
  store i64 %i.e, ptr %8, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.h = call noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef %3, ptr noundef nonnull %i.g) ; 2 uses
  store i64 %i.h, ptr %9, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !29
  %i.j = fdiv double %i.b, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !30
  store i64 %0, ptr %5, align 8, !noalias !30
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.k, align 8, !noalias !30
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 8, ptr %i.l, align 8, !noalias !30
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.1, ptr %i.m, align 8, !noalias !30
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.0.0.copyload.i12.i = load i64, ptr %8, align 8, !tbaa !33, !noalias !30
  %.sroa.2.0.copyload.i14.i = load ptr, ptr %i.f, align 8, !tbaa !34, !noalias !30
  store i64 %.sroa.0.0.copyload.i12.i, ptr %i.n, align 8, !noalias !30
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.sroa.2.0.copyload.i14.i, ptr %i.o, align 8, !noalias !30
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 10, ptr %i.p, align 8, !noalias !30
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @.str.2, ptr %i.q, align 8, !noalias !30
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.h, ptr %i.r, align 8, !noalias !30
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.g, ptr %i.s, align 8, !noalias !30
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 5, ptr %i.t, align 8, !noalias !30
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr @.str.3, ptr %i.u, align 8, !noalias !30
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !30
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.x = call noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef %i.j, ptr noundef nonnull %i.w), !noalias !30 ; 2 uses
  store i64 %i.x, ptr %6, align 8, !tbaa !27, !noalias !30
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !29, !noalias !30
  store i64 %i.x, ptr %i.v, align 8, !noalias !30
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.w, ptr %i.z, align 8, !noalias !30
  call void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull %5, i64 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.aa = load ptr, ptr %7, align 8, !tbaa !22
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.4, i64 76), i32 noundef 95, ptr noundef nonnull @.str.5, ptr noundef %i.aa)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !18
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

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal4betaEdd(double noundef %0, double noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call double @lgamma(double noundef %0) #13
  %i.b = tail call double @lgamma(double noundef %1) #13
  %i.c = fadd double %i.a, %i.b
  %i.d = fadd double %0, %1
  %i.e = tail call double @lgamma(double noundef %i.d) #13
  %i.f = fsub double %i.c, %i.e
  %i.g = tail call double @exp(double noundef %i.f) #13, !tbaa !3
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
define noundef double @_ZN4absl12lts_2025051215random_internal14BetaIncompleteEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
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
  %i.m = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %0, %bb.b ], [ %i.m, %bb.c ], [ +inf, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #9 {
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
  %i.e = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %i.d, double noundef %2, double noundef %1, double noundef %3)
  %i.f = fsub double 1.000000e+00, %i.e
  br label %common.ret73

bb.c:                                             ; preds = %bb.a
  %i.g = tail call double @log(double noundef %0) #13, !tbaa !3
  %i.h = fadd double %2, -1.000000e+00            ; 2 uses
  %i.i = tail call double @log(double noundef %i.d) #13, !tbaa !3
  %i.j = fmul double %i.h, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %1, double %i.g, double %i.j)
  %i.l = fsub double %i.k, %3
  %i.m = tail call double @exp(double noundef %i.l) #13, !tbaa !3
  %4 = fdiv double %i.m, %1
  %i.n = tail call double @llvm.fmuladd.f64(double %i.d, double %i.a, double %2)
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %5 = fdiv double %0, %i.d
  %i.q = select i1 %i.p, double %0, double %5     ; 2 uses
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
  %i.z = fmul double %4, %.lcssa
  br label %common.ret73

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %i.aa = phi double [ %i.am, %bb.g ], [ %i.u, %bb.c ]
  %i.ab = phi double [ %i.al, %bb.g ], [ %i.t, %bb.c ]
  %.04866 = phi double [ %.149, %bb.g ], [ %i.q, %bb.c ] ; 2 uses
  %.05065 = phi i32 [ %i.ad, %bb.g ], [ %i.o, %bb.c ] ; 2 uses
  %.05264 = phi double [ %i.ac, %bb.g ], [ 1.000000e+00, %bb.c ]
  %.05563 = phi double [ %.156, %bb.g ], [ %i.a, %bb.c ] ; 4 uses
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
  %i.ah = fadd double %.05563, 1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.156 = phi double [ %.05563, %bb.e ], [ %.05563, %bb.d ], [ %i.ah, %bb.f ]
  %.149 = phi double [ %0, %bb.e ], [ %.04866, %bb.d ], [ %.04866, %bb.f ] ; 2 uses
  %.1 = phi double [ %i.af, %bb.e ], [ %i.af, %bb.d ], [ %.05563, %bb.f ]
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
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !35
}

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal17BetaIncompleteInvEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
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
  %i.m = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %0, double noundef %1, double noundef %i.l, double noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %2, %bb.b ], [ %i.m, %bb.c ], [ +inf, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = fcmp olt double %3, 5.000000e-01
  br i1 %i.a, label %bb.b, label %bb.c

common.ret194:                                    ; preds = %bb.j, %bb.n, %.loopexit, %bb.k, %bb.l, %bb.b
  %common.ret194.op = phi double [ %i.d, %bb.b ], [ %.1145162, %bb.n ], [ +inf, %bb.j ], [ %i.bk, %bb.k ], [ %.1145162, %bb.l ], [ +inf, %.loopexit ]
  ret double %common.ret194.op

bb.b:                                             ; preds = %bb.a
  %i.b = fsub double 1.000000e+00, %3
  %i.c = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %1, double noundef %0, double noundef %2, double noundef %i.b)
  %i.d = fsub double 1.000000e+00, %i.c
  br label %common.ret194

bb.c:                                             ; preds = %bb.a
  %i.e = fmul double %3, %3
  %i.f = tail call double @log(double noundef %i.e) #13, !tbaa !3
  %i.g = fneg double %i.f
  %i.h = tail call double @sqrt(double noundef %i.g) #13, !tbaa !3 ; 4 uses
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
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double -3.000000e+00)
  %4 = fdiv double %i.p, 6.000000e+00             ; 2 uses
  %5 = fadd double %0, %0
  %6 = fadd double %5, -1.000000e+00
  %7 = fdiv double 1.000000e+00, %6               ; 2 uses
  %8 = fadd double %1, %1
  %9 = fadd double %8, -1.000000e+00
  %10 = fdiv double 1.000000e+00, %9              ; 3 uses
  %11 = fdiv double 2.000000e+00, %7
  %12 = fadd double %11, %10                      ; 3 uses
  %13 = fadd double %12, %4
  %i.q = tail call double @sqrt(double noundef %13) #13, !tbaa !3
  %i.r = fmul double %i.m, %i.q
  %14 = fdiv double %i.r, %12
  %15 = fsub double %10, %7
  %16 = fadd double %4, f0x3FEAAAAAAAAAAAAB
  %17 = fmul double %12, 3.000000e+00
  %18 = fdiv double %10, %17
  %19 = fsub double %16, %18
  %i.s = fneg double %15
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %19, double %14) ; 2 uses
  %i.u = fadd double %i.t, %i.t
  %i.v = tail call double @exp(double noundef %i.u) #13, !tbaa !3
  %i.w = tail call double @llvm.fmuladd.f64(double %1, double %i.v, double %0)
  %i.x = fdiv double %0, %i.w
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.y = fadd double %1, %1                       ; 2 uses
  %i.z = fmul double %1, 9.000000e+00
  %i.aa = fdiv double 1.000000e+00, %i.z          ; 2 uses
  %i.ab = fsub double 1.000000e+00, %i.aa
  %i.ac = tail call double @sqrt(double noundef %i.aa) #13, !tbaa !3
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ac, double %i.ab) ; 3 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = fmul double %i.ad, %i.ae
  %i.ag = fmul double %i.y, %i.af                 ; 2 uses
  %i.ah = fcmp ugt double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = fsub double 1.000000e+00, %3
  %i.aj = fmul double %1, %i.ai
  %i.ak = tail call double @log(double noundef %i.aj) #13, !tbaa !3
  %i.al = fadd double %2, %i.ak
  %i.am = fdiv double %i.al, %1
  %i.an = tail call double @exp(double noundef %i.am) #13, !tbaa !3
  %i.ao = fsub double 1.000000e+00, %i.an
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ap = tail call double @llvm.fmuladd.f64(double %0, double 4.000000e+00, double %i.y)
  %i.aq = fadd double %i.ap, -2.000000e+00
  %i.ar = fdiv double %i.aq, %i.ag                ; 2 uses
  %i.as = fcmp ugt double %i.ar, 1.000000e+00
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = fmul double %0, %3
  %i.au = tail call double @log(double noundef %i.at) #13, !tbaa !3
  %i.av = fadd double %2, %i.au
  %i.aw = fdiv double %i.av, %0
  %i.ax = tail call double @exp(double noundef %i.aw) #13, !tbaa !3
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = fadd double %i.ar, 1.000000e+00
  %i.az = fdiv double 2.000000e+00, %i.ay
  %i.ba = fsub double 1.000000e+00, %i.az
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.0144 = phi double [ %i.x, %bb.d ], [ %i.ba, %bb.i ], [ %i.ax, %bb.h ], [ %i.ao, %bb.f ] ; 2 uses
  %i.bb = fcmp olt double %.0144, f0x3D06849B86A12B9B
  %.sroa.speculated141 = select i1 %i.bb, double f0x3D06849B86A12B9B, double %.0144 ; 2 uses
  %i.bc = fcmp ogt double %.sroa.speculated141, f0x3FEFFFFFFFFFFFA6
  %.sroa.speculated132 = select i1 %i.bc, double f0x3FEFFFFFFFFFFFA6, double %.sroa.speculated141 ; 3 uses
  %i.bd = fsub double 1.000000e+00, %0
  %i.be = fsub double 1.000000e+00, %1
  %i.bf = fcmp olt double %.sroa.speculated132, 0.000000e+00
  %i.bg = fcmp ogt double %.sroa.speculated132, 1.000000e+00
  %or.cond3161 = or i1 %i.bf, %i.bg
  br i1 %or.cond3161, label %common.ret194, label %.lr.ph

.loopexit:                                        ; preds = %bb.o
  %i.bh = fcmp ogt double %i.ca, 1.000000e+00
  br i1 %i.bh, label %common.ret194, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.loopexit
  %.1145162 = phi double [ %i.ca, %.loopexit ], [ %.sroa.speculated132, %bb.j ] ; 10 uses
  %i.bi = fcmp oeq double %.1145162, 0.000000e+00
  %i.bj = fcmp oeq double %.1145162, 1.000000e+00
  %or.cond5 = or i1 %i.bi, %i.bj
  br i1 %or.cond5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bk = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %.1145162, double noundef %0, double noundef %1, double noundef %2) ; 3 uses
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp ueq double %i.bl, +inf
  br i1 %i.bm, label %common.ret194, label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.0116 = phi double [ %i.bk, %bb.k ], [ %.1145162, %.lr.ph ]
  %i.bn = fsub double %.0116, %3
  %i.bo = tail call double @log(double noundef %.1145162) #13, !tbaa !3
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bo, double %2)
  %i.bq = fsub double 1.000000e+00, %.1145162
  %i.br = tail call double @log(double noundef %i.bq) #13, !tbaa !3
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.be, double %i.br, double %i.bp)
  %i.bt = tail call double @exp(double noundef %i.bs) #13, !tbaa !3
  %i.bu = fmul double %i.bn, %i.bt
  %.fr179 = freeze double %i.bu                   ; 3 uses
  %i.bv = fmul double %.fr179, %.fr179
  %i.bw = fcmp olt double %i.bv, f0x3D06849B86A12B9B
  br i1 %i.bw, label %common.ret194, label %.split

.split:                                           ; preds = %bb.l, %bb.p
  %.0104 = phi double [ %i.cg, %bb.p ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.bx = fmul double %.fr179, %.0104             ; 3 uses
  %i.by = fmul double %i.bx, %i.bx
  %i.bz = fcmp ult double %i.by, 1.000000e+00
  br i1 %i.bz, label %bb.m, label %bb.p, !llvm.loop !37

bb.m:                                             ; preds = %.split
  %i.ca = fsub double %.1145162, %i.bx            ; 7 uses
  %i.cb = fcmp olt double %i.ca, 0.000000e+00
  %i.cc = fcmp ogt double %i.ca, 1.000000e+00
  %or.cond7 = or i1 %i.cb, %i.cc
  br i1 %or.cond7, label %bb.p, label %bb.n, !llvm.loop !37

bb.n:                                             ; preds = %bb.m
  %i.cd = fcmp oeq double %i.ca, %.1145162
  br i1 %i.cd, label %common.ret194, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = fcmp oeq double %i.ca, 0.000000e+00
  %i.cf = fcmp oeq double %i.ca, 1.000000e+00
  %or.cond9 = or i1 %i.ce, %i.cf
  br i1 %or.cond9, label %bb.p, label %.loopexit, !llvm.loop !37

bb.p:                                             ; preds = %bb.o, %bb.m, %.split
  %i.cg = fdiv double %.0104, 3.000000e+00
  br label %.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal26RequiredSuccessProbabilityEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = fsub double 1.000000e+00, %0
  %i.b = tail call double @log(double noundef %i.a) #13, !tbaa !3
  %i.c = sitofp i32 %1 to double
  %i.d = fdiv double %i.b, %i.c
  %i.e = tail call double @exp(double noundef %i.d) #13, !tbaa !3
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !11
  %i.c = fsub double %i.b, %0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call double @sqrt(double noundef %i.e) #13, !tbaa !3
  %i.g = load i64, ptr %1, align 8, !tbaa !38
  %i.h = uitofp i64 %i.g to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h)
  %i.i = fdiv double %i.f, %sqrt
  %i.j = fdiv double %i.c, %i.i
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal17MaxErrorToleranceEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fsub double 1.000000e+00, %0
  %i.b = fmul double %i.a, 5.000000e-01
  %i.c = tail call double @llvm.fmuladd.f64(double %i.b, double 2.000000e+00, double -1.000000e+00)
  %i.d = tail call noundef double @_ZN4absl12lts_2025051215random_internal6erfinvEd(double noundef %i.c)
  %i.e = fmul double %i.d, f0xBFF6A09E667F3BCD
  ret double %i.e
}

declare noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #4 align 2

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
end_hunk_0
