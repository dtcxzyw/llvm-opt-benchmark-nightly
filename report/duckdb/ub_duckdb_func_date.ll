inline.NumInlined: 1836
inline.NumDeleted: 869
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN6duckdb11StrpTimeFun12GetFunctionsEv:._crit_edge.i.i
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %.loopexit138

bb.ci:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cj:                                            ; preds = %bb.j
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.k
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn26 = phi { ptr, i32 } [ %i.ig, %bb.ck ], [ %i.if, %bb.cj ]
  %i.ih = load ptr, ptr %i.x, align 8, !tbaa !27  ; 2 uses
  %.not.i107 = icmp eq ptr %i.ih, null
  br i1 %.not.i107, label %_ZNSt14_Function_baseD2Ev.exit108, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ii = invoke noundef zeroext i1 %i.ih(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit108 unwind label %bb.cn ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit108:                ; preds = %bb.cl, %bb.cm
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit108, %bb.ci
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt14_Function_baseD2Ev.exit108 ], [ %i.ie, %bb.ci ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br label %.body

.body:                                            ; preds = %.body114.thread, %bb.i, %.body114, %bb.co
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.co ], [ %i.t, %.body114 ], [ %i.t, %bb.i ], [ %i.w, %.body114.thread ]
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.il) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %.loopexit138

.loopexit138:                                     ; preds = %.loopexit138.loopexit144, %.body, %.thread
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %.body ], [ %i.f, %.thread ], [ %i.id, %.loopexit138.loopexit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.db

bb.cp:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit73, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.cq:                                            ; preds = %bb.z, %bb.x
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %10) #23
  br label %.body44

.loopexit.loopexit143:                            ; preds = %bb.ai
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  br label %.loopexit

bb.cr:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i125.1
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cs:                                            ; preds = %bb.ao
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ct:                                            ; preds = %bb.ap
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.aq
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %11) #23
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn31 = phi { ptr, i32 } [ %i.is, %bb.cu ], [ %i.ir, %bb.ct ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #23
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cs
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.cv ], [ %i.iq, %bb.cs ]
  %i.it = load ptr, ptr %i.do, align 8, !tbaa !27 ; 2 uses
  %.not.i109 = icmp eq ptr %i.it, null
  br i1 %.not.i109, label %_ZNSt14_Function_baseD2Ev.exit110, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.iu = invoke noundef zeroext i1 %i.it(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit110 unwind label %bb.cy ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit110:                ; preds = %bb.cw, %bb.cx
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit110, %bb.cr
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZNSt14_Function_baseD2Ev.exit110 ], [ %i.ip, %bb.cr ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  br label %.body53

.body53:                                          ; preds = %.body128.thread, %bb.an, %.body128, %bb.cz
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.cz ], [ %i.dk, %.body128 ], [ %i.dk, %bb.an ], [ %i.dn, %.body128.thread ]
  %i.ix = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ix) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit143, %.body53, %.thread135
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %.body53 ], [ %i.cw, %.thread135 ], [ %i.io, %.loopexit.loopexit143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body44

bb.da:                                            ; preds = %bb.bn, %bb.bl
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %17) #23
  br label %.body44

.body44:                                          ; preds = %.body.i, %.body.i76, %bb.cp, %bb.da, %.loopexit, %bb.cq
  %.pn37 = phi { ptr, i32 } [ %i.iy, %bb.da ], [ %i.in, %bb.cq ], [ %.pn31.pn.pn.pn.pn, %.loopexit ], [ %i.at, %.body.i ], [ %i.im, %bb.cp ], [ %i.ff, %.body.i76 ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #23
  br label %bb.db

bb.db:                                            ; preds = %.body44, %.loopexit138
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body44 ], [ %.pn26.pn.pn.pn, %.loopexit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ch
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %bb.db ], [ %.pn24, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.dc
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.dc ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.hy, %bb.ce ]
  resume { ptr, i32 } %.pn37.pn.pn.pn
}

