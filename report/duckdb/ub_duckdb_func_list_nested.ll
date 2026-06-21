inline.NumInlined: 2838
inline.NumDeleted: 1070
begin_hunk_0_@_ZN6duckdb16ListIntersectFun11GetFunctionEv:._crit_edge.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  %i.ao = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ao) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  %i.aq = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @_ZdlPv(ptr noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.as, align 1, !tbaa !52
  ret void

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.p:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %._crit_edge.i.i36
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.r:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit72

bb.s:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.t:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.v ], [ %i.az, %bb.u ]
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bb, null
  br i1 %.not.i50, label %_ZNSt14_Function_baseD2Ev.exit51, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit51 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit51:                 ; preds = %bb.w, %bb.x
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit51, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit51 ], [ %i.ay, %bb.t ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.ax, %bb.s ]
  %i.bf = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.q
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %.body

.body:                                            ; preds = %.body62.thread, %bb.g, %.body62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.w, %.body62 ], [ %i.w, %bb.g ], [ %i.z, %.body62.thread ]
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  br label %.loopexit72

.loopexit72:                                      ; preds = %.body, %bb.r
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %.pn.pn.pn.pn.pn, %.body ]
  %i.bi = phi i1 [ false, %bb.r ], [ true, %.body ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit72, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.loopexit72 ], [ %i.av, %bb.q ]
  %.1 = phi i1 [ %i.bi, %.loopexit72 ], [ false, %bb.q ]
  %i.bj = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.e
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.p
  %.022 = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %2, %bb.p ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.au, %bb.p ]
  %.3 = phi i1 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ false, %bb.p ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.o
  %.123 = phi ptr [ %.022, %bb.ac ], [ %2, %bb.o ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ac ], [ %i.at, %bb.o ]
  %.4 = phi i1 [ %.3, %bb.ac ], [ false, %bb.o ]
  %i.bl = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.a
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.bl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bn = icmp eq ptr %2, %.123
  %or.cond = select i1 %.4, i1 true, i1 %i.bn
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %.preheader
  %i.bo = phi ptr [ %i.bp, %.preheader ], [ %.123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -24 ; 3 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bp) #20
  %i.bq = icmp eq ptr %i.bp, %2
  br i1 %i.bq, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL21ListIntersectFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %11 = alloca %"class.duckdb::Vector", align 8   ; 9 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::Vector", align 8   ; 9 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %15 = alloca %"class.std::unordered_set.199", align 8 ; 17 uses
  %16 = alloca %"class.std::unordered_set.199", align 8 ; 17 uses
  %17 = alloca %"class.std::unordered_map.215", align 8 ; 16 uses
  %18 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %19 = alloca %"struct.duckdb::ValidityMask", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 1)
  %i.d = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %bb.fi

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.fu

bb.e:                                             ; preds = %bb.b
  %i.f = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 3 uses
  %i.g = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 3 uses
  %i.h = call noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f) ; 3 uses
  %i.i = call noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g) ; 3 uses
  %i.j = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f) ; 4 uses
  %i.k = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.ao

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.g unwind label %bb.ap

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.h unwind label %bb.aq

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.i unwind label %bb.aq

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.j unwind label %bb.ar

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83   ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.k unwind label %bb.as

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.l unwind label %bb.at

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.m unwind label %bb.au

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.n unwind label %bb.av

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.o unwind label %bb.av

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef zeroext 26)
          to label %bb.p unwind label %bb.aw

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull %12, i64 noundef %i.h)
          to label %bb.q unwind label %bb.ax

bb.q:                                             ; preds = %bb.p
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 noundef zeroext 26)
          to label %bb.r unwind label %bb.ay

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull %14, i64 noundef %i.i)
          to label %bb.s unwind label %bb.az

bb.s:                                             ; preds = %bb.r
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #20
  invoke void @_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_6VectorEmNS_14OrderModifiersES2_(ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef %i.h, i16 770, ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %bb.t unwind label %bb.ba

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_6VectorEmNS_14OrderModifiersES2_(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 noundef %i.i, i16 770, ptr noundef nonnull align 8 dereferenceable(104) %13)
          to label %bb.u unwind label %bb.ba

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %bb.v unwind label %bb.bb

bb.v:                                             ; preds = %bb.u
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116  ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %13)
          to label %bb.w unwind label %bb.bc

