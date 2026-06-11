inline.NumInlined: 2838
inline.NumDeleted: 1070
begin_hunk_0_@_ZN6duckdb12ListWhereFun11GetFunctionEv:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ag = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #24
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ak) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  %i.al = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.q:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.s:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit58

bb.t:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.u:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.au, %bb.w ], [ %i.at, %bb.v ]
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %.not.i40 = icmp eq ptr %i.av, null
  br i1 %.not.i40, label %_ZNSt14_Function_baseD2Ev.exit41, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit41 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit41:                 ; preds = %bb.x, %bb.y
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit41, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit41 ], [ %i.as, %bb.u ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.ar, %bb.t ]
  %i.az = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.n
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %.body

.body:                                            ; preds = %.body49.thread, %bb.h, %.body49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.t, %.body49 ], [ %i.t, %bb.h ], [ %i.w, %.body49.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bb) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  br label %.loopexit58

.loopexit58:                                      ; preds = %.body, %bb.s
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %.pn.pn.pn.pn.pn, %.body ]
  %i.bc = phi i1 [ false, %bb.s ], [ true, %.body ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit58, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.loopexit58 ], [ %i.ap, %bb.r ]
  %.1 = phi i1 [ %i.bc, %.loopexit58 ], [ false, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.q
  %.020 = phi ptr [ %i.d, %bb.ac ], [ %2, %bb.q ]
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ac ], [ %i.ao, %bb.q ]
  %.2 = phi i1 [ %.1, %bb.ac ], [ false, %bb.q ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.p
  %.121 = phi ptr [ %.020, %bb.ad ], [ %2, %bb.p ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ad ], [ %i.an, %bb.p ]
  %.3 = phi i1 [ %.2, %bb.ad ], [ false, %bb.p ]
  %i.bd = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.bd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bf = icmp eq ptr %2, %.121
  %or.cond = select i1 %.3, i1 true, i1 %i.bf
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %.preheader
  %i.bg = phi ptr [ %i.bh, %.preheader ], [ %.121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24 ; 3 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #20
  %i.bi = icmp eq ptr %i.bh, %2
  br i1 %i.bi, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118ListSelectFunctionINS0_23SetSelectionVectorWhereEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %10 = alloca %"class.duckdb::Vector", align 8   ; 5 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  %12 = alloca %"struct.duckdb::ValidityMask", align 8 ; 17 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.d unwind label %bb.l       ; 3 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %bb.h unwind label %bb.p       ; 3 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.not228 = icmp eq i64 %i.d, 0                  ; 2 uses
  br i1 %.not228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ag, %bb.i
  %.0187.lcssa = phi i64 [ 0, %bb.i ], [ %.1188, %bb.ag ] ; 3 uses
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.0187.lcssa)
          to label %bb.ah unwind label %bb.al

bb.j:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.k:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.l:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.n:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.o:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.p:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.q:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.r:                                             ; preds = %.lr.ph, %bb.ag
  %.096216 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.ag ] ; 5 uses
  %.0187215.a = phi i64 [ 0, %.lr.ph ], [ %.1188, %bb.ag ] ; 4 uses
  %16 = load ptr, ptr %9, align 8, !tbaa !101
  %i.z = load ptr, ptr %16, align 8, !tbaa !102   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.096216
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.s, %bb.r
  %i.ad = phi i64 [ %i.ac, %bb.s ], [ %.096216, %bb.r ] ; 2 uses
  %i.ae = load ptr, ptr %8, align 8, !tbaa !101
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %.not.i121 = icmp eq ptr %i.af, null
  br i1 %.not.i121, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit122, label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.096216
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = zext i32 %i.ah to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit122