declare void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction5ParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %4 = alloca %class.anon.280, align 8            ; 11 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47, !nonnull !82, !align !83
  %i.c = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  %i.h = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !tbaa !154
  %6 = and i64 %i.k, 1
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph80.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.u
  %lpad.loopexit33 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc15, %bb.a, %bb.b, %bb.d, %bb.e, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.g, %.noexc, %.noexc12, %bb.h, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, %bb.i, %.noexc17, %.noexc18, %.noexc19, %.noexc20, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit30, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit33, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %eh.lpad-body

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.c, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.m = load i64, ptr %i.f, align 8, !tbaa !108  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.e, ptr %4, align 8
  %i.n = load i8, ptr %i.l, align 8, !tbaa !155
  switch i8 %i.n, label %bb.w [
    i8 2, label %bb.g
    i8 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc12
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !163  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %.noexc13
  %i.u = load i64, ptr %i.t, align 8, !tbaa !154
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
          to label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %.noexc13
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.w = invoke fastcc i64 @_ZN6duckdb18UnaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction5ParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tEE_SC_S5_EET1_T0_RNS_12ValidityMaskEmPv(i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull readonly %4)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %.noexc15
  store i64 %i.w, ptr %i.p, align 8, !tbaa !154
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %.noexc17
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !163  ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc18
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !163 ; 3 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %.noexc19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148, !noalias !169 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.j

.preheader.i.i.i:                                 ; preds = %.noexc21
  %.not82.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not82.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit, label %.lr.ph80.i.i.i

bb.j:                                             ; preds = %.noexc21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !148, !noalias !169
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp eq ptr %2, %i.l
  br i1 %i.af, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33, !noalias !169 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !23, !noalias !169
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !169
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !169
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !169
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !169 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33, !noalias !169 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !23, !noalias !169
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !169 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ar, align 8, !tbaa !39, !noalias !169
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !41, !noalias !169
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !15, !noalias !169
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !169
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !169, !inline_history !170
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !15, !noalias !169
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !169
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !169, !inline_history !170
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !169
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3, !noalias !169
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4, !noalias !169
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.t, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !43

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !169
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !171, !noalias !169
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !171, !noalias !169
  %i.bj = add i64 %i.m, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 2 uses
  %.not81.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not81.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit, label %.lr.ph78.i.i.i

.lr.ph78.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, %.loopexit68.i.i.i
  %.077.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit68.i.i.i ], [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i ] ; 9 uses
  %.06176.i.i.i = phi i64 [ %i.cg, %.loopexit68.i.i.i ], [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i ] ; 2 uses
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !148, !noalias !169 ; 2 uses
  %.not.i63.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i63.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %.lr.ph78.i.i.i
  %i.bm = add i64 %.077.i.i.i, 64
  %i.bn = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.m)
  br label %.preheader69.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph78.i.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.06176.i.i.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !154, !noalias !169 ; 2 uses
  %i.bq = add i64 %.077.i.i.i, 64
  %i.br = call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.m) ; 5 uses
  switch i64 %i.bp, label %.preheader67.i.i.i [
    i64 -1, label %.preheader69.i.i.i
    i64 0, label %.loopexit68.i.i.i
  ]

