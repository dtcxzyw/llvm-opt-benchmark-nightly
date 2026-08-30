Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/statistics?download=true
inline.NumInlined: 942
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.be = select i1 %i.bc, double %i.bb, double %i.ba ; 2 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %i.bg = fcmp olt double %i.be, %i.bf            ; 2 uses
  %spec.select.i.i.2 = select i1 %i.bg, ptr %i.bd, ptr %spec.select.i.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.bi = select i1 %i.bg, double %i.bf, double %i.be ; 2 uses
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !12 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj            ; 2 uses
  %spec.select.i.i.3 = select i1 %i.bk, ptr %i.bh, ptr %spec.select.i.i.2 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bl, %i.aa
  %i.bm = select i1 %i.bk, double %i.bj, double %i.bi
  br i1 %.not.i.i.3, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !23

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.l
  %.sroa.02.2.i.i = phi ptr [ %i.u, %bb.l ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.bn = load double, ptr %i.aa, align 8, !tbaa !12
  %i.bo = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !12
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %"_ZNK9benchmark3$_2clEd.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.07.i.i.i = phi double [ %i.f, %.lr.ph.i.i.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !12
  %i.f = fadd double %.07.i.i.i, %i.e             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i.i, label %bb.b, label %.lr.ph.i.i.i, !llvm.loop !14

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
  %i.p = load double, ptr %.sroa.0.09.i.i, align 8, !tbaa !12 ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %.010.i.i) ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.09.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit", label %.lr.ph.i.i, !llvm.loop !24

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  %i.i = icmp eq ptr %i.c, %i.b
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi double [ %i.k, %.lr.ph.i.i.i.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.02.06.i.i.i.i, align 8, !tbaa !12
  %i.k = fadd double %.07.i.i.i.i, %i.j           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i.i.i.i, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !14

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = uitofp i64 %i.g to double                ; 3 uses
  %i.n = fdiv nnan double 1.000000e+00, %i.m      ; 3 uses
  %i.o = fmul double %i.n, %i.k                   ; 2 uses
  %i.p = icmp eq i64 %i.f, 8
  br i1 %i.p, label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.010.i.i.i = phi double [ %i.r, %.lr.ph.i.i.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.0.09.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.q = load double, ptr %.sroa.0.09.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %.010.i.i.i) ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i, label %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i", label %.lr.ph.i.i.i, !llvm.loop !24

"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i": ; preds = %.lr.ph.i.i.i
  %i.t = fmul double %i.n, %i.r
  %i.u = fadd nnan double %i.m, -1.000000e+00
  %i.v = fdiv double %i.m, %i.u
  %i.w = fmul double %i.o, %i.o
  %i.x = fsub double %i.t, %i.w
  %i.y = fmul double %i.v, %i.x                   ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, label %bb.c

bb.c:                                             ; preds = %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i"
  %i.aa = tail call double @sqrt(double noundef %i.y) #28
  br label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit

_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit: ; preds = %bb.b, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i", %bb.c
  %.0.i = phi double [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i" ], [ %i.aa, %bb.c ]
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, %.lr.ph.i.i.i7
  %.07.i.i.i = phi double [ %i.ac, %.lr.ph.i.i.i7 ], [ 0.000000e+00, %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit ]
  %.sroa.02.06.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i7 ], [ %i.c, %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit ] ; 2 uses
  %i.ab = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !12
  %i.ac = fadd double %.07.i.i.i, %i.ab           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i8, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.i.i7, !llvm.loop !14

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit: ; preds = %.lr.ph.i.i.i7
  %i.ae = fmul double %i.n, %i.ac                 ; 2 uses
  %i.af = fcmp oeq double %i.ae, 0.000000e+00
  br i1 %i.af, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread, label %_ZSt10fpclassifyd.exit.thread

_ZSt10fpclassifyd.exit.thread:                    ; preds = %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit
  %i.ag = fdiv double %.0.i, %i.ae
  br label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread: ; preds = %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, %_ZSt10fpclassifyd.exit.thread, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.ag, %_ZSt10fpclassifyd.exit.thread ], [ 0.000000e+00, %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit ]
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
  %.sroa.0268 = alloca %"class.benchmark::Counter", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 5 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.sroa.02.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.02.06.i.i, i64 352
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !27
  %.not4.i.i = icmp ne i32 %.val.i.i.i, 0
  %i.g = zext i1 %.not4.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.g ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 592 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit", label %.lr.ph.i.i, !llvm.loop !51

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
  %i.u = load ptr, ptr %5, align 8, !tbaa !18     ; 4 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !16
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
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #27
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i, %bb.e
  store ptr %i.t, ptr %5, align 8, !tbaa !18
  store ptr %i.t, ptr %i.r, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.l
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !52
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %.pre365.a = load ptr, ptr %1, align 8, !tbaa !55 ; 2 uses
  %.pre373.a = ptrtoint ptr %.pre to i64
  %.pre374 = ptrtoint ptr %.pre365.a to i64
  %.pre376 = sub i64 %.pre373.a, %.pre374
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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = load ptr, ptr %6, align 8, !tbaa !18
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.al, %.pre378
  br i1 %i.am, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit113

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.aj
  %i.ar = shl nuw nsw i64 %.pre378, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #26
          to label %.noexc112 unwind label %bb.i  ; 4 uses

