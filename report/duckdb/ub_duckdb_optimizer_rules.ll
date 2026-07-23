inline.NumInlined: 5380
inline.NumDeleted: 2265
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb20LikeOptimizationRuleC2ERNS_18ExpressionRewriterE:bb.a
  %i.gi = landingpad { ptr, i32 }
          cleanup
  %i.gj = load ptr, ptr %i.df, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.df) #25, !inline_history !142
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19ManyFunctionMatcherESt14default_deleteIS1_EED2Ev.exit79, %bb.ac
  %.pn20 = phi { ptr, i32 } [ %i.gi, %_ZNSt10unique_ptrIN6duckdb19ManyFunctionMatcherESt14default_deleteIS1_EED2Ev.exit79 ], [ %i.gh, %bb.ac ]
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.ad ], [ %i.gg, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !126 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.gn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  %i.gq = load ptr, ptr %5, align 8, !tbaa !126   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @_ZdlPv(ptr noundef %i.gq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit73, %bb.z, %_ZNSt10unique_ptrIN6duckdb17ExpressionMatcherESt14default_deleteIS1_EED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1, %bb.y
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.1 ], [ %i.fv, %bb.y ], [ %i.fw, %bb.z ], [ %i.fx, %_ZNSt10unique_ptrIN6duckdb17ExpressionMatcherESt14default_deleteIS1_EED2Ev.exit67 ], [ %i.gc, %_ZNSt10unique_ptrIN6duckdb25ConstantExpressionMatcherESt14default_deleteIS1_EED2Ev.exit73 ], [ %i.gb, %bb.aa ] ; 2 uses
  %i.gt = load ptr, ptr %3, align 8, !tbaa !40    ; 3 uses
  %.not.i86 = icmp eq ptr %i.gt, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6duckdb25FunctionExpressionMatcherESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN6duckdb25FunctionExpressionMatcherEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN6duckdb25FunctionExpressionMatcherEEclEPS1_.exit.i87: ; preds = %bb.af
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(72) %i.gt) #25, !inline_history !140
  br label %_ZNSt10unique_ptrIN6duckdb25FunctionExpressionMatcherESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN6duckdb25FunctionExpressionMatcherESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN6duckdb25FunctionExpressionMatcherEEclEPS1_.exit.i87, %bb.af, %bb.x
  %.pn20.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.x ], [ %.pn20.pn.pn.pn.pn, %bb.af ], [ %.pn20.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb25FunctionExpressionMatcherEEclEPS1_.exit.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb4RuleE, i64 16), ptr %0, align 8, !tbaa !13
  %i.gx = load ptr, ptr %i.b, align 8, !tbaa !49  ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i89, label %_ZN6duckdb4RuleD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17ExpressionMatcherEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb17ExpressionMatcherEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb25FunctionExpressionMatcherESt14default_deleteIS1_EED2Ev.exit88
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.gx) #25, !inline_history !144
  br label %_ZN6duckdb4RuleD2Ev.exit

_ZN6duckdb4RuleD2Ev.exit:                         ; preds = %_ZNSt10unique_ptrIN6duckdb25FunctionExpressionMatcherESt14default_deleteIS1_EED2Ev.exit88, %_ZNKSt14default_deleteIN6duckdb17ExpressionMatcherEEclEPS1_.exit.i.i
  resume { ptr, i32 } %.pn20.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20LikeOptimizationRule5ApplyERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS6_EEERbb(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::unique_ptr.88") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree nonnull readnone align 1 captures(none) %4, i1 zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.duckdb::unique_ptr.88", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::unique_ptr.88", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::ScalarFunction", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.duckdb::ScalarFunction", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.duckdb::ScalarFunction", align 8 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.d) ; 7 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.h = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundConstantExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.g) ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i8, ptr %i.i, align 8, !tbaa !151, !range !167, !noundef !168
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.m = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc unwind label %bb.f     ; 3 uses

.noexc:                                           ; preds = %bb.c
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) #25, !noalias !1115
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.m, ptr noundef nonnull %8)
          to label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.d, !noalias !1115