.preheader69.i.i.i:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bs = phi i64 [ %i.bn, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 3 uses
  %i.bt = icmp ult i64 %.077.i.i.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i, label %.loopexit68.i.i.i

.preheader67.i.i.i:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bu = icmp ult i64 %.077.i.i.i, %i.br
  br i1 %i.bu, label %.lr.ph74.i.i.i, label %.loopexit68.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader69.i.i.i, %.noexc22
  %.172.i.i.i = phi i64 [ %i.by, %.noexc22 ], [ %.077.i.i.i, %.preheader69.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.172.i.i.i ; 2 uses
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !164, !noalias !167
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.211.0.copyload.i.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !tbaa !14, !alias.scope !164, !noalias !167
  %i.bw = invoke fastcc i64 @_ZN6duckdb18UnaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction5ParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tEE_SC_S5_EET1_T0_RNS_12ValidityMaskEmPv(i64 %.sroa.010.0.copyload.i.i.i, ptr %.sroa.211.0.copyload.i.i.i, ptr noundef nonnull readonly %4)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit

.noexc22:                                         ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.172.i.i.i
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !154, !alias.scope !167, !noalias !164
  %i.by = add i64 %.172.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bs
  br i1 %exitcond.not.i.i.i, label %.loopexit68.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !172

.lr.ph74.i.i.i:                                   ; preds = %.preheader67.i.i.i, %bb.v
  %.273.i.i.i = phi i64 [ %i.cf, %bb.v ], [ %.077.i.i.i, %.preheader67.i.i.i ] ; 4 uses
  %i.bz = sub nuw i64 %.273.i.i.i, %.077.i.i.i
  %i.ca = shl nuw i64 1, %i.bz
end_hunk_0
begin_hunk_1_@_ZN6duckdb14TryStrpTimeFun12GetFunctionsEv:._crit_edge.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cj:                                            ; preds = %bb.j
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.k
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn26 = phi { ptr, i32 } [ %i.if, %bb.ck ], [ %i.ie, %bb.cj ]
  %i.ig = load ptr, ptr %i.x, align 8, !tbaa !27  ; 2 uses
  %.not.i107 = icmp eq ptr %i.ig, null
  br i1 %.not.i107, label %_ZNSt14_Function_baseD2Ev.exit108, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ih = invoke noundef zeroext i1 %i.ig(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit108 unwind label %bb.cn ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit108:                ; preds = %bb.cl, %bb.cm
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit108, %bb.ci
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt14_Function_baseD2Ev.exit108 ], [ %i.id, %bb.ci ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br label %.body

.body:                                            ; preds = %.body114.thread, %bb.i, %.body114, %bb.co
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.co ], [ %i.t, %.body114 ], [ %i.t, %bb.i ], [ %i.w, %.body114.thread ]
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ik) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %.loopexit138

.loopexit138:                                     ; preds = %.loopexit138.loopexit144, %.body, %.thread
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %.body ], [ %i.f, %.thread ], [ %i.ic, %.loopexit138.loopexit144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.db

bb.cp:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit73, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.cq:                                            ; preds = %bb.z, %bb.x
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %10) #23
  br label %.body44

.loopexit.loopexit143:                            ; preds = %bb.ai
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  br label %.loopexit

bb.cr:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i125.1
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cs:                                            ; preds = %bb.ao
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ct:                                            ; preds = %bb.ap
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.aq
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %11) #23
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn31 = phi { ptr, i32 } [ %i.ir, %bb.cu ], [ %i.iq, %bb.ct ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #23
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cs
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.cv ], [ %i.ip, %bb.cs ]
  %i.is = load ptr, ptr %i.dn, align 8, !tbaa !27 ; 2 uses
  %.not.i109 = icmp eq ptr %i.is, null
  br i1 %.not.i109, label %_ZNSt14_Function_baseD2Ev.exit110, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.it = invoke noundef zeroext i1 %i.is(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit110 unwind label %bb.cy ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit110:                ; preds = %bb.cw, %bb.cx
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit110, %bb.cr
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZNSt14_Function_baseD2Ev.exit110 ], [ %i.io, %bb.cr ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  br label %.body53

.body53:                                          ; preds = %.body128.thread, %bb.an, %.body128, %bb.cz
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.cz ], [ %i.dj, %.body128 ], [ %i.dj, %bb.an ], [ %i.dm, %.body128.thread ]
  %i.iw = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.iw) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit143, %.body53, %.thread135
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %.body53 ], [ %i.cv, %.thread135 ], [ %i.in, %.loopexit.loopexit143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body44

bb.da:                                            ; preds = %bb.bn, %bb.bl
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %17) #23
  br label %.body44

