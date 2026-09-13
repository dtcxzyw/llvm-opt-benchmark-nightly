Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/statistics?download=true
inline.NumInlined: 942
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE:bb.a
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.ad = ashr exact i64 %i.v, 3
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = xor i64 %i.af, 126
  invoke void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %i.u, ptr %i.aa, ptr nonnull %i.ac, i64 noundef %i.ag)
          to label %._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge unwind label %bb.k

._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge: ; preds = %bb.i
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !22
  %.pre32 = ptrtoint ptr %.pre27 to i64
  %.pre34 = ptrtoint ptr %.pre28 to i64
  %.pre36 = sub i64 %.pre32, %.pre34
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit: ; preds = %._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %.pre-phi37 = phi i64 [ %.pre36, %._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge ], [ %i.v, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ]
  %i.ah = and i64 %.pre-phi37, 8
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %i.ai = load double, ptr %i.aa, align 8, !tbaa !18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i15 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIdSaIdEED2Ev.exit16, label %bb.m

bb.l:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %or.cond.i.i = icmp ult i64 %i.z, 16
  br i1 %or.cond.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.pre.i.i = load double, ptr %i.u, align 8, !tbaa !18 ; 2 uses
  %i.al = add nsw i64 %i.z, -16                   ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.ao = phi double [ %i.at, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ap = phi ptr [ %i.as, %.lr.ph.i.i.prol ], [ %i.ak, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18 ; 2 uses
  %i.ar = fcmp olt double %i.ao, %i.aq            ; 2 uses
  %spec.select.i.i.prol = select i1 %i.ar, ptr %i.ap, ptr %.sroa.02.010.i.i.prol ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.at = select i1 %i.ar, double %i.aq, double %i.ao ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !86

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi double [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.at, %.lr.ph.i.i.prol ]
  %.unr47 = phi ptr [ %i.ak, %.lr.ph.preheader.i.i ], [ %i.as, %.lr.ph.i.i.prol ]
  %.sroa.02.010.i.i.unr = phi ptr [ %i.u, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.au = icmp ult i64 %i.al, 24
  br i1 %i.au, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.av = phi double [ %i.bm, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.aw = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.unr47, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.sroa.02.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  %i.ay = fcmp olt double %i.av, %i.ax            ; 2 uses
  %spec.select.i.i = select i1 %i.ay, ptr %i.aw, ptr %.sroa.02.010.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ba = select i1 %i.ay, double %i.ax, double %i.av ; 2 uses
  %i.bb = load double, ptr %i.az, align 8, !tbaa !18 ; 2 uses
  %i.bc = fcmp olt double %i.ba, %i.bb            ; 2 uses
  %spec.select.i.i.1 = select i1 %i.bc, ptr %i.az, ptr %spec.select.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.be = select i1 %i.bc, double %i.bb, double %i.ba ; 2 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !18 ; 2 uses
  %i.bg = fcmp olt double %i.be, %i.bf            ; 2 uses
  %spec.select.i.i.2 = select i1 %i.bg, ptr %i.bd, ptr %spec.select.i.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.bi = select i1 %i.bg, double %i.bf, double %i.be ; 2 uses
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !18 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj            ; 2 uses
  %spec.select.i.i.3 = select i1 %i.bk, ptr %i.bh, ptr %spec.select.i.i.2 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bl, %i.aa
  %i.bm = select i1 %i.bk, double %i.bj, double %i.bi
  br i1 %.not.i.i.3, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !87

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.l
  %.sroa.02.2.i.i = phi ptr [ %i.u, %bb.l ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.bn = load double, ptr %i.aa, align 8, !tbaa !18
  %i.bo = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !18
  %i.bp = fadd double %i.bn, %i.bo
  %i.bq = fmul double %i.bp, 5.000000e-01
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, %bb.j
  %.0 = phi double [ %i.ai, %bb.j ], [ %i.bq, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.f) #27
  br label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.f) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit16

_ZNSt6vectorIdSaIdEED2Ev.exit16:                  ; preds = %bb.k, %bb.m
  resume { ptr, i32 } %i.aj

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit: ; preds = %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit.i", %bb.b, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.1 = phi double [ %.0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.o, %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit.i" ], [ 0.000000e+00, %bb.b ]
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef double @_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %"_ZNK9benchmark3$_2clEd.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.07.i.i.i = phi double [ %i.f, %.lr.ph.i.i.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !18
  %i.f = fadd double %.07.i.i.i, %i.e             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i.i, label %bb.b, label %.lr.ph.i.i.i, !llvm.loop !0

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = uitofp i64 %i.k to double                ; 3 uses
  %i.m = fdiv nnan double 1.000000e+00, %i.l      ; 2 uses
  %i.n = fmul double %i.m, %i.f                   ; 2 uses
  %i.o = icmp eq i64 %i.j, 8
  br i1 %i.o, label %"_ZNK9benchmark3$_2clEd.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi double [ %i.q, %.lr.ph.i.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.0.09.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.p = load double, ptr %.sroa.0.09.i.i, align 8, !tbaa !18 ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %.010.i.i) ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.09.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit", label %.lr.ph.i.i, !llvm.loop !1

"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit":  ; preds = %.lr.ph.i.i
  %i.s = fmul double %i.m, %i.q
  %i.t = fadd nnan double %i.l, -1.000000e+00
  %i.u = fdiv double %i.l, %i.t
  %i.v = fmul double %i.n, %i.n
  %i.w = fsub double %i.s, %i.v
  %i.x = fmul double %i.u, %i.w                   ; 2 uses
  %i.y = fcmp olt double %i.x, 0.000000e+00
  br i1 %i.y, label %"_ZNK9benchmark3$_2clEd.exit", label %bb.c

bb.c:                                             ; preds = %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit"
  %i.z = tail call double @sqrt(double noundef %i.x) #28
  br label %"_ZNK9benchmark3$_2clEd.exit"

"_ZNK9benchmark3$_2clEd.exit":                    ; preds = %bb.a, %bb.c, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit", %bb.b
  %.0 = phi double [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit" ], [ %i.z, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef double @_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  %i.i = icmp eq ptr %i.c, %i.b
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi double [ %i.k, %.lr.ph.i.i.i.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.02.06.i.i.i.i, align 8, !tbaa !18
  %i.k = fadd double %.07.i.i.i.i, %i.j           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi double [ %i.n, %.lr.ph.i.i.i ], [ 0.000000e+00, %.lr.ph.i.i.i.i ]
  %.sroa.0.09.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.m = load double, ptr %.sroa.0.09.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %.010.i.i.i) ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.b
  br i1 %.not.i.i.i, label %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i", label %.lr.ph.i.i.i, !llvm.loop !1

"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i": ; preds = %.lr.ph.i.i.i
  %1 = uitofp i64 %i.g to double                  ; 2 uses
  %2 = insertelement <2 x double> poison, double %1, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fadd <2 x double> %3, <double -0.000000e+00, double -1.000000e+00>
  %5 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %1, i64 1
  %6 = fdiv <2 x double> %5, %4                   ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0      ; 3 uses
  %8 = fmul double %7, %i.k                       ; 2 uses
  %9 = fmul double %7, %i.n
  %i.p = fmul double %8, %8
  %i.q = fsub double %9, %i.p
  %10 = extractelement <2 x double> %6, i64 1
  %i.r = fmul double %10, %i.q                    ; 2 uses
  %i.s = fcmp olt double %i.r, 0.000000e+00
  br i1 %i.s, label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, label %bb.b

bb.b:                                             ; preds = %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i"
  %i.t = tail call double @sqrt(double noundef %i.r) #28
  br label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit

_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit: ; preds = %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i", %bb.b
  %.0.i = phi double [ %i.t, %bb.b ], [ 0.000000e+00, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i" ]
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, %.lr.ph.i.i.i7
  %.07.i.i.i = phi double [ %i.v, %.lr.ph.i.i.i7 ], [ 0.000000e+00, %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit ]
  %.sroa.02.06.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i7 ], [ %i.c, %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit ] ; 2 uses
  %i.u = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !18
  %i.v = fadd double %.07.i.i.i, %i.u             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i.i8, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.i.i7, !llvm.loop !0

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit: ; preds = %.lr.ph.i.i.i7
  %i.x = fmul double %7, %i.v                     ; 2 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.y, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread, label %_ZSt10fpclassifyd.exit.thread

_ZSt10fpclassifyd.exit.thread:                    ; preds = %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit
  %i.z = fdiv double %.0.i, %i.x
  br label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread: ; preds = %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, %_ZSt10fpclassifyd.exit.thread, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.z, %_ZSt10fpclassifyd.exit.thread ], [ 0.000000e+00, %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit ]
  ret double %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.43", align 1     ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 15 uses
  %6 = alloca %"class.std::vector", align 8       ; 17 uses
  %7 = alloca %"class.std::map.20", align 8       ; 11 uses
  %.sroa.0271 = alloca %"class.benchmark::Counter", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !93     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 5 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.sroa.02.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.02.06.i.i, i64 352
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !48
  %.not4.i.i = icmp ne i32 %.val.i.i.i, 0
  %i.g = zext i1 %.not4.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.g ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 592 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit", label %.lr.ph.i.i, !llvm.loop !90

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit": ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 592                 ; 4 uses
  %i.m = sub i64 %i.l, %.0.lcssa.i.i
  %i.n = icmp ult i64 %i.m, 2
  br i1 %i.n, label %bb.ck, label %bb.b

bb.b:                                             ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.o = icmp ugt i64 %i.l, 1152921504606846975
  br i1 %i.o, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %.not465 = icmp eq ptr %i.e, %i.c
  br i1 %.not465, label %.thread, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

.thread:                                          ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit113

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.s = shl nuw nsw i64 %i.l, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #26
          to label %.noexc106 unwind label %bb.i  ; 4 uses

.noexc106:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.u = load ptr, ptr %5, align 8, !tbaa !22     ; 4 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc106
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #27
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.t, ptr %5, align 8, !tbaa !22
  store ptr %i.t, ptr %i.r, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.l
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !94
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %.pre365 = load ptr, ptr %1, align 8, !tbaa !51 ; 2 uses
  %.pre373 = ptrtoint ptr %.pre to i64
  %.pre374 = ptrtoint ptr %.pre365 to i64
  %.pre376 = sub i64 %.pre373, %.pre374
  %.pre378 = sdiv exact i64 %.pre376, 592         ; 4 uses
  %i.ae = icmp ugt i64 %.pre378, 1152921504606846975
  br i1 %i.ae, label %.invoke, label %bb.f

.invoke:                                          ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.ah = load ptr, ptr %6, align 8, !tbaa !22
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.al, %.pre378
  br i1 %i.am, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit113

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.aj
  %i.ar = shl nuw nsw i64 %.pre378, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #26
          to label %.noexc112 unwind label %bb.i  ; 4 uses

.noexc112:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107
  %i.at = load ptr, ptr %6, align 8, !tbaa !22    ; 4 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i108

bb.g:                                             ; preds = %.noexc112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.at, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i108

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i108: ; preds = %bb.g, %.noexc112
  %.not.i8.i109 = icmp eq ptr %i.at, null
  br i1 %.not.i8.i109, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i108
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bb) #27
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i108
  store ptr %i.as, ptr %6, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store ptr %i.bc, ptr %i.an, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.pre378
  store ptr %i.bd, ptr %i.af, align 8, !tbaa !94
  %.pre366 = load ptr, ptr %1, align 8, !tbaa !93
  %.pre367 = load ptr, ptr %i.d, align 8, !tbaa !93
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit113

_ZNSt6vectorIdSaIdEE7reserveEm.exit113:           ; preds = %.thread, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110, %bb.f
  %i.be = phi ptr [ %i.af, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110 ], [ %i.af, %bb.f ], [ %i.q, %.thread ] ; 4 uses
  %i.bf = phi ptr [ %.pre367, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110 ], [ %.pre, %bb.f ], [ %i.e, %.thread ] ; 3 uses
  %i.bg = phi ptr [ %.pre366, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110 ], [ %.pre365, %bb.f ], [ %i.c, %.thread ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 392
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 17 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !57
  %.not294327 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not294327, label %._crit_edge330, label %.lr.ph329

._crit_edge330.loopexit:                          ; preds = %._crit_edge
  %.pre368 = load ptr, ptr %1, align 8, !tbaa !93
  %.pre369 = load ptr, ptr %i.d, align 8, !tbaa !93
end_hunk_0