_ZNK6duckdb15SelectionVector9get_indexEm.exit122: ; preds = %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aj = phi i64 [ %i.ai, %bb.t ], [ %.096216, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !103 ; 2 uses
  %.not.i123 = icmp eq ptr %i.ak, null
  br i1 %.not.i123, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit122
  %i.al = lshr i64 %i.ad, 6
  %i.am = and i64 %i.ad, 63
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !104
  %i.ap = shl nuw i64 1, %i.am
  %i.aq = and i64 %i.ao, %i.ap
  %.not199 = icmp eq i64 %i.aq, 0
  br i1 %.not199, label %bb.ag, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit122, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !103 ; 2 uses
  %.not.i124 = icmp eq ptr %i.ar, null
  br i1 %.not.i124, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.as = lshr i64 %i.aj, 6
  %i.at = and i64 %i.aj, 63
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.av = load i64, ptr %i.au, align 8, !tbaa !104
  %i.aw = shl nuw i64 1, %i.at
  %i.ax = and i64 %i.av, %i.aw
  %.not200 = icmp eq i64 %i.ax, 0
  br i1 %.not200, label %bb.ag, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126.thread
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.aj ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !218
  %.not.i127 = icmp eq i64 %i.ba, 0
  br i1 %.not.i127, label %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere15GetResultLengthERNS_9DataChunkERmPKNS_12list_entry_tENS_6VectorEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.ab
  %.2189 = phi i64 [ %spec.select, %bb.ab ], [ %.0187215.a, %bb.u ]
  %.0174.i = phi i64 [ %i.bp, %bb.ab ], [ 0, %bb.u ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !221
  %i.bc = add i64 %i.bb, %.0174.i
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %10, i64 noundef %i.bc)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %.lr.ph.i
  %i.bd = load i8, ptr %i.q, align 8, !tbaa !354, !range !273, !noundef !200
  %i.be = trunc nuw i8 %i.bd to i1
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.be, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.noexc
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ad unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i128 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.bi) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0.i128, label %bb.z, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0.i128, label %bb.z, label %.body

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn3.i = phi { ptr, i32 } [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bf) #20
  br label %.body

bb.aa:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !221
  %i.bm = add i64 %i.bl, %.0174.i
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %7, ptr noundef nonnull align 8 dereferenceable(104) %10, i64 noundef %i.bm)
          to label %.noexc129 unwind label %bb.af

.noexc129:                                        ; preds = %bb.aa
  %i.bn = invoke noundef zeroext i1 @_ZNK6duckdb5Value8GetValueIbEET_v(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc129
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bo = zext i1 %i.bn to i64
  %spec.select = add i64 %.2189, %i.bo            ; 2 uses
  %i.bp = add nuw i64 %.0174.i, 1                 ; 2 uses
  %i.bq = load i64, ptr %i.az, align 8, !tbaa !218
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %.lr.ph.i, label %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere15GetResultLengthERNS_9DataChunkERmPKNS_12list_entry_tENS_6VectorEm.exit, !llvm.loop !360

bb.ac:                                            ; preds = %.noexc129
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.ad:                                            ; preds = %bb.x
  unreachable

_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere15GetResultLengthERNS_9DataChunkERmPKNS_12list_entry_tENS_6VectorEm.exit: ; preds = %bb.ab, %bb.u
  %.4 = phi i64 [ %.0187215.a, %bb.u ], [ %spec.select, %bb.ab ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %10) #20
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.af:                                            ; preds = %bb.aa, %.lr.ph.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.z, %bb.ac, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.af ], [ %.pn3.i, %bb.z ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bs, %bb.ac ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %10) #20
  br label %bb.dp

bb.ag:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere15GetResultLengthERNS_9DataChunkERmPKNS_12list_entry_tENS_6VectorEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.1188 = phi i64 [ %.4, %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere15GetResultLengthERNS_9DataChunkERmPKNS_12list_entry_tENS_6VectorEm.exit ], [ %.0187215.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit126 ], [ %.0187215.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.bv = add nuw i64 %.096216, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !361

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %.0187.lcssa)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bw) #20
  br label %.body130

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 24, i1 false)
  store i64 %.0187.lcssa, ptr %i.by, align 8, !tbaa !118
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  br i1 %.not228, label %._crit_edge226, label %.lr.ph225

.lr.ph225:                                        ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.an

._crit_edge226:                                   ; preds = %bb.bn, %bb.ak
  %.0185.lcssa = phi i64 [ 0, %bb.ak ], [ %.2, %bb.bn ] ; 3 uses
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %.0185.lcssa)
          to label %bb.bo unwind label %bb.do

