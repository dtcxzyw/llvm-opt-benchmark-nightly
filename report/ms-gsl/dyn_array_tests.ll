Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ms-gsl/original/dyn_array_tests?download=true
inline.NumInlined: 2502
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN30dyn_array_tests_copy_ctor_Test8TestBodyEv:_ZNK3gsl9dyn_arrayIcSaIcEE3endEv.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit65

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn33 = phi { ptr, i32 } [ %i.bg, %bb.y ], [ %i.bf, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.bh = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i63, label %_ZN7testing7MessageD2Ev.exit65, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.z
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit65

_ZN7testing7MessageD2Ev.exit65:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %bb.z, %bb.w
  %.pn33.pn = phi { ptr, i32 } [ %i.be, %bb.w ], [ %.pn33, %bb.z ], [ %.pn33, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  br label %bb.af

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit62
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 4 uses
  %.not.i.i66 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i66, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67: ; preds = %bb.ab
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 32) #29
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.bs = load ptr, ptr %3, align 8               ; 2 uses
  store ptr %i.bs, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr null, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal11CmpHelperNEIPcDnEENS_15AssertionResultEPKcS5_RKT_RKT0_.exit unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIPcDnEENS_15AssertionResultEPKcS5_RKT_RKT0_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.183)
          to label %_ZN7testing8internal11CmpHelperNEIPcDnEENS_15AssertionResultEPKcS5_RKT_RKT0_.exit unwind label %bb.ag

_ZN7testing8internal11CmpHelperNEIPcDnEENS_15AssertionResultEPKcS5_RKT_RKT0_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bt = load i8, ptr %12, align 8, !range !7, !noundef !8
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.aq, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit65, %bb.q
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZN7testing7MessageD2Ev.exit65 ], [ %i.av, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.cb

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.bm

bb.ah:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIPcDnEENS_15AssertionResultEPKcS5_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
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
  %i.fc = load ptr, ptr %.pr135, align 8          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.pr135, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i106: ; preds = %bb.by
  %i.ff = load i64, ptr %i.fd, align 8
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i106
  call void @_ZdlPvm(ptr noundef nonnull %.pr135, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit109

end_hunk_0