.noexc112:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107
  %i.at = load ptr, ptr %6, align 8, !tbaa !18    ; 4 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !16
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
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bb) #27
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i108
  store ptr %i.as, ptr %6, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store ptr %i.bc, ptr %i.an, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.pre378
  store ptr %i.bd, ptr %i.af, align 8, !tbaa !52
  %.pre366.a = load ptr, ptr %1, align 8, !tbaa !25
  %.pre367.a = load ptr, ptr %i.d, align 8, !tbaa !25
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit113

_ZNSt6vectorIdSaIdEE7reserveEm.exit113:           ; preds = %.thread, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110, %bb.f
  %i.be = phi ptr [ %i.af, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110 ], [ %i.af, %bb.f ], [ %i.q, %.thread ] ; 4 uses
  %i.bf = phi ptr [ %.pre367.a, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110 ], [ %.pre, %bb.f ], [ %i.e, %.thread ] ; 3 uses
  %i.bg = phi ptr [ %.pre366.a, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i110 ], [ %.pre365.a, %bb.f ], [ %i.c, %.thread ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 392
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 17 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !61
  %.not294327 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not294327, label %._crit_edge330, label %.lr.ph329

._crit_edge330.loopexit:                          ; preds = %._crit_edge
  %.pre368.a = load ptr, ptr %1, align 8, !tbaa !25
  %.pre369.a = load ptr, ptr %i.d, align 8, !tbaa !25
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %._crit_edge330.loopexit, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113
  %i.bo = phi ptr [ %.pre369.a, %._crit_edge330.loopexit ], [ %i.bf, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113 ] ; 2 uses
  %i.bp = phi ptr [ %.pre368.a, %._crit_edge330.loopexit ], [ %i.bg, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113 ] ; 3 uses
  %.not295335 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not295335, label %._crit_edge339, label %.lr.ph338.a

.lr.ph338.a:                                      ; preds = %._crit_edge330
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.ae

bb.i:                                             ; preds = %.invoke, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.lr.ph329:                                        ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit113, %._crit_edge
  %.sroa.0280.0328 = phi ptr [ %i.bw, %._crit_edge ], [ %i.bg, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0280.0328, i64 520
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0280.0328, i64 504 ; 2 uses
  %.not300323 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not300323, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit126, %.lr.ph329
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0280.0328, i64 592 ; 2 uses
  %.not294.a = icmp eq ptr %i.bw, %i.bf
  br i1 %.not294.a, label %._crit_edge330.loopexit, label %.lr.ph329

.lr.ph:                                           ; preds = %.lr.ph329, %_ZNSt6vectorIdSaIdEE7reserveEm.exit126
  %.sroa.0276.0324 = phi ptr [ %i.gf, %_ZNSt6vectorIdSaIdEE7reserveEm.exit126 ], [ %i.bu, %.lr.ph329 ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0276.0324, i64 32 ; 2 uses
  %.val92 = load ptr, ptr %i.bx, align 8          ; 4 uses
  %i.by = getelementptr i8, ptr %.sroa.0276.0324, i64 40 ; 2 uses
  %.val93 = load i64, ptr %i.by, align 8          ; 8 uses
  %.val.i.i = load ptr, ptr %i.bk, align 8, !tbaa !58 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread, label %.lr.ph.i.i.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0268)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0276.0324, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0268, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !62
  br label %.critedge.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %.val.i.i, %.lr.ph ] ; 6 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.bj, %.lr.ph ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val93, i64 %i.cb) ; 2 uses
  %i.cc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.cc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68
  %i.cf = call i32 @memcmp(ptr noundef %i.ce, ptr noundef readonly %.val92, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cg = sub i64 %i.cb, %.val93
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ch = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.ch, ptr %.083.i.i.i, ptr %.04.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.ch, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !70

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ci = icmp eq ptr %.19.i.i.i, %i.bj
  br i1 %i.ci, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ch, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cj = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cj, i64 %.val93) ; 2 uses
  %i.ck = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ck, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.j
  %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel.v = select i1 %i.ch, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cl = load ptr, ptr %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel, align 8, !tbaa !68
  %i.cm = call i32 @memcmp(ptr noundef readonly %.val92, ptr noundef %i.cl, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.j
  %i.cn = sub i64 %.val93, %i.cj
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cn, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.co = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.co, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread, label %bb.z

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0268)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0276.0324, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0268, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !tbaa.struct !62
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %.val.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread ] ; 6 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.bj, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val93, i64 %i.cr) ; 2 uses
  %i.cs = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.cs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !68
  %i.cv = call i32 @memcmp(ptr noundef %i.cu, ptr noundef readonly %.val92, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cw = sub i64 %i.cr, %.val93
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.cx = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 4 uses
  %.19.i.i.i.i = select i1 %i.cx, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cx, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !70

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.cy = icmp eq ptr %.19.i.i.i.i, %i.bj
  br i1 %i.cy, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cx, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cz = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 %.val93) ; 2 uses
  %i.da = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.da, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.k
  %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel.v = select i1 %i.cx, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i
  %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.db = load ptr, ptr %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel, align 8, !tbaa !68
  %i.dc = call i32 @memcmp(ptr noundef %.val92, ptr noundef %i.db, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i21.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i21.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.k
  %i.dd = sub i64 %.val93, %i.cz
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dd, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.dc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.de = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.de, label %.critedge.i, label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit

.critedge.i:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i
  %.08.lcssa.i.i.i29.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i ], [ %i.bj, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread ]
  %i.df = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc118 unwind label %bb.y  ; 9 uses