.body44:                                          ; preds = %.body.i, %.body.i76, %bb.cp, %bb.da, %.loopexit, %bb.cq
  %.pn37 = phi { ptr, i32 } [ %i.ix, %bb.da ], [ %i.im, %bb.cq ], [ %.pn31.pn.pn.pn.pn, %.loopexit ], [ %i.as, %.body.i ], [ %i.il, %bb.cp ], [ %i.fe, %.body.i76 ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #23
  br label %bb.db

bb.db:                                            ; preds = %.body44, %.loopexit138
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body44 ], [ %.pn26.pn.pn.pn, %.loopexit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ch
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %bb.db ], [ %.pn24, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.dc
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %bb.dc ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.hx, %bb.ce ]
  resume { ptr, i32 } %.pn37.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction8TryParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::timestamp_t", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.duckdb::timestamp_t", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::timestamp_t", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.duckdb::timestamp_t", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.duckdb::timestamp_t", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.duckdb::timestamp_t", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !82, !align !83
  %i.d = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 10 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.h = load i8, ptr %i.g, align 8, !tbaa !155
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.b, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !tbaa !154
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.a
  %i.o = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !108  ; 10 uses
  %i.r = load i8, ptr %i.o, align 8, !tbaa !155
  switch i8 %i.r, label %bb.aw [
    i8 2, label %bb.d
    i8 0, label %bb.k
  ]

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !163
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !163  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.x, align 8, !tbaa !154
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.d
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 8
  %.val.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !220 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.f, i64 16
  %.val.val60.i.i = load ptr, ptr %i.ac, align 8, !tbaa !220 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !11
  store i8 0, ptr %i.ad, align 8, !tbaa !14
  %.not6.i.i.i.i = icmp eq ptr %.val.val.i.i, %.val.val60.i.i
  br i1 %.not6.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_11timestamp_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i61.i.i = icmp eq ptr %i.af, %.val.val60.i.i
  br i1 %.not.i.i61.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, %bb.f
  %.sroa.01.07.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ %.val.val.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i ] ; 2 uses
  %i.ag = invoke noundef zeroext i1 @_ZNK6duckdb14StrpTimeFormat17TryParseTimestampENS_8string_tERNS_11timestamp_tERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.01.07.i.i.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_11timestamp_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i unwind label %bb.g

_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_11timestamp_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ag, label %.thread.loopexit.i.i.i.i, label %bb.f

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !171
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.ak)
          to label %.noexc.i.i.i.i unwind label %bb.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %.pre.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !148
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %._crit_edge.i.i.i.i
  %i.al = phi ptr [ %.pre.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.ai, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !154
  %i.an = and i64 %i.am, -2
  store i64 %i.an, ptr %i.al, align 8, !tbaa !154
  br label %.thread.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.thread.loopexit.i.i.i.i:                         ; preds = %_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_11timestamp_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %14, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread.loopexit.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i
  %.sroa.0.3.i.i.i.i = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %.thread.loopexit.i.i.i.i ]
  %i.ap = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ad
  br i1 %i.aq, label %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ap) #22
  br label %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i

bb.j:                                             ; preds = %bb.i, %bb.g
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ah, %bb.g ]
  %i.ar = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ad
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i

common.resume.i.i:                                ; preds = %.body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i95.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i74.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i ], [ %.pn.pn.i.i, %.body.i.i ], [ %.pn.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i.i ], [ %.pn.i.i72.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i74.i.i.i ], [ %.pn.i.i93.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i95.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %common.resume.i.i

_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i: ; preds = %.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  store i64 %.sroa.0.3.i.i.i.i, ptr %i.t, align 8, !tbaa !154
  br label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit

bb.k:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !163 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.o)
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !163 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.o)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !148, !noalias !231
  %.not.i.i62.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i62.i.i, label %.preheader.i.i.i, label %bb.l

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not167.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not167.i.i.i, label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit, label %.lr.ph165.i.i.i

.lr.ph165.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bd = getelementptr i8, ptr %i.f, i64 8
  %i.be = getelementptr i8, ptr %i.f, i64 16
  br label %bb.aq

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.q), !noalias !231
  %i.bf = add i64 %i.q, 63
  %i.bg = lshr i64 %i.bf, 6                       ; 2 uses
  %.not166.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not166.i.i.i, label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_11timestamp_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit, label %.lr.ph163.i.i.i

