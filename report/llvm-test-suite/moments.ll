inline.NumInlined: 202
inline.NumDeleted: 75
begin_hunk_0_@main:bb.a
  %i.w = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.x = ptrtoint ptr %.sroa.017.0.lcssa to i64   ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %i.z) ; 0 uses
  %i.ab = load double, ptr %2, align 8, !tbaa !16
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ah) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !20
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.ak) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !21
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !22
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.aq) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = load double, ptr %i.as, align 8, !tbaa !23
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.at) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.not.i.i.i = icmp eq ptr %.sroa.017.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.aw = sub i64 %i.av, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.0.lcssa, i64 noundef %i.aw) #16
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  ret i32 0

bb.j:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.sroa.15.035 = phi ptr [ %.sroa.15.0.lcssa, %bb.j ], [ %.sroa.10.039, %.loopexit ], [ %.sroa.10.039, %.loopexit.split-lp ]
  %.sroa.017.029 = phi ptr [ %.sroa.017.0.lcssa, %bb.j ], [ %.sroa.017.040, %.loopexit ], [ %.sroa.017.040, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %.sroa.017.029, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIdSaIdEED2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = ptrtoint ptr %.sroa.15.035 to i64
  %i.az = ptrtoint ptr %.sroa.017.029 to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.029, i64 noundef %i.ba) #16
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit14