bb.al:                                            ; preds = %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.am:                                            ; preds = %bb.aj
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.an:                                            ; preds = %.lr.ph225, %bb.bn
  %.095223 = phi i64 [ 0, %.lr.ph225 ], [ %i.gk, %bb.bn ] ; 10 uses
  %.0185222 = phi i64 [ 0, %.lr.ph225 ], [ %.2, %bb.bn ] ; 6 uses
  %i.cg = load ptr, ptr %8, align 8, !tbaa !101
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102 ; 2 uses
  %.not.i134 = icmp eq ptr %i.ch, null
  br i1 %.not.i134, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit135, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.095223
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit135

_ZNK6duckdb15SelectionVector9get_indexEm.exit135: ; preds = %bb.ao, %bb.an
  %i.cl = phi i64 [ %i.ck, %bb.ao ], [ %.095223, %bb.an ] ; 3 uses
  %i.cm = load ptr, ptr %i.ca, align 8, !tbaa !103 ; 2 uses
  %.not.i136 = icmp eq ptr %i.cm, null
  br i1 %.not.i136, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit135
  %i.cn = lshr i64 %i.cl, 6
  %i.co = and i64 %i.cl, 63
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !104
  %i.cr = shl nuw i64 1, %i.co
  %i.cs = and i64 %i.cq, %i.cr
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %bb.ar, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit135, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.cl ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !218 ; 2 uses
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !221
  %i.cx = load ptr, ptr %9, align 8, !tbaa !101
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !102 ; 2 uses
  %.not.i139 = icmp eq ptr %i.cy, null
  br i1 %.not.i139, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit140, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.095223
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit140

bb.aq:                                            ; preds = %bb.as
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.ar:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138
  %i.dd = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i141 = icmp eq ptr %i.dd, null
  br i1 %.not.i141, label %bb.as, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.as:                                            ; preds = %bb.ar
  %i.de = load i64, ptr %i.cb, align 8, !tbaa !118
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.de)
          to label %.noexc142 unwind label %bb.aq

.noexc142:                                        ; preds = %bb.as
  %.pre.i = load ptr, ptr %i.bz, align 8, !tbaa !103
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ar, %.noexc142
  %i.df = phi ptr [ %.pre.i, %.noexc142 ], [ %i.dd, %bb.ar ]
  %i.dg = lshr i64 %.095223, 6
  %i.dh = and i64 %.095223, 63
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = xor i64 %i.di, -1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !104
  %i.dm = and i64 %i.dl, %i.dj
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !104
  br label %bb.bn

_ZNK6duckdb15SelectionVector9get_indexEm.exit140: ; preds = %bb.ap, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread
  %i.dn = phi i64 [ %i.db, %bb.ap ], [ %.095223, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread ] ; 3 uses
  %i.do = load ptr, ptr %i.cc, align 8, !tbaa !103 ; 2 uses
  %.not.i143 = icmp eq ptr %i.do, null
  br i1 %.not.i143, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit140
  %i.dp = lshr i64 %i.dn, 6
  %i.dq = and i64 %i.dn, 63
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !104
  %i.dt = shl nuw i64 1, %i.dq
  %i.du = and i64 %i.ds, %i.dt
  %.not198 = icmp eq i64 %i.du, 0
  br i1 %.not198, label %bb.au, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit140, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.dn ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !218
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !221
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.095223 ; 3 uses
  store i64 %.0185222, ptr %i.dz, align 8, !tbaa !221
  %.not230 = icmp eq i64 %i.cv, 0
  br i1 %.not230, label %._crit_edge220, label %.lr.ph219

bb.at:                                            ; preds = %bb.av
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.au:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i146 = icmp eq ptr %i.eb, null
  br i1 %.not.i146, label %bb.av, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit149

bb.av:                                            ; preds = %bb.au
  %i.ec = load i64, ptr %i.cb, align 8, !tbaa !118
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.ec)
          to label %.noexc148 unwind label %bb.at