bb.d:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #25, !noalias !1115
  call void @_ZdlPv(ptr noundef nonnull %i.m) #28, !noalias !1115
  br label %.body

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #25, !noalias !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr %i.m, ptr %0, align 8, !tbaa !172
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bn

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.n, %bb.d ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.e
  %.pn40 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.e ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bo

bb.h:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(88) %i.h)
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !172
  br label %bb.bn

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.u = tail call noundef nonnull align 8 dereferenceable(512) ptr @_ZNK6duckdb4Rule10GetContextEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(512) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i1 noundef zeroext false)
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %bb.k unwind label %bb.r       ; 5 uses

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !98
  %i.y = icmp eq i64 %i.x, 3
  br i1 %i.y, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !126 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = xor i16 %i.ab, 32289
  %i.ad = getelementptr i8, ptr %i.aa, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i16
  %i.ag = xor i16 %i.af, 126
  %i.ah = or i16 %i.ac, %i.ag
  %i.ai = icmp ne i16 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.k, %bb.l
  %i.al = phi i1 [ false, %bb.k ], [ %i.ak, %bb.l ] ; 4 uses
  %.val = load ptr, ptr %i.v, align 8             ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.val43 = load i64, ptr %i.am, align 8          ; 11 uses
  %i.an = icmp eq i64 %.val43, 0
  br i1 %i.an, label %.loopexit105, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.m
  %.081.i = phi i64 [ %i.aq, %bb.m ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %.081.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !97
  switch i8 %i.ap, label %bb.m [
    i8 37, label %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.preheader
    i8 95, label %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.preheader
  ]

_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.preheader: ; preds = %.lr.ph.i, %.lr.ph.i
  br label %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.aq = add nuw i64 %.081.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %.val43
  br i1 %exitcond.not.i, label %.loopexit105, label %.lr.ph.i, !llvm.loop !1118

.loopexit105:                                     ; preds = %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ar = select i1 %i.al, i8 26, i8 25
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef 0)
          to label %bb.n unwind label %bb.t       ; 2 uses

bb.n:                                             ; preds = %.loopexit105
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef 1)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.av = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc50 unwind label %bb.t   ; 3 uses

.noexc50:                                         ; preds = %bb.o
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !150, !noalias !1119
  store i64 %i.aw, ptr %6, align 8, !tbaa !150, !noalias !1119
  store ptr null, ptr %i.at, align 8, !tbaa !150, !noalias !1119
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !150, !noalias !1119
  store i64 %i.ax, ptr %7, align 8, !tbaa !150, !noalias !1119
  store ptr null, ptr %i.au, align 8, !tbaa !150, !noalias !1119
  invoke void @_ZN6duckdb25BoundComparisonExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(104) %i.av, i8 noundef zeroext %i.ar, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %bb.p unwind label %bb.q, !noalias !1119

bb.p:                                             ; preds = %.noexc50
  %i.ay = load ptr, ptr %7, align 8, !tbaa !150, !noalias !1119 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %bb.p
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13, !noalias !1119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1119
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(88) %i.ay) #25, !noalias !1119, !inline_history !823
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %bb.p
  %i.bc = load ptr, ptr %6, align 8, !tbaa !150, !noalias !1119 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.bc, null
  br i1 %.not.i5.i, label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !13, !noalias !1119
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1119
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(88) %i.bc) #25, !noalias !1119, !inline_history !823
  br label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %.noexc50
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %7, align 8, !tbaa !150, !noalias !1119 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bh, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i: ; preds = %bb.q
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13, !noalias !1119
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1119
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(88) %i.bh) #25, !noalias !1119, !inline_history !823
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i, %bb.q
  %i.bl = load ptr, ptr %6, align 8, !tbaa !150, !noalias !1119 ; 3 uses
  %.not.i11.i = icmp eq ptr %i.bl, null
  br i1 %.not.i11.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13, !noalias !1119
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !1119
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(88) %i.bl) #25, !noalias !1119, !inline_history !823
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  call void @_ZdlPv(ptr noundef nonnull %i.av) #28, !noalias !1119
  br label %.body51

