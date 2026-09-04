Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/statistics?download=true
inline.NumInlined: 942
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE:bb.a
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
  %i.ab = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !18
  %i.ac = fadd double %.07.i.i.i, %i.ab           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i8, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.i.i7, !llvm.loop !0

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
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %._crit_edge330.loopexit, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113
  %10 = phi ptr [ %.pre369, %._crit_edge330.loopexit ], [ %i.bf, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113 ] ; 2 uses
  %11 = phi ptr [ %.pre368, %._crit_edge330.loopexit ], [ %i.bg, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113 ] ; 3 uses
  %.not295335 = icmp eq ptr %11, %10
  br i1 %.not295335, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %._crit_edge330
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.ae

bb.i:                                             ; preds = %.invoke, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i107, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.lr.ph329:                                        ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit113, %._crit_edge
  %.sroa.0280.0328 = phi ptr [ %i.bu, %._crit_edge ], [ %i.bg, %_ZNSt6vectorIdSaIdEE7reserveEm.exit113 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0280.0328, i64 520
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0280.0328, i64 504 ; 2 uses
  %.not300323 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not300323, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit126, %.lr.ph329
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0280.0328, i64 592 ; 2 uses
  %.not294 = icmp eq ptr %i.bu, %i.bf
  br i1 %.not294, label %._crit_edge330.loopexit, label %.lr.ph329

.lr.ph:                                           ; preds = %.lr.ph329, %_ZNSt6vectorIdSaIdEE7reserveEm.exit126
  %.sroa.0276.0324 = phi ptr [ %i.gd, %_ZNSt6vectorIdSaIdEE7reserveEm.exit126 ], [ %i.bs, %.lr.ph329 ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0276.0324, i64 32 ; 2 uses
  %.val92 = load ptr, ptr %i.bv, align 8          ; 4 uses
  %i.bw = getelementptr i8, ptr %.sroa.0276.0324, i64 40 ; 2 uses
  %.val93 = load i64, ptr %i.bw, align 8          ; 8 uses
  %.val.i.i = load ptr, ptr %i.bk, align 8, !tbaa !54 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread, label %.lr.ph.i.i.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0271)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0276.0324, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0271, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !62
  br label %.critedge.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %.val.i.i, %.lr.ph ] ; 6 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.bj, %.lr.ph ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val93, i64 %i.bz) ; 2 uses
  %i.ca = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ca, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !64
  %i.cd = call i32 @memcmp(ptr noundef %i.cc, ptr noundef readonly %.val92, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ce = sub i64 %i.bz, %.val93
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cf = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.cf, ptr %.083.i.i.i, ptr %.04.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.cf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cg = icmp eq ptr %.19.i.i.i, %i.bj
  br i1 %i.cg, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cf, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.ch = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %.val93) ; 2 uses
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.j
  %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel.v = select i1 %i.cf, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cj = load ptr, ptr %.19.i.i.i.sroa.sel285.v.sroa.sel.v.sroa.sel, align 8, !tbaa !64
  %i.ck = call i32 @memcmp(ptr noundef readonly %.val92, ptr noundef %i.cj, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.j
  %i.cl = sub i64 %.val93, %i.ch
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cl, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ck, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cm = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.cm, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread, label %bb.z

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0271)
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0276.0324, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0271, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !62
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %.val.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread ] ; 6 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.bj, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val93, i64 %i.cp) ; 2 uses
  %i.cq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.cq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !64
  %i.ct = call i32 @memcmp(ptr noundef %i.cs, ptr noundef readonly %.val92, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cu = sub i64 %i.cp, %.val93
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ct, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.cv = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 4 uses
  %.19.i.i.i.i = select i1 %i.cv, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.cw = icmp eq ptr %.19.i.i.i.i, %i.bj
  br i1 %i.cw, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cv, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cx = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cx, i64 %.val93) ; 2 uses
  %i.cy = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.cy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.k
  %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel.v = select i1 %i.cv, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i
  %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cz = load ptr, ptr %.19.i.i.i.i.sroa.sel288.v.sroa.sel.v.sroa.sel, align 8, !tbaa !64
  %i.da = call i32 @memcmp(ptr noundef %.val92, ptr noundef %i.cz, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i21.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i21.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.k
  %i.db = sub i64 %.val93, %i.cx
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.db, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.da, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.dc = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.dc, label %.critedge.i, label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit

.critedge.i:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i
  %.08.lcssa.i.i.i29.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i ], [ %i.bj, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit.thread.thread ]
  %i.dd = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc118 unwind label %bb.y  ; 9 uses

