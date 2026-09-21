Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/dyn_array_tests?download=true
inline.NumInlined: 2502
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30dyn_array_tests_copy_ctor_Test8TestBodyEv:_ZNK3gsl9dyn_arrayIcSaIcEE3endEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i73, label %_ZNK7testing15AssertionResult15failure_messageEv.exit74, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %i.bx, align 8
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit74

_ZNK7testing15AssertionResult15failure_messageEv.exit74: ; preds = %bb.aj, %bb.ai
  %i.bz = phi ptr [ %i.by, %bb.aj ], [ @.str.156, %bb.ai ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 100, ptr noundef %i.bz)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit74
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.ca = load ptr, ptr %13, align 8              ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %bb.al
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %i.ca) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit80

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit74
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn39 = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.cf, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.ch = load ptr, ptr %13, align 8              ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %bb.ap
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79, %bb.ap, %bb.am
  %.pn39.pn = phi { ptr, i32 } [ %i.ce, %bb.am ], [ %.pn39, %bb.ap ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #28
  br label %bb.bm

bb.aq:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIPcDnEENS_15AssertionResultEPKcS5_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit77
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 4 uses
  %.not.i.i81 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i81, label %_ZN7testing15AssertionResultD2Ev.exit85, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82: ; preds = %bb.ar
  %i.cq = load i64, ptr %i.co, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit85

_ZN7testing15AssertionResultD2Ev.exit85:          ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.cs = load ptr, ptr %3, align 8, !noalias !54 ; 8 uses
  %i.ct = load i64, ptr %i.j, align 8, !noalias !54 ; 11 uses
  %.not.i.i86 = icmp eq ptr %i.cs, null           ; 5 uses
  %i.cu = icmp ne i64 %i.ct, 0
  %or.cond9.i.i = xor i1 %.not.i.i86, %i.cu
  br i1 %or.cond9.i.i, label %bb.as, label %.critedge6.i.i, !prof !55

.critedge6.i.i:                                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit85
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !54
  unreachable

bb.as:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit85
  %i.cv = icmp slt i64 %i.ct, 0
  br i1 %i.cv, label %bb.at, label %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit3.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.cw = call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gsl15narrowing_errorE, i64 16), ptr %i.cw, align 8, !noalias !56
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN3gsl15narrowing_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #32
          to label %.noexc90 unwind label %bb.bn

.noexc90:                                         ; preds = %bb.at
  unreachable

_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit3.i.i.i: ; preds = %bb.as
  %i.cx = lshr i64 %i.ct, 2                       ; 2 uses
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit3.i.i.i
  br i1 %.not.i.i86, label %bb.au, label %.lr.ph.split.i.preheader.i.i.i, !prof !9

.lr.ph.split.i.preheader.i.i.i:                   ; preds = %.lr.ph.i.i.i.i
  %i.cy = and i64 %i.ct, 9223372036854775804
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %_ZN3gsl7details18dyn_array_iteratorIcEppEv.exit10.i.i.i.i, %.lr.ph.split.i.preheader.i.i.i
  %i.cz = phi i64 [ %i.dp, %_ZN3gsl7details18dyn_array_iteratorIcEppEv.exit10.i.i.i.i ], [ 0, %.lr.ph.split.i.preheader.i.i.i ] ; 6 uses
  %.063.i.i.i.i = phi i64 [ %i.dq, %_ZN3gsl7details18dyn_array_iteratorIcEppEv.exit10.i.i.i.i ], [ %i.cx, %.lr.ph.split.i.preheader.i.i.i ] ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.ct
  br i1 %i.da, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit.i.i.i.i", label %bb.av, !prof !10

bb.au:                                            ; preds = %.lr.ph.i.i.i.i
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

bb.av:                                            ; preds = %.lr.ph.split.i.i.i.i
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit.i.i.i.i": ; preds = %.lr.ph.split.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cz
  %i.dc = load i8, ptr %i.db, align 1, !noalias !56
  %.not59.i.i.i.i = icmp eq i8 %i.dc, 99
  br i1 %.not59.i.i.i.i, label %bb.aw, label %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"