.noexc118:                                        ; preds = %.critedge.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 48 ; 5 uses
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !71
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %i.dj = load i64, ptr %i.by, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.dj, ptr %i.b, align 8, !tbaa !72
  %i.dk = icmp ugt i64 %i.dj, 15
  br i1 %i.dk, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc118
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.n ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !68
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !72
  store i64 %i.dm, ptr %i.dh, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i, %.noexc118
  %i.dn = phi ptr [ %i.dl, %.noexc.i.i.i.i.i.i ], [ %i.dh, %.noexc118 ] ; 2 uses
  switch i64 %i.dj, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.r
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.do = load i8, ptr %i.di, align 1, !tbaa !73
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !73
  br label %bb.r

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %i.di, i64 %i.dj, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  %i.dr = call ptr @__cxa_begin_catch(ptr %i.dq) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 104) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit128 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #29
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 40 ; 2 uses
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !67
  %i.dx = load ptr, ptr %i.dg, align 8, !tbaa !68
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv
  store i8 0, ptr %i.dy, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0268, i64 16, i1 false), !tbaa.struct !62
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  %.val7.i.i.i = load ptr, ptr %i.dg, align 8     ; 4 uses
  %.val8.i.i.i = load i64, ptr %i.dw, align 8     ; 4 uses
  %i.eb = call fastcc { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr %.08.lcssa.i.i.i29.i, ptr %.val7.i.i.i, i64 %.val8.i.i.i) ; 2 uses
  %i.ec = extractvalue { ptr, ptr } %i.eb, 0      ; 2 uses
  %i.ed = extractvalue { ptr, ptr } %i.eb, 1      ; 5 uses
  %.not.i.i.i116 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i116, label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i117 = icmp ne ptr %i.ec, null
  %i.ee = icmp eq ptr %i.ed, %i.bj
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i117, %i.ee
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eg, i64 %.val8.i.i.i) ; 2 uses
  %i.eh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.eh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !68
  %i.ek = call i32 @memcmp(ptr noundef %.val7.i.i.i, ptr noundef %i.ej, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.t
  %i.el = sub i64 %.val8.i.i.i, %i.eg
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.el, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ek, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.em = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i, %bb.s
  %i.en = phi i1 [ %i.em, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ], [ true, %bb.s ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.en, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %i.bj) #28
  %i.eo = load i64, ptr %i.bn, align 8, !tbaa !61
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.bn, align 8, !tbaa !61
  br label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit

_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.eq = icmp eq ptr %.val7.i.i.i, %i.dh
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i
  %i.er = icmp ult i64 %.val8.i.i.i, 16
  call void @llvm.assume(i1 %i.er)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i
  %i.es = load i64, ptr %i.dh, align 8, !tbaa !73
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.val7.i.i.i, i64 noundef %i.et) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 104) #27
  br label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit

_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.thread.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i
  %.sroa.027.0.i = phi ptr [ %i.ec, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i ], [ %i.df, %.thread.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0268)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 80 ; 3 uses
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ew = load ptr, ptr %1, align 8, !tbaa !55
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = sdiv exact i64 %i.ez, 592               ; 4 uses
  %i.fb = icmp ugt i64 %i.fa, 1152921504606846975
  br i1 %i.fb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
          to label %.noexc124 unwind label %.loopexit.split-lp308

