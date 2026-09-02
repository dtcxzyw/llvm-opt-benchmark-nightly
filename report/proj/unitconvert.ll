Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/unitconvert?download=true
inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z21pj_list_angular_unitsv
declare noundef ptr @_Z21pj_list_angular_unitsv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL10mjd_to_mjdd(double noundef returned %0) #6 {
bb.a:
  ret double %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef double @_ZL18decimalyear_to_mjdd(double noundef %0) #7 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp ugt double %i.a, 1.000000e+04
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.floor.f64(double %0)
  %i.c = tail call i64 @lround(double noundef %i.b) #13
  %.fr = freeze i64 %i.c                          ; 7 uses
  %i.d = sitofp i64 %.fr to double
  %i.e = fsub double %0, %i.d
  %i.f = mul i64 %.fr, 365
  %i.g = add i64 %i.f, -678490
  %i.h = sitofp i64 %i.g to double
  %i.i = and i64 %.fr, 3
  %i.j = icmp ne i64 %i.i, 0
  %i.k = srem i64 %.fr, 100
  %.not.i.i = icmp eq i64 %i.k, 0
  %or.cond.i.i = or i1 %i.j, %.not.i.i
  br i1 %or.cond.i.i, label %_ZL12is_leap_yearl.exit.i, label %_ZL12days_in_yearl.exit

_ZL12is_leap_yearl.exit.i:                        ; preds = %bb.b
  %i.l = srem i64 %.fr, 400
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = select i1 %.not.i, double 3.660000e+02, double 3.650000e+02
  br label %_ZL12days_in_yearl.exit

_ZL12days_in_yearl.exit:                          ; preds = %bb.b, %_ZL12is_leap_yearl.exit.i
  %i.n = phi double [ 3.660000e+02, %bb.b ], [ %i.m, %_ZL12is_leap_yearl.exit.i ]
  %i.o = tail call double @llvm.fmuladd.f64(double %i.e, double %i.n, double %i.h) ; 2 uses
  %i.p = icmp sgt i64 %.fr, 1859
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZL12days_in_yearl.exit, %bb.d
  %.01624.in = phi i64 [ %.01624, %bb.d ], [ %.fr, %_ZL12days_in_yearl.exit ] ; 2 uses
  %.023 = phi double [ %i.w, %bb.d ], [ %i.o, %_ZL12days_in_yearl.exit ] ; 3 uses
  %.01624 = add nsw i64 %.01624.in, -1            ; 4 uses
  %i.q = and i64 %.01624, 3
  %i.r = icmp ne i64 %i.q, 0
  %i.s = urem i64 %.01624, 100
  %.not.i19 = icmp eq i64 %i.s, 0
  %or.cond.i = or i1 %i.r, %.not.i19
  br i1 %or.cond.i, label %_ZL12is_leap_yearl.exit, label %_ZL12is_leap_yearl.exit.thread

_ZL12is_leap_yearl.exit.thread:                   ; preds = %.lr.ph
  %i.t = fadd double %.023, 1.000000e+00
  br label %bb.d

_ZL12is_leap_yearl.exit:                          ; preds = %.lr.ph
  %i.u = urem i64 %.01624, 400
  %.not = icmp eq i64 %i.u, 0
  %i.v = fadd double %.023, 1.000000e+00
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL12is_leap_yearl.exit
  br label %bb.d

bb.d:                                             ; preds = %_ZL12is_leap_yearl.exit.thread, %_ZL12is_leap_yearl.exit, %bb.c
  %i.w = phi double [ %.023, %bb.c ], [ %i.v, %_ZL12is_leap_yearl.exit ], [ %i.t, %_ZL12is_leap_yearl.exit.thread ] ; 2 uses
  %i.x = icmp samesign ugt i64 %.01624.in, 1860
  br i1 %i.x, label %.lr.ph, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %bb.d, %_ZL12days_in_yearl.exit, %bb.a
  %.017 = phi double [ 0.000000e+00, %bb.a ], [ %i.o, %_ZL12days_in_yearl.exit ], [ %i.w, %bb.d ]
  ret double %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL18mjd_to_decimalyeard(double noundef %0) #6 {