.noexc148:                                        ; preds = %bb.av
  %.pre.i147 = load ptr, ptr %i.bz, align 8, !tbaa !103
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit149

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit149: ; preds = %bb.au, %.noexc148
  %i.ed = phi ptr [ %.pre.i147, %.noexc148 ], [ %i.eb, %bb.au ]
  %i.ee = lshr i64 %.095223, 6
  %i.ef = and i64 %.095223, 63
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = xor i64 %i.eg, -1
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !104
  %i.ek = and i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !104
  br label %bb.bn

._crit_edge220.loopexit:                          ; preds = %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere18SetSelectionVectorERNS_15SelectionVectorERNS_12ValidityMaskES5_RNS_6VectorEmRmmmm.exit
  %.pre.a = load i64, ptr %i.dz, align 8, !tbaa !221
  br label %._crit_edge220

._crit_edge220:                                   ; preds = %._crit_edge220.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread
  %i.el = phi i64 [ %.0185222, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread ], [ %.pre.a, %._crit_edge220.loopexit ]
  %.1186.lcssa = phi i64 [ %.0185222, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread ], [ %.3, %._crit_edge220.loopexit ] ; 2 uses
  %i.em = sub i64 %.1186.lcssa, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !218
  br label %bb.bn

.lr.ph219:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread, %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere18SetSelectionVectorERNS_15SelectionVectorERNS_12ValidityMaskES5_RNS_6VectorEmRmmmm.exit
  %.071218 = phi i64 [ %i.gi, %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere18SetSelectionVectorERNS_15SelectionVectorERNS_12ValidityMaskES5_RNS_6VectorEmRmmmm.exit ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread ] ; 4 uses
  %.1186217 = phi i64 [ %.3, %_ZN6duckdb12_GLOBAL__N_123SetSelectionVectorWhere18SetSelectionVectorERNS_15SelectionVectorERNS_12ValidityMaskES5_RNS_6VectorEmRmmmm.exit ], [ %.0185222, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit145.thread ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
end_hunk_0
begin_hunk_1_@_ZN6duckdb13ListSelectFun11GetFunctionEv:._crit_edge.i.i
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ag = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !19  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !15
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #24
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ak) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  %i.al = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.q:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.s:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit58

bb.t:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.u:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.au, %bb.w ], [ %i.at, %bb.v ]
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !24  ; 2 uses
  %.not.i40 = icmp eq ptr %i.av, null
  br i1 %.not.i40, label %_ZNSt14_Function_baseD2Ev.exit41, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit41 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit41:                 ; preds = %bb.x, %bb.y
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit41, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit41 ], [ %i.as, %bb.u ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.ar, %bb.t ]
  %i.az = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.n
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  br label %.body

.body:                                            ; preds = %.body49.thread, %bb.h, %.body49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.t, %.body49 ], [ %i.t, %bb.h ], [ %i.w, %.body49.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bb) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  br label %.loopexit58