bb.aw:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit.i.i.i.i"
  %i.dd = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.ct
  br i1 %i.de, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit3.i.i.i.i", label %bb.ax, !prof !10

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit3.i.i.i.i": ; preds = %bb.aw
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !noalias !56
  %.not60.i.i.i.i = icmp eq i8 %i.dg, 99
  br i1 %.not60.i.i.i.i, label %bb.ay, label %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"

bb.ay:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit3.i.i.i.i"
  %i.dh = or disjoint i64 %i.cz, 2                ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.ct
  br i1 %i.di, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit6.i.i.i.i", label %bb.az, !prof !10

bb.az:                                            ; preds = %bb.ay
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit6.i.i.i.i": ; preds = %bb.ay
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dh
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !56
  %.not61.i.i.i.i = icmp eq i8 %i.dk, 99
  br i1 %.not61.i.i.i.i, label %bb.ba, label %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"

bb.ba:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit6.i.i.i.i"
  %i.dl = or disjoint i64 %i.cz, 3                ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.ct
  br i1 %i.dm, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit9.i.i.i.i", label %bb.bb, !prof !10

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit9.i.i.i.i": ; preds = %bb.ba
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dl
  %i.do = load i8, ptr %i.dn, align 1, !noalias !56
  %.not62.i.i.i.i = icmp eq i8 %i.do, 99
  br i1 %.not62.i.i.i.i, label %_ZN3gsl7details18dyn_array_iteratorIcEppEv.exit10.i.i.i.i, label %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"

_ZN3gsl7details18dyn_array_iteratorIcEppEv.exit10.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit9.i.i.i.i"
  %i.dp = add nuw i64 %i.cz, 4
  %i.dq = add nsw i64 %.063.i.i.i.i, -1
  %i.dr = icmp sgt i64 %.063.i.i.i.i, 1
  br i1 %i.dr, label %.lr.ph.split.i.i.i.i, label %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit.i.i.i, !llvm.loop !51

_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit.i.i.i: ; preds = %_ZN3gsl7details18dyn_array_iteratorIcEppEv.exit10.i.i.i.i, %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit3.i.i.i
  %.sroa.8.0.i = phi i64 [ 0, %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit3.i.i.i ], [ %i.cy, %_ZN3gsl7details18dyn_array_iteratorIcEppEv.exit10.i.i.i.i ] ; 5 uses
  %i.ds = sub nsw i64 %i.ct, %.sroa.8.0.i
  switch i64 %i.ds, label %_ZN7testing15AssertionResultD2Ev.exit109 [
    i64 3, label %bb.bc
    i64 2, label %bb.be
    i64 1, label %bb.bi
  ]

bb.bc:                                            ; preds = %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit.i.i.i
  br i1 %.not.i.i86, label %bb.bd, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit12.i.i.i.i", !prof !9

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit12.i.i.i.i": ; preds = %bb.bc
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.8.0.i
  %i.du = load i8, ptr %i.dt, align 1, !noalias !56
  %.not.i.i.i.i = icmp eq i8 %i.du, 99
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"

.thread.i.i.i.i:                                  ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit12.i.i.i.i"
  %i.dv = or disjoint i64 %.sroa.8.0.i, 1
  br label %bb.bg

bb.be:                                            ; preds = %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit.i.i.i
  br i1 %.not.i.i86, label %bb.bf, label %bb.bg, !prof !12

bb.bf:                                            ; preds = %bb.be
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

bb.bg:                                            ; preds = %bb.be, %.thread.i.i.i.i
  %.sroa.8.1.i = phi i64 [ %i.dv, %.thread.i.i.i.i ], [ %.sroa.8.0.i, %bb.be ] ; 3 uses
  %i.dw = icmp ult i64 %.sroa.8.1.i, %i.ct
  br i1 %i.dw, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit15.i.i.i.i", label %bb.bh, !prof !10

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit15.i.i.i.i": ; preds = %bb.bg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.8.1.i
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !56
  %.not57.i.i.i.i = icmp eq i8 %i.dy, 99
  br i1 %.not57.i.i.i.i, label %.thread80.i.i.i.i, label %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"

.thread80.i.i.i.i:                                ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit15.i.i.i.i"
  %i.dz = add nuw nsw i64 %.sroa.8.1.i, 1
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNK3gsl7details18dyn_array_iteratorIcEmiERKS2_.exit.i.i.i
  br i1 %.not.i.i86, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