.noexc124:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 96 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !52
  %i.fe = load ptr, ptr %i.eu, align 8, !tbaa !18
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = icmp ult i64 %i.fi, %i.fa
  br i1 %i.fj, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i120, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i120: ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 88 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !16
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.fg
  %i.fo = shl nuw nsw i64 %i.fa, 3
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #26
          to label %.noexc125 unwind label %.loopexit307 ; 4 uses

.noexc125:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i120
  %i.fq = load ptr, ptr %i.eu, align 8, !tbaa !18 ; 4 uses
  %i.fr = load ptr, ptr %i.fk, align 8, !tbaa !16
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, 0
  br i1 %i.fv, label %bb.w, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121

bb.w:                                             ; preds = %.noexc125
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr align 8 %i.fq, i64 %i.fu, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121: ; preds = %bb.w, %.noexc125
  %.not.i8.i122 = icmp eq ptr %i.fq, null
  br i1 %.not.i8.i122, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121
  %i.fw = load ptr, ptr %i.fc, align 8, !tbaa !52
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fy) #27
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123: ; preds = %bb.x, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121
  store ptr %i.fp, ptr %i.eu, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fn
  store ptr %i.fz, ptr %i.fk, align 8, !tbaa !16
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fa
  store ptr %i.ga, ptr %i.fc, align 8, !tbaa !52
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126

.loopexit307:                                     ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i120
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp308:                            ; preds = %bb.u
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.y:                                             ; preds = %.critedge.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit128

_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit128: ; preds = %bb.y, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.gb, %bb.y ], [ %i.ds, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0268)
  br label %bb.cg

bb.z:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit
  %i.gc = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.aa, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126, !prof !74

bb.aa:                                            ; preds = %bb.z
  %i.ge = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !75
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126

_ZNSt6vectorIdSaIdEE7reserveEm.exit126:           ; preds = %bb.ab, %bb.aa, %bb.z, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123, %bb.v
  %i.gf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0276.0324) #30 ; 2 uses
  %.not300 = icmp eq ptr %i.gf, %i.bv
  br i1 %.not300, label %._crit_edge, label %.lr.ph

._crit_edge339.loopexit:                          ; preds = %.loopexit
  %.pre370 = load ptr, ptr %1, align 8, !tbaa !55
  br label %._crit_edge339