_ZNSt6vectorIdSaIdEED2Ev.exit14:                  ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not5.i = icmp eq ptr %1, %2                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread, label %.lr.ph.i

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread: ; preds = %bb.a
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = uitofp i64 %i.j to double                ; 2 uses
  %i.l = fdiv double 0.000000e+00, %i.k
  store double %i.l, ptr %i.a, align 8, !tbaa !18
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.n, %.lr.ph.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i = phi ptr [ %i.o, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %i.m = load double, ptr %.sroa.02.06.i, align 8, !tbaa !12
  %i.n = fadd double %.07.i, %i.m                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %2
  br i1 %.not.i, label %.lr.ph.preheader, label %.lr.ph.i, !llvm.loop !24

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.p = ptrtoint ptr %2 to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = uitofp i64 %i.s to double                ; 2 uses
  %i.u = fdiv double %i.n, %i.t                   ; 2 uses
  store double %i.u, ptr %i.a, align 8, !tbaa !18
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread
  %i.v = phi double [ %i.k, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.w = phi i64 [ %i.j, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.x = phi i64 [ %i.i, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.y = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.au, %.lr.ph ]
  %i.z = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.at, %.lr.ph ]
  %i.aa = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.ar, %.lr.ph ]
  %i.ab = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.ap, %.lr.ph ]
  %i.ac = fdiv double %i.ab, %i.v
  store double %i.ac, ptr %i.b, align 8, !tbaa !19
  %i.ad = add nsw i64 %i.w, -1
  %i.ae = uitofp i64 %i.ad to double
  %i.af = fdiv double %i.aa, %i.ae                ; 5 uses
  store double %i.af, ptr %i.d, align 8, !tbaa !21
  %i.ag = tail call double @sqrt(double noundef %i.af) #13, !tbaa !4 ; 2 uses
  store double %i.ag, ptr %i.c, align 8, !tbaa !20
  %i.ah = fcmp une double %i.af, 0.000000e+00
  br i1 %i.ah, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.025.036 = phi ptr [ %i.av, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.ai = phi double [ %i.ap, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.aj = phi double [ %i.ar, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.ak = phi double [ %i.at, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.al = phi double [ %i.au, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.am = load double, ptr %.sroa.025.036, align 8, !tbaa !12
  %i.an = fsub double %i.am, %i.u                 ; 5 uses
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = fadd double %i.ai, %i.ao                ; 3 uses
  store double %i.ap, ptr %i.b, align 8, !tbaa !19
  %i.aq = fmul double %i.an, %i.an                ; 2 uses
  %i.ar = fadd double %i.aq, %i.aj                ; 3 uses
  store double %i.ar, ptr %i.d, align 8, !tbaa !21
  %i.as = fmul double %i.an, %i.aq                ; 2 uses
  %i.at = fadd double %i.as, %i.ak                ; 3 uses
  store double %i.at, ptr %i.e, align 8, !tbaa !22
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.an, double %i.al) ; 3 uses
  store double %i.au, ptr %i.f, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.av, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.b:                                             ; preds = %._crit_edge
  %i.aw = fmul double %i.af, %i.v                 ; 2 uses
  %i.ax = fmul double %i.aw, %i.ag
  %i.ay = fdiv double %i.z, %i.ax
  store double %i.ay, ptr %i.e, align 8, !tbaa !22
  %i.az = fmul double %i.af, %i.aw
  %i.ba = fdiv double %i.y, %i.az
  %i.bb = fadd double %i.ba, -3.000000e+00
  store double %i.bb, ptr %i.f, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.bc = ashr exact i64 %i.x, 1                  ; 3 uses
  %.idx = and i64 %i.bc, -8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 5 uses
  %i.be = icmp eq ptr %i.bd, %2
  %or.cond.i = select i1 %.not5.i, i1 true, i1 %i.be
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = xor i64 %i.bg, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %1, ptr %i.bd, ptr %2, i64 noundef %i.bh)
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit: ; preds = %bb.c, %bb.d
  %i.bi = and i64 %i.x, 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %or.cond.i.i = icmp ult i64 %i.bc, 16
  br i1 %or.cond.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i.i = load double, ptr %1, align 8, !tbaa !12 ; 2 uses
  %i.bl = add nsw i64 %i.bc, -16                  ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.bo = phi double [ %4, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bp = phi ptr [ %3, %.lr.ph.i.i.prol ], [ %i.bk, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %1, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !12 ; 2 uses
  %i.br = fcmp olt double %i.bo, %i.bq            ; 2 uses
  %spec.select.i.i.prol = select i1 %i.br, ptr %i.bp, ptr %.sroa.02.010.i.i.prol ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %4 = select i1 %i.br, double %i.bq, double %i.bo ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !26

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi double [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %4, %.lr.ph.i.i.prol ]
  %.unr54 = phi ptr [ %i.bk, %.lr.ph.preheader.i.i ], [ %3, %.lr.ph.i.i.prol ]
  %.sroa.02.010.i.i.unr = phi ptr [ %1, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bs = icmp ult i64 %i.bl, 24
  br i1 %i.bs, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.bt = phi double [ %14, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bu = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.unr54, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.sroa.02.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !12 ; 2 uses
  %i.bw = fcmp olt double %i.bt, %i.bv            ; 2 uses
  %spec.select.i.i = select i1 %i.bw, ptr %i.bu, ptr %.sroa.02.010.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %5 = select i1 %i.bw, double %i.bv, double %i.bt ; 2 uses
  %6 = load double, ptr %i.bx, align 8, !tbaa !12 ; 2 uses
  %7 = fcmp olt double %5, %6                     ; 2 uses
  %spec.select.i.i.1 = select i1 %7, ptr %i.bx, ptr %spec.select.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %8 = select i1 %7, double %6, double %5         ; 2 uses
  %9 = load double, ptr %i.by, align 8, !tbaa !12 ; 2 uses
  %10 = fcmp olt double %8, %9                    ; 2 uses
  %spec.select.i.i.2 = select i1 %10, ptr %i.by, ptr %spec.select.i.i.1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %11 = select i1 %10, double %9, double %8       ; 2 uses
  %12 = load double, ptr %i.bz, align 8, !tbaa !12 ; 2 uses
  %13 = fcmp olt double %11, %12                  ; 2 uses
  %spec.select.i.i.3 = select i1 %13, ptr %i.bz, ptr %spec.select.i.i.2 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.ca, %i.bd
  %14 = select i1 %13, double %12, double %11
  br i1 %.not.i.i.3, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !28

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.sroa.02.2.i.i = phi ptr [ %1, %bb.e ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.cb = load double, ptr %i.bd, align 8, !tbaa !12
  %i.cc = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !12
  %i.cd = fadd double %i.cb, %i.cc
  %i.ce = fmul double %i.cd, 5.000000e-01
  br label %bb.g

bb.f:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %i.cf = load double, ptr %i.bd, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
  %storemerge = phi double [ %i.cf, %bb.f ], [ %i.ce, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit ]
  store double %storemerge, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph58

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.l, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph58, !llvm.loop !29

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.015.023.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ] ; 3 uses
  %.sroa.012.022.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %.sroa.015.023.lcssa, ptr nonnull %i.h, ptr %.sroa.012.022.lcssa)
  %i.i = load double, ptr %.sroa.015.023.lcssa, align 8, !tbaa !12
  %i.j = load double, ptr %1, align 8, !tbaa !12
  store double %i.j, ptr %.sroa.015.023.lcssa, align 8, !tbaa !12
  store double %i.i, ptr %1, align 8, !tbaa !12
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit

.lr.ph58:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.012.02257 = phi ptr [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.02356 = phi ptr [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.02455 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.02455, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.015.02356, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.02356, i64 8 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.012.02257, i64 -8 ; 3 uses
  %i.q = load double, ptr %i.o, align 8, !tbaa !12 ; 5 uses
  %i.r = load double, ptr %i.n, align 8, !tbaa !12 ; 5 uses
  %i.s = fcmp olt double %i.q, %i.r
  %i.t = load double, ptr %i.p, align 8, !tbaa !12 ; 6 uses
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph58
  %i.u = fcmp olt double %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.r, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.v, ptr %i.n, align 8, !tbaa !12
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.w = fcmp olt double %i.q, %i.t
  %i.x = load double, ptr %.sroa.015.02356, align 8, !tbaa !12 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.t, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.x, ptr %i.p, align 8, !tbaa !12
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.q, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.x, ptr %i.o, align 8, !tbaa !12
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph58
  %i.y = fcmp olt double %i.q, %i.t
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load double, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.q, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.z, ptr %i.o, align 8, !tbaa !12
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.aa = fcmp olt double %i.r, %i.t
  %i.ab = load double, ptr %.sroa.015.02356, align 8, !tbaa !12 ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.t, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.ab, ptr %i.p, align 8, !tbaa !12
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store double %i.r, ptr %.sroa.015.02356, align 8, !tbaa !12
  store double %i.ab, ptr %i.n, align 8, !tbaa !12
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.n
  %.sroa.010.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.n ], [ %.sroa.012.02257, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.ac = load double, ptr %.sroa.015.02356, align 8, !tbaa !12 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.af, %bb.l ] ; 7 uses
  %i.ad = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !12 ; 2 uses
  %i.ae = fcmp olt double %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !30

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.l ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ag = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !12 ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !31

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.n:                                             ; preds = %bb.m
  store double %i.ag, ptr %.sroa.010.1.i.i, align 8, !tbaa !12
  store double %i.ad, ptr %.sroa.0.1.i.i, align 8, !tbaa !12
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !32

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.010.1.i.i, %1       ; 2 uses
  %.sroa.012.0..sroa.010.1.i.i = select i1 %.not, ptr %.sroa.010.1.i.i, ptr %.sroa.012.02257 ; 4 uses
  %.sroa.010.1.i.i..sroa.015.0 = select i1 %.not, ptr %.sroa.015.02356, ptr %.sroa.010.1.i.i ; 4 uses
  %i.aj = ptrtoint ptr %.sroa.012.0..sroa.010.1.i.i to i64
  %i.ak = ptrtoint ptr %.sroa.010.1.i.i..sroa.015.0 to i64 ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 3
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %bb.a
  %.sroa.012.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.012.0..sroa.010.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ] ; 3 uses
  %.sroa.015.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.010.1.i.i..sroa.015.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ] ; 8 uses
  %.lcssa18 = phi i64 [ %i.b, %bb.a ], [ %i.ak, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ]
  %i.ao = icmp eq ptr %.sroa.015.0.lcssa, %.sroa.012.0.lcssa
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.0.015.i, %.sroa.012.0.lcssa
  %or.cond = select i1 %i.ao, i1 true, i1 %.not16.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
  %.sroa.0.018.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.0.015.i, %._crit_edge ] ; 6 uses
  %.pn17.i = phi ptr [ %.sroa.0.018.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ], [ %.sroa.015.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ap = load double, ptr %.sroa.0.018.i, align 8, !tbaa !12 ; 4 uses
  %i.aq = load double, ptr %.sroa.015.0.lcssa, align 8, !tbaa !12 ; 2 uses
end_hunk_0