bb.a:
  %i.a = fcmp ult double %0, 4.500000e+01
  br i1 %i.a, label %_ZL12is_leap_yearl.exit.i23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZL12days_in_yearl.exit
  %.035 = phi i32 [ %i.i, %_ZL12days_in_yearl.exit ], [ 1859, %bb.a ] ; 8 uses
  %.01334 = phi double [ %i.h, %_ZL12days_in_yearl.exit ], [ 4.500000e+01, %bb.a ]
  %i.b = and i32 %.035, 3
  %i.c = icmp ne i32 %i.b, 0
  %i.d = urem i32 %.035, 100
  %.not.i.i = icmp eq i32 %i.d, 0
  %or.cond.i.i = or i1 %i.c, %.not.i.i
  br i1 %or.cond.i.i, label %_ZL12is_leap_yearl.exit.i, label %_ZL12days_in_yearl.exit

_ZL12is_leap_yearl.exit.i:                        ; preds = %.lr.ph
  %i.e = urem i32 %.035, 400
  %.not.i = icmp eq i32 %i.e, 0
  %spec.select.i = select i1 %.not.i, i32 366, i32 365
  %i.f = uitofp nneg i32 %spec.select.i to double
  br label %_ZL12days_in_yearl.exit

_ZL12days_in_yearl.exit:                          ; preds = %.lr.ph, %_ZL12is_leap_yearl.exit.i
  %i.g = phi double [ 3.660000e+02, %.lr.ph ], [ %i.f, %_ZL12is_leap_yearl.exit.i ]
  %i.h = fadd double %.01334, %i.g                ; 4 uses
  %i.i = add nuw nsw i32 %.035, 1
  %i.j = fcmp ult double %0, %i.h
  br i1 %i.j, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %_ZL12days_in_yearl.exit
  %i.k = and i32 %.035, 3
  %i.l = icmp ne i32 %i.k, 0
  %i.m = urem i32 %.035, 100
  %.not.i.i15 = icmp eq i32 %i.m, 0
  %or.cond.i.i16 = or i1 %i.l, %.not.i.i15
  br i1 %or.cond.i.i16, label %_ZL12is_leap_yearl.exit.i23, label %_ZL12days_in_yearl.exit20

_ZL12days_in_yearl.exit20:                        ; preds = %._crit_edge
  %i.n = fadd double %i.h, -3.660000e+02
  br label %_ZL12days_in_yearl.exit26

_ZL12is_leap_yearl.exit.i23:                      ; preds = %bb.a, %._crit_edge
  %.0.lcssa43 = phi i32 [ %.035, %._crit_edge ], [ 1858, %bb.a ] ; 2 uses
  %.013.lcssa42 = phi double [ %i.h, %._crit_edge ], [ 4.500000e+01, %bb.a ]
  %i.o = urem i32 %.0.lcssa43, 400
  %.not.i18 = icmp eq i32 %i.o, 0
  %spec.select.i19 = select i1 %.not.i18, i32 366, i32 365
  %i.p = uitofp nneg i32 %spec.select.i19 to double ; 2 uses
  %i.q = fsub double %.013.lcssa42, %i.p
  br label %_ZL12days_in_yearl.exit26

_ZL12days_in_yearl.exit26:                        ; preds = %_ZL12days_in_yearl.exit20, %_ZL12is_leap_yearl.exit.i23
  %.0.lcssa44 = phi i32 [ %.035, %_ZL12days_in_yearl.exit20 ], [ %.0.lcssa43, %_ZL12is_leap_yearl.exit.i23 ]
  %.pn = phi double [ %i.n, %_ZL12days_in_yearl.exit20 ], [ %i.q, %_ZL12is_leap_yearl.exit.i23 ]
  %i.r = phi double [ 3.660000e+02, %_ZL12days_in_yearl.exit20 ], [ %i.p, %_ZL12is_leap_yearl.exit.i23 ]
  %i.s = uitofp nneg i32 %.0.lcssa44 to double
  %i.t = fsub double %0, %.pn
  %i.u = fdiv double %i.t, %i.r
  %i.v = fadd double %i.u, %i.s
  ret double %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL15gps_week_to_mjdd(double noundef %0) #6 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double 7.000000e+00, double 4.424400e+04)
  ret double %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @_ZL15mjd_to_gps_weekd(double noundef %0) #6 {