.lr.ph163.i.i.i:                                  ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bo = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.loopexit130.i.i.i, %.lr.ph163.i.i.i
  %.0162.i.i.i = phi i64 [ 0, %.lr.ph163.i.i.i ], [ %.4.i.i.i, %.loopexit130.i.i.i ] ; 9 uses
  %.061161.i.i.i = phi i64 [ 0, %.lr.ph163.i.i.i ], [ %i.ft, %.loopexit130.i.i.i ] ; 2 uses
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !148, !noalias !231 ; 2 uses
  %.not.i68.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i68.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.m
  %i.br = add i64 %.0162.i.i.i, 64
  %i.bs = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.q)
  br label %.preheader131.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.061161.i.i.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !154, !noalias !231 ; 2 uses
  %i.bv = add i64 %.0162.i.i.i, 64
  %i.bw = call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.q) ; 5 uses
  switch i64 %i.bu, label %.preheader129.i.i.i [
    i64 -1, label %.preheader131.i.i.i
    i64 0, label %.loopexit130.i.i.i
  ]

.preheader131.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bx = phi i64 [ %i.bs, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 3 uses
  %i.by = icmp ult i64 %.0162.i.i.i, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i, label %.loopexit130.i.i.i

.preheader129.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bz = icmp ult i64 %.0162.i.i.i, %i.bw
  br i1 %i.bz, label %.lr.ph159.i.i.i, label %.loopexit130.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader131.i.i.i, %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i.i
  %.1157.i.i.i = phi i64 [ %i.eu, %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_11timestamp_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i.i ], [ %.0162.i.i.i, %.preheader131.i.i.i ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.1157.i.i.i ; 2 uses
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !226, !noalias !229
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.211.0.copyload.i.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !tbaa !14, !alias.scope !226, !noalias !229
  %.val64.val.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !220, !noalias !231 ; 2 uses
  %.val64.val65.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !220, !noalias !231 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !231
end_hunk_1
begin_hunk_2_@_ZN6duckdb9make_uniqINS_12_GLOBAL__N_116StrpTimeBindDataEJRNS_14StrpTimeFormatERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  call void @_ZNSt6vectorIN6duckdb14StrpTimeFormatESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #23
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.d ]
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %i.a) #23
  call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  resume { ptr, i32 } %.pn.i

bb.f:                                             ; preds = %.noexc.i
  store ptr %i.h, ptr %i.e, align 8, !tbaa !133
  store ptr %i.a, ptr %0, align 8, !tbaa !203
  ret void
}

