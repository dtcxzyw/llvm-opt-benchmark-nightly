inline.NumInlined: 36
inline.NumDeleted: 19
begin_hunk_0_@math_log2:bb.a
  %i.n = tail call i64 @rb_ull2inum(i64 noundef range(i64 971, -53) %i.j) #10
  br label %rb_ull2num_inline.exit.i

rb_ull2num_inline.exit.i:                         ; preds = %bb.e, %bb.d
  %.0.i10.i = phi i64 [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call i64 @rb_big_rshift(i64 noundef %1, i64 noundef %.0.i10.i) #10
  %i.p = uitofp i64 %i.j to double
  br label %get_double_rshift.exit

get_double_rshift.exit:                           ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b, %rb_ull2num_inline.exit.i
  %.08.i = phi i64 [ %i.o, %rb_ull2num_inline.exit.i ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %.0.i = phi double [ %i.p, %rb_ull2num_inline.exit.i ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.q = tail call double @rb_num_to_dbl(i64 noundef %.08.i) #10 ; 3 uses
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_double_rshift.exit
  %i.s = load i64, ptr @rb_eMathDomainError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.38) #11
  unreachable

bb.g:                                             ; preds = %get_double_rshift.exit
  %i.t = fcmp oeq double %i.q, 0.000000e+00
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call double @llvm.log2.f64(double %i.q), !tbaa !7
  %i.v = fadd double %.0.i, %i.u
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi double [ %i.v, %bb.h ], [ -inf, %bb.g ]
  %i.w = tail call i64 @rb_float_new(double noundef %.sink) #10
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_log10(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %get_double_rshift.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 8223
  %or.cond.not.i = icmp eq i64 %i.g, 8202
  br i1 %or.cond.not.i, label %bb.b, label %get_double_rshift.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = tail call i64 @rb_absint_numwords(i64 noundef %1, i64 noundef 1, ptr noundef null) #10 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1023
  br i1 %i.i, label %bb.c, label %get_double_rshift.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.h, -53                        ; 4 uses
  %i.k = icmp ult i64 %i.j, 4611686018427387904
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i64 %i.j, 1
  %i.m = or disjoint i64 %i.l, 1
  br label %rb_ull2num_inline.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i64 @rb_ull2inum(i64 noundef range(i64 971, -53) %i.j) #10
  br label %rb_ull2num_inline.exit.i

rb_ull2num_inline.exit.i:                         ; preds = %bb.e, %bb.d
  %.0.i10.i = phi i64 [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call i64 @rb_big_rshift(i64 noundef %1, i64 noundef %.0.i10.i) #10
  %i.p = uitofp i64 %i.j to double
  br label %get_double_rshift.exit

get_double_rshift.exit:                           ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b, %rb_ull2num_inline.exit.i
  %.08.i = phi i64 [ %i.o, %rb_ull2num_inline.exit.i ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %.0.i = phi double [ %i.p, %rb_ull2num_inline.exit.i ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.q = tail call double @rb_num_to_dbl(i64 noundef %.08.i) #10 ; 3 uses
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_double_rshift.exit
  %i.s = load i64, ptr @rb_eMathDomainError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.39) #11
  unreachable

bb.g:                                             ; preds = %get_double_rshift.exit
  %i.t = fcmp oeq double %i.q, 0.000000e+00
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call double @llvm.log10.f64(double %i.q), !tbaa !7
  %i.v = tail call double @llvm.fmuladd.f64(double %.0.i, double f0x3FD34413509F79FF, double %i.u)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi double [ %i.v, %bb.h ], [ -inf, %bb.g ]
  %i.w = tail call i64 @rb_float_new(double noundef %.sink) #10
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_log1p(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 8223
  %or.cond.not.i = icmp eq i64 %i.h, 8202
  br i1 %or.cond.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = tail call i64 @rb_absint_numwords(i64 noundef %1, i64 noundef 1, ptr noundef null) #10 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.i, -53                        ; 3 uses
  %i.l = icmp ult i64 %i.k, 4611686018427387904
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call i64 @rb_ull2inum(i64 noundef range(i64 971, -53) %i.k) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i10.i = phi i64 [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.p = tail call i64 @rb_big_rshift(i64 noundef %1, i64 noundef %.0.i10.i) #10
  %i.q = tail call double @rb_num_to_dbl(i64 noundef %i.p) #10 ; 0 uses
  %i.r = tail call i64 @rb_big_plus(i64 noundef %1, i64 noundef 3) #10
  %i.s = call fastcc double @math_log_split(i64 noundef %i.r, ptr noundef %i.a) ; 2 uses
  %i.t = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call double @log(double noundef %i.s) #10, !tbaa !7
  %i.v = load i64, ptr %i.a, align 8, !tbaa !11
  %i.w = uitofp i64 %i.v to double
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FE62E42FEFA39EF, double %i.u)
  br label %bb.l

bb.h:                                             ; preds = %bb.b, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.y = tail call double @rb_num_to_dbl(i64 noundef %1) #10 ; 3 uses
  %i.z = fcmp olt double %i.y, -1.000000e+00
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @rb_eMathDomainError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.40) #11
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = fcmp oeq double %i.y, -1.000000e+00
  br i1 %i.ab, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call double @log1p(double noundef %i.y) #10, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.f, %bb.k, %bb.g
  %.sink = phi double [ %i.ac, %bb.k ], [ -inf, %bb.f ], [ %i.x, %bb.g ], [ -inf, %bb.j ]
  %i.ad = tail call i64 @rb_float_new(double noundef %.sink) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.ad
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_sqrt(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 14
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.e, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15   ; 8 uses
  %i.k = and i64 %i.j, 3
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %RB_FLOAT_TYPE_P.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.j, 0
  %i.n = and i64 %i.j, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %RB_FLOAT_TYPE_P.exit.thread7.i.i, label %RB_FLOAT_TYPE_P.exit.i.i

RB_FLOAT_TYPE_P.exit.i.i:                         ; preds = %bb.c
  %i.q = inttoptr i64 %i.j to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %RB_FLOAT_TYPE_P.exit.thread.i.i, label %RB_FLOAT_TYPE_P.exit.thread7.i.i

RB_FLOAT_TYPE_P.exit.thread.i.i:                  ; preds = %RB_FLOAT_TYPE_P.exit.i.i, %bb.b
  %i.u = tail call double @rb_float_value(i64 noundef %i.j) #12 ; 2 uses
  %i.v = fcmp ord double %i.u, 0.000000e+00
  %i.w = bitcast double %i.u to i64
  %i.x = icmp slt i64 %i.w, 0
  %i.y = and i1 %i.v, %i.x
  %i.z = select i1 %i.y, i64 20, i64 0
  br label %f_signbit.exit.i

RB_FLOAT_TYPE_P.exit.thread7.i.i:                 ; preds = %RB_FLOAT_TYPE_P.exit.i.i, %bb.c
  %i.aa = trunc i64 %i.j to i1
  br i1 %i.aa, label %2, label %bb.d

2:                                                ; preds = %RB_FLOAT_TYPE_P.exit.thread7.i.i
  %3 = icmp slt i64 %i.j, 0
  %4 = select i1 %3, i64 20, i64 0
  br label %f_signbit.exit.i

bb.d:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread7.i.i
  %i.ab = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.j, i64 noundef 60, i32 noundef 1, i64 noundef 1) #10
  br label %f_signbit.exit.i

f_signbit.exit.i:                                 ; preds = %bb.d, %2, %RB_FLOAT_TYPE_P.exit.thread.i.i
  %.0.i18.i = phi i64 [ %i.z, %RB_FLOAT_TYPE_P.exit.thread.i.i ], [ %4, %2 ], [ %i.ab, %bb.d ]
  %i.ac = getelementptr i8, ptr %i.e, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.ae = tail call double @rb_num_to_dbl(i64 noundef %i.ad) #10 ; 2 uses
  %i.af = tail call i64 @rb_complex_abs(i64 noundef %1) #10
  %i.ag = tail call double @rb_num_to_dbl(i64 noundef %i.af) #10 ; 2 uses
  %i.ah = fsub double %i.ag, %i.ae
  %i.ai = fmul double %i.ah, 5.000000e-01
  %i.aj = tail call double @sqrt(double noundef %i.ai) #10, !tbaa !7 ; 2 uses
  %i.ak = fadd double %i.ae, %i.ag
  %i.al = fmul double %i.ak, 5.000000e-01
  %i.am = tail call double @sqrt(double noundef %i.al) #10, !tbaa !7
  %.not.i = icmp eq i64 %.0.i18.i, 0
  %i.an = fneg double %i.aj
  %.0.i = select i1 %.not.i, double %i.aj, double %i.an
  %i.ao = tail call i64 @rb_float_new(double noundef %i.am) #10
  %i.ap = tail call i64 @rb_float_new(double noundef %.0.i) #10
  %i.aq = tail call i64 @rb_complex_new(i64 noundef %i.ao, i64 noundef %i.ap) #10
  br label %rb_math_sqrt.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.ar = tail call double @rb_num_to_dbl(i64 noundef %1) #10 ; 3 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.at = load i64, ptr @rb_eMathDomainError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @.str.41) #11
  unreachable

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.au = fcmp oeq double %i.ar, 0.000000e+00
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i64 @rb_float_new(double noundef 0.000000e+00) #10
  br label %rb_math_sqrt.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = tail call double @sqrt(double noundef %i.ar) #10, !tbaa !7
  %i.ax = tail call i64 @rb_float_new(double noundef %i.aw) #10
  br label %rb_math_sqrt.exit

rb_math_sqrt.exit:                                ; preds = %f_signbit.exit.i, %bb.g, %bb.h
  %.016.i = phi i64 [ %i.aq, %f_signbit.exit.i ], [ %i.av, %bb.g ], [ %i.ax, %bb.h ]
  ret i64 %.016.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_cbrt(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call double @rb_num_to_dbl(i64 noundef %1) #10 ; 3 uses
  %i.b = tail call double @cbrt(double noundef %i.a) #13 ; 7 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ueq double %i.c, +inf
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %i.a, 0.000000e+00
  %i.f = fcmp oeq double %i.b, 0.000000e+00
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fdiv double %i.a, %i.b
  %i.h = fdiv double %i.g, %i.b
  %i.i = tail call double @llvm.fmuladd.f64(double %i.b, double 2.000000e+00, double %i.h)
  %i.j = fdiv double %i.i, 3.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi double [ %i.b, %bb.b ], [ %i.j, %bb.c ], [ %i.b, %bb.a ]
  %i.k = tail call i64 @rb_float_new(double noundef %.0) #10
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_frexp(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call double @rb_num_to_dbl(i64 noundef %1) #10
  %i.c = call double @frexp(double noundef %i.b, ptr noundef nonnull %i.a) #10
  %i.d = tail call i64 @rb_float_new(double noundef %i.c) #10
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = tail call i64 @rb_assoc_new(i64 noundef %i.d, i64 noundef %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_ldexp(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call double @rb_num_to_dbl(i64 noundef %1) #10
  %i.b = trunc i64 %2 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_fix2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = trunc i64 %.0.i to i32
  %i.f = tail call double @ldexp(double noundef %i.a, i32 noundef %i.e) #10, !tbaa !7
  %i.g = tail call i64 @rb_float_new(double noundef %i.f) #10
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_erf(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call double @rb_num_to_dbl(i64 noundef %1) #10
  %i.b = tail call double @erf(double noundef %i.a) #10, !tbaa !7
  %i.c = tail call i64 @rb_float_new(double noundef %i.b) #10
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_erfc(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call double @rb_num_to_dbl(i64 noundef %1) #10
  %i.b = tail call double @erfc(double noundef %i.a) #10, !tbaa !7
  %i.c = tail call i64 @rb_float_new(double noundef %i.b) #10
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_gamma(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call double @rb_num_to_dbl(i64 noundef %1) #10 ; 10 uses
  %i.b = tail call double @llvm.fabs.f64(double %i.a) #14
  %i.c = fcmp oeq double %i.b, +inf
  %i.d = bitcast double %i.a to i64
  %i.e = icmp slt i64 %i.d, 0                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @rb_eMathDomainError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.42) #11
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.a, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %. = select i1 %i.e, double -inf, double +inf
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.h = tail call double @llvm.trunc.f64(double %i.a)
  %i.i = fcmp oeq double %i.h, %i.a
  br i1 %i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.j = fcmp olt double %i.a, 0.000000e+00
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = load i64, ptr @rb_eMathDomainError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = fcmp oge double %i.a, 1.000000e+00
  %i.m = fcmp ole double %i.a, 2.300000e+01
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = fptosi double %i.a to i32
  %i.o = add i32 %i.n, -1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr @math_gamma.fact_table, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !18
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.s = tail call double @tgamma(double noundef %i.a) #10, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.b, %bb.k, %bb.j
  %.sink = phi double [ %., %bb.e ], [ +inf, %bb.b ], [ %i.s, %bb.k ], [ %i.r, %bb.j ]
  %i.t = tail call i64 @rb_float_new(double noundef %.sink) #10
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @math_lgamma(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 1, ptr %i.a, align 4, !tbaa !7
  %i.b = tail call double @rb_num_to_dbl(i64 noundef %1) #10 ; 4 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b) #14
  %i.d = fcmp oeq double %i.c, +inf
  %i.e = bitcast double %i.b to i64
  %i.f = icmp slt i64 %i.e, 0                     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr @rb_eMathDomainError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.43) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_float_new(double noundef +inf) #10
  %i.i = tail call i64 @rb_assoc_new(i64 noundef %i.h, i64 noundef 3) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = select i1 %i.f, i64 -1, i64 3
  %i.l = tail call i64 @rb_float_new(double noundef +inf) #10
  %i.m = tail call i64 @rb_assoc_new(i64 noundef %i.l, i64 noundef %i.k) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = call double @lgamma_r(double noundef %i.b, ptr noundef nonnull %i.a) #10
  %i.o = call i64 @rb_float_new(double noundef %i.n) #10
  %i.p = load i32, ptr %i.a, align 4, !tbaa !7
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1
  %i.t = call i64 @rb_assoc_new(i64 noundef %i.o, i64 noundef %i.s) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.m, %bb.f ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Math() local_unnamed_addr #0 {
bb.a:
  tail call void @InitVM_Math()
  ret void
}

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare i64 @rb_absint_numwords(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_big_rshift(i64 noundef, i64 noundef) local_unnamed_addr #2

declare double @rb_num_to_dbl(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #3
end_hunk_0