bb.a:
  %i.a = fadd double %0, -4.424400e+04
  %i.b = fdiv double %i.a, 7.000000e+00
  ret double %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef double @_ZL15yyyymmdd_to_mjdd(double noundef %0) #7 {
bb.a:
  %i.a = fdiv double %0, 1.000000e+04
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  %i.c = tail call i64 @lround(double noundef %i.b) #13 ; 6 uses
  %i.d = mul nsw i64 %i.c, 10000
  %i.e = sitofp i64 %i.d to double
  %i.f = fsub double %0, %i.e                     ; 2 uses
  %i.g = fdiv double %i.f, 1.000000e+02
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = tail call i64 @lround(double noundef %i.h) #13 ; 3 uses
  %i.j = mul nsw i64 %i.i, 100
  %i.k = sitofp i64 %i.j to double
  %i.l = fsub double %i.f, %i.k
  %i.m = tail call double @llvm.floor.f64(double %i.l)
  %i.n = tail call i64 @lround(double noundef %i.m) #13 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 12)
  %i.o = icmp eq i64 %i.i, 0
  %spec.store.select1.i = select i1 %i.o, i64 1, i64 %spec.store.select.i ; 9 uses
  %spec.store.select2.i.i = tail call i64 @llvm.umax.i64(i64 %spec.store.select1.i, i64 1)
  %i.p = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select2.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !51   ; 2 uses
  %i.s = and i64 %i.c, 3
  %i.t = icmp ne i64 %i.s, 0
  %i.u = srem i64 %i.c, 100
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %or.cond.i.i.i = or i1 %i.t, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZL13days_in_monthmm.exit.i, label %_ZL13days_in_monthmm.exit.thread.i

_ZL13days_in_monthmm.exit.i:                      ; preds = %bb.a
  %i.v = srem i64 %i.c, 400
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = icmp eq i64 %spec.store.select1.i, 2
  %or.cond.i.i = and i1 %i.w, %i.x
  %i.y = zext i1 %or.cond.i.i to i32
  %spec.select.i.i = add i32 %i.r, %i.y
  %i.z = zext i32 %spec.select.i.i to i64
  %i.aa = icmp samesign ugt i64 %spec.store.select1.i, 1
  %.62.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.z) ; 3 uses
  br i1 %i.aa, label %_ZL13days_in_monthmm.exit32.us.i.preheader, label %_ZL17daynumber_in_yearmmm.exit

_ZL13days_in_monthmm.exit32.us.i.preheader:       ; preds = %_ZL13days_in_monthmm.exit.i
  %i.ab = add nsw i64 %spec.store.select1.i, -1   ; 3 uses
  %i.ac = icmp eq i64 %spec.store.select1.i, 2
  br i1 %i.ac, label %_ZL13days_in_monthmm.exit32.us.i.epil.preheader, label %_ZL13days_in_monthmm.exit32.us.i.preheader.new

_ZL13days_in_monthmm.exit32.us.i.preheader.new:   ; preds = %_ZL13days_in_monthmm.exit32.us.i.preheader
  %unroll_iter38 = and i64 %i.ab, -2
  br label %_ZL13days_in_monthmm.exit32.us.i