._crit_edge339:                                   ; preds = %._crit_edge339.loopexit, %._crit_edge330
  %i.gg = phi ptr [ %.pre370, %._crit_edge339.loopexit ], [ %i.bp, %._crit_edge330 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 320
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.gi, ptr %8, align 8, !tbaa !71
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !68 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 328
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !72
  %i.gm = icmp ugt i64 %i.gl, 15
  br i1 %i.gm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge339
  %i.gn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc129 unwind label %bb.ba ; 2 uses

.noexc129:                                        ; preds = %.noexc.i
  store ptr %i.gn, ptr %8, align 8, !tbaa !68
  %i.go = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.go, ptr %i.gi, align 8, !tbaa !73
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc129, %._crit_edge339
  %i.gp = phi ptr [ %i.gn, %.noexc129 ], [ %i.gi, %._crit_edge339 ] ; 2 uses
  switch i64 %i.gl, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.gq = load i8, ptr %i.gj, align 1, !tbaa !73
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ad:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr align 1 %i.gj, i64 %i.gl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.ac, %bb.ad
  %i.gr = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !67
  %i.gt = load ptr, ptr %8, align 8, !tbaa !68
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gr
  store i8 0, ptr %i.gu, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.gv = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.gw = load ptr, ptr %1, align 8, !tbaa !55    ; 4 uses
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = sdiv exact i64 %i.gz, 592               ; 4 uses
  %i.hb = icmp ugt i64 %i.ha, 1
  br i1 %i.hb, label %.lr.ph341, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.lr.ph341:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.hc = load i64, ptr %i.gs, align 8, !tbaa !67 ; 4 uses
  %i.hd = load ptr, ptr %8, align 8
  %i.he = icmp eq i64 %i.hc, 0
  br label %bb.bb

bb.ae:                                            ; preds = %.lr.ph338.a, %.loopexit
  %.sroa.0268.0336 = phi ptr [ %i.bp, %.lr.ph338.a ], [ %i.ll, %.loopexit ] ; 6 uses
  %i.hf = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.hg = icmp eq i8 %i.hf, 0
  br i1 %i.hg, label %bb.af, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131, !prof !74

bb.af:                                            ; preds = %bb.ae
  %i.hh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i130 = icmp eq i32 %i.hh, 0
  br i1 %.not.i130, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !75
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131

_ZN9benchmark8internal18GetNullLogInstanceEv.exit131: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.hi = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.ah, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133, !prof !74

bb.ah:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131
  %i.hk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i132 = icmp eq i32 %i.hk, 0
  br i1 %.not.i132, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !75
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133

_ZN9benchmark8internal18GetNullLogInstanceEv.exit133: ; preds = %bb.ai, %bb.ah, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 352
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !27
  %.not = icmp eq i32 %i.hm, 0
  br i1 %.not, label %bb.aj, label %.loopexit

.loopexit302:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i139
  %lpad.loopexit304 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp303:                            ; preds = %.invoke481
  %lpad.loopexit.split-lp305 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.aj:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 432 ; 2 uses
  %i.ho = load ptr, ptr %i.bq, align 8, !tbaa !16 ; 4 uses
  %i.hp = load ptr, ptr %i.p, align 8, !tbaa !52
  %.not.i134 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not.i134, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hq = load double, ptr %i.hn, align 8, !tbaa !12
  store double %i.hq, ptr %i.ho, align 8, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr %i.hr, ptr %i.bq, align 8, !tbaa !16
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit

bb.al:                                            ; preds = %bb.aj
  %i.hs = load ptr, ptr %5, align 8, !tbaa !18    ; 4 uses
  %i.ht = ptrtoint ptr %i.ho to i64
  %i.hu = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hv = sub i64 %i.ht, %i.hu                    ; 5 uses
  %i.hw = icmp eq i64 %i.hv, 9223372036854775800
  br i1 %i.hw, label %.invoke481, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

.invoke481:                                       ; preds = %bb.ap, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.cont482 unwind label %.loopexit.split-lp303

.cont482:                                         ; preds = %.invoke481
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.hx = ashr exact i64 %i.hv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hx, i64 1)
  %i.hy = add nsw i64 %.sroa.speculated.i.i.i, %i.hx ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hx
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hy, i64 1152921504606846975)
  %i.ib = select i1 %i.hz, i64 1152921504606846975, i64 %i.ia ; 2 uses
  %i.ic = shl nuw nsw i64 %i.ib, 3
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #26
          to label %.noexc137 unwind label %.loopexit302 ; 4 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 %i.hv ; 2 uses
  %i.if = load double, ptr %i.hn, align 8, !tbaa !12
  store double %i.if, ptr %i.ie, align 8, !tbaa !12
  %i.ig = icmp sgt i64 %i.hv, 0
  br i1 %i.ig, label %bb.am, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.am:                                            ; preds = %.noexc137
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.id, ptr align 8 %i.hs, i64 %i.hv, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.am, %.noexc137
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.not.i17.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.ii = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.ij, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.ik) #27
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.id, ptr %5, align 8, !tbaa !18
  store ptr %i.ih, ptr %i.bq, align 8, !tbaa !16
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ib
  store ptr %i.il, ptr %i.p, align 8, !tbaa !52
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.ak
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 440 ; 2 uses
  %i.in = load ptr, ptr %i.br, align 8, !tbaa !16 ; 4 uses
  %i.io = load ptr, ptr %i.be, align 8, !tbaa !52
  %.not.i138 = icmp eq ptr %i.in, %i.io
  br i1 %.not.i138, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit
  %i.ip = load double, ptr %i.im, align 8, !tbaa !12
  store double %i.ip, ptr %i.in, align 8, !tbaa !12
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.iq, ptr %i.br, align 8, !tbaa !16
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147

bb.ap:                                            ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit
  %i.ir = load ptr, ptr %6, align 8, !tbaa !18    ; 4 uses
  %i.is = ptrtoint ptr %i.in to i64
  %i.it = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 5 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %.invoke481, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i139

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i139: ; preds = %bb.ap
  %i.iw = ashr exact i64 %i.iu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i140 = call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  %i.ix = add nsw i64 %.sroa.speculated.i.i.i140, %i.iw ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %i.iz = call i64 @llvm.umin.i64(i64 %i.ix, i64 1152921504606846975)
  %i.ja = select i1 %i.iy, i64 1152921504606846975, i64 %i.iz ; 2 uses
  %i.jb = shl nuw nsw i64 %i.ja, 3
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #26
          to label %.noexc146 unwind label %.loopexit302 ; 4 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i139
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 %i.iu ; 2 uses
  %i.je = load double, ptr %i.im, align 8, !tbaa !12
  store double %i.je, ptr %i.jd, align 8, !tbaa !12
  %i.jf = icmp sgt i64 %i.iu, 0
  br i1 %i.jf, label %bb.aq, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142

bb.aq:                                            ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jc, ptr align 8 %i.ir, i64 %i.iu, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142: ; preds = %bb.aq, %.noexc146
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %.not.i17.i.i143 = icmp eq ptr %i.ir, null
  br i1 %.not.i17.i.i143, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142
  %i.jh = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = sub i64 %i.ji, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.jj) #27
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144: ; preds = %bb.ar, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142
  store ptr %i.jc, ptr %6, align 8, !tbaa !18
  store ptr %i.jg, ptr %i.br, align 8, !tbaa !16
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ja
  store ptr %i.jk, ptr %i.be, align 8, !tbaa !52
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147