bb.bk:                                            ; preds = %bb.bi, %.thread80.i.i.i.i
  %.sroa.8.2.i = phi i64 [ %i.dz, %.thread80.i.i.i.i ], [ %.sroa.8.0.i, %bb.bi ] ; 2 uses
  %i.ea = icmp ult i64 %.sroa.8.2.i, %i.ct
  br i1 %i.ea, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit18.i.i.i.i", label %bb.bl, !prof !10

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN3gsl7details9terminateEv() #31, !noalias !56
  unreachable

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit18.i.i.i.i": ; preds = %bb.bk
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.8.2.i
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !56
  %.not58.i.i.i.i = icmp eq i8 %i.ec, 99
  br i1 %.not58.i.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit109, label %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"

bb.bm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit80, %bb.ag
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit80 ], [ %i.bv, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.cb

bb.bn:                                            ; preds = %bb.at
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit9.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit6.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit3.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit18.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit15.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0EclIN3gsl7details18dyn_array_iteratorIcEEEEbT_.exit12.i.i.i.i"
  store i8 0, ptr %15, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr null, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.ef = load ptr, ptr %18, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 101, ptr noundef %i.ef)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #28
  %i.eg = load ptr, ptr %18, align 8              ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.br
  %i.ej = load i64, ptr %i.eh, align 8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.el = load ptr, ptr %16, align 8              ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.el, null
  br i1 %.not.i.i96, label %bb.bx, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(128) %i.el) #28, !inline_history !0
  br label %bb.bx

bb.bs:                                            ; preds = %"_ZSt11find_if_notIN3gsl7details18dyn_array_iteratorIcEEZN30dyn_array_tests_copy_ctor_Test8TestBodyEvE3$_0ET_S6_S6_T0_.exit.i"
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit104

bb.bt:                                            ; preds = %bb.bo
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.bu:                                            ; preds = %bb.bp
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bq
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #28
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn43 = phi { ptr, i32 } [ %i.es, %bb.bv ], [ %i.er, %bb.bu ] ; 2 uses
  %i.et = load ptr, ptr %18, align 8              ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.bw
  %i.ew = load i64, ptr %i.eu, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.bt
  %.pn43.pn = phi { ptr, i32 } [ %i.eq, %bb.bt ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %.pn43, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.ey = load ptr, ptr %16, align 8              ; 3 uses
  %.not.i.i102 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i102, label %_ZN7testing7MessageD2Ev.exit104, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit104

_ZN7testing7MessageD2Ev.exit104:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.bs
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.ep, %bb.bs ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn43.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #28
  br label %bb.ca

bb.bx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %.pr135 = load ptr, ptr %i.ee, align 8          ; 4 uses
  %.not.i.i105 = icmp eq ptr %.pr135, null
  br i1 %.not.i.i105, label %_ZN7testing15AssertionResultD2Ev.exit109, label %bb.by

bb.by:                                            ; preds = %bb.bx
end_hunk_0
begin_hunk_1_@__cxa_rethrow

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI37dyn_array_tests_count_value_ctor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI37dyn_array_tests_count_value_ctor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV37dyn_array_tests_count_value_ctor_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI33dyn_array_tests_inputit_ctor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI33dyn_array_tests_inputit_ctor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV33dyn_array_tests_inputit_ctor_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gsl15narrowing_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK3gsl15narrowing_error4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str.157
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_copy_ctor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_copy_ctor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30dyn_array_tests_copy_ctor_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gsl9dyn_arrayIcSaIcEEC2INS_7details18dyn_array_iteratorIKcEETnNSt9enable_ifIXsr7details15is_fwd_iteratorIT_EE5valueEbE4typeELb1EEES9_S9_RKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"class.gsl::details::dyn_array_iterator.66") align 8 %1, ptr noundef byval(%"class.gsl::details::dyn_array_iterator.66") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8
  %.fr.i = freeze ptr %.sroa.09.0.copyload        ; 9 uses
  %.fr.i37 = ptrtoaddr ptr %.fr.i to i64
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 11 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.220.0.copyload = load i64, ptr %.sroa.220.0..sroa_idx, align 8 ; 6 uses
  %i.a = icmp eq ptr %.sroa.019.0.copyload, %.fr.i
  br i1 %i.a, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.321.0.copyload = load i64, ptr %.sroa.321.0..sroa_idx, align 8
  %i.b = icmp eq i64 %.sroa.321.0.copyload, %.sroa.3.0.copyload
  br i1 %i.b, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = icmp slt i64 %.sroa.220.0.copyload, 0
  br i1 %i.c, label %bb.f, label %_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gsl15narrowing_errorE, i64 16), ptr %i.d, align 8
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN3gsl15narrowing_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i: ; preds = %bb.e
  %i.e = icmp slt i64 %.sroa.2.0.copyload, 0
  br i1 %i.e, label %bb.g, label %_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit

bb.g:                                             ; preds = %_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gsl15narrowing_errorE, i64 16), ptr %i.f, align 8
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN3gsl15narrowing_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit: ; preds = %_ZN3gsl6narrowIlmTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit.i
  %i.g = sub nsw i64 %.sroa.220.0.copyload, %.sroa.2.0.copyload ; 3 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.h, label %_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit

bb.h:                                             ; preds = %_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gsl15narrowing_errorE, i64 16), ptr %i.i, align 8
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN3gsl15narrowing_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #32
  unreachable

_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit: ; preds = %_ZNK3gsl7details18dyn_array_iteratorIKcEmiERKS3_.exit
  %i.j = icmp eq i64 %.sroa.220.0.copyload, %.sroa.2.0.copyload
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.us.i.thread

.lr.ph.split.us.i:                                ; preds = %_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit

.lr.ph.split.us.i.thread:                         ; preds = %_ZN3gsl6narrowImlTnPNSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeELPv0EEES2_T0_.exit
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  store ptr %i.k, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.m, align 8
  %.not.i.i36 = icmp eq ptr %.fr.i, null
  br i1 %.not.i.i36, label %.split14.us.i, label %.lr.ph28.preheader.i, !prof !9

.lr.ph28.preheader.i:                             ; preds = %.lr.ph.split.us.i.thread
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload) ; 6 uses
  %i.n = xor i64 %.sroa.2.0.copyload, -1
  %i.o = add nsw i64 %.sroa.220.0.copyload, %i.n
  %i.p = freeze i64 %i.o
  %i.q = sub i64 %umax.i, %.sroa.2.0.copyload
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 33
  br i1 %min.iters.check, label %.lr.ph28.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph28.preheader.i
  %i.t = add i64 %.sroa.2.0.copyload, %.fr.i37
  %i.u = sub i64 %i.t, %i.l
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph28.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.v = and i64 %i.s, 31                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 32, i64 %i.v
  %n.vec = sub i64 %i.s, %i.x                     ; 3 uses
  %i.y = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.z = add i64 %.sroa.2.0.copyload, %n.vec
  %i.aa = getelementptr i8, ptr %.fr.i, i64 %.sroa.2.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <16 x i8>, ptr %i.ab, align 1
  %wide.load38 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load38, ptr %i.ad, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %.lr.ph28.i.preheader, label %vector.body, !llvm.loop !268

.lr.ph28.i.preheader:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph28.preheader.i
  %.08.us.us2127.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph28.preheader.i ], [ %i.y, %vector.body ] ; 2 uses
  %.ph = phi i64 [ %.sroa.2.0.copyload, %vector.memcheck ], [ %.sroa.2.0.copyload, %.lr.ph28.preheader.i ], [ %i.z, %vector.body ] ; 3 uses
  %i.af = sub i64 %.sroa.220.0.copyload, %.ph
  %i.ag = freeze i64 %i.af                        ; 2 uses
  %i.ah = add i64 %i.ag, -1
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol

.lr.ph28.i.prol:                                  ; preds = %.lr.ph28.i.preheader, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol
  %.08.us.us2127.i.prol = phi ptr [ %i.am, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ], [ %.08.us.us2127.i.ph, %.lr.ph28.i.preheader ] ; 2 uses
  %i.ai = phi i64 [ %i.al, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ], [ %.ph, %.lr.ph28.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ], [ 0, %.lr.ph28.i.preheader ]
  %exitcond.not.i.prol = icmp eq i64 %i.ai, %umax.i
  br i1 %exitcond.not.i.prol, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol: ; preds = %.lr.ph28.i.prol
  %i.aj = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  store i8 %i.ak, ptr %.08.us.us2127.i.prol, align 1
  %i.al = add i64 %i.ai, 1                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph28.i.prol.loopexit, label %.lr.ph28.i.prol, !llvm.loop !269