bb.w:                                             ; preds = %bb.v
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %bb.bd

bb.x:                                             ; preds = %bb.w
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116  ; 8 uses
  %i.w = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %bb.be      ; 7 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  store ptr %i.x, ptr %15, align 8, !tbaa !205
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 1, ptr %i.y, align 8, !tbaa !213
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8, !tbaa !214
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store ptr %i.ac, ptr %16, align 8, !tbaa !205
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 1, ptr %i.ad, align 8, !tbaa !213
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 8, !tbaa !214
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store ptr %i.ah, ptr %17, align 8, !tbaa !215
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 1, ptr %i.ai, align 8, !tbaa !217
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ak, align 8, !tbaa !214
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val204 = load ptr, ptr %i.am, align 8         ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %.val206 = load ptr, ptr %i.an, align 8
  %.16.val3.fr.i = freeze ptr %.val206            ; 4 uses
  %.not40.i = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not40.i, label %_ZN6duckdbL24CalculateMaxResultLengthEmRKNS_19UnifiedVectorFormatES2_PKNS_12list_entry_tES5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %.val205 = load ptr, ptr %8, align 8
  %.val = load ptr, ptr %7, align 8
  %i.ao = load ptr, ptr %.val, align 8, !tbaa !102 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ao, null             ; 3 uses
  %i.ap = load ptr, ptr %.val205, align 8, !tbaa !102 ; 6 uses
  %.not.i19.i = icmp eq ptr %i.ap, null           ; 5 uses
  %.not.i21.i = icmp eq ptr %.val204, null
  %.not.i22.i = icmp eq ptr %.16.val3.fr.i, null  ; 2 uses
  br i1 %.not.i21.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ab
  %.09.us.i = phi i64 [ %.1.us.i, %bb.ab ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0188.us.i = phi i64 [ %i.bm, %bb.ab ], [ 0, %.lr.ph.i ] ; 5 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.us.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0188.us.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %bb.z, %.lr.ph.split.us.i
  %i.at = phi i64 [ %i.as, %bb.z ], [ %.0188.us.i, %.lr.ph.split.us.i ]
  br i1 %.not.i19.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit20.us.i, label %bb.aa

end_hunk_0
begin_hunk_1_@_ZN6duckdbL21ListIntersectFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %.sroa.sel322.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel322.v.sroa.sel.v.sroa.sel.v, i64 16
  br label %bb.bz

bb.bt:                                            ; preds = %.lr.ph, %bb.by
  %.0168356 = phi i64 [ 0, %.lr.ph ], [ %i.lh, %bb.by ] ; 2 uses
  %i.ko = load i64, ptr %i.jr, align 8, !tbaa !221
  %i.kp = add i64 %i.ko, %.0168356                ; 3 uses
  %.val338 = load ptr, ptr %10, align 8
  %.val339 = load ptr, ptr %9, align 8
  %i.kq = select i1 %.not, ptr %.val338, ptr %.val339
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !102 ; 2 uses
  %.not.i241 = icmp eq ptr %i.kr, null
  br i1 %.not.i241, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit242, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.kp
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3
  %i.ku = zext i32 %i.kt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit242

_ZNK6duckdb15SelectionVector9get_indexEm.exit242: ; preds = %bb.bu, %bb.bt
  %i.kv = phi i64 [ %i.ku, %bb.bu ], [ %i.kp, %bb.bt ] ; 3 uses
  %i.kw = load ptr, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !103 ; 2 uses
  %.not.i243 = icmp eq ptr %i.kw, null
  br i1 %.not.i243, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit242
  %i.kx = lshr i64 %i.kv, 6
  %i.ky = and i64 %i.kv, 63
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kx
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !104
  %i.lb = shl nuw i64 1, %i.ky
  %i.lc = and i64 %i.la, %i.lb
  %.not340 = icmp eq i64 %i.lc, 0
  br i1 %.not340, label %bb.by, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit242, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.kv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %15, ptr %4, align 8, !tbaa !227
  %i.le = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb8string_tES1_SaIS1_ENSt8__detail9_IdentityENS0_14StringEqualityENS0_10StringHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.bv unwind label %bb.bx     ; 0 uses

bb.bv:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.not, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb8string_tESt4pairIKS2_mESaIS5_ENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.ld)
          to label %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEEixERS5_.exit unwind label %bb.bx