_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144, %bb.ao
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 520
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !59 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 504 ; 2 uses
  %.not299332 = icmp eq ptr %i.jm, %i.jn
  br i1 %.not299332, label %.loopexit, label %.lr.ph334

.lr.ph334:                                        ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147, %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit
  %.sroa.0264.0333 = phi ptr [ %i.lk, %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit ], [ %i.jm, %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147 ] ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0264.0333, i64 32
  %.val90 = load ptr, ptr %i.jo, align 8          ; 2 uses
  %i.jp = getelementptr i8, ptr %.sroa.0264.0333, i64 40
  %.val91 = load i64, ptr %i.jp, align 8          ; 4 uses
  %.val.i.i148 = load ptr, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  %.not2.i.i.i149 = icmp eq ptr %.val.i.i148, null
  br i1 %.not2.i.i.i149, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %.lr.ph334, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156
  %.04.i.i.i151 = phi ptr [ %.1.i.i.i161, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156 ], [ %.val.i.i148, %.lr.ph334 ] ; 6 uses
  %.083.i.i.i152 = phi ptr [ %.19.i.i.i158, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156 ], [ %i.bj, %.lr.ph334 ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.04.i.i.i151, i64 40
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i153 = call i64 @llvm.umin.i64(i64 %.val91, i64 %i.jr) ; 2 uses
  %i.js = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i153, 0
  br i1 %i.js, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154: ; preds = %.lr.ph.i.i.i150
  %i.jt = getelementptr inbounds nuw i8, ptr %.04.i.i.i151, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !68
  %i.jv = call i32 @memcmp(ptr noundef %i.ju, ptr noundef readonly %.val90, i64 noundef %.sroa.speculated.i.i.i.i.i.i153) #28 ; 2 uses
  %.not.i.i.i.i.i.i155 = icmp eq i32 %i.jv, 0
  br i1 %.not.i.i.i.i.i.i155, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154, %.lr.ph.i.i.i150
  %i.jw = sub i64 %i.jr, %.val91
  %spec.select7.i.i.i.i.i.i.i176 = call i64 @llvm.smax.i64(i64 %i.jw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i177 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i176, i64 2147483647)
  %.0.i6.i.i.i.i.i.i178 = trunc nsw i64 %.08.i.i.i.i.i.i.i177 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154
  %.0.i.i.i.i.i.i157 = phi i32 [ %i.jv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154 ], [ %.0.i6.i.i.i.i.i.i178, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175 ]
  %i.jx = icmp slt i32 %.0.i.i.i.i.i.i157, 0      ; 4 uses
  %.19.i.i.i158 = select i1 %i.jx, ptr %.083.i.i.i152, ptr %.04.i.i.i151 ; 3 uses
  %.1.in.v.i.i.i159 = select i1 %i.jx, i64 24, i64 16
  %.1.in.i.i.i160 = getelementptr i8, ptr %.04.i.i.i151, i64 %.1.in.v.i.i.i159
  %.1.i.i.i161 = load ptr, ptr %.1.in.i.i.i160, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %.1.i.i.i161, null
  br i1 %.not.i.i.i162, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163, label %.lr.ph.i.i.i150, !llvm.loop !70

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156
  %i.jy = icmp eq ptr %.19.i.i.i158, %i.bj
  br i1 %i.jy, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179, label %bb.as

bb.as:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163
  %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.jx, ptr %.083.i.i.i152, ptr %.04.i.i.i151
  %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.jz = load i64, ptr %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !67 ; 2 uses
  %.sroa.speculated.i.i.i.i.i164 = call i64 @llvm.umin.i64(i64 %i.jz, i64 %.val91) ; 2 uses
  %i.ka = icmp eq i64 %.sroa.speculated.i.i.i.i.i164, 0
  br i1 %i.ka, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165: ; preds = %bb.as
  %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel.v = select i1 %i.jx, ptr %.083.i.i.i152, ptr %.04.i.i.i151
  %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.kb = load ptr, ptr %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel, align 8, !tbaa !68
  %i.kc = call i32 @memcmp(ptr noundef readonly %.val90, ptr noundef %i.kb, i64 noundef %.sroa.speculated.i.i.i.i.i164) #28 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i.i.i.i166, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165, %bb.as
  %i.kd = sub i64 %.val91, %i.jz
  %spec.select7.i.i.i.i.i.i172 = call i64 @llvm.smax.i64(i64 %i.kd, i64 -2147483648)
  %.08.i.i.i.i.i.i173 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i172, i64 2147483647)
  %.0.i6.i.i.i.i.i174 = trunc nsw i64 %.08.i.i.i.i.i.i173 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165
  %.0.i.i.i.i.i168 = phi i32 [ %i.kc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165 ], [ %.0.i6.i.i.i.i.i174, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171 ]
  %i.ke = icmp slt i32 %.0.i.i.i.i.i168, 0
  %spec.select.i.i169 = select i1 %i.ke, ptr %i.bj, ptr %.19.i.i.i158
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163, %.lr.ph334
  %.sroa.0.0.i.i170 = phi ptr [ %i.bj, %.lr.ph334 ], [ %i.bj, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163 ], [ %spec.select.i.i169, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167 ] ; 3 uses
  %i.kf = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.kg = icmp eq i8 %i.kf, 0
  br i1 %i.kg, label %bb.at, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181, !prof !74