_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.av, ptr %0, align 8, !tbaa !172
  br label %bb.bm

bb.r:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.s:                                             ; preds = %.loopexit, %.loopexit102, %_ZN6duckdbL15PatternIsPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.t:                                             ; preds = %bb.o, %bb.n, %.loopexit105
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.u:                                             ; preds = %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not.i54 = icmp eq i64 %i.bs, 0
  br i1 %.not.i54, label %bb.v, label %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !1122

_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.preheader, %bb.u
  %.0.i131 = phi i64 [ %i.bs, %bb.u ], [ %.val43, %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.preheader ] ; 2 uses
  %i.bs = add i64 %.0.i131, -1                    ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !97
  %.not14.i = icmp eq i8 %i.bu, 37
  br i1 %.not14.i, label %bb.u, label %bb.v, !llvm.loop !1122

bb.v:                                             ; preds = %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.u
  %.0.i.lcssa = phi i64 [ %.0.i131, %_ZN6duckdbL17PatternIsConstantERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.bs, %bb.u ] ; 3 uses
  %i.bv = icmp eq i64 %.0.i.lcssa, %.val43
  br i1 %i.bv, label %.lr.ph.i60.preheader, label %.preheader.i.preheader

.lr.ph.i60.preheader:                             ; preds = %.lr.ph, %.lr.ph, %bb.v
  br label %.lr.ph.i60

.preheader.i.preheader:                           ; preds = %bb.v
  %.not15.i132 = icmp eq i64 %.0.i.lcssa, 0
  br i1 %.not15.i132, label %_ZN6duckdbL15PatternIsPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %.not15.i = icmp eq i64 %i.bw, 0
  br i1 %.not15.i, label %_ZN6duckdbL15PatternIsPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph, !llvm.loop !1123

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i133 = phi i64 [ %i.bw, %.preheader.i ], [ %.0.i.lcssa, %.preheader.i.preheader ]
  %i.bw = add i64 %.1.i133, -1                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !97
  switch i8 %i.by, label %.preheader.i [
    i8 37, label %.lr.ph.i60.preheader
    i8 95, label %.lr.ph.i60.preheader
  ], !llvm.loop !1123

_ZN6duckdbL15PatternIsPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.preheader.i, %.preheader.i.preheader
  invoke void @_ZN6duckdb9PrefixFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %12)
          to label %bb.w unwind label %bb.s

bb.w:                                             ; preds = %_ZN6duckdbL15PatternIsPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.bz, ptr %13, align 8, !tbaa !94
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !126 ; 2 uses
  %i.cb = load i64, ptr %i.am, align 8, !tbaa !98 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !118
  %i.cc = icmp ugt i64 %i.cb, 15
  br i1 %i.cc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.w
  %i.cd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc55 unwind label %bb.aj  ; 2 uses

.noexc55:                                         ; preds = %.noexc.i
  store ptr %i.cd, ptr %13, align 8, !tbaa !126
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !118
  store i64 %i.ce, ptr %i.bz, align 8, !tbaa !97
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc55, %bb.w
  %i.cf = phi ptr [ %i.cd, %.noexc55 ], [ %i.bz, %bb.w ] ; 2 uses
  switch i64 %i.cb, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !97
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !97
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.ca, i64 %i.cb, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !118 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !98
  %i.cj = load ptr, ptr %13, align 8, !tbaa !126
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN6duckdb20LikeOptimizationRule9ApplyRuleERNS_23BoundFunctionExpressionENS_14ScalarFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.88") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(481) %i.e, ptr noundef nonnull %12, ptr noundef nonnull %13, i1 noundef zeroext %i.al)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.cl = load ptr, ptr %13, align 8, !tbaa !126  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bz
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.cl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %12, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 352
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1124 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cp, align 8, !tbaa !1125
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !1127
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25, !inline_history !1128
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25, !inline_history !1128
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.cs, %bb.ae ], [ %i.dc, %bb.af ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dd, label %bb.ag, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !145

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #25, !inline_history !1129
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1130 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.df, null
  br i1 %.not.i.i56, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 2 uses
  %i.dh = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.ai, !inline_history !1129 ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #29, !inline_history !1129
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ah
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %12) #25, !inline_history !1129
  br label %bb.bm