_ZL13days_in_monthmm.exit.thread.i:               ; preds = %bb.a
  %i.ad = icmp eq i64 %spec.store.select1.i, 2
  %i.ae = zext i1 %i.ad to i32
  %spec.select.i34.i = add i32 %i.r, %i.ae
  %i.af = zext i32 %spec.select.i34.i to i64
  %i.ag = icmp samesign ugt i64 %spec.store.select1.i, 1
  %..i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.af) ; 3 uses
  br i1 %i.ag, label %_ZL13days_in_monthmm.exit32.i.preheader, label %_ZL17daynumber_in_yearmmm.exit

_ZL13days_in_monthmm.exit32.i.preheader:          ; preds = %_ZL13days_in_monthmm.exit.thread.i
  %i.ah = add nsw i64 %spec.store.select1.i, -1   ; 3 uses
  %i.ai = icmp eq i64 %spec.store.select1.i, 2
  br i1 %i.ai, label %_ZL13days_in_monthmm.exit32.i.epil.preheader, label %_ZL13days_in_monthmm.exit32.i.preheader.new

_ZL13days_in_monthmm.exit32.i.preheader.new:      ; preds = %_ZL13days_in_monthmm.exit32.i.preheader
  %unroll_iter = and i64 %i.ah, -2
  br label %_ZL13days_in_monthmm.exit32.i

_ZL13days_in_monthmm.exit32.us.i:                 ; preds = %_ZL13days_in_monthmm.exit32.us.i, %_ZL13days_in_monthmm.exit32.us.i.preheader.new
  %indvars.iv40.i = phi i64 [ 1, %_ZL13days_in_monthmm.exit32.us.i.preheader.new ], [ %indvars.iv.next41.i.1, %_ZL13days_in_monthmm.exit32.us.i ] ; 3 uses
  %.01735.us.i = phi i32 [ 0, %_ZL13days_in_monthmm.exit32.us.i.preheader.new ], [ %i.ar, %_ZL13days_in_monthmm.exit32.us.i ]
  %niter39 = phi i64 [ 0, %_ZL13days_in_monthmm.exit32.us.i.preheader.new ], [ %niter39.next.1, %_ZL13days_in_monthmm.exit32.us.i ]
  %spec.store.select.i.us.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv40.i, i64 12)
  %i.aj = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select.i.us.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %spec.select.i31.us.i = add i32 %i.al, %.01735.us.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %spec.store.select.i.us.i.1 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.next41.i, i64 12)
  %i.am = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select.i.us.i.1
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = icmp eq i64 %indvars.iv.next41.i, 2
  %or.cond.i30.us.i.1 = and i1 %i.w, %i.ap
  %i.aq = zext i1 %or.cond.i30.us.i.1 to i32
  %spec.select.i31.us.i.1 = add i32 %i.ao, %spec.select.i31.us.i
  %i.ar = add i32 %spec.select.i31.us.i.1, %i.aq  ; 3 uses
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2 ; 2 uses
  %niter39.next.1 = add nuw i64 %niter39, 2       ; 2 uses
  %niter39.ncmp.1 = icmp eq i64 %niter39.next.1, %unroll_iter38
  br i1 %niter39.ncmp.1, label %_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa, label %_ZL13days_in_monthmm.exit32.us.i, !llvm.loop !80

_ZL13days_in_monthmm.exit32.i:                    ; preds = %_ZL13days_in_monthmm.exit32.i, %_ZL13days_in_monthmm.exit32.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %_ZL13days_in_monthmm.exit32.i.preheader.new ], [ %indvars.iv.next.i.1, %_ZL13days_in_monthmm.exit32.i ] ; 3 uses
  %.01735.i = phi i32 [ 0, %_ZL13days_in_monthmm.exit32.i.preheader.new ], [ %i.ba, %_ZL13days_in_monthmm.exit32.i ]
  %niter = phi i64 [ 0, %_ZL13days_in_monthmm.exit32.i.preheader.new ], [ %niter.next.1, %_ZL13days_in_monthmm.exit32.i ]
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i, i64 12)
  %i.as = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %spec.select.i31.i = add i32 %i.au, %.01735.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %spec.store.select.i.i.1 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.next.i, i64 12)
  %i.av = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select.i.i.1
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = icmp eq i64 %indvars.iv.next.i, 2
  %i.az = zext i1 %i.ay to i32
  %spec.select.i31.i.1 = add i32 %i.ax, %spec.select.i31.i
  %i.ba = add i32 %spec.select.i31.i.1, %i.az     ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa, label %_ZL13days_in_monthmm.exit32.i, !llvm.loop !80