bb.at:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179
  %i.kh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i180.a = icmp eq i32 %i.kh, 0
  br i1 %.not.i180.a, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !75
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181

_ZN9benchmark8internal18GetNullLogInstanceEv.exit181: ; preds = %bb.au, %bb.at, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170, i64 80 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0264.0333, i64 64 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170, i64 88 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !16 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170, i64 96 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !52
  %.not.i182 = icmp eq ptr %i.kl, %i.kn
  br i1 %.not.i182, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181
  %i.ko = load double, ptr %i.kj, align 8, !tbaa !12
  store double %i.ko, ptr %i.kl, align 8, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %i.kp, ptr %i.kk, align 8, !tbaa !16
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit

bb.aw:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181
  %i.kq = load ptr, ptr %i.ki, align 8, !tbaa !18 ; 4 uses
  %i.kr = ptrtoint ptr %i.kl to i64
  %i.ks = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 5 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775800
  br i1 %i.ku, label %bb.ax, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc186 unwind label %.loopexit.split-lp

.noexc186:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183: ; preds = %bb.aw
  %i.kv = ashr exact i64 %i.kt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i184 = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i.i184, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 1152921504606846975)
  %i.kz = select i1 %i.kx, i64 1152921504606846975, i64 %i.ky ; 2 uses
  %i.la = shl nuw nsw i64 %i.kz, 3
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #26
          to label %.noexc187 unwind label %.loopexit301 ; 4 uses

.noexc187:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.kt ; 2 uses
  %i.ld = load double, ptr %i.kj, align 8, !tbaa !12
  store double %i.ld, ptr %i.lc, align 8, !tbaa !12
  %i.le = icmp sgt i64 %i.kt, 0
  br i1 %i.le, label %bb.ay, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i

bb.ay:                                            ; preds = %.noexc187
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lb, ptr align 8 %i.kq, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i: ; preds = %bb.ay, %.noexc187
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %.not.i27.i.i = icmp eq ptr %i.kq, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i
  %i.lg = load ptr, ptr %i.km, align 8, !tbaa !52
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = sub i64 %i.lh, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.li) #27
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.az, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i
  store ptr %i.lb, ptr %i.ki, align 8, !tbaa !18
  store ptr %i.lf, ptr %i.kk, align 8, !tbaa !16
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.kz
  store ptr %i.lj, ptr %i.km, align 8, !tbaa !52
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.av
  %i.lk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0264.0333) #30 ; 2 uses
  %.not299 = icmp eq ptr %i.lk, %i.jn
  br i1 %.not299, label %.loopexit, label %.lr.ph334

.loopexit301:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit:                                        ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit, %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 592 ; 2 uses
  %.not295.a = icmp eq ptr %i.ll, %i.bo
  br i1 %.not295.a, label %._crit_edge339.loopexit, label %bb.ae