declare void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEERKNS_10ExpressionERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.161", align 8   ; 9 uses
  %6 = alloca %"class.std::unordered_map.167", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN6duckdb9Exception19InitializeExtraInfoB5cxx11ERKNS_10ExpressionE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.167") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !289
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !289
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !292, !noalias !289 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295, !noalias !289 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #22
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !296

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !292, !noalias !289
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !289
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !289
  invoke void @_ZN6duckdb21InvalidInputExceptionC2ERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %7, align 8, !tbaa !17     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !277  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !285 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i8
  call void @_ZdlPv(ptr noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #22
  %.not.i.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8, !llvm.loop !286

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %6, align 8, !tbaa !287
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !288
  %i.ab = shl i64 %i.aa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !287   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #22
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.h:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ag) #22
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction5ParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %4 = alloca %class.anon, align 8                ; 11 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47, !nonnull !82, !align !83
  %i.c = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  %i.h = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !tbaa !154
  %6 = and i64 %i.k, 1
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph80.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.u
  %lpad.loopexit33 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc15, %bb.a, %bb.b, %bb.d, %bb.e, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.g, %.noexc, %.noexc12, %bb.h, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, %bb.i, %.noexc17, %.noexc18, %.noexc19, %.noexc20, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit30, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit33, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %eh.lpad-body

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.c, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 13 uses

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.m = load i64, ptr %i.f, align 8, !tbaa !108  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.e, ptr %4, align 8
  %i.n = load i8, ptr %i.l, align 8, !tbaa !155
  switch i8 %i.n, label %bb.w [
    i8 2, label %bb.g
    i8 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc12
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !163  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %.noexc13
  %i.u = load i64, ptr %i.t, align 8, !tbaa !154
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
          to label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %.noexc13
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.w = invoke fastcc i64 @_ZN6duckdb18UnaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction5ParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tEE_SC_S5_EET1_T0_RNS_12ValidityMaskEmPv(i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull readonly %4)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %.noexc15
  store i64 %i.w, ptr %i.p, align 8
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %.noexc17
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !163  ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc18
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !163 ; 3 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %.noexc19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148, !noalias !302 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.j

.preheader.i.i.i:                                 ; preds = %.noexc21
  %.not82.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not82.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit, label %.lr.ph80.i.i.i

bb.j:                                             ; preds = %.noexc21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !148, !noalias !302
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp eq ptr %2, %i.l
  br i1 %i.af, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33, !noalias !302 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !23, !noalias !302
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !302
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !302
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !302
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !302 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33, !noalias !302 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !23, !noalias !302
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !302 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ar, align 8, !tbaa !39, !noalias !302
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !41, !noalias !302
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !15, !noalias !302
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !302
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !302, !inline_history !303
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !15, !noalias !302
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !302
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !302, !inline_history !303
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !302
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3, !noalias !302
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4, !noalias !302
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.t, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !43

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !noalias !302
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !171, !noalias !302
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !171, !noalias !302
  %i.bj = add i64 %i.m, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 2 uses
  %.not81.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not81.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit, label %.lr.ph78.i.i.i

.lr.ph78.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, %.loopexit68.i.i.i
  %.077.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit68.i.i.i ], [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i ] ; 9 uses
  %.06176.i.i.i = phi i64 [ %i.cg, %.loopexit68.i.i.i ], [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i ] ; 2 uses
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !148, !noalias !302 ; 2 uses
  %.not.i63.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i63.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %.lr.ph78.i.i.i
  %i.bm = add i64 %.077.i.i.i, 64
  %i.bn = call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.m)
  br label %.preheader69.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph78.i.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.06176.i.i.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !154, !noalias !302 ; 2 uses
  %i.bq = add i64 %.077.i.i.i, 64
  %i.br = call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.m) ; 5 uses
  switch i64 %i.bp, label %.preheader67.i.i.i [
    i64 -1, label %.preheader69.i.i.i
    i64 0, label %.loopexit68.i.i.i
  ]