bb.aj:                                            ; preds = %.noexc.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.ak:                                            ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %13, align 8, !tbaa !126  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.bz
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.dm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.aj
  %.pn35 = phi { ptr, i32 } [ %i.dk, %bb.aj ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.dl, %bb.ak ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %12) #25
  br label %.body51

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader, %bb.al
  %.01.i = phi i64 [ %i.dq, %bb.al ], [ 0, %.lr.ph.i60.preheader ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !97
  %.not.i61 = icmp eq i8 %i.dp, 37
  br i1 %.not.i61, label %bb.al, label %._crit_edge.i

bb.al:                                            ; preds = %.lr.ph.i60
  %i.dq = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.dq, %.val43
  br i1 %exitcond.not.i64, label %.loopexit102, label %.lr.ph.i60, !llvm.loop !1132

._crit_edge.i:                                    ; preds = %.lr.ph.i60
  %i.dr = icmp eq i64 %.01.i, 0
  br i1 %i.dr, label %.lr.ph.i82.preheader, label %.preheader.i62

.lr.ph.i82.preheader:                             ; preds = %.lr.ph5.i, %.lr.ph5.i, %._crit_edge.i
  br label %.lr.ph.i82

.preheader.i62:                                   ; preds = %._crit_edge.i
  %18 = icmp ult i64 %.01.i, %.val43
  br i1 %18, label %.lr.ph5.i, label %.loopexit102

.lr.ph5.i:                                        ; preds = %.preheader.i62, %bb.am
  %.14.i = phi i64 [ %i.du, %bb.am ], [ %.01.i, %.preheader.i62 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 %.14.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !97
  switch i8 %i.dt, label %bb.am [
    i8 37, label %.lr.ph.i82.preheader
    i8 95, label %.lr.ph.i82.preheader
  ]

bb.am:                                            ; preds = %.lr.ph5.i
  %i.du = add i64 %.14.i, 1                       ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.du, %.val43
  br i1 %exitcond12.not.i, label %.loopexit102, label %.lr.ph5.i, !llvm.loop !1133

.loopexit102:                                     ; preds = %bb.al, %bb.am, %.preheader.i62
  invoke void @_ZN6duckdb9SuffixFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %14)
          to label %bb.an unwind label %bb.s

bb.an:                                            ; preds = %.loopexit102
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.dv, ptr %15, align 8, !tbaa !94
  %i.dw = load ptr, ptr %i.v, align 8, !tbaa !126 ; 2 uses
  %i.dx = load i64, ptr %i.am, align 8, !tbaa !98 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !118
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %.noexc.i66, label %._crit_edge.i.i65

.noexc.i66:                                       ; preds = %bb.an
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc67 unwind label %bb.ba  ; 2 uses

.noexc67:                                         ; preds = %.noexc.i66
  store ptr %i.dz, ptr %15, align 8, !tbaa !126
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.ea, ptr %i.dv, align 8, !tbaa !97
  br label %._crit_edge.i.i65

._crit_edge.i.i65:                                ; preds = %.noexc67, %bb.an
  %i.eb = phi ptr [ %i.dz, %.noexc67 ], [ %i.dv, %bb.an ] ; 2 uses
  switch i64 %i.dx, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i65
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !97
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !97
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.dw, i64 %i.dx, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i65
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !98
  %i.ef = load ptr, ptr %15, align 8, !tbaa !126
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb20LikeOptimizationRule9ApplyRuleERNS_23BoundFunctionExpressionENS_14ScalarFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.88") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(481) %i.e, ptr noundef nonnull %14, ptr noundef nonnull %15, i1 noundef zeroext %i.al)
          to label %bb.ar unwind label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.eh = load ptr, ptr %15, align 8, !tbaa !126  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dv
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.eh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %14, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 352
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1124 ; 8 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i72, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76, label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.el, align 8, !tbaa !1125
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !1127
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #25, !inline_history !1128
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #25, !inline_history !1128
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76

bb.au:                                            ; preds = %bb.as
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i73 = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i.i.i73, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74

bb.aw:                                            ; preds = %bb.au
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i75 = phi i32 [ %i.eo, %bb.av ], [ %i.ey, %bb.aw ]
  %i.ez = icmp eq i32 %.0.i.i.i.i.i.i75, 1
  br i1 %i.ez, label %bb.ax, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76, !prof !145

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #25, !inline_history !1129
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 256
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1130 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i77, label %_ZN6duckdb14ScalarFunctionD2Ev.exit78, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 240 ; 2 uses
  %i.fd = invoke noundef zeroext i1 %i.fb(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit78 unwind label %bb.az, !inline_history !1129 ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #29, !inline_history !1129
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit78:            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76, %bb.ay
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %14) #25, !inline_history !1129
  br label %bb.bm

bb.ba:                                            ; preds = %.noexc.i66
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.bb:                                            ; preds = %bb.aq
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %15, align 8, !tbaa !126  ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.dv
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.ba
  %.pn33 = phi { ptr, i32 } [ %i.fg, %bb.ba ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.fh, %bb.bb ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %14) #25
  br label %.body51

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %bb.bc
  %.0241.i = phi i64 [ %i.fm, %bb.bc ], [ 0, %.lr.ph.i82.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val, i64 %.0241.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !97
  %.not.i83 = icmp eq i8 %i.fl, 37
  br i1 %.not.i83, label %bb.bc, label %._crit_edge.i84

bb.bc:                                            ; preds = %.lr.ph.i82
  %i.fm = add nuw i64 %.0241.i, 1                 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.fm, %.val43
  br i1 %exitcond.not.i87, label %._crit_edge.i84, label %.lr.ph.i82, !llvm.loop !1134

._crit_edge.i84:                                  ; preds = %bb.bc, %.lr.ph.i82
  %.024.lcssa.i = phi i64 [ %.val43, %bb.bc ], [ %.0241.i, %.lr.ph.i82 ] ; 3 uses
  br label %bb.be

bb.bd:                                            ; preds = %bb.be
  %.not26.i = icmp eq i64 %i.fn, 0
  br i1 %.not26.i, label %bb.bf, label %bb.be, !llvm.loop !1135

bb.be:                                            ; preds = %._crit_edge.i84, %bb.bd
  %.023.i134 = phi i64 [ %.val43, %._crit_edge.i84 ], [ %i.fn, %bb.bd ] ; 2 uses
  %i.fn = add i64 %.023.i134, -1                  ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !97
  %.not27.i = icmp eq i8 %i.fp, 37
  br i1 %.not27.i, label %bb.bd, label %bb.bf, !llvm.loop !1135

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.023.i.lcssa = phi i64 [ %.023.i134, %bb.be ], [ %i.fn, %bb.bd ] ; 3 uses
  %i.fq = icmp eq i64 %.024.lcssa.i, 0
  %i.fr = icmp eq i64 %.023.i.lcssa, %.val43
  %or.cond.i = or i1 %i.fq, %i.fr
  br i1 %or.cond.i, label %_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i85

.preheader.i85:                                   ; preds = %bb.bf
  %.not284.not.i = icmp ult i64 %.024.lcssa.i, %.023.i.lcssa
  br i1 %.not284.not.i, label %.lr.ph6.i, label %.loopexit

.lr.ph6.i:                                        ; preds = %.preheader.i85, %bb.bg
  %.05.i = phi i64 [ %i.fu, %bb.bg ], [ %.024.lcssa.i, %.preheader.i85 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val, i64 %.05.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !97
  switch i8 %i.ft, label %bb.bg [
    i8 37, label %_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 95, label %_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]
end_hunk_0