.noexc118:                                        ; preds = %.critedge.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 48 ; 5 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !66
  %i.dg = load ptr, ptr %i.bv, align 8, !tbaa !64 ; 2 uses
  %i.dh = load i64, ptr %i.bw, align 8, !tbaa !63 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.dh, ptr %i.b, align 8, !tbaa !67
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc118
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.n ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.dj, ptr %i.de, align 8, !tbaa !64
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !67
  store i64 %i.dk, ptr %i.df, align 8, !tbaa !68
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i, %.noexc118
  %i.dl = phi ptr [ %i.dj, %.noexc.i.i.i.i.i.i ], [ %i.df, %.noexc118 ] ; 2 uses
  switch i64 %i.dh, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.r
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !68
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !68
  br label %bb.r

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dg, i64 %i.dh, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  %i.dp = call ptr @__cxa_begin_catch(ptr %i.do) #28 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE:bb.a
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !67  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 40 ; 2 uses
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !63
  %i.dv = load ptr, ptr %i.de, align 8, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0271, i64 16, i1 false), !tbaa.struct !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  %.val7.i.i.i = load ptr, ptr %i.de, align 8     ; 4 uses
  %.val8.i.i.i = load i64, ptr %i.du, align 8     ; 4 uses
  %i.dz = call fastcc { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr %.08.lcssa.i.i.i29.i, ptr %.val7.i.i.i, i64 %.val8.i.i.i) ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { ptr, ptr } %i.dz, 1      ; 5 uses
  %.not.i.i.i116 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i116, label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i117 = icmp ne ptr %i.ea, null
  %i.ec = icmp eq ptr %i.eb, %i.bj
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i117, %i.ec
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ee, i64 %.val8.i.i.i) ; 2 uses
  %i.ef = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ef, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !64
  %i.ei = call i32 @memcmp(ptr noundef %.val7.i.i.i, ptr noundef %i.eh, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.t
  %i.ej = sub i64 %.val8.i.i.i, %i.ee
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ej, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ei, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.ek = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i, %bb.s
  %i.el = phi i1 [ %i.ek, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ], [ true, %bb.s ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.el, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.bj) #28
  %i.em = load i64, ptr %i.bn, align 8, !tbaa !57
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.bn, align 8, !tbaa !57
  br label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit

_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.eo = icmp eq ptr %.val7.i.i.i, %i.df
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i
  %i.ep = icmp ult i64 %.val8.i.i.i, 16
  call void @llvm.assume(i1 %i.ep)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i
  %i.eq = load i64, ptr %i.df, align 8, !tbaa !68
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %.val7.i.i.i, i64 noundef %i.er) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 104) #27
  br label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit

_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.thread.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i
  %.sroa.027.0.i = phi ptr [ %i.ea, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i ], [ %i.dd, %.thread.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0271)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 80 ; 3 uses
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.eu = load ptr, ptr %1, align 8, !tbaa !51
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 592               ; 4 uses
  %i.ez = icmp ugt i64 %i.ey, 1152921504606846975
  br i1 %i.ez, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
          to label %.noexc124 unwind label %.loopexit.split-lp308

.noexc124:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 96 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !94
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !22
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3
  %i.fh = icmp ult i64 %i.fg, %i.ey
  br i1 %i.fh, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i120, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i120: ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i, i64 88 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !21
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %i.fk, %i.fe
  %i.fm = shl nuw nsw i64 %i.ey, 3
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #26
          to label %.noexc125 unwind label %.loopexit307 ; 4 uses