_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa: ; preds = %_ZL13days_in_monthmm.exit32.us.i
  %1 = trunc i64 %i.ab to i1
  br i1 %1, label %_ZL13days_in_monthmm.exit32.us.i.epil.preheader, label %_ZL17daynumber_in_yearmmm.exit

_ZL13days_in_monthmm.exit32.us.i.epil.preheader:  ; preds = %_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa, %_ZL13days_in_monthmm.exit32.us.i.preheader
  %indvars.iv40.i.epil.init = phi i64 [ 1, %_ZL13days_in_monthmm.exit32.us.i.preheader ], [ %indvars.iv.next41.i.1, %_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa ]
  %.01735.us.i.epil.init = phi i32 [ 0, %_ZL13days_in_monthmm.exit32.us.i.preheader ], [ %i.ar, %_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %spec.store.select.i.us.i.epil = tail call i64 @llvm.umin.i64(i64 %indvars.iv40.i.epil.init, i64 12)
  %i.bb = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select.i.us.i.epil
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %spec.select.i31.us.i.epil = add i32 %i.bd, %.01735.us.i.epil.init
  br label %_ZL17daynumber_in_yearmmm.exit

_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa: ; preds = %_ZL13days_in_monthmm.exit32.i
  %2 = trunc i64 %i.ah to i1
  br i1 %2, label %_ZL13days_in_monthmm.exit32.i.epil.preheader, label %_ZL17daynumber_in_yearmmm.exit

_ZL13days_in_monthmm.exit32.i.epil.preheader:     ; preds = %_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa, %_ZL13days_in_monthmm.exit32.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %_ZL13days_in_monthmm.exit32.i.preheader ], [ %indvars.iv.next.i.1, %_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa ]
  %.01735.i.epil.init = phi i32 [ 0, %_ZL13days_in_monthmm.exit32.i.preheader ], [ %i.ba, %_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %spec.store.select.i.i.epil = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i.epil.init, i64 12)
  %i.be = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select.i.i.epil
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !51
  %spec.select.i31.i.epil = add i32 %i.bg, %.01735.i.epil.init
  br label %_ZL17daynumber_in_yearmmm.exit

_ZL17daynumber_in_yearmmm.exit:                   ; preds = %_ZL13days_in_monthmm.exit32.i.epil.preheader, %_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa, %_ZL13days_in_monthmm.exit32.us.i.epil.preheader, %_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa, %_ZL13days_in_monthmm.exit.i, %_ZL13days_in_monthmm.exit.thread.i
  %.01848.i = phi i64 [ %.62.i, %_ZL13days_in_monthmm.exit.i ], [ %.62.i, %_ZL13days_in_monthmm.exit32.us.i.epil.preheader ], [ %..i, %_ZL13days_in_monthmm.exit.thread.i ], [ %.62.i, %_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa ], [ %..i, %_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa ], [ %..i, %_ZL13days_in_monthmm.exit32.i.epil.preheader ]
  %.017.lcssa.i = phi i32 [ 0, %_ZL13days_in_monthmm.exit.i ], [ %spec.select.i31.us.i.epil, %_ZL13days_in_monthmm.exit32.us.i.epil.preheader ], [ 0, %_ZL13days_in_monthmm.exit.thread.i ], [ %i.ar, %_ZL17daynumber_in_yearmmm.exit.loopexit.unr-lcssa ], [ %i.ba, %_ZL17daynumber_in_yearmmm.exit.loopexit30.unr-lcssa ], [ %spec.select.i31.i.epil, %_ZL13days_in_monthmm.exit32.i.epil.preheader ]
  %i.bh = trunc nuw i64 %.01848.i to i32
  %i.bi = add i32 %.017.lcssa.i, %i.bh
  %i.bj = sitofp i32 %i.bi to double              ; 2 uses
  %i.bk = icmp sgt i64 %i.c, 1859
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL17daynumber_in_yearmmm.exit, %_ZL12days_in_yearl.exit
  %.019 = phi double [ %i.br, %_ZL12days_in_yearl.exit ], [ %i.bj, %_ZL17daynumber_in_yearmmm.exit ]
  %.014.in18 = phi i64 [ %.014, %_ZL12days_in_yearl.exit ], [ %i.c, %_ZL17daynumber_in_yearmmm.exit ] ; 2 uses
  %.014 = add nsw i64 %.014.in18, -1              ; 4 uses
  %i.bl = and i64 %.014, 3
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = urem i64 %.014, 100
  %.not.i.i = icmp eq i64 %i.bn, 0
  %or.cond.i.i15 = or i1 %i.bm, %.not.i.i
  br i1 %or.cond.i.i15, label %_ZL12is_leap_yearl.exit.i, label %_ZL12days_in_yearl.exit

