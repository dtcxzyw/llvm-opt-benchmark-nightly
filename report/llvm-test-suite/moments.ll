Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/moments?download=true
inline.NumInlined: 202
inline.NumDeleted: 75
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %.sroa.017.041, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc12
  %.not.i17.i.i.i = icmp eq ptr %.sroa.017.041, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.041, i64 noundef %i.j) #16
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.c
  %.sroa.15.1 = phi ptr [ %i.u, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.15.039, %bb.c ] ; 2 uses
  %.pn27 = phi ptr [ %i.s, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.10.040, %bb.c ]
  %.sroa.017.1 = phi ptr [ %i.r, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.017.041, %bb.c ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn27, i64 8 ; 2 uses
  %i.v = add nuw i32 %.01042, 1                   ; 2 uses
  %.not = icmp eq i32 %i.v, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.w = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.x = ptrtoint ptr %.sroa.017.0.lcssa to i64   ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %i.z) ; 0 uses
  %i.ab = load double, ptr %2, align 8, !tbaa !23
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !25
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ah) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !26
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.ak) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !27
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !28
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.aq) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = load double, ptr %i.as, align 8, !tbaa !29
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

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.sroa.15.036 = phi ptr [ %.sroa.15.0.lcssa, %bb.j ], [ %.sroa.10.040, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.017.030 = phi ptr [ %.sroa.017.0.lcssa, %bb.j ], [ %.sroa.017.041, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %.sroa.017.030, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIdSaIdEED2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = ptrtoint ptr %.sroa.15.036 to i64
  %i.az = ptrtoint ptr %.sroa.017.030 to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.030, i64 noundef %i.ba) #16
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
define linkonce_odr dso_local void @_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2) unnamed_addr #2 comdat align 2 !guid !40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
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
  store double %i.l, ptr %i.a, align 8, !tbaa !24
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.n, %.lr.ph.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i = phi ptr [ %i.o, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %i.m = load double, ptr %.sroa.02.06.i, align 8, !tbaa !20
  %i.n = fadd double %.07.i, %i.m                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %2
  br i1 %.not.i, label %.lr.ph, label %.lr.ph.i, !llvm.loop !36

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.p = ptrtoint ptr %2 to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = uitofp i64 %i.s to double                ; 2 uses
  %i.u = fdiv double %i.n, %i.t                   ; 2 uses
  store double %i.u, ptr %i.a, align 8, !tbaa !24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread
  %i.v = phi double [ %i.k, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = phi i64 [ %i.j, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.s, %bb.b ] ; 2 uses
  %i.x = phi i64 [ %i.i, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.r, %bb.b ] ; 2 uses
  %i.y = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.ay, %bb.b ]
  %i.z = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.ax, %bb.b ]
  %i.aa = phi <2 x double> [ zeroinitializer, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.at, %bb.b ]
  %i.ab = add nsw i64 %i.w, -1
  %i.ac = uitofp i64 %i.ab to double
  %i.ad = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %i.af = fdiv <2 x double> %i.aa, %i.ae          ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  store double %i.ag, ptr %i.b, align 8, !tbaa !25
  %i.ah = extractelement <2 x double> %i.af, i64 1 ; 4 uses
  store double %i.ah, ptr %i.d, align 8, !tbaa !27
  %i.ai = tail call double @sqrt(double noundef %i.ah) #13, !tbaa !9 ; 2 uses
  store double %i.ai, ptr %i.c, align 8, !tbaa !26
  %i.aj = fcmp une double %i.ah, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.ak = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ay, %bb.b ]
  %i.al = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ax, %bb.b ]
  %.sroa.025.033 = phi ptr [ %1, %.lr.ph ], [ %i.az, %bb.b ] ; 2 uses
  %i.am = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.at, %bb.b ]
  %i.an = load double, ptr %.sroa.025.033, align 8, !tbaa !20
  %i.ao = fsub double %i.an, %i.u                 ; 5 uses
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fmul double %i.ao, %i.ao                ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = fadd <2 x double> %i.am, %i.as          ; 4 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  store double %i.au, ptr %i.b, align 8, !tbaa !25
  %i.av = extractelement <2 x double> %i.at, i64 1
  store double %i.av, ptr %i.d, align 8, !tbaa !27
  %i.aw = fmul double %i.ao, %i.aq                ; 2 uses
  %i.ax = fadd double %i.aw, %i.al                ; 3 uses
  store double %i.ax, ptr %i.e, align 8, !tbaa !28
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ao, double %i.ak) ; 3 uses
  store double %i.ay, ptr %i.f, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !37