_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEEixERS5_.exit: ; preds = %bb.bw
  store i64 %i.kp, ptr %i.lf, align 8, !tbaa !104
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245.thread
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.by:                                            ; preds = %bb.bv, %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEEixERS5_.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit245
  %i.lh = add nuw i64 %.0168356, 1                ; 2 uses
  %i.li = load i64, ptr %i.kf, align 8, !tbaa !218
  %i.lj = icmp ult i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.bt, label %._crit_edge, !llvm.loop !229

._crit_edge360:                                   ; preds = %.critedge, %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE5clearEv.exit240
  %.0170.lcssa = phi i64 [ 0, %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE5clearEv.exit240 ], [ %.2172, %.critedge ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.0167361
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i64 %.0170.lcssa, ptr %i.ll, align 8, !tbaa !218
  %i.lm = add i64 %.0170.lcssa, %.0164362
  br label %bb.ck

bb.bz:                                            ; preds = %.lr.ph359, %.critedge
  %.0169358 = phi i64 [ 0, %.lr.ph359 ], [ %i.mr, %.critedge ] ; 2 uses
  %.0170357 = phi i64 [ 0, %.lr.ph359 ], [ %.2172, %.critedge ] ; 5 uses
  %i.ln = load i64, ptr %i.js, align 8, !tbaa !221
  %i.lo = add i64 %i.ln, %.0169358                ; 3 uses
  %.val334 = load ptr, ptr %9, align 8
  %.val335 = load ptr, ptr %10, align 8
  %i.lp = select i1 %.not, ptr %.val334, ptr %.val335
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !102 ; 2 uses
  %.not.i248 = icmp eq ptr %i.lq, null
  br i1 %.not.i248, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit249, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lo
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3
  %i.lt = zext i32 %i.ls to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit249

_ZNK6duckdb15SelectionVector9get_indexEm.exit249: ; preds = %bb.ca, %bb.bz
  %i.lu = phi i64 [ %i.lt, %bb.ca ], [ %i.lo, %bb.bz ] ; 3 uses
  %i.lv = load ptr, ptr %.sroa.sel322.v.sroa.sel.v.sroa.sel, align 8, !tbaa !103 ; 2 uses
  %.not.i250 = icmp eq ptr %i.lv, null
  br i1 %.not.i250, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit249
  %i.lw = lshr i64 %i.lu, 6
  %i.lx = and i64 %i.lu, 63
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lw
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !104
  %i.ma = shl nuw i64 1, %i.lx
  %i.mb = and i64 %i.lz, %i.ma
  %.not336 = icmp eq i64 %i.mb, 0
  br i1 %.not336, label %.critedge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit249, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.lu ; 5 uses
  %i.md = invoke ptr @_ZNSt10_HashtableIN6duckdb8string_tES1_SaIS1_ENSt8__detail9_IdentityENS0_14StringEqualityENS0_10StringHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.mc)
          to label %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit unwind label %bb.cc

_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252.thread
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit
  %i.mf = invoke ptr @_ZNSt10_HashtableIN6duckdb8string_tES1_SaIS1_ENSt8__detail9_IdentityENS0_14StringEqualityENS0_10StringHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.mc)
          to label %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit255 unwind label %bb.cd

_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit255: ; preds = %bb.cb
  %.not337 = icmp eq ptr %i.mf, null
  br i1 %.not337, label %bb.ce, label %.critedge