_ZL12is_leap_yearl.exit.i:                        ; preds = %.lr.ph
  %i.bo = urem i64 %.014, 400
  %.not.i = icmp eq i64 %i.bo, 0
  %i.bp = select i1 %.not.i, double 3.660000e+02, double 3.650000e+02
  br label %_ZL12days_in_yearl.exit

_ZL12days_in_yearl.exit:                          ; preds = %.lr.ph, %_ZL12is_leap_yearl.exit.i
  %i.bq = phi double [ 3.660000e+02, %.lr.ph ], [ %i.bp, %_ZL12is_leap_yearl.exit.i ]
  %i.br = fadd double %.019, %i.bq                ; 2 uses
  %i.bs = icmp samesign ugt i64 %.014.in18, 1860
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %_ZL12days_in_yearl.exit, %_ZL17daynumber_in_yearmmm.exit
  %.0.lcssa = phi double [ %i.bj, %_ZL17daynumber_in_yearmmm.exit ], [ %i.br, %_ZL12days_in_yearl.exit ]
  %i.bt = fadd double %.0.lcssa, 1.300000e+01
  %i.bu = fadd double %i.bt, 3.100000e+01
  ret double %i.bu
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef double @_ZL15mjd_to_yyyymmddd(double noundef %0) #7 {
bb.a:
  %i.a = tail call i64 @lround(double noundef %0) #13
  %i.b = trunc i64 %i.a to i32                    ; 7 uses
  %.not52 = icmp ult i32 %i.b, 45
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZL12days_in_yearl.exit
  %.02154 = phi i32 [ %i.i, %_ZL12days_in_yearl.exit ], [ 1859, %bb.a ] ; 5 uses
  %.02253 = phi i32 [ %i.h, %_ZL12days_in_yearl.exit ], [ 45, %bb.a ]
  %i.c = and i32 %.02154, 3
  %i.d = icmp ne i32 %i.c, 0
  %i.e = urem i32 %.02154, 100
  %.not.i.i = icmp eq i32 %i.e, 0
  %or.cond.i.i = or i1 %i.d, %.not.i.i
  br i1 %or.cond.i.i, label %_ZL12is_leap_yearl.exit.i, label %_ZL12days_in_yearl.exit

_ZL12is_leap_yearl.exit.i:                        ; preds = %.lr.ph
  %i.f = urem i32 %.02154, 400
  %.not.i = icmp eq i32 %i.f, 0
  %spec.select.i = select i1 %.not.i, i32 366, i32 365
  br label %_ZL12days_in_yearl.exit