.loopexit58:                                      ; preds = %.body, %bb.s
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %.pn.pn.pn.pn.pn, %.body ]
  %i.bc = phi i1 [ false, %bb.s ], [ true, %.body ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit58, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.loopexit58 ], [ %i.ap, %bb.r ]
  %.1 = phi i1 [ %i.bc, %.loopexit58 ], [ false, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.q
  %.020 = phi ptr [ %i.d, %bb.ac ], [ %2, %bb.q ]
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ac ], [ %i.ao, %bb.q ]
  %.2 = phi i1 [ %.1, %bb.ac ], [ false, %bb.q ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.p
  %.121 = phi ptr [ %.020, %bb.ad ], [ %2, %bb.p ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ad ], [ %i.an, %bb.p ]
  %.3 = phi i1 [ %.2, %bb.ad ], [ false, %bb.p ]
  %i.bd = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.bd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bf = icmp eq ptr %2, %.121
  %or.cond = select i1 %.3, i1 true, i1 %i.bf
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %.preheader
  %i.bg = phi ptr [ %i.bh, %.preheader ], [ %.121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24 ; 3 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #20
  %i.bi = icmp eq ptr %i.bh, %2
  br i1 %i.bi, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118ListSelectFunctionINS0_24SetSelectionVectorSelectEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %6 = alloca %"class.duckdb::Vector", align 8    ; 2 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  %8 = alloca %"struct.duckdb::ValidityMask", align 8 ; 15 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.d unwind label %bb.l       ; 3 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %bb.h unwind label %bb.p       ; 3 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.not211 = icmp eq i64 %i.d, 0                  ; 2 uses
  br i1 %.not211, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.r

._crit_edge:                                      ; preds = %bb.w, %bb.i
  %.0175.lcssa = phi i64 [ 0, %bb.i ], [ %.1176, %bb.w ] ; 3 uses
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.0175.lcssa)
          to label %bb.x unwind label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.k:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.l:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.m:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.n:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.o:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.p:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.q:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.r:                                             ; preds = %.lr.ph, %bb.w
  %.095199 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %bb.w ] ; 5 uses
  %.0175198.a = phi i64 [ 0, %.lr.ph ], [ %.1176, %bb.w ] ; 3 uses
  %12 = load ptr, ptr %5, align 8, !tbaa !101
  %i.y = load ptr, ptr %12, align 8, !tbaa !102   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.095199
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = zext i32 %i.aa to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.s, %bb.r
  %i.ac = phi i64 [ %i.ab, %bb.s ], [ %.095199, %bb.r ] ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !101
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102 ; 2 uses
  %.not.i119 = icmp eq ptr %i.ae, null
  br i1 %.not.i119, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit120, label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.095199
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = zext i32 %i.ag to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit120

_ZNK6duckdb15SelectionVector9get_indexEm.exit120: ; preds = %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ai = phi i64 [ %i.ah, %bb.t ], [ %.095199, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !103 ; 2 uses
  %.not.i121 = icmp eq ptr %i.aj, null
  br i1 %.not.i121, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit120
  %i.ak = lshr i64 %i.ac, 6
  %i.al = and i64 %i.ac, 63
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 8, !tbaa !104
  %i.ao = shl nuw i64 1, %i.al
  %i.ap = and i64 %i.an, %i.ao
  %.not185 = icmp eq i64 %i.ap, 0
  br i1 %.not185, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit120, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !103 ; 2 uses
  %.not.i122 = icmp eq ptr %i.aq, null
  br i1 %.not.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ar = lshr i64 %i.ai, 6
  %i.as = and i64 %i.ai, 63
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.au = load i64, ptr %i.at, align 8, !tbaa !104
  %i.av = shl nuw i64 1, %i.as
  %i.aw = and i64 %i.au, %i.av
  %.not186 = icmp eq i64 %i.aw, 0
  br i1 %.not186, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ai
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !218
  %i.ba = add i64 %i.az, %.0175198.a
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #20
  br label %bb.w

bb.v:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.w:                                             ; preds = %bb.u, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.1176 = phi i64 [ %i.ba, %bb.u ], [ %.0175198.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit124 ], [ %.0175198.a, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.bc = add nuw i64 %.095199, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !364

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0175.lcssa)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bd) #20
  br label %.body

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 24, i1 false)
  store i64 %.0175.lcssa, ptr %i.bf, align 8, !tbaa !118
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  br i1 %.not211, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.ad

._crit_edge209:                                   ; preds = %bb.bc, %bb.aa
  %.0173.lcssa = phi i64 [ 0, %bb.aa ], [ %.2, %bb.bc ] ; 3 uses
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0173.lcssa)
          to label %bb.bd unwind label %bb.dd

bb.ab:                                            ; preds = %._crit_edge
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.ac:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.ad:                                            ; preds = %.lr.ph208, %bb.bc
  %.094206 = phi i64 [ 0, %.lr.ph208 ], [ %i.fj, %bb.bc ] ; 10 uses
  %.0173205 = phi i64 [ 0, %.lr.ph208 ], [ %.2, %bb.bc ] ; 6 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !101
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !102 ; 2 uses
  %.not.i126 = icmp eq ptr %i.bo, null
  br i1 %.not.i126, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit127, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.094206
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit127