bb.c:                                             ; preds = %._crit_edge
  %i.ba = fmul double %i.ah, %i.v
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> %i.af, double %i.ai, i64 0
  %i.be = fmul <2 x double> %i.bc, %i.bd
  %i.bf = insertelement <2 x double> poison, double %i.z, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.y, i64 1
  %i.bh = fdiv <2 x double> %i.bg, %i.be          ; 2 uses
  %i.bi = fadd <2 x double> %i.bh, <double poison, double -3.000000e+00>
  %3 = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  store <2 x double> %3, ptr %i.e, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.bj = ashr exact i64 %i.x, 1                  ; 3 uses
  %.idx = and i64 %i.bj, -8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 5 uses
  %i.bl = icmp eq ptr %i.bk, %2
  %or.cond.i = select i1 %.not5.i, i1 true, i1 %i.bl
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = xor i64 %i.bn, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %1, ptr %i.bk, ptr %2, i64 noundef %i.bo)
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit: ; preds = %bb.d, %bb.e
  %i.bp = and i64 %i.x, 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %or.cond.i.i = icmp ult i64 %i.bj, 16
  br i1 %or.cond.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i.i = load double, ptr %1, align 8, !tbaa !20 ; 2 uses
  %i.bs = add nsw i64 %i.bj, -16                  ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.bv = phi double [ %i.ca, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bz, %.lr.ph.i.i.prol ], [ %i.br, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %1, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !20 ; 2 uses
  %i.by = fcmp olt double %i.bv, %i.bx            ; 2 uses
  %spec.select.i.i.prol = select i1 %i.by, ptr %i.bw, ptr %.sroa.02.010.i.i.prol ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ca = select i1 %i.by, double %i.bx, double %i.bv ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !38

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi double [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.ca, %.lr.ph.i.i.prol ]
  %.unr53 = phi ptr [ %i.br, %.lr.ph.preheader.i.i ], [ %i.bz, %.lr.ph.i.i.prol ]
  %.sroa.02.010.i.i.unr = phi ptr [ %1, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cb = icmp ult i64 %i.bs, 24
  br i1 %i.cb, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.cc = phi double [ %i.ct, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.cd = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.unr53, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.sroa.02.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20 ; 2 uses
  %i.cf = fcmp olt double %i.cc, %i.ce            ; 2 uses
  %spec.select.i.i = select i1 %i.cf, ptr %i.cd, ptr %.sroa.02.010.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ch = select i1 %i.cf, double %i.ce, double %i.cc ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !20 ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci            ; 2 uses
  %spec.select.i.i.1 = select i1 %i.cj, ptr %i.cg, ptr %spec.select.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cl = select i1 %i.cj, double %i.ci, double %i.ch ; 2 uses
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !20 ; 2 uses
  %i.cn = fcmp olt double %i.cl, %i.cm            ; 2 uses
  %spec.select.i.i.2 = select i1 %i.cn, ptr %i.ck, ptr %spec.select.i.i.1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cp = select i1 %i.cn, double %i.cm, double %i.cl ; 2 uses
  %i.cq = load double, ptr %i.co, align 8, !tbaa !20 ; 2 uses
  %i.cr = fcmp olt double %i.cp, %i.cq            ; 2 uses
  %spec.select.i.i.3 = select i1 %i.cr, ptr %i.co, ptr %spec.select.i.i.2 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.cs, %i.bk
  %i.ct = select i1 %i.cr, double %i.cq, double %i.cp
  br i1 %.not.i.i.3, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !39

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.f
  %.sroa.02.2.i.i = phi ptr [ %1, %bb.f ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.cu = load double, ptr %i.bk, align 8, !tbaa !20
  %i.cv = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !20
  %i.cw = fadd double %i.cu, %i.cv
  %i.cx = fmul double %i.cw, 5.000000e-01
  br label %bb.h

bb.g:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %i.cy = load double, ptr %i.bk, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
  %storemerge = phi double [ %i.cy, %bb.g ], [ %i.cx, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit ]
  store double %storemerge, ptr %0, align 8, !tbaa !23
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
define linkonce_odr dso_local void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 comdat !guid !48 {
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
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph58, !llvm.loop !42

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.012.023.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ]
  %.sroa.015.022.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %.sroa.015.022.lcssa, ptr nonnull %i.h, ptr %.sroa.012.023.lcssa)
  %i.i = load double, ptr %.sroa.015.022.lcssa, align 8, !tbaa !20
  %i.j = load double, ptr %1, align 8, !tbaa !20
  store double %i.j, ptr %.sroa.015.022.lcssa, align 8, !tbaa !20
  store double %i.i, ptr %1, align 8, !tbaa !20
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit

.lr.ph58:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.015.02257 = phi ptr [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.sroa.012.02356 = phi ptr [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.02455 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.02455, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.015.02257, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.02257, i64 8 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.012.02356, i64 -8 ; 3 uses
  %i.q = load double, ptr %i.o, align 8, !tbaa !20 ; 5 uses
  %i.r = load double, ptr %i.n, align 8, !tbaa !20 ; 5 uses
  %i.s = fcmp olt double %i.q, %i.r
  %i.t = load double, ptr %i.p, align 8, !tbaa !20 ; 6 uses
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph58
  %i.u = fcmp olt double %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %.sroa.015.02257, align 8, !tbaa !20
  store double %i.r, ptr %.sroa.015.02257, align 8, !tbaa !20
  store double %i.v, ptr %i.n, align 8, !tbaa !20
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.w = fcmp olt double %i.q, %i.t
  %i.x = load double, ptr %.sroa.015.02257, align 8, !tbaa !20 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.t, ptr %.sroa.015.02257, align 8, !tbaa !20
  store double %i.x, ptr %i.p, align 8, !tbaa !20
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.q, ptr %.sroa.015.02257, align 8, !tbaa !20
  store double %i.x, ptr %i.o, align 8, !tbaa !20
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

end_hunk_0