.lr.ph28.i.prol.loopexit:                         ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol, %.lr.ph28.i.preheader
  %.08.us.us2127.i.unr = phi ptr [ %.08.us.us2127.i.ph, %.lr.ph28.i.preheader ], [ %i.am, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph28.i.preheader ], [ %i.al, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.prol ]
  %i.an = icmp ult i64 %i.ah, 3
  br i1 %i.an, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.prol.loopexit, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3
  %.08.us.us2127.i = phi ptr [ %i.be, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3 ], [ %.08.us.us2127.i.unr, %.lr.ph28.i.prol.loopexit ] ; 5 uses
  %i.ao = phi i64 [ %i.bd, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3 ], [ %.unr, %.lr.ph28.i.prol.loopexit ] ; 6 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %umax.i
  br i1 %exitcond.not.i, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i: ; preds = %.lr.ph28.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  store i8 %i.aq, ptr %.08.us.us2127.i, align 1
  %i.ar = add i64 %i.ao, 1                        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ar, %umax.i
  br i1 %exitcond.not.i.1, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1: ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i
  %i.as = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1
  store i8 %i.au, ptr %i.as, align 1
  %i.av = add i64 %i.ao, 2                        ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.av, %umax.i
  br i1 %exitcond.not.i.2, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2: ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1
  store i8 %i.ay, ptr %i.aw, align 1
  %i.az = add i64 %i.ao, 3                        ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.az, %umax.i
  br i1 %exitcond.not.i.3, label %.split17.us.i, label %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3, !prof !9

_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3: ; preds = %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 3
  %i.bb = getelementptr inbounds nuw i8, ptr %.fr.i, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1
  store i8 %i.bc, ptr %i.ba, align 1
  %i.bd = add i64 %i.ao, 4                        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.us.us2127.i, i64 4
  %.not.us.us22.i.3 = icmp eq i64 %i.bd, %.sroa.220.0.copyload
  br i1 %.not.us.us22.i.3, label %_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit, label %.lr.ph28.i, !llvm.loop !270

.split14.us.i:                                    ; preds = %.lr.ph.split.us.i.thread
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

.split17.us.i:                                    ; preds = %.lr.ph28.i.prol, %.lr.ph28.i, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.1, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.2
  tail call void @_ZN3gsl7details9terminateEv() #31
  unreachable

_ZN3gsl7details14dyn_array_baseIcSaIcEE4copyINS0_18dyn_array_iteratorIKcEEEEvT_S8_Pc.exit: ; preds = %.lr.ph28.i.prol.loopexit, %_ZN3gsl7details18dyn_array_iteratorIKcEppEv.exit.us.us.i.3, %.lr.ph.split.us.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI36dyn_array_tests_access_operator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI36dyn_array_tests_access_operator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV36dyn_array_tests_access_operator_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_iterators_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_iterators_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30dyn_array_tests_iterators_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_range_for_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI30dyn_array_tests_range_for_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30dyn_array_tests_range_for_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI39dyn_array_tests_use_std_algorithms_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI39dyn_array_tests_use_std_algorithms_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV39dyn_array_tests_use_std_algorithms_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI54dyn_array_tests_custom_allocator_models_allocator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI54dyn_array_tests_custom_allocator_models_allocator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV54dyn_array_tests_custom_allocator_models_allocator_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI37dyn_array_tests_custom_allocator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI37dyn_array_tests_custom_allocator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV37dyn_array_tests_custom_allocator_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI55dyn_array_tests_non_trivial_elements_are_destroyed_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI55dyn_array_tests_non_trivial_elements_are_destroyed_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV55dyn_array_tests_non_trivial_elements_are_destroyed_Test, i64 16), ptr %i.a, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI70dyn_array_tests_count_constructor_default_constructs_each_element_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI70dyn_array_tests_count_constructor_default_constructs_each_element_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