.noexc125:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i120
  %i.fo = load ptr, ptr %i.es, align 8, !tbaa !22 ; 4 uses
  %i.fp = load ptr, ptr %i.fi, align 8, !tbaa !21
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 2 uses
  %i.ft = icmp sgt i64 %i.fs, 0
  br i1 %i.ft, label %bb.w, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121

bb.w:                                             ; preds = %.noexc125
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr align 8 %i.fo, i64 %i.fs, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121: ; preds = %bb.w, %.noexc125
  %.not.i8.i122 = icmp eq ptr %i.fo, null
  br i1 %.not.i8.i122, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121
  %i.fu = load ptr, ptr %i.fa, align 8, !tbaa !94
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.fv, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fw) #27
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123: ; preds = %bb.x, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i121
  store ptr %i.fn, ptr %i.es, align 8, !tbaa !22
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fl
  store ptr %i.fx, ptr %i.fi, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ey
  store ptr %i.fy, ptr %i.fa, align 8, !tbaa !94
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
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit128

_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit128: ; preds = %bb.y, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.fz, %bb.y ], [ %i.dq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0271)
  br label %bb.cg

bb.z:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit
  %i.ga = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %bb.aa, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126, !prof !95

bb.aa:                                            ; preds = %bb.z
  %i.gc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !98
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit126

_ZNSt6vectorIdSaIdEE7reserveEm.exit126:           ; preds = %bb.ab, %bb.aa, %bb.z, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i123, %bb.v
  %i.gd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0276.0324) #30 ; 2 uses
  %.not300 = icmp eq ptr %i.gd, %i.bt
  br i1 %.not300, label %._crit_edge, label %.lr.ph

._crit_edge339.loopexit:                          ; preds = %.loopexit
  %.pre370 = load ptr, ptr %1, align 8, !tbaa !51
  br label %._crit_edge339