_ZL12days_in_yearl.exit:                          ; preds = %.lr.ph, %_ZL12is_leap_yearl.exit.i
  %i.g = phi i32 [ 366, %.lr.ph ], [ %spec.select.i, %_ZL12is_leap_yearl.exit.i ]
  %i.h = add i32 %i.g, %.02253                    ; 3 uses
  %i.i = add i32 %.02154, 1
  %.not = icmp ugt i32 %i.h, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %_ZL12days_in_yearl.exit, %bb.a
  %.022.lcssa = phi i32 [ 45, %bb.a ], [ %i.h, %_ZL12days_in_yearl.exit ] ; 3 uses
  %.021.lcssa = phi i32 [ 1858, %bb.a ], [ %.02154, %_ZL12days_in_yearl.exit ] ; 4 uses
  %i.j = and i32 %.021.lcssa, 3
  %i.k = icmp ne i32 %i.j, 0
  %i.l = urem i32 %.021.lcssa, 100
  %.not.i.i25 = icmp eq i32 %i.l, 0
  %or.cond.i.i26 = or i1 %.not.i.i25, %i.k
  br i1 %or.cond.i.i26, label %_ZL12days_in_yearl.exit30.split.us, label %_ZL12days_in_yearl.exit30.split

_ZL12days_in_yearl.exit30.split.us:               ; preds = %._crit_edge
  %i.m = insertelement <2 x i32> poison, i32 %.021.lcssa, i64 0
  %i.n = urem <2 x i32> %i.m, <i32 400, i32 1>
  %i.o = icmp eq <2 x i32> %i.n, zeroinitializer  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %spec.select.i29.neg = select i1 %i.p, i32 -366, i32 -365
  %i.q = add i32 %spec.select.i29.neg, %.022.lcssa ; 3 uses
  %spec.select.i34.us63 = add i32 %i.q, 31
  %.not24.us64 = icmp ugt i32 %spec.select.i34.us63, %i.b
  br i1 %.not24.us64, label %.split.us, label %_ZL13days_in_monthmm.exit42.us.preheader

_ZL13days_in_monthmm.exit42.us.preheader:         ; preds = %_ZL12days_in_yearl.exit30.split.us
  %i.r = extractelement <2 x i1> %i.o, i64 0      ; 2 uses
  br label %_ZL13days_in_monthmm.exit42.us

_ZL13days_in_monthmm.exit42.us:                   ; preds = %_ZL13days_in_monthmm.exit42.us.preheader, %_ZL13days_in_monthmm.exit42.us
  %i.s = phi i1 [ %i.ad, %_ZL13days_in_monthmm.exit42.us ], [ false, %_ZL13days_in_monthmm.exit42.us.preheader ]
  %i.t = phi i32 [ %i.ac, %_ZL13days_in_monthmm.exit42.us ], [ 31, %_ZL13days_in_monthmm.exit42.us.preheader ]
  %.0.us66 = phi i32 [ %i.x, %_ZL13days_in_monthmm.exit42.us ], [ 1, %_ZL13days_in_monthmm.exit42.us.preheader ]
  %.1.us65 = phi i32 [ %i.w, %_ZL13days_in_monthmm.exit42.us ], [ %i.q, %_ZL13days_in_monthmm.exit42.us.preheader ]
  %i.u = and i1 %i.r, %i.s
  %i.v = zext i1 %i.u to i32
  %spec.select.i41.us = add i32 %i.t, %.1.us65
  %i.w = add i32 %spec.select.i41.us, %i.v        ; 3 uses
  %i.x = add i32 %.0.us66, 1                      ; 4 uses
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.x, i32 12)
  %i.z = icmp eq i32 %i.x, 0
  %narrow.us = select i1 %i.z, i32 1, i32 %i.y    ; 2 uses
  %spec.store.select2.i.us = zext nneg i32 %narrow.us to i64
  %i.aa = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select2.i.us
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51 ; 2 uses
  %i.ad = icmp eq i32 %narrow.us, 2               ; 2 uses
  %or.cond.i.us = and i1 %i.r, %i.ad
  %i.ae = zext i1 %or.cond.i.us to i32
  %spec.select.i34.us = add i32 %i.ac, %i.w
  %i.af = add i32 %spec.select.i34.us, %i.ae
  %.not24.us = icmp ugt i32 %i.af, %i.b
  br i1 %.not24.us, label %.split.us, label %_ZL13days_in_monthmm.exit42.us, !llvm.loop !83