.preheader69.i.i.i:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bs = phi i64 [ %i.bn, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 3 uses
  %i.bt = icmp ult i64 %.077.i.i.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i, label %.loopexit68.i.i.i

.preheader67.i.i.i:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bu = icmp ult i64 %.077.i.i.i, %i.br
  br i1 %i.bu, label %.lr.ph74.i.i.i, label %.loopexit68.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader69.i.i.i, %.noexc22
  %.172.i.i.i = phi i64 [ %i.by, %.noexc22 ], [ %.077.i.i.i, %.preheader69.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.172.i.i.i ; 2 uses
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !297, !noalias !300
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.211.0.copyload.i.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !tbaa !14, !alias.scope !297, !noalias !300
  %i.bw = invoke fastcc i64 @_ZN6duckdb18UnaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction5ParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tEE_SC_S5_EET1_T0_RNS_12ValidityMaskEmPv(i64 %.sroa.010.0.copyload.i.i.i, ptr %.sroa.211.0.copyload.i.i.i, ptr noundef nonnull readonly %4)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit

.noexc22:                                         ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.172.i.i.i
  store i64 %i.bw, ptr %i.bx, align 8, !alias.scope !300, !noalias !297
  %i.by = add i64 %.172.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.by, %i.bs
  br i1 %exitcond.not.i.i.i, label %.loopexit68.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !304

.lr.ph74.i.i.i:                                   ; preds = %.preheader67.i.i.i, %bb.v
  %.273.i.i.i = phi i64 [ %i.cf, %bb.v ], [ %.077.i.i.i, %.preheader67.i.i.i ] ; 4 uses
  %i.bz = sub nuw i64 %.273.i.i.i, %.077.i.i.i
  %i.ca = shl nuw i64 1, %i.bz
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction5ParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i4.i.i.i = phi i32 [ %i.ft, %bb.at ], [ %i.gd, %bb.au ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i, 1
  br i1 %i.ge, label %bb.av, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i, !prof !43

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i:     ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i, %bb.ar, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit

bb.aw:                                            ; preds = %bb.x, %.noexc25
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.ax:                                            ; preds = %bb.y
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.i
  %lpad.loopexit76.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ac, %bb.ae
  %lpad.loopexit80.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ag, %bb.ai
  %lpad.loopexit83.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.aa, %bb.z
  %lpad.loopexit.split-lp84.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %bb.ax, %bb.aw
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.gf, %bb.aw ], [ %i.gg, %bb.ax ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit76.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit80.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit83.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp84.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit: ; preds = %.loopexit68.i.i.i, %.noexc24, %bb.h, %.noexc16, %.preheader.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction5ParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_E_EEvSC_SC_mT1_NS_14FunctionErrorsE.exit, %bb.e
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !33 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gj, align 8, !tbaa !39
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !41
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !15
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #23, !inline_history !201
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #23, !inline_history !201
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.gu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gv = add nsw i32 %i.gm, -1
  store i32 %i.gv, ptr %i.gj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.gw = atomicrmw volatile add ptr %i.gj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gm, %bb.bc ], [ %i.gw, %bb.bd ]
  %i.gx = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gx, label %bb.be, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !43

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gi) #23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ba, %bb.ay
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !33 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.ha, align 8, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !41
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !15
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #23, !inline_history !202
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !15
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #23, !inline_history !202
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bj:                                            ; preds = %bb.bh
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hd, %bb.bi ], [ %i.hn, %bb.bj ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ho, label %bb.bk, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !43

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #23
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::timestamp_ns_t", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.duckdb::timestamp_ns_t", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::timestamp_ns_t", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.duckdb::timestamp_ns_t", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.duckdb::timestamp_ns_t", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.duckdb::timestamp_ns_t", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !82, !align !83
  %i.d = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 10 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.h = load i8, ptr %i.g, align 8, !tbaa !155
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %bb.b, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !tbaa !154
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.a
  %i.o = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !108  ; 10 uses
  %i.r = load i8, ptr %i.o, align 8, !tbaa !155
  switch i8 %i.r, label %bb.aw [
    i8 2, label %bb.d
    i8 0, label %bb.k
  ]

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !163
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !163  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.x, align 8, !tbaa !154
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.d
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 8
  %.val.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !220 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.f, i64 16
  %.val.val60.i.i = load ptr, ptr %i.ac, align 8, !tbaa !220 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.ad, ptr %15, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !11
  store i8 0, ptr %i.ad, align 8, !tbaa !14
  %.not6.i.i.i.i = icmp eq ptr %.val.val.i.i, %.val.val60.i.i
  br i1 %.not6.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_14timestamp_ns_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i61.i.i = icmp eq ptr %i.af, %.val.val60.i.i
  br i1 %.not.i.i61.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, %bb.f
  %.sroa.01.07.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ %.val.val.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i ] ; 2 uses
  %i.ag = invoke noundef zeroext i1 @_ZNK6duckdb14StrpTimeFormat19TryParseTimestampNSENS_8string_tERNS_14timestamp_ns_tERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.01.07.i.i.i.i, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_14timestamp_ns_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i unwind label %bb.g

_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_14timestamp_ns_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ag, label %.thread.loopexit.i.i.i.i, label %bb.f

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !171
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.ak)
          to label %.noexc.i.i.i.i unwind label %bb.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %.pre.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !148
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i, %._crit_edge.i.i.i.i
  %i.al = phi ptr [ %.pre.i.i.i.i.i, %.noexc.i.i.i.i ], [ %i.ai, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !154
  %i.an = and i64 %i.am, -2
  store i64 %i.an, ptr %i.al, align 8, !tbaa !154
  br label %.thread.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.thread.loopexit.i.i.i.i:                         ; preds = %_ZN6duckdb12_GLOBAL__N_117StrpTimeTryResultINS_14timestamp_ns_tEEEbRNS_14StrpTimeFormatERNS_8string_tERT_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %14, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread.loopexit.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i
  %.sroa.0.3.i.i.i.i = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %.thread.loopexit.i.i.i.i ]
  %i.ap = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ad
  br i1 %i.aq, label %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ap) #22
  br label %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i