._crit_edge339:                                   ; preds = %._crit_edge339.loopexit, %._crit_edge330
  %12 = phi ptr [ %.pre370, %._crit_edge339.loopexit ], [ %11, %._crit_edge330 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 320
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.gf, ptr %8, align 8, !tbaa !66
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !64 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 328
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !63 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !67
  %i.gj = icmp ugt i64 %i.gi, 15
  br i1 %i.gj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge339
  %i.gk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc129 unwind label %bb.ba ; 2 uses

.noexc129:                                        ; preds = %.noexc.i
  store ptr %i.gk, ptr %8, align 8, !tbaa !64
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.gl, ptr %i.gf, align 8, !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc129, %._crit_edge339
  %i.gm = phi ptr [ %i.gk, %.noexc129 ], [ %i.gf, %._crit_edge339 ] ; 2 uses
  switch i64 %i.gi, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.gn = load i8, ptr %i.gg, align 1, !tbaa !68
  store i8 %i.gn, ptr %i.gm, align 1, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ad:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr align 1 %i.gg, i64 %i.gi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.ac, %bb.ad
  %i.go = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !63
  %i.gq = load ptr, ptr %8, align 8, !tbaa !64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.go
  store i8 0, ptr %i.gr, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.gs = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.gt = load ptr, ptr %1, align 8, !tbaa !51    ; 4 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = sdiv exact i64 %i.gw, 592               ; 4 uses
  %i.gy = icmp ugt i64 %i.gx, 1
  br i1 %i.gy, label %.lr.ph341, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.lr.ph341:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.gz = load i64, ptr %i.gp, align 8, !tbaa !63 ; 4 uses
  %i.ha = load ptr, ptr %8, align 8
  %i.hb = icmp eq i64 %i.gz, 0
  br label %bb.bb

bb.ae:                                            ; preds = %.lr.ph338, %.loopexit
  %.sroa.0268.0336 = phi ptr [ %11, %.lr.ph338 ], [ %i.li, %.loopexit ] ; 6 uses
  %i.hc = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %bb.af, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131, !prof !95

bb.af:                                            ; preds = %bb.ae
  %i.he = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i130 = icmp eq i32 %i.he, 0
  br i1 %.not.i130, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !98
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131

_ZN9benchmark8internal18GetNullLogInstanceEv.exit131: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.hf = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.hg = icmp eq i8 %i.hf, 0
  br i1 %i.hg, label %bb.ah, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133, !prof !95

bb.ah:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131
  %i.hh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i132 = icmp eq i32 %i.hh, 0
  br i1 %.not.i132, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !98
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit133

_ZN9benchmark8internal18GetNullLogInstanceEv.exit133: ; preds = %bb.ai, %bb.ah, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit131
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 352
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !48
  %.not = icmp eq i32 %i.hj, 0
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
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 432 ; 2 uses
  %i.hl = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 4 uses
  %i.hm = load ptr, ptr %i.p, align 8, !tbaa !94
  %.not.i134 = icmp eq ptr %i.hl, %i.hm
  br i1 %.not.i134, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hn = load double, ptr %i.hk, align 8, !tbaa !18
  store double %i.hn, ptr %i.hl, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.ho, ptr %i.bo, align 8, !tbaa !21
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit

bb.al:                                            ; preds = %bb.aj
  %i.hp = load ptr, ptr %5, align 8, !tbaa !22    ; 4 uses
  %i.hq = ptrtoint ptr %i.hl to i64
  %i.hr = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hs = sub i64 %i.hq, %i.hr                    ; 5 uses
  %i.ht = icmp eq i64 %i.hs, 9223372036854775800
  br i1 %i.ht, label %.invoke481, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

.invoke481:                                       ; preds = %bb.ap, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.cont482 unwind label %.loopexit.split-lp303

.cont482:                                         ; preds = %.invoke481
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.hu = ashr exact i64 %i.hs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 1)
  %i.hv = add nsw i64 %.sroa.speculated.i.i.i, %i.hu ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hv, i64 1152921504606846975)
  %i.hy = select i1 %i.hw, i64 1152921504606846975, i64 %i.hx ; 3 uses
  %.not.i.i.i135 = icmp ne i64 %i.hy, 0
  call void @llvm.assume(i1 %.not.i.i.i135)
  %i.hz = shl nuw nsw i64 %i.hy, 3
  %i.ia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #26
          to label %.noexc137 unwind label %.loopexit302 ; 4 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 %i.hs ; 2 uses
  %i.ic = load double, ptr %i.hk, align 8, !tbaa !18
  store double %i.ic, ptr %i.ib, align 8, !tbaa !18
  %i.id = icmp sgt i64 %i.hs, 0
  br i1 %i.id, label %bb.am, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.am:                                            ; preds = %.noexc137
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr align 8 %i.hp, i64 %i.hs, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.am, %.noexc137
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.not.i17.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.if = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = sub i64 %i.ig, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ih) #27
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.ia, ptr %5, align 8, !tbaa !22
  store ptr %i.ie, ptr %i.bo, align 8, !tbaa !21
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.hy
  store ptr %i.ii, ptr %i.p, align 8, !tbaa !94
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.ak
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 440 ; 2 uses
  %i.ik = load ptr, ptr %i.bp, align 8, !tbaa !21 ; 4 uses
  %i.il = load ptr, ptr %i.be, align 8, !tbaa !94
  %.not.i138 = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i138, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit
  %i.im = load double, ptr %i.ij, align 8, !tbaa !18
  store double %i.im, ptr %i.ik, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.in, ptr %i.bp, align 8, !tbaa !21
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147

