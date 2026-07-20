inline.NumInlined: 5380
inline.NumDeleted: 2265
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb20LikeOptimizationRule5ApplyERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS6_EEERbb:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i75 = phi i32 [ %i.ep, %bb.av ], [ %i.ez, %bb.aw ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i75, 1
  br i1 %i.fa, label %bb.ax, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76, !prof !145

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #25, !inline_history !1129
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i74, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 256
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1130 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i77, label %_ZN6duckdb14ScalarFunctionD2Ev.exit78, label %bb.ay

bb.ay:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 240 ; 2 uses
  %i.fe = invoke noundef zeroext i1 %i.fc(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit78 unwind label %bb.az, !inline_history !1129 ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #29, !inline_history !1129
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit78:            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i76, %bb.ay
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %14) #25, !inline_history !1129
  br label %bb.bm

bb.ba:                                            ; preds = %.noexc.i66
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.bb:                                            ; preds = %bb.aq
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %15, align 8, !tbaa !126  ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.dw
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.fj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.ba
  %.pn33 = phi { ptr, i32 } [ %i.fh, %bb.ba ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.fi, %bb.bb ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %14) #25
  br label %.body51

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %bb.bc
  %.0241.i = phi i64 [ %i.fn, %bb.bc ], [ 0, %.lr.ph.i82.preheader ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val, i64 %.0241.i
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !97
  %.not.i83 = icmp eq i8 %i.fm, 37
  br i1 %.not.i83, label %bb.bc, label %._crit_edge.i84

bb.bc:                                            ; preds = %.lr.ph.i82
  %i.fn = add nuw i64 %.0241.i, 1                 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %i.fn, %.val43
  br i1 %exitcond.not.i87, label %._crit_edge.i84, label %.lr.ph.i82, !llvm.loop !1134

._crit_edge.i84:                                  ; preds = %bb.bc, %.lr.ph.i82
  %.024.lcssa.i = phi i64 [ %.val43, %bb.bc ], [ %.0241.i, %.lr.ph.i82 ] ; 3 uses
  br label %bb.be

bb.bd:                                            ; preds = %bb.be
  %.not26.i = icmp eq i64 %i.fo, 0
  br i1 %.not26.i, label %bb.bf, label %bb.be, !llvm.loop !1135

bb.be:                                            ; preds = %._crit_edge.i84, %bb.bd
  %.023.i134 = phi i64 [ %.val43, %._crit_edge.i84 ], [ %i.fo, %bb.bd ] ; 2 uses
  %i.fo = add i64 %.023.i134, -1                  ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !97
  %.not27.i = icmp eq i8 %i.fq, 37
  br i1 %.not27.i, label %bb.bd, label %bb.bf, !llvm.loop !1135

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.023.i.lcssa = phi i64 [ %.023.i134, %bb.be ], [ %i.fo, %bb.bd ] ; 3 uses
  %i.fr = icmp eq i64 %.024.lcssa.i, 0
  %i.fs = icmp eq i64 %.023.i.lcssa, %.val43
  %or.cond.i = or i1 %i.fr, %i.fs
  br i1 %or.cond.i, label %_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i85

.preheader.i85:                                   ; preds = %bb.bf
  %.not284.not.i = icmp ult i64 %.024.lcssa.i, %.023.i.lcssa
  br i1 %.not284.not.i, label %.lr.ph6.i, label %.loopexit

.lr.ph6.i:                                        ; preds = %.preheader.i85, %bb.bg
  %.05.i = phi i64 [ %i.fv, %bb.bg ], [ %.024.lcssa.i, %.preheader.i85 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val, i64 %.05.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !97
  switch i8 %i.fu, label %bb.bg [
    i8 37, label %_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
    i8 95, label %_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.bg:                                            ; preds = %.lr.ph6.i
  %i.fv = add i64 %.05.i, 1                       ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.fv, %.023.i.lcssa
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph6.i, !llvm.loop !1136

.loopexit:                                        ; preds = %bb.bg, %.preheader.i85
  invoke void @_ZN6duckdb17GetStringContainsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %16)
          to label %bb.bh unwind label %bb.s

bb.bh:                                            ; preds = %.loopexit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN6duckdb20LikeOptimizationRule9ApplyRuleERNS_23BoundFunctionExpressionENS_14ScalarFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.88") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(481) %i.e, ptr noundef nonnull %16, ptr noundef nonnull %17, i1 noundef zeroext %i.al)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.fw = load ptr, ptr %17, align 8, !tbaa !126  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.fw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %16) #25
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.bl:                                            ; preds = %bb.bi
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %17, align 8, !tbaa !126  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.gb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.bk ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.ga, %bb.bl ]
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %16) #25
  br label %.body51

_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph6.i, %.lr.ph6.i, %bb.bf
  store ptr null, ptr %0, align 8, !tbaa !172
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6duckdbL17PatternIsContainsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZN6duckdb14ScalarFunctionD2Ev.exit78, %_ZN6duckdb14ScalarFunctionD2Ev.exit, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bn

.body51:                                          ; preds = %bb.t, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.r
  %.pn37.pn = phi { ptr, i32 } [ %i.bp, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bq, %bb.s ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.br, %bb.t ], [ %i.bg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.i, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.bo:                                            ; preds = %.body51, %bb.g
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.g ], [ %.pn37.pn, %.body51 ]
  resume { ptr, i32 } %.pn40.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20LikeOptimizationRule9ApplyRuleERNS_23BoundFunctionExpressionENS_14ScalarFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::unique_ptr.88") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(481) %2, ptr noundef nonnull %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %8 = alloca %"class.duckdb::unique_ptr.496", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.duckdb::unique_ptr.327", align 8 ; 7 uses
  store ptr null, ptr %0, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !1137
  invoke void @_ZN6duckdb9make_uniqINS_23BoundFunctionExpressionEJRNS_11LogicalTypeENS_14ScalarFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEDnEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.496") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.d = load ptr, ptr %4, align 8, !tbaa !126    ; 7 uses
  %12 = ptrtoaddr ptr %i.d to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 6 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ashr i64 %i.f, 2                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = and i64 %i.f, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i ], [ %i.x, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.w, %bb.g ] ; 9 uses
  %i.l = load i8, ptr %.sroa.032.051.i.i.i.i, align 1, !tbaa !97
  %i.m = icmp eq i8 %i.l, 37
  br i1 %i.m, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !97
  %i.p = icmp eq i8 %i.o, 37
  br i1 %i.p, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !97
  %i.s = icmp eq i8 %i.r, 37
  br i1 %i.s, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit111, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !97
  %i.v = icmp eq i8 %i.u, 37
  br i1 %i.v, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit113, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %i.x = add nsw i64 %.052.i.i.i.i, -1
  %i.y = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.y, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !1139

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.b
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %scevgep.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.sroa.032.0.lcssa.i.i.i.i to i64
  %i.z = sub i64 %i.h, %.pre-phi.i.i.i.i
  switch i64 %i.z, label %.loopexit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i, align 1, !tbaa !97
  %i.ab = icmp eq i8 %i.aa, 37
  br i1 %i.ab, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.032.1.i.i.i.i, align 1, !tbaa !97
  %i.ae = icmp eq i8 %i.ad, 37
  br i1 %i.ae, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ag = load i8, ptr %.sroa.032.2.i.i.i.i, align 1, !tbaa !97
  %i.ah = icmp eq i8 %i.ag, 37
  %spec.select.i.i.i.i = select i1 %i.ah, ptr %.sroa.032.2.i.i.i.i, ptr %i.g
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit111: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 2
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit113: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 3
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i: ; preds = %bb.c, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit111, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit113, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.h
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.ak, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit113 ], [ %i.aj, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit111 ], [ %i.ai, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.c ] ; 6 uses
  %i.al = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.g
  %.sroa.07.026.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 1 ; 3 uses
  %.not27.i.i = icmp eq ptr %.sroa.07.026.i.i, %i.g
  %or.cond.i.i = select i1 %i.al, i1 true, i1 %.not27.i.i
  br i1 %or.cond.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i132 = ptrtoaddr ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64 ; 2 uses
  %i.am = add i64 %i.f, %12                       ; 2 uses
  %i.an = xor i64 %.sroa.08.0.in.sroa.speculated.i.i.i.i132, -1
  %i.ao = add i64 %i.am, %i.an
  %i.ap = add i64 %i.am, -2
  %i.aq = sub i64 %i.ap, %.sroa.08.0.in.sroa.speculated.i.i.i.i132
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.l
  %.sroa.07.029.i.i.prol = phi ptr [ %.sroa.07.0.i.i.prol, %bb.l ], [ %.sroa.07.026.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.013.028.i.i.prol = phi ptr [ %.sroa.013.1.i.i.prol, %bb.l ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.l ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ar = load i8, ptr %.sroa.07.029.i.i.prol, align 1, !tbaa !97 ; 2 uses
  %i.as = icmp eq i8 %i.ar, 37
  br i1 %i.as, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.prol
  store i8 %i.ar, ptr %.sroa.013.028.i.i.prol, align 1, !tbaa !97
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i.prol, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i.prol
  %.sroa.013.1.i.i.prol = phi ptr [ %.sroa.013.028.i.i.prol, %.lr.ph.i.i.prol ], [ %i.at, %bb.k ] ; 3 uses
  %.sroa.07.0.i.i.prol = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1140

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.l, %.lr.ph.i.i.preheader
  %.sroa.013.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.013.1.i.i.prol, %bb.l ]
  %.sroa.07.029.i.i.unr = phi ptr [ %.sroa.07.026.i.i, %.lr.ph.i.i.preheader ], [ %.sroa.07.0.i.i.prol, %bb.l ]
  %.sroa.013.028.i.i.unr = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader ], [ %.sroa.013.1.i.i.prol, %bb.l ]
  %i.au = icmp ult i64 %i.aq, 3
  br i1 %i.au, label %.loopexit.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.q
  %.sroa.07.029.i.i = phi ptr [ %.sroa.07.0.i.i.3, %bb.q ], [ %.sroa.07.029.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.013.028.i.i = phi ptr [ %.sroa.013.1.i.i.3, %bb.q ], [ %.sroa.013.028.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.av = load i8, ptr %.sroa.07.029.i.i, align 1, !tbaa !97 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 37
  br i1 %i.aw, label %.lr.ph.i.i.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  store i8 %i.av, ptr %.sroa.013.028.i.i, align 1, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i, i64 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %.lr.ph.i.i ], [ %i.ax, %bb.m ] ; 3 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 1
  %i.ay = load i8, ptr %.sroa.07.0.i.i, align 1, !tbaa !97 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 37
  br i1 %i.az, label %.lr.ph.i.i.2, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.1
  store i8 %i.ay, ptr %.sroa.013.1.i.i, align 1, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 1
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.n, %.lr.ph.i.i.1
  %.sroa.013.1.i.i.1 = phi ptr [ %.sroa.013.1.i.i, %.lr.ph.i.i.1 ], [ %i.ba, %bb.n ] ; 3 uses
  %.sroa.07.0.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 2
  %i.bb = load i8, ptr %.sroa.07.0.i.i.1, align 1, !tbaa !97 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 37
  br i1 %i.bc, label %.lr.ph.i.i.3, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.2
  store i8 %i.bb, ptr %.sroa.013.1.i.i.1, align 1, !tbaa !97
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i.1, i64 1
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.o, %.lr.ph.i.i.2
  %.sroa.013.1.i.i.2 = phi ptr [ %.sroa.013.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.bd, %bb.o ] ; 3 uses
  %.sroa.07.0.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 3
  %i.be = load i8, ptr %.sroa.07.0.i.i.2, align 1, !tbaa !97 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 37
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.3
  store i8 %i.be, ptr %.sroa.013.1.i.i.2, align 1, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i.2, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.3
  %.sroa.013.1.i.i.3 = phi ptr [ %.sroa.013.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.bg, %bb.p ] ; 2 uses
  %.sroa.07.0.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 4 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %.sroa.07.0.i.i.3, %i.g
  br i1 %.not.i.i.3, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !1142

.loopexit.loopexit:                               ; preds = %bb.q, %.lr.ph.i.i.prol.loopexit
  %.sroa.013.1.i.i.lcssa = phi ptr [ %.sroa.013.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.013.1.i.i.3, %bb.q ]
  %.pre = load ptr, ptr %4, align 8, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i
  %i.bh = phi ptr [ %i.d, %._crit_edge.i.i.i.i ], [ %i.d, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.sroa.013.2.i.i = phi ptr [ %i.g, %._crit_edge.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops16_Iter_equals_valIKcEEET_SE_SE_T0_.exit.i.i ], [ %.sroa.013.1.i.i.lcssa, %.loopexit.loopexit ]
  %i.bi = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  store i64 %i.bk, ptr %i.e, align 8, !tbaa !98
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  store i8 0, ptr %i.bl, align 1, !tbaa !97
  %i.bm = load ptr, ptr %4, align 8, !tbaa !126   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.bn, ptr %10, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.r:                                             ; preds = %.loopexit
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !98  ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.loopexit
  store ptr %i.bm, ptr %10, align 8, !tbaa !126
  %i.bt = load i64, ptr %i.bo, align 8, !tbaa !97
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !97
  %.pre94 = load i64, ptr %i.e, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bu = phi i64 [ %i.bq, %bb.r ], [ %.pre94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !98
  store ptr %i.bo, ptr %4, align 8, !tbaa !126
  store i64 0, ptr %i.e, align 8, !tbaa !98
  store i8 0, ptr %i.bo, align 8, !tbaa !97
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %10)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bw = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc21 unwind label %bb.aj  ; 5 uses

.noexc21:                                         ; preds = %bb.s
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %9) #25, !noalias !1143
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.bw, ptr noundef nonnull %7)
          to label %bb.u unwind label %bb.t, !noalias !1143