bb.cc:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252.thread
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.cd:                                            ; preds = %bb.cb
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ce:                                            ; preds = %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit255
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %16, ptr %3, align 8, !tbaa !227
  %i.mi = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb8string_tES1_SaIS1_ENSt8__detail9_IdentityENS0_14StringEqualityENS0_10StringHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.mc, ptr noundef nonnull align 8 dereferenceable(16) %i.mc, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.cf unwind label %bb.ci     ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.not, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN6duckdb8string_tESt4pairIKS2_mESaIS5_ENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.mc)
          to label %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEEixERS5_.exit259 unwind label %bb.cj

_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEEixERS5_.exit259: ; preds = %bb.cg
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !104
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEEixERS5_.exit259, %bb.cf
  %i.ml = phi i64 [ %i.mk, %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEEixERS5_.exit259 ], [ %i.lo, %bb.cf ]
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = load ptr, ptr %18, align 8, !tbaa !102
  %i.mo = getelementptr [4 x i8], ptr %i.mn, i64 %.0164362
  %i.mp = getelementptr [4 x i8], ptr %i.mo, i64 %.0170357
  store i32 %i.mm, ptr %i.mp, align 4, !tbaa !3
  %i.mq = add i64 %.0170357, 1
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit, %bb.ch, %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit255, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252
  %.2172 = phi i64 [ %.0170357, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit252 ], [ %i.mq, %bb.ch ], [ %.0170357, %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit255 ], [ %.0170357, %_ZNSt13unordered_setIN6duckdb8string_tENS0_10StringHashENS0_14StringEqualityESaIS1_EE4findERKS1_.exit ] ; 2 uses
  %i.mr = add nuw i64 %.0169358, 1                ; 2 uses
  %i.ms = load i64, ptr %i.km, align 8, !tbaa !218
  %i.mt = icmp ult i64 %i.mr, %i.ms
  br i1 %i.mt, label %bb.bz, label %._crit_edge360, !llvm.loop !230

bb.ci:                                            ; preds = %bb.ce
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.cj:                                            ; preds = %bb.cg
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ck:                                            ; preds = %bb.br, %._crit_edge360, %bb.bp, %bb.bm
  %.2166 = phi i64 [ %.0164362, %bb.bm ], [ %.0164362, %bb.bp ], [ %.0164362, %bb.br ], [ %i.lm, %._crit_edge360 ] ; 2 uses
  %i.mw = add nuw i64 %.0167361, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.mw, %i.b
  br i1 %exitcond.not, label %._crit_edge364, label %bb.bh, !llvm.loop !231

bb.cl:                                            ; preds = %._crit_edge364
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %.0164.lcssa)
          to label %bb.cm unwind label %bb.bg

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i64 noundef %.0164.lcssa)
          to label %bb.cn unwind label %bb.bg

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.w)
          to label %.noexc260 unwind label %bb.bg

.noexc260:                                        ; preds = %bb.cn
  %i.mx = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr null, ptr %i.mx, align 8, !tbaa !103
  %i.my = icmp eq ptr %i.mx, %19
  br i1 %i.my, label %bb.cu, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i: ; preds = %.noexc260
  %i.mz = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr null, ptr %i.mz, align 8, !tbaa !232
  %i.na = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !66 ; 8 uses
  store ptr null, ptr %i.na, align 8, !tbaa !66
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i.i.i, label %bb.cu, label %bb.co

bb.co:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 4 uses
  %i.nd = load atomic i64, ptr %i.nc acquire, align 8 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, 4294967297
  %i.nf = trunc i64 %i.nd to i32                  ; 2 uses
  br i1 %i.ne, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.nc, align 8, !tbaa !67
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  store i32 0, ptr %i.ng, align 4, !tbaa !69
  %i.nh = load ptr, ptr %i.nb, align 8, !tbaa !64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #20, !inline_history !233
  %i.nk = load ptr, ptr %i.nb, align 8, !tbaa !64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #20, !inline_history !233
  br label %bb.cu