bb.ap:                                            ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit
  %i.io = load ptr, ptr %6, align 8, !tbaa !22    ; 4 uses
  %i.ip = ptrtoint ptr %i.ik to i64
  %i.iq = ptrtoint ptr %i.io to i64               ; 2 uses
  %i.ir = sub i64 %i.ip, %i.iq                    ; 5 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775800
  br i1 %i.is, label %.invoke481, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i139

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i139: ; preds = %bb.ap
  %i.it = ashr exact i64 %i.ir, 3                 ; 3 uses
  %.sroa.speculated.i.i.i140 = call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i140, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iu, i64 1152921504606846975)
  %i.ix = select i1 %i.iv, i64 1152921504606846975, i64 %i.iw ; 3 uses
  %.not.i.i.i141 = icmp ne i64 %i.ix, 0
  call void @llvm.assume(i1 %.not.i.i.i141)
  %i.iy = shl nuw nsw i64 %i.ix, 3
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #26
          to label %.noexc146 unwind label %.loopexit302 ; 4 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i139
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.ir ; 2 uses
  %i.jb = load double, ptr %i.ij, align 8, !tbaa !18
  store double %i.jb, ptr %i.ja, align 8, !tbaa !18
  %i.jc = icmp sgt i64 %i.ir, 0
  br i1 %i.jc, label %bb.aq, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142

bb.aq:                                            ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iz, ptr align 8 %i.io, i64 %i.ir, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142: ; preds = %bb.aq, %.noexc146
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.not.i17.i.i143 = icmp eq ptr %i.io, null
  br i1 %.not.i17.i.i143, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142
  %i.je = load ptr, ptr %i.be, align 8, !tbaa !94
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = sub i64 %i.jf, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144: ; preds = %bb.ar, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i142
  store ptr %i.iz, ptr %6, align 8, !tbaa !22
  store ptr %i.jd, ptr %i.bp, align 8, !tbaa !21
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ix
  store ptr %i.jh, ptr %i.be, align 8, !tbaa !94
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147

_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i144, %bb.ao
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 520
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !55 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 504 ; 2 uses
  %.not299332 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not299332, label %.loopexit, label %.lr.ph334

.lr.ph334:                                        ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147, %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit
  %.sroa.0264.0333 = phi ptr [ %i.lh, %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit ], [ %i.jj, %_ZNSt6vectorIdSaIdEE12emplace_backIJRKdEEERdDpOT_.exit147 ] ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0264.0333, i64 32
  %.val90 = load ptr, ptr %i.jl, align 8          ; 2 uses
  %i.jm = getelementptr i8, ptr %.sroa.0264.0333, i64 40
  %.val91 = load i64, ptr %i.jm, align 8          ; 4 uses
  %.val.i.i148 = load ptr, ptr %i.bk, align 8, !tbaa !54 ; 2 uses
  %.not2.i.i.i149 = icmp eq ptr %.val.i.i148, null
  br i1 %.not2.i.i.i149, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %.lr.ph334, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156
  %.04.i.i.i151 = phi ptr [ %.1.i.i.i161, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156 ], [ %.val.i.i148, %.lr.ph334 ] ; 6 uses
  %.083.i.i.i152 = phi ptr [ %.19.i.i.i158, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156 ], [ %i.bj, %.lr.ph334 ] ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.04.i.i.i151, i64 40
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i153 = call i64 @llvm.umin.i64(i64 %.val91, i64 %i.jo) ; 2 uses
  %i.jp = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i153, 0
  br i1 %i.jp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154: ; preds = %.lr.ph.i.i.i150
  %i.jq = getelementptr inbounds nuw i8, ptr %.04.i.i.i151, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !64
  %i.js = call i32 @memcmp(ptr noundef %i.jr, ptr noundef readonly %.val90, i64 noundef %.sroa.speculated.i.i.i.i.i.i153) #28 ; 2 uses
  %.not.i.i.i.i.i.i155 = icmp eq i32 %i.js, 0
  br i1 %.not.i.i.i.i.i.i155, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154, %.lr.ph.i.i.i150
  %i.jt = sub i64 %i.jo, %.val91
  %spec.select7.i.i.i.i.i.i.i176 = call i64 @llvm.smax.i64(i64 %i.jt, i64 -2147483648)
  %.08.i.i.i.i.i.i.i177 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i176, i64 2147483647)
  %.0.i6.i.i.i.i.i.i178 = trunc nsw i64 %.08.i.i.i.i.i.i.i177 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154
  %.0.i.i.i.i.i.i157 = phi i32 [ %i.js, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i154 ], [ %.0.i6.i.i.i.i.i.i178, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i175 ]
  %i.ju = icmp slt i32 %.0.i.i.i.i.i.i157, 0      ; 4 uses
  %.19.i.i.i158 = select i1 %i.ju, ptr %.083.i.i.i152, ptr %.04.i.i.i151 ; 3 uses
  %.1.in.v.i.i.i159 = select i1 %i.ju, i64 24, i64 16
  %.1.in.i.i.i160 = getelementptr i8, ptr %.04.i.i.i151, i64 %.1.in.v.i.i.i159
  %.1.i.i.i161 = load ptr, ptr %.1.in.i.i.i160, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %.1.i.i.i161, null
  br i1 %.not.i.i.i162, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163, label %.lr.ph.i.i.i150, !llvm.loop !2

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i156
  %i.jv = icmp eq ptr %.19.i.i.i158, %i.bj
  br i1 %i.jv, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179, label %bb.as