bb.ba:                                            ; preds = %.noexc.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.bb:                                            ; preds = %.lr.ph341, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293
  %.0340 = phi i64 [ 1, %.lr.ph341 ], [ %i.lv, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [592 x i8], ptr %i.gw, i64 %.0340 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 320
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 328
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !67
  %i.lr = icmp eq i64 %i.lq, %i.hc
  br i1 %i.lr, label %bb.bc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.he, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.bc
  %i.ls = load ptr, ptr %i.lo, align 8, !tbaa !68
  %bcmp.i.i = call i32 @bcmp(ptr %i.ls, ptr %i.hd, i64 %i.hc)
  %.not296 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not296, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.bb, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.lt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.hc, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge unwind label %bb.bd ; 0 uses

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.pre371 = load ptr, ptr %i.d, align 8, !tbaa !53
  %.pre372 = load ptr, ptr %1, align 8, !tbaa !55 ; 2 uses
  %.pre380 = ptrtoint ptr %.pre371 to i64
  %.pre382 = ptrtoint ptr %.pre372 to i64
  %.pre384 = sub i64 %.pre380, %.pre382
  %.pre386 = sdiv exact i64 %.pre384, 592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.bd:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293: ; preds = %bb.bc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.lv = add nuw i64 %.0340, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.lv, %i.ha
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.bb, !llvm.loop !78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.pre-phi387 = phi i64 [ %.pre386, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ha, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293 ]
  %i.lw = phi ptr [ %.pre372, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.gw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293 ]
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 480
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !79 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !80 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !80 ; 2 uses
  %.not297349 = icmp eq ptr %i.lz, %i.mb
  br i1 %.not297349, label %._crit_edge352, label %.lr.ph351

.lr.ph351:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.mc = uitofp i64 %.pre-phi387 to double
  %i.md = sitofp i64 %i.bi to double
  %i.me = fdiv double %i.mc, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.mh = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.mj = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.mk = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ml = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.mm = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 272
  %i.mo = getelementptr inbounds nuw i8, ptr %9, i64 400
  %i.mp = getelementptr inbounds nuw i8, ptr %9, i64 416
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 408
  %i.mr = getelementptr inbounds nuw i8, ptr %9, i64 280 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %9, i64 312 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %9, i64 392
  %i.mv = getelementptr inbounds nuw i8, ptr %9, i64 432 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 440
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 424
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 496 ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 512 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 504 ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 536 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.ng = getelementptr inbounds nuw i8, ptr %9, i64 376 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %9, i64 296 ; 2 uses
  %i.nj = insertelement <2 x double> poison, double %i.me, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.bg

._crit_edge352:                                   ; preds = %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.nl = load ptr, ptr %8, align 8, !tbaa !68    ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.gi
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge352
  %i.nn = load i64, ptr %i.gi, align 8, !tbaa !73
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.val102 = load ptr, ptr %i.bk, align 8, !tbaa !58
  call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %.val102)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.np = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.nq = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = ptrtoint ptr %i.np to i64
  %i.nt = sub i64 %i.nr, %i.ns
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.nt) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.nu = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorIdSaIdEED2Ev.exit191, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.nv = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef %i.ny) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit191

_ZNSt6vectorIdSaIdEED2Ev.exit191:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ck

bb.bg:                                            ; preds = %.lr.ph351, %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit
  %.sroa.0259.0350 = phi ptr [ %i.lz, %.lr.ph351 ], [ %i.sl, %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2Ev(ptr noundef nonnull align 8 dereferenceable(592) %9)
          to label %bb.bh unwind label %bb.bl
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_:bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !72
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !68
  %i.k = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.k, ptr %i.e, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !73
  store i8 %i.m, ptr %i.l, align 1, !tbaa !73
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 80) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !67
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !129
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 1000, ptr %i.x, align 4, !tbaa !111
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !69  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !130

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !68
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #28 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(592) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 592                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 15580020332524959)
  %i.l = select i1 %i.j, i64 15580020332524959, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 592                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(592) %i.q, ptr noundef nonnull align 8 dereferenceable(592) %2)
          to label %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.r = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 592
  %i.t = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.x) #27
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !55
  store ptr %i.t, ptr %i.a, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw [592 x i8], ptr %i.p, i64 %i.l
  store ptr %i.y, ptr %i.u, align 8, !tbaa !93
  ret void

bb.d:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.z

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN9benchmark13BenchmarkNameC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !71
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.k, ptr %i.c, align 8, !tbaa !72
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !68
  %i.n = load i64, ptr %i.c, align 8, !tbaa !72
  store i64 %i.n, ptr %i.h, align 8, !tbaa !73
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !73
  store i8 %i.p, ptr %i.o, align 1, !tbaa !73
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.q, ptr %i.r, align 8, !tbaa !67
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.w = load i32, ptr %i.v, align 8, !tbaa !88
  store i32 %i.w, ptr %i.u, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !71
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !72
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i19, label %._crit_edge.i.i18

.noexc.i19:                                       ; preds = %bb.d
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20 unwind label %bb.o   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i19
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !68
  %i.af = load i64, ptr %i.b, align 8, !tbaa !72
  store i64 %i.af, ptr %i.z, align 8, !tbaa !73
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc20, %bb.d
  %i.ag = phi ptr [ %i.ae, %.noexc20 ], [ %i.z, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i18
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !73
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !73
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i18
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !67
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !27
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !71
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.au = load i64, ptr %i.at, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.au, ptr %i.a, align 8, !tbaa !72
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %bb.g
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.p   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !68
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !73
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc24, %bb.g
  %i.ay = phi ptr [ %i.aw, %.noexc24 ], [ %i.ar, %bb.g ] ; 2 uses
  switch i64 %i.au, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i22
  %i.az = load i8, ptr %i.as, align 1, !tbaa !73
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !73
end_hunk_1