bb.j:                                             ; preds = %bb.i, %bb.g
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ah, %bb.g ]
  %i.ar = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ad
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i

common.resume.i.i:                                ; preds = %.body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i95.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i74.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i ], [ %.pn.pn.i.i, %.body.i.i ], [ %.pn.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i.i ], [ %.pn.i.i72.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i74.i.i.i ], [ %.pn.i.i93.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i95.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %common.resume.i.i

_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i: ; preds = %.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  store i64 %.sroa.0.3.i.i.i.i, ptr %i.t, align 8
  br label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit

bb.k:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14timestamp_ns_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !163 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.o)
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !163 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.o)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !148, !noalias !328
  %.not.i.i62.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i62.i.i, label %.preheader.i.i.i, label %bb.l

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not167.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not167.i.i.i, label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit, label %.lr.ph165.i.i.i

.lr.ph165.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bd = getelementptr i8, ptr %i.f, i64 8
  %i.be = getelementptr i8, ptr %i.f, i64 16
  br label %bb.aq

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.q), !noalias !328
  %i.bf = add i64 %i.q, 63
  %i.bg = lshr i64 %i.bf, 6                       ; 2 uses
  %.not166.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not166.i.i.i, label %_ZN6duckdb13UnaryExecutor16ExecuteWithNullsINS_8string_tENS_14timestamp_ns_tEZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseIS3_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_RNS_12ValidityMaskEmE_EEvSC_SC_mT1_.exit, label %.lr.ph163.i.i.i

.lr.ph163.i.i.i:                                  ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bo = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.loopexit130.i.i.i, %.lr.ph163.i.i.i
  %.0162.i.i.i = phi i64 [ 0, %.lr.ph163.i.i.i ], [ %.4.i.i.i, %.loopexit130.i.i.i ] ; 9 uses
  %.061161.i.i.i = phi i64 [ 0, %.lr.ph163.i.i.i ], [ %i.ft, %.loopexit130.i.i.i ] ; 2 uses
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !148, !noalias !328 ; 2 uses
  %.not.i68.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i68.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i: ; preds = %bb.m
  %i.br = add i64 %.0162.i.i.i, 64
  %i.bs = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.q)
  br label %.preheader131.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.061161.i.i.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !154, !noalias !328 ; 2 uses
  %i.bv = add i64 %.0162.i.i.i, 64
  %i.bw = call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.q) ; 5 uses
  switch i64 %i.bu, label %.preheader129.i.i.i [
    i64 -1, label %.preheader131.i.i.i
    i64 0, label %.loopexit130.i.i.i
  ]

.preheader131.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i
  %i.bx = phi i64 [ %i.bs, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i ], [ %i.bw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ] ; 3 uses
  %i.by = icmp ult i64 %.0162.i.i.i, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i, label %.loopexit130.i.i.i

.preheader129.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.bz = icmp ult i64 %.0162.i.i.i, %i.bw
  br i1 %i.bz, label %.lr.ph159.i.i.i, label %.loopexit130.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader131.i.i.i, %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i.i
  %.1157.i.i.i = phi i64 [ %i.eu, %_ZN6duckdb27UnaryLambdaWrapperWithNulls9OperationIZNS_12_GLOBAL__N_116StrpTimeFunction8TryParseINS_14timestamp_ns_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tERNS_12ValidityMaskEmE_SC_S5_EET1_T0_SE_mPv.exit.i.i.i ], [ %.0162.i.i.i, %.preheader131.i.i.i ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.1157.i.i.i ; 2 uses
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !323, !noalias !326
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.211.0.copyload.i.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !tbaa !14, !alias.scope !323, !noalias !326
  %.val64.val.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !220, !noalias !328 ; 2 uses
  %.val64.val65.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !220, !noalias !328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !328
end_hunk_3