bb.as:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163
  %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ju, ptr %.083.i.i.i152, ptr %.04.i.i.i151
  %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.jw = load i64, ptr %.19.i.i.i158.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i164 = call i64 @llvm.umin.i64(i64 %i.jw, i64 %.val91) ; 2 uses
  %i.jx = icmp eq i64 %.sroa.speculated.i.i.i.i.i164, 0
  br i1 %i.jx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165: ; preds = %bb.as
  %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel.v = select i1 %i.ju, ptr %.083.i.i.i152, ptr %.04.i.i.i151
  %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.jy = load ptr, ptr %.19.i.i.i158.sroa.sel291.v.sroa.sel.v.sroa.sel, align 8, !tbaa !64
  %i.jz = call i32 @memcmp(ptr noundef readonly %.val90, ptr noundef %i.jy, i64 noundef %.sroa.speculated.i.i.i.i.i164) #28 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq i32 %i.jz, 0
  br i1 %.not.i.i.i.i.i166, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165, %bb.as
  %i.ka = sub i64 %.val91, %i.jw
  %spec.select7.i.i.i.i.i.i172 = call i64 @llvm.smax.i64(i64 %i.ka, i64 -2147483648)
  %.08.i.i.i.i.i.i173 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i172, i64 2147483647)
  %.0.i6.i.i.i.i.i174 = trunc nsw i64 %.08.i.i.i.i.i.i173 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165
  %.0.i.i.i.i.i168 = phi i32 [ %i.jz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i165 ], [ %.0.i6.i.i.i.i.i174, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i171 ]
  %i.kb = icmp slt i32 %.0.i.i.i.i.i168, 0
  %spec.select.i.i169 = select i1 %i.kb, ptr %i.bj, ptr %.19.i.i.i158
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163, %.lr.ph334
  %.sroa.0.0.i.i170 = phi ptr [ %i.bj, %.lr.ph334 ], [ %i.bj, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i163 ], [ %spec.select.i.i169, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i167 ] ; 3 uses
  %i.kc = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.kd = icmp eq i8 %i.kc, 0
  br i1 %i.kd, label %bb.at, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181, !prof !95

bb.at:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179
  %i.ke = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  %.not.i180 = icmp eq i32 %i.ke, 0
  br i1 %.not.i180, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !98
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #28
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181

_ZN9benchmark8internal18GetNullLogInstanceEv.exit181: ; preds = %bb.au, %bb.at, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170, i64 80 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0264.0333, i64 64 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170, i64 88 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !21 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170, i64 96 ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !94
  %.not.i182 = icmp eq ptr %i.ki, %i.kk
  br i1 %.not.i182, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181
  %i.kl = load double, ptr %i.kg, align 8, !tbaa !18
  store double %i.kl, ptr %i.ki, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %i.km, ptr %i.kh, align 8, !tbaa !21
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit

bb.aw:                                            ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181
  %i.kn = load ptr, ptr %i.kf, align 8, !tbaa !22 ; 4 uses
  %i.ko = ptrtoint ptr %i.ki to i64
  %i.kp = ptrtoint ptr %i.kn to i64               ; 2 uses
  %i.kq = sub i64 %i.ko, %i.kp                    ; 5 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775800
  br i1 %i.kr, label %bb.ax, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc186 unwind label %.loopexit.split-lp

.noexc186:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183: ; preds = %bb.aw
  %i.ks = ashr exact i64 %i.kq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i184 = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i184, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = call i64 @llvm.umin.i64(i64 %i.kt, i64 1152921504606846975)
  %i.kw = select i1 %i.ku, i64 1152921504606846975, i64 %i.kv ; 3 uses
  %.not.i.i.i185 = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %.not.i.i.i185)
  %i.kx = shl nuw nsw i64 %i.kw, 3
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #26
          to label %.noexc187 unwind label %.loopexit301 ; 4 uses

.noexc187:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i183
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kq ; 2 uses
  %i.la = load double, ptr %i.kg, align 8, !tbaa !18
  store double %i.la, ptr %i.kz, align 8, !tbaa !18
  %i.lb = icmp sgt i64 %i.kq, 0
  br i1 %i.lb, label %bb.ay, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i

bb.ay:                                            ; preds = %.noexc187
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ky, ptr align 8 %i.kn, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i: ; preds = %bb.ay, %.noexc187
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.not.i27.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i
  %i.ld = load ptr, ptr %i.kj, align 8, !tbaa !94
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = sub i64 %i.le, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.lf) #27
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.az, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit26.i.i
  store ptr %i.ky, ptr %i.kf, align 8, !tbaa !22
  store ptr %i.lc, ptr %i.kh, align 8, !tbaa !21
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kw
  store ptr %i.lg, ptr %i.kj, align 8, !tbaa !94
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKN9benchmark7CounterEEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.av
  %i.lh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0264.0333) #30 ; 2 uses
  %.not299 = icmp eq ptr %i.lh, %i.jk
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
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0268.0336, i64 592 ; 2 uses
  %.not295 = icmp eq ptr %i.li, %10
  br i1 %.not295, label %._crit_edge339.loopexit, label %bb.ae

bb.ba:                                            ; preds = %.noexc.i
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.bb:                                            ; preds = %.lr.ph341, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293
  %.0340 = phi i64 [ 1, %.lr.ph341 ], [ %i.ls, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [592 x i8], ptr %i.gt, i64 %.0340 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 320
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 328
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !63
  %i.lo = icmp eq i64 %i.ln, %i.gz
  br i1 %i.lo, label %bb.bc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.hb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.bc
  %i.lp = load ptr, ptr %i.ll, align 8, !tbaa !64
  %bcmp.i.i = call i32 @bcmp(ptr %i.lp, ptr %i.ha, i64 %i.gz)
  %.not296 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not296, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.bb, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.lq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.gz, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge unwind label %bb.bd ; 0 uses

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.pre371 = load ptr, ptr %i.d, align 8, !tbaa !50
  %.pre372 = load ptr, ptr %1, align 8, !tbaa !51 ; 2 uses
  %.pre380 = ptrtoint ptr %.pre371 to i64
  %.pre382 = ptrtoint ptr %.pre372 to i64
  %.pre384 = sub i64 %.pre380, %.pre382
  %.pre386 = sdiv exact i64 %.pre384, 592
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.bd:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293: ; preds = %bb.bc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ls = add nuw i64 %.0340, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ls, %i.gx
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.bb, !llvm.loop !91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.pre-phi387 = phi i64 [ %.pre386, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.gx, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293 ]
  %i.lt = phi ptr [ %.pre372, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.gt, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread293 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 480
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !99 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !101 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !101 ; 2 uses
  %.not297349 = icmp eq ptr %i.lw, %i.ly
  br i1 %.not297349, label %._crit_edge352, label %.lr.ph351

.lr.ph351:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.lz = uitofp i64 %.pre-phi387 to double
  %i.ma = sitofp i64 %i.bi to double
  %i.mb = fdiv double %i.lz, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.md = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.mg = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.mh = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.mj = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.mk = getelementptr inbounds nuw i8, ptr %9, i64 272
  %i.ml = getelementptr inbounds nuw i8, ptr %9, i64 400
  %i.mm = getelementptr inbounds nuw i8, ptr %9, i64 416
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 408
  %i.mo = getelementptr inbounds nuw i8, ptr %9, i64 280 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %9, i64 312 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %9, i64 392
  %i.ms = getelementptr inbounds nuw i8, ptr %9, i64 432 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 440
  %i.mu = getelementptr inbounds nuw i8, ptr %9, i64 424
  %i.mv = getelementptr inbounds nuw i8, ptr %9, i64 496 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 512 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 504 ; 5 uses
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 536 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.nd = getelementptr inbounds nuw i8, ptr %9, i64 376 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %9, i64 296 ; 2 uses
  %i.ng = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.bg

._crit_edge352:                                   ; preds = %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ni = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.gf
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge352
  %i.nk = load i64, ptr %i.gf, align 8, !tbaa !68
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.val102 = load ptr, ptr %i.bk, align 8, !tbaa !54
  call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %.val102)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.nm = load ptr, ptr %6, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.nn = load ptr, ptr %i.be, align 8, !tbaa !94
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nm to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nq) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.nr = load ptr, ptr %5, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorIdSaIdEED2Ev.exit191, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ns = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = ptrtoint ptr %i.nr to i64
  %i.nv = sub i64 %i.nt, %i.nu
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nv) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit191