_ZL12days_in_yearl.exit30.split:                  ; preds = %._crit_edge
  %i.ag = add i32 %.022.lcssa, -366               ; 2 uses
  %spec.select.i344457 = add i32 %.022.lcssa, -335
  %.not244558 = icmp ugt i32 %spec.select.i344457, %i.b
  br i1 %.not244558, label %.split.us, label %_ZL13days_in_monthmm.exit42

_ZL13days_in_monthmm.exit42:                      ; preds = %_ZL12days_in_yearl.exit30.split, %_ZL13days_in_monthmm.exit42
  %i.ah = phi i1 [ %i.ar, %_ZL13days_in_monthmm.exit42 ], [ false, %_ZL12days_in_yearl.exit30.split ]
  %i.ai = phi i32 [ %i.aq, %_ZL13days_in_monthmm.exit42 ], [ 31, %_ZL12days_in_yearl.exit30.split ]
  %.060 = phi i32 [ %i.al, %_ZL13days_in_monthmm.exit42 ], [ 1, %_ZL12days_in_yearl.exit30.split ]
  %.159 = phi i32 [ %i.ak, %_ZL13days_in_monthmm.exit42 ], [ %i.ag, %_ZL12days_in_yearl.exit30.split ]
  %i.aj = zext i1 %i.ah to i32
  %spec.select.i41 = add i32 %i.ai, %.159
  %i.ak = add i32 %spec.select.i41, %i.aj         ; 3 uses
  %i.al = add i32 %.060, 1                        ; 4 uses
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 12)
  %i.an = icmp eq i32 %i.al, 0
  %narrow = select i1 %i.an, i32 1, i32 %i.am     ; 2 uses
  %spec.store.select2.i = zext nneg i32 %narrow to i64
  %i.ao = getelementptr [4 x i8], ptr @__const._ZL13days_in_monthmm.month_table, i64 %spec.store.select2.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51 ; 2 uses
  %i.ar = icmp eq i32 %narrow, 2                  ; 2 uses
  %i.as = zext i1 %i.ar to i32
  %spec.select.i3444 = add i32 %i.aq, %i.ak
  %i.at = add i32 %spec.select.i3444, %i.as
  %.not2445 = icmp ugt i32 %i.at, %i.b
  br i1 %.not2445, label %.split.us, label %_ZL13days_in_monthmm.exit42, !llvm.loop !83

.split.us:                                        ; preds = %_ZL13days_in_monthmm.exit42, %_ZL13days_in_monthmm.exit42.us, %_ZL12days_in_yearl.exit30.split, %_ZL12days_in_yearl.exit30.split.us
  %.us-phi = phi i32 [ %i.w, %_ZL13days_in_monthmm.exit42.us ], [ %i.q, %_ZL12days_in_yearl.exit30.split.us ], [ %i.ag, %_ZL12days_in_yearl.exit30.split ], [ %i.ak, %_ZL13days_in_monthmm.exit42 ]
  %.us-phi56 = phi i32 [ %i.x, %_ZL13days_in_monthmm.exit42.us ], [ 1, %_ZL12days_in_yearl.exit30.split.us ], [ 1, %_ZL12days_in_yearl.exit30.split ], [ %i.al, %_ZL13days_in_monthmm.exit42 ]
  %i.au = add nuw i32 %i.b, 1
  %i.av = sub i32 %i.au, %.us-phi
  %i.aw = uitofp i32 %.021.lcssa to double
  %i.ax = uitofp i32 %.us-phi56 to double
  %i.ay = fmul nnan double %i.ax, 1.000000e+02
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aw, double 1.000000e+04, double %i.ay)
  %i.ba = uitofp i32 %i.av to double
  %i.bb = fadd double %i.az, %i.ba
  ret double %i.bb
}

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

end_hunk_0