_ZNK6duckdb15SelectionVector9get_indexEm.exit127: ; preds = %bb.ae, %bb.ad
  %i.bs = phi i64 [ %i.br, %bb.ae ], [ %.094206, %bb.ad ] ; 3 uses
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !103 ; 2 uses
  %.not.i128 = icmp eq ptr %i.bt, null
  br i1 %.not.i128, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit127
  %i.bu = lshr i64 %i.bs, 6
  %i.bv = and i64 %i.bs, 63
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !104
  %i.by = shl nuw i64 1, %i.bv
  %i.bz = and i64 %i.bx, %i.by
  %.not = icmp eq i64 %i.bz, 0
  br i1 %.not, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit127, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.bs ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !218 ; 2 uses
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !221
  %i.ce = load ptr, ptr %5, align 8, !tbaa !101
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102 ; 2 uses
  %.not.i131 = icmp eq ptr %i.cf, null
  br i1 %.not.i131, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit132, label %bb.af

bb.af:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.094206
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit132

bb.ag:                                            ; preds = %bb.ai
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !103 ; 2 uses
  %.not.i133 = icmp eq ptr %i.ck, null
  br i1 %.not.i133, label %bb.ai, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load i64, ptr %i.bi, align 8, !tbaa !118
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %bb.ai
  %.pre.i = load ptr, ptr %i.bg, align 8, !tbaa !103
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ah, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ah ]
  %i.cn = lshr i64 %.094206, 6
  %i.co = and i64 %.094206, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !104
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !104
  br label %bb.bc

_ZNK6duckdb15SelectionVector9get_indexEm.exit132: ; preds = %bb.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread
  %i.cu = phi i64 [ %i.ci, %bb.af ], [ %.094206, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit130.thread ] ; 3 uses
  %i.cv = load ptr, ptr %i.bj, align 8, !tbaa !103 ; 2 uses
  %.not.i134 = icmp eq ptr %i.cv, null
  br i1 %.not.i134, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit132
  %i.cw = lshr i64 %i.cu, 6
  %i.cx = and i64 %i.cu, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !104
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not184 = icmp eq i64 %i.db, 0
  br i1 %.not184, label %bb.ak, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit132, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.cu ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !218
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !221
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.094206 ; 3 uses
  store i64 %.0173205, ptr %i.dg, align 8, !tbaa !221
  %.not213 = icmp eq i64 %i.cc, 0
  br i1 %.not213, label %._crit_edge203, label %.lr.ph202

.lr.ph202:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread
  %i.dh = add i64 %i.df, -1
  br label %bb.am

bb.aj:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body143

bb.ak:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136
  %i.dj = load ptr, ptr %i.bg, align 8, !tbaa !103 ; 2 uses
  %.not.i137 = icmp eq ptr %i.dj, null
  br i1 %.not.i137, label %bb.al, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140

bb.al:                                            ; preds = %bb.ak
  %i.dk = load i64, ptr %i.bi, align 8, !tbaa !118
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 noundef %i.dk)
          to label %.noexc139 unwind label %bb.aj

.noexc139:                                        ; preds = %bb.al
  %.pre.i138 = load ptr, ptr %i.bg, align 8, !tbaa !103
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit140: ; preds = %bb.ak, %.noexc139
  %i.dl = phi ptr [ %.pre.i138, %.noexc139 ], [ %i.dj, %bb.ak ]
  %i.dm = lshr i64 %.094206, 6
  %i.dn = and i64 %.094206, 63
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = xor i64 %i.do, -1
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !104
  %i.ds = and i64 %i.dr, %i.dp
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !104
  br label %bb.bc

._crit_edge203.loopexit:                          ; preds = %bb.ba
  %.pre.a = load i64, ptr %i.dg, align 8, !tbaa !221
  br label %._crit_edge203

._crit_edge203:                                   ; preds = %._crit_edge203.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread
  %i.dt = phi i64 [ %.0173205, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread ], [ %.pre.a, %._crit_edge203.loopexit ]
  %.1174.lcssa = phi i64 [ %.0173205, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit136.thread ], [ %i.fg, %._crit_edge203.loopexit ] ; 2 uses
  %i.du = sub i64 %.1174.lcssa, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !218
  br label %bb.bc

end_hunk_1