bb.cq:                                            ; preds = %bb.co
  %i.nn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.nn, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.no = add nsw i32 %i.nf, -1
  store i32 %i.no, ptr %i.nc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.np = atomicrmw volatile add ptr %i.nc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.nf, %bb.cr ], [ %i.np, %bb.cs ]
  %i.nq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.nq, label %bb.ct, label %bb.cu, !prof !71

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nb) #20
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.cp, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i, %.noexc260
  %i.nr = load i64, ptr %i.fw, align 8, !tbaa !118
  %i.ns = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !118
  %i.nt = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.cv unwind label %bb.bg

bb.cv:                                            ; preds = %bb.cu
  %i.nu = select i1 %i.nt, i8 2, i8 0
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext %i.nu)
          to label %bb.cw unwind label %bb.bg

bb.cw:                                            ; preds = %bb.cv
  %i.nv = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 4 uses
  %i.ny = load atomic i64, ptr %i.nx acquire, align 8 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 4294967297
  %i.oa = trunc i64 %i.ny to i32                  ; 2 uses
  br i1 %i.nz, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.nx, align 8, !tbaa !67
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  store i32 0, ptr %i.ob, align 4, !tbaa !69
  %i.oc = load ptr, ptr %i.nw, align 8, !tbaa !64
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #20, !inline_history !234
  %i.of = load ptr, ptr %i.nw, align 8, !tbaa !64
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #20, !inline_history !234
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.cz:                                            ; preds = %bb.cx
  %i.oi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i.i.i.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oj = add nsw i32 %i.oa, -1
  store i32 %i.oj, ptr %i.nx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.db:                                            ; preds = %bb.cz
  %i.ok = atomicrmw volatile add ptr %i.nx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i.i.i = phi i32 [ %i.oa, %bb.da ], [ %i.ok, %bb.db ]
  %i.ol = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ol, label %bb.dc, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !71

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #20
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %bb.cw, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.om = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.i261 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i261, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 4 uses
  %i.op = load atomic i64, ptr %i.oo acquire, align 8 ; 2 uses
  %i.oq = icmp eq i64 %i.op, 4294967297
  %i.or = trunc i64 %i.op to i32                  ; 2 uses
  br i1 %i.oq, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.oo, align 8, !tbaa !67
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  store i32 0, ptr %i.os, align 4, !tbaa !69
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #20, !inline_history !235
  %i.ow = load ptr, ptr %i.on, align 8, !tbaa !64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #20, !inline_history !235
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.df:                                            ; preds = %bb.dd
  %i.oz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i262 = icmp eq i8 %i.oz, 0
  br i1 %.not.i.i.i.i.i262, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pa = add nsw i32 %i.or, -1
  store i32 %i.pa, ptr %i.oo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i263

bb.dh:                                            ; preds = %bb.df
  %i.pb = atomicrmw volatile add ptr %i.oo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i263

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i263: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i.i.i264 = phi i32 [ %i.or, %bb.dg ], [ %i.pb, %bb.dh ]
  %i.pc = icmp eq i32 %.0.i.i.i.i.i.i264, 1
  br i1 %i.pc, label %bb.di, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !71

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i263
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i263, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.pd = load ptr, ptr %i.aj, align 8, !tbaa !225 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.pd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.pe, %.lr.ph.i.i.i.i ], [ %i.pd, %_ZN6duckdb15SelectionVectorD2Ev.exit ] ; 2 uses
  %i.pe = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !223 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #24
  %.not.i.i.i.i265 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i.i265, label %_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !226

_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.pf = load ptr, ptr %17, align 8, !tbaa !215
  %i.pg = load i64, ptr %i.ai, align 8, !tbaa !217
  %i.ph = shl i64 %i.pg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pf, i8 0, i64 %i.ph, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %i.pi = load ptr, ptr %17, align 8, !tbaa !215  ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ah
  br i1 %i.pj, label %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEED2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.pi) #24
  br label %_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEED2Ev.exit

_ZNSt13unordered_mapIN6duckdb8string_tEmNS0_10StringHashENS0_14StringEqualityESaISt4pairIKS1_mEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.pk = load ptr, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %.not5.i.i.i.i266 = icmp eq ptr %i.pk, null
end_hunk_1