bb.t:                                             ; preds = %.noexc21
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25, !noalias !1143
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #28, !noalias !1143
  br label %.body

bb.u:                                             ; preds = %.noexc21
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25, !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.by = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundFunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.v unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit47

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 448
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 noundef 1)
          to label %bb.w unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit47 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !150 ; 3 uses
  store ptr %i.bw, ptr %i.ca, align 8, !tbaa !150
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.w
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(88) %i.cb) #25, !inline_history !196
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25
  %i.cf = load ptr, ptr %10, align 8, !tbaa !126  ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bn
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ch = load ptr, ptr %8, align 8, !tbaa !1146  ; 2 uses
  store ptr null, ptr %8, align 8, !tbaa !1146
  %i.ci = load ptr, ptr %0, align 8, !tbaa !150   ; 3 uses
  store ptr %i.ch, ptr %0, align 8, !tbaa !150
  %.not.i.i.i.i.i23 = icmp eq ptr %i.ci, null
  %i.cj = ptrtoint ptr %i.ch to i64               ; 2 uses
  br i1 %.not.i.i.i.i.i23, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit28, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i24

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN6duckdb34RecursiveFunctionExpressionMatcher14RecursiveMatchEPNS_25FunctionExpressionMatcherERNS_10ExpressionERNS_6vectorISt17reference_wrapperIS3_ELb1ESaIS7_EEE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(481) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !622  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !622  ; 2 uses
  %.not25 = icmp eq ptr %i.g, %i.i
  br i1 %.not25, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.sroa.022.026 = phi ptr [ %i.m, %bb.g ], [ %i.g, %bb.d ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.022.026, align 8, !tbaa !150
  invoke void @_ZN6duckdb34RecursiveFunctionExpressionMatcher14RecursiveMatchEPNS_25FunctionExpressionMatcherERNS_10ExpressionERNS_6vectorISt17reference_wrapperIS3_ELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.022.026, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.i
  br i1 %.not, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !177  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1352
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = ptrtoint ptr %2 to i64
  store i64 %i.s, ptr %i.p, align 8
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.o, align 8, !tbaa !177
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %3, align 8, !tbaa !180    ; 7 uses
  %i.w = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.l, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #27
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #26
          to label %.noexc17 unwind label %bb.n   ; 8 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  %i.ai = ptrtoint ptr %2 to i64
  store i64 %i.ai, ptr %i.ah, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc17
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = sub i64 %i.w, %i.x
  %i.al = add i64 %i.ak, -8                       ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 72
  %i.ao = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ao, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.v, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.v, i64 %i.as ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  %i.at = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !alias.scope !1943, !noalias !1940
  %wide.load35 = load <2 x i64>, ptr %i.at, align 8, !alias.scope !1943, !noalias !1940
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1940, !noalias !1943
  store <2 x i64> %wide.load35, ptr %i.au, align 8, !alias.scope !1940, !noalias !1943
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1945

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.i.i.preheader37:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader37 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader37 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1943, !noalias !1940
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1940, !noalias !1943
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1946

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc17 ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #28
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ag, ptr %3, align 8, !tbaa !180
  store ptr %i.az, ptr %i.o, align 8, !tbaa !177
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.q, align 8, !tbaa !1352
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.g, %bb.d, %bb.j, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.bc = load ptr, ptr %4, align 8, !tbaa !180   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #28
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.p:                                             ; preds = %bb.f, %bb.h, %bb.n, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.bb, %bb.n ], [ %i.n, %bb.h ], [ %i.k, %bb.f ]
  %i.bd = load ptr, ptr %4, align 8, !tbaa !180   ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit19, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #28
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit19

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit19: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoint ptr %1 to i64                     ; 2 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1352
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177  ; 16 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 4 uses
  %i.q = sub i64 %i.a, %i.b
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.r, 56
  %diff.check141 = icmp ult i64 %i.c, 32
  %or.cond = or i1 %min.iters.check143, %diff.check141
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %bb.d
  %n.vec146 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.u = shl i64 %n.vec146, 3                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %i.w = getelementptr i8, ptr %i.p, i64 %i.u
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %i.x = shl i64 %index148, 3                     ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.p, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load151 = load <2 x i64>, ptr %next.gep150, align 8
  %wide.load152 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %wide.load151, ptr %next.gep149, align 8
  store <2 x i64> %wide.load152, ptr %i.z, align 8
  %index.next153 = add nuw i64 %index148, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.aa, label %middle.block154, label %vector.body147, !llvm.loop !1947

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.t, %n.vec146
  br i1 %cmp.n155, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block154
  %.013.i.i.i.i.i.ph = phi ptr [ %i.h, %bb.d ], [ %i.v, %middle.block154 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.w, %middle.block154 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.013.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1948

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block154
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.c
  store ptr %i.af, ptr %i.g, align 8, !tbaa !177
  %i.ag = ptrtoint ptr %i.p to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !146

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %1, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb10ExpressionEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.am = icmp eq i64 %i.ah, 8
  br i1 %i.am, label %bb.g, label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb10ExpressionEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ao = load i64, ptr %1, align 8
  store i64 %i.ao, ptr %i.an, align 8
  br label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb10ExpressionEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb10ExpressionEES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ap = icmp sgt i64 %i.c, 8
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb10ExpressionEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb10ExpressionEES4_ET0_T_S6_S5_.exit
  %i.aq = icmp eq i64 %i.c, 8
  br i1 %i.aq, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %2, align 8
  store i64 %i.ar, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.as, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.at = add i64 %i.a, %i.l
  %i.au = add i64 %i.j, %i.b
  %i.av = sub i64 %i.at, %i.au
  %i.aw = add i64 %i.av, -8                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 72
  %i.az = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond214 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.h, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bd ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.as, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep119, align 8
  %wide.load120 = load <2 x i64>, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load120, ptr %i.bf, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1949

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader223

.lr.ph.i.i.i.i.preheader223:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader223, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %i.bh = load i64, ptr %.sroa.04.08.i.i.i.i, align 8
  store i64 %i.bh, ptr %.09.i.i.i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bi, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1950

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !177
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bk = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %i.bm = sub nuw nsw i64 %i.d, %i.n
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm ; 6 uses
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !177
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bo = sub i64 %i.j, %i.l
  %i.bp = add i64 %i.bo, -8                       ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.bp, 136
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %i.bs = add i64 %i.c, %i.bl
  %i.bt = sub i64 %i.j, %i.bs
  %diff.check123 = icmp ugt i64 %i.bt, -32
  br i1 %diff.check123, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec128 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bu = shl i64 %n.vec128, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bu
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %i.bx = shl i64 %index130, 3                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load133 = load <2 x i64>, ptr %next.gep132, align 8
  %wide.load134 = load <2 x i64>, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %next.gep131, i64 16
  store <2 x i64> %wide.load133, ptr %next.gep131, align 8
  store <2 x i64> %wide.load134, ptr %i.bz, align 8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.ca, label %middle.block136, label %vector.body129, !llvm.loop !1951

middle.block136:                                  ; preds = %vector.body129
  %cmp.n137 = icmp eq i64 %i.br, %n.vec128
  br i1 %cmp.n137, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52.preheader222

.lr.ph.i.i.i.i.i52.preheader222:                  ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i.i52.preheader, %middle.block136
  %.013.i.i.i.i.i53.ph = phi ptr [ %i.bn, %vector.memcheck122 ], [ %i.bn, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bv, %middle.block136 ]
  %.sroa.08.012.i.i.i.i.i54.ph = phi ptr [ %1, %vector.memcheck122 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bw, %middle.block136 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader222, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i52 ], [ %.013.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.08.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %i.cb = load i64, ptr %.sroa.08.012.i.i.i.i.i54, align 8
  store i64 %i.cb, ptr %.013.i.i.i.i.i53, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 8
  %.not.i.i.i.i.i55 = icmp eq ptr %i.cc, %i.h
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !1952

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52, %middle.block136
  %.pre99 = load ptr, ptr %i.g, align 8, !tbaa !177
  br label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ce = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit ], [ %i.bn, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.m
  store ptr %i.cf, ptr %i.g, align 8, !tbaa !177
  %i.cg = icmp sgt i64 %i.m, 8
  br i1 %i.cg, label %bb.k, label %bb.l, !prof !146

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57
  %i.ch = icmp eq i64 %i.m, 8
  br i1 %i.ch, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.ci = load i64, ptr %2, align 8
  store i64 %i.ci, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8, !tbaa !180   ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cl = sub i64 %i.j, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3                 ; 4 uses
  %i.cn = sub nsw i64 1152921504606846975, %i.cm
  %i.co = icmp ult i64 %i.cn, %i.d
  br i1 %i.co, label %bb.o, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #27
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.d)
  %i.cp = add nsw i64 %.sroa.speculated.i, %i.cm  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #26
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cv = phi ptr [ %i.cu, %bb.p ], [ null, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.cj, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_M_allocateEm.exit
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.cx = sub i64 %5, %i.ck
  %i.cy = add i64 %i.cx, -8                       ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.cy, 72
  %i.db = sub i64 %i.ck, %i.cw
  %diff.check159 = icmp ugt i64 %i.db, -32
  %or.cond215 = or i1 %min.iters.check161, %diff.check159
  br i1 %or.cond215, label %.lr.ph.i.i.i.i.i60.preheader220, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec164 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.dc = shl i64 %n.vec164, 3                    ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cv, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.cj, i64 %i.dc
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.df = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cv, i64 %i.df ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cj, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8
  %wide.load170 = load <2 x i64>, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8
  store <2 x i64> %wide.load170, ptr %i.dh, align 8
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.di, label %middle.block172, label %vector.body165, !llvm.loop !1953

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.da, %n.vec164
  br i1 %cmp.n173, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader220

.lr.ph.i.i.i.i.i60.preheader220:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block172
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.dd, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.de, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader220, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %i.dj = load i64, ptr %.sroa.08.012.i.i.i.i.i62, align 8
  store i64 %i.dj, ptr %.013.i.i.i.i.i61, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.dk, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !1954

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block172, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cv, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_M_allocateEm.exit ], [ %i.dd, %middle.block172 ], [ %i.dl, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %i.dm = sub i64 %i.a, %i.b
  %i.dn = add i64 %i.dm, -8                       ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.dn, 72
  %.0.lcssa.i.i.i.i.i64177 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.dq = sub i64 %i.b, %.0.lcssa.i.i.i.i.i64177
  %diff.check178 = icmp ugt i64 %i.dq, -32
  %or.cond216 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond216, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %n.vec183 = and i64 %i.dp, 4611686018427387900  ; 3 uses
  %i.dr = shl i64 %n.vec183, 3                    ; 2 uses
  %i.ds = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dr ; 2 uses
  %i.dt = getelementptr i8, ptr %2, i64 %i.dr
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.du = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.du ; 2 uses
  %next.gep187 = getelementptr i8, ptr %2, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8
  %wide.load189 = load <2 x i64>, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8
  store <2 x i64> %wide.load189, ptr %i.dw, align 8
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dx, label %middle.block191, label %vector.body184, !llvm.loop !1955

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.dp, %n.vec183
  br i1 %cmp.n192, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %middle.block191
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ds, %middle.block191 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dt, %middle.block191 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.dy = load i64, ptr %.sroa.04.08.i.i.i.i68, align 8
  store i64 %i.dy, ptr %.09.i.i.i.i67, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.dz, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !1956

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block191
  %.lcssa117 = phi ptr [ %i.ds, %middle.block191 ], [ %i.ea, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71
  %.lcssa117196 = ptrtoaddr ptr %.lcssa117 to i64
  %i.eb = sub i64 %i.j, %4
  %i.ec = add i64 %i.eb, -8                       ; 2 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.ec, 72
  %i.ef = sub i64 %4, %.lcssa117196
  %diff.check197 = icmp ugt i64 %i.ef, -32
  %or.cond217 = select i1 %min.iters.check199, i1 true, i1 %diff.check197
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i73.preheader218, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec202 = and i64 %i.ee, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec202, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %.lcssa117, i64 %i.eg ; 2 uses
  %i.ei = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.ej = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.lcssa117, i64 %i.ej ; 2 uses
  %next.gep206 = getelementptr i8, ptr %1, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8
  %wide.load208 = load <2 x i64>, ptr %i.ek, align 8
  %i.el = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x i64> %wide.load207, ptr %next.gep205, align 8
  store <2 x i64> %wide.load208, ptr %i.el, align 8
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.em, label %middle.block210, label %vector.body203, !llvm.loop !1957

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.ee, %n.vec202
  br i1 %cmp.n211, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader218

.lr.ph.i.i.i.i.i73.preheader218:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block210
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa117, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.eh, %middle.block210 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ei, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader218, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %i.en = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8
  store i64 %i.en, ptr %.013.i.i.i.i.i74, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eo, %i.h
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1958

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block210, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa117, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71 ], [ %i.eh, %middle.block210 ], [ %i.ep, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.cj, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78
  tail call void @_ZdlPv(ptr noundef nonnull %i.cj) #28
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb10ExpressionEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, %bb.q
  store ptr %i.cv, ptr %0, align 8, !tbaa !180
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.g, align 8, !tbaa !177
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cs
  store ptr %i.eq, ptr %i.e, align 8, !tbaa !1352
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb10ExpressionEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6duckdb18ExpressionRewriterE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb17ExpressionMatcherELb0EE", !12, i64 0}
!12 = !{!"p1 _ZTSN6duckdb17ExpressionMatcherE", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !6, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN6duckdb9make_uniqINS_25FunctionExpressionMatcherEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!17 = distinct !{!17, !"_ZN6duckdb9make_uniqINS_25FunctionExpressionMatcherEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSN6duckdb17ExpressionMatcherE", !20, i64 8, !21, i64 16, !29, i64 24}
!20 = !{!"_ZTSN6duckdb15ExpressionClassE", !5, i64 0}
!21 = !{!"_ZTSN6duckdb10unique_ptrINS_21ExpressionTypeMatcherESt14default_deleteIS1_ELb1EEE", !22, i64 0}
!22 = !{!"_ZTSSt10unique_ptrIN6duckdb21ExpressionTypeMatcherESt14default_deleteIS1_EE", !23, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb21ExpressionTypeMatcherESt14default_deleteIS1_ELb1ELb1EE", !24, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb21ExpressionTypeMatcherESt14default_deleteIS1_EE", !25, i64 0}
!25 = !{!"_ZTSSt5tupleIJPN6duckdb21ExpressionTypeMatcherESt14default_deleteIS1_EEE", !26, i64 0}
!26 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb21ExpressionTypeMatcherESt14default_deleteIS1_EEE", !27, i64 0}
!27 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb21ExpressionTypeMatcherELb0EE", !28, i64 0}
!28 = !{!"p1 _ZTSN6duckdb21ExpressionTypeMatcherE", !9, i64 0}
!29 = !{!"_ZTSN6duckdb10unique_ptrINS_11TypeMatcherESt14default_deleteIS1_ELb1EEE", !30, i64 0}
!30 = !{!"_ZTSSt10unique_ptrIN6duckdb11TypeMatcherESt14default_deleteIS1_EE", !31, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb11TypeMatcherESt14default_deleteIS1_ELb1ELb1EE", !32, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb11TypeMatcherESt14default_deleteIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt5tupleIJPN6duckdb11TypeMatcherESt14default_deleteIS1_EEE", !34, i64 0}
!34 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb11TypeMatcherESt14default_deleteIS1_EEE", !35, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb11TypeMatcherELb0EE", !36, i64 0}
!36 = !{!"p1 _ZTSN6duckdb11TypeMatcherE", !9, i64 0}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb15FunctionMatcherELb0EE", !39, i64 0}
!39 = !{!"p1 _ZTSN6duckdb15FunctionMatcherE", !9, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN6duckdb25FunctionExpressionMatcherE", !9, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN6duckdb9make_uniqINS_25ConstantExpressionMatcherEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!44 = distinct !{!44, !"_ZN6duckdb9make_uniqINS_25ConstantExpressionMatcherEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!48 = !{!46, !47, i64 16}
!49 = !{!12, !12, i64 0}
!50 = !{!46, !47, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!53 = distinct !{!53, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!56 = !{!55, !57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!52, !60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !62, !63, !64}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = distinct !{!65, !62, !63}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN6duckdb9make_uniqINS_17ExpressionMatcherEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!68 = distinct !{!68, !"_ZN6duckdb9make_uniqINS_17ExpressionMatcherEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!71 = distinct !{!71, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"_ZSt19__relocate_object_aIN6duckdb10unique_ptrINS0_17ExpressionMatcherESt14default_deleteIS2_ELb1EEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!74 = !{!73, !75}
!75 = distinct !{!75, !76}
end_hunk_1