_ZNSt6vectorIdSaIdEED2Ev.exit191:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ck

bb.bg:                                            ; preds = %.lr.ph351, %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit
  %.sroa.0259.0350 = phi ptr [ %i.lw, %.lr.ph351 ], [ %i.si, %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2Ev(ptr noundef nonnull align 8 dereferenceable(592) %9)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.nw = load ptr, ptr %1, align 8, !tbaa !51    ; 8 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(256) %9, ptr noundef nonnull align 8 dereferenceable(256) %i.nw)
          to label %.noexc192 unwind label %bb.bm

.noexc192:                                        ; preds = %bb.bh
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mc, ptr noundef nonnull align 8 dereferenceable(32) %i.nx)
          to label %.noexc193 unwind label %bb.bm

.noexc193:                                        ; preds = %.noexc192
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.md, ptr noundef nonnull align 8 dereferenceable(32) %i.ny)
          to label %.noexc194 unwind label %bb.bm

.noexc194:                                        ; preds = %.noexc193
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.me, ptr noundef nonnull align 8 dereferenceable(32) %i.nz)
          to label %.noexc195 unwind label %bb.bm

.noexc195:                                        ; preds = %.noexc194
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %i.oa)
          to label %.noexc196 unwind label %bb.bm

.noexc196:                                        ; preds = %.noexc195
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull align 8 dereferenceable(32) %i.ob)
          to label %.noexc197 unwind label %bb.bm

.noexc197:                                        ; preds = %.noexc196
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nw, i64 192
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mh, ptr noundef nonnull align 8 dereferenceable(32) %i.oc)
          to label %.noexc198 unwind label %bb.bm

.noexc198:                                        ; preds = %.noexc197
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 224
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %i.od)
          to label %_ZN9benchmark13BenchmarkNameaSERKS0_.exit unwind label %bb.bm

_ZN9benchmark13BenchmarkNameaSERKS0_.exit:        ; preds = %.noexc198
  %i.oe = load ptr, ptr %1, align 8, !tbaa !51    ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 256
  %i.og = load <2 x i64>, ptr %i.of, align 8, !tbaa !67
  store <2 x i64> %i.og, ptr %i.mj, align 8, !tbaa !67
  store i32 1, ptr %i.mk, align 8, !tbaa !69
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 400
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !70
  store i64 %i.oi, ptr %i.ml, align 8, !tbaa !70
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 416
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !102
end_hunk_1
