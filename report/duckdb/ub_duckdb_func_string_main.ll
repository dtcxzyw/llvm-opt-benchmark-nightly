inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb9StrlenFun11GetFunctionEv:._crit_edge.i.i
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  %i.v = load ptr, ptr %2, align 8, !tbaa !18     ; 3 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.v, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #28
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #32
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.z = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.z) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.thread:                                          ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !27  ; 2 uses
  %.not.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i12, label %_ZNSt14_Function_baseD2Ev.exit13, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.pn34 = phi { ptr, i32 } [ %i.ad, %.thread ], [ %i.ae, %bb.m ]
  %i.af = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.m ]
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit13 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit13:                 ; preds = %bb.m, %bb.n
  %.pn35 = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %.pn34, %bb.n ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit13, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt14_Function_baseD2Ev.exit13 ], [ %i.ac, %bb.l ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
  br label %.body

.body:                                            ; preds = %.body18.thread, %.body18, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.n, %.body18.thread ], [ %i.k, %.body18 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.aj = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.aj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb14ScalarFunction13UnaryFunctionINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30   ; 20 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !44
  switch i8 %i.d, label %bb.t [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8
  %i.m = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  store i64 %i.m, ptr %i.f, align 8, !tbaa !69
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68, !noalias !458 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check66 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check66, label %.lr.ph17.i.i.i.preheader97, label %vector.ph67

.lr.ph17.i.i.i.preheader97:                       ; preds = %vector.body70, %.lr.ph17.i.i.i.preheader
  %.05916.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec69, %vector.body70 ]
  br label %.lr.ph17.i.i.i

vector.ph67:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.mod.vf68 = and i64 %i.c, 3                   ; 2 uses
  %i.t = icmp eq i64 %n.mod.vf68, 0
  %i.u = select i1 %i.t, i64 4, i64 %n.mod.vf68
  %n.vec69 = sub i64 %i.c, %i.u                   ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %index71
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %index71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %wide.vec72 = load <4 x i64>, ptr %i.v, align 8, !alias.scope !453, !noalias !456
  %strided.vec73 = shufflevector <4 x i64> %wide.vec72, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec74 = load <4 x i64>, ptr %i.x, align 8, !alias.scope !453, !noalias !456
  %strided.vec75 = shufflevector <4 x i64> %wide.vec74, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.y = and <2 x i64> %strided.vec73, splat (i64 4294967295)
  %i.z = and <2 x i64> %strided.vec75, splat (i64 4294967295)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index71 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %i.y, ptr %i.aa, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  store <2 x i64> %i.z, ptr %i.ab, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.ac, label %.lr.ph17.i.i.i.preheader97, label %vector.body70, !llvm.loop !459

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.s, ptr %i.ad, align 8, !tbaa !68, !noalias !458
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = icmp eq ptr %2, %i.a
  br i1 %i.af, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76, !noalias !458 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !23, !noalias !458
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !458
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !458
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !458
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !458 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !76, !noalias !458 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !23, !noalias !458
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !458 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !77, !noalias !458
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !79, !noalias !458
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !80, !noalias !458
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !458
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !noalias !458, !inline_history !460
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !80, !noalias !458
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !458
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !noalias !458, !inline_history !460
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !458
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3, !noalias !458
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4, !noalias !458
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !83

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !noalias !458
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !84, !noalias !458
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !84, !noalias !458
  %i.bj = add i64 %i.c, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !68, !noalias !458 ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i60.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05813.us.i.i.i = phi i64 [ %i.cg, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bm = add i64 %.014.us.i.i.i, 64
  %i.bn = tail call noundef i64 @llvm.umin.i64(i64 %i.bm, i64 %i.c) ; 4 uses
  %i.bo = icmp ult i64 %.014.us.i.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bp = sub nuw i64 %i.bn, %.014.us.i.i.i       ; 3 uses
  %min.iters.check52 = icmp ult i64 %i.bp, 5
  br i1 %min.iters.check52, label %.lr.ph.us.i.i.i.preheader98, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.mod.vf54 = and i64 %i.bp, 3                  ; 2 uses
  %i.bq = icmp eq i64 %n.mod.vf54, 0
  %i.br = select i1 %i.bq, i64 4, i64 %n.mod.vf54
  %n.vec55 = sub i64 %i.bp, %i.br                 ; 2 uses
  %i.bs = add i64 %.014.us.i.i.i, %n.vec55
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph53
  %index57 = phi i64 [ 0, %vector.ph53 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.bt = add nuw i64 %.014.us.i.i.i, %index57    ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.bt
  %i.bv = getelementptr [16 x i8], ptr %i.q, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %wide.vec58 = load <4 x i64>, ptr %i.bu, align 8, !alias.scope !453, !noalias !456
  %strided.vec59 = shufflevector <4 x i64> %wide.vec58, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec60 = load <4 x i64>, ptr %i.bw, align 8, !alias.scope !453, !noalias !456
  %strided.vec61 = shufflevector <4 x i64> %wide.vec60, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bx = and <2 x i64> %strided.vec59, splat (i64 4294967295)
  %i.by = and <2 x i64> %strided.vec61, splat (i64 4294967295)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bt ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x i64> %i.bx, ptr %i.bz, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  store <2 x i64> %i.by, ptr %i.ca, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %index.next62 = add nuw i64 %index57, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.cb, label %.lr.ph.us.i.i.i.preheader98, label %vector.body56, !llvm.loop !461

.lr.ph.us.i.i.i.preheader98:                      ; preds = %vector.body56, %.lr.ph.us.i.i.i.preheader
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bs, %vector.body56 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader98, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cf, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader98 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.19.us.i.i.i
  %.sroa.08.0.copyload.us.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !453, !noalias !456
  %i.cd = and i64 %.sroa.08.0.copyload.us.i.i.i, 4294967295
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.19.us.i.i.i
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %i.cf = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cf, %i.bn
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !462

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bn, %.lr.ph.us.i.i.i ]
  %i.cg = add nuw nsw i64 %.05813.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cg, %i.bk
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !463

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05813.i.i.i = phi i64 [ %i.dz, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.05813.i.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !69, !noalias !458 ; 4 uses
  %i.cj = add i64 %.014.i.i.i, 64
  %i.ck = tail call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 %i.c) ; 11 uses
  switch i64 %i.ci, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cl = icmp ult i64 %.014.i.i.i, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cm = sub nuw i64 %i.ck, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cm, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader100, label %vector.ph

.lr.ph.i.i.i.preheader100:                        ; preds = %vector.body, %.lr.ph.i.i.i.preheader
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cp, %vector.body ]
  br label %.lr.ph.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.mod.vf = and i64 %i.cm, 3                    ; 2 uses
  %i.cn = icmp eq i64 %n.mod.vf, 0
  %i.co = select i1 %i.cn, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.cm, %i.co                   ; 2 uses
  %i.cp = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = add nuw i64 %.014.i.i.i, %index         ; 3 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.cq
  %i.cs = getelementptr [16 x i8], ptr %i.q, i64 %i.cq
  %i.ct = getelementptr i8, ptr %i.cs, i64 32
  %wide.vec = load <4 x i64>, ptr %i.cr, align 8, !alias.scope !453, !noalias !456
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec49 = load <4 x i64>, ptr %i.ct, align 8, !alias.scope !453, !noalias !456
  %strided.vec50 = shufflevector <4 x i64> %wide.vec49, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cu = and <2 x i64> %strided.vec, splat (i64 4294967295)
  %i.cv = and <2 x i64> %strided.vec50, splat (i64 4294967295)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cq ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x i64> %i.cu, ptr %i.cw, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  store <2 x i64> %i.cv, ptr %i.cx, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %.lr.ph.i.i.i.preheader100, label %vector.body, !llvm.loop !464

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cz = icmp ult i64 %.014.i.i.i, %i.ck
  br i1 %i.cz, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.da = sub nuw i64 %i.ck, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.da, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.db = and i64 %i.ci, 1
  %.not.i.i.i.prol = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.dc, align 8, !alias.scope !453, !noalias !456
  %i.dd = and i64 %.sroa.05.0.copyload.i.i.i.prol, 4294967295
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.014.i.i.i
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.df = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.df, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dg = icmp eq i64 %i.ck, %.neg
  br i1 %i.dg, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader100, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader100 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.19.i.i.i
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.dh, align 8, !alias.scope !453, !noalias !456
  %i.di = and i64 %.sroa.08.0.copyload.i.i.i, 4294967295
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.19.i.i.i
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %i.dk = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dk, %i.ck
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !465

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.dy, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dl = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.ci
  %.not.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !453, !noalias !456
  %i.dp = and i64 %.sroa.05.0.copyload.i.i.i, 4294967295
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.210.i.i.i
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dr = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.ds = sub nuw i64 %i.dr, %.014.i.i.i
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dt, %i.ci
  %.not.i.i.i.1 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.dr
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.dv, align 8, !alias.scope !453, !noalias !456
  %i.dw = and i64 %.sroa.05.0.copyload.i.i.i.1, 4294967295
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dr
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.dy = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.dy, %i.ck
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !466

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.ck, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.ck, %.lr.ph11.i.i.i.prol.loopexit ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.ck, %bb.s ], [ %i.ck, %.lr.ph.i.i.i ]
  %i.dz = add nuw nsw i64 %.05813.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.dz, %i.bk
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !463

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader97, %.lr.ph17.i.i.i
  %.05916.i.i.i = phi i64 [ %i.ed, %.lr.ph17.i.i.i ], [ %.05916.i.i.i.ph, %.lr.ph17.i.i.i.preheader97 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.05916.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !453, !noalias !456
  %i.eb = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05916.i.i.i
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !69, !alias.scope !456, !noalias !453
  %i.ed = add nuw i64 %.05916.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.ed, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114StrLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !467

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !67 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !89 ; 8 uses
  %i.ei = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !68, !noalias !475
  %.not.i.i60.i.i = icmp eq ptr %i.el, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !107, !alias.scope !473, !noalias !476 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.em, null
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.ff, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.eo = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ep = and i64 %.03.us.i.i.i, 63
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !68, !noalias !475
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  %i.es = load i64, ptr %i.er, align 8, !tbaa !69, !noalias !475
  %i.et = shl nuw i64 1, %i.ep                    ; 2 uses
  %i.eu = and i64 %i.es, %i.et
  %.not.us.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.ev, align 8, !alias.scope !468, !noalias !477
  %i.ew = and i64 %.sroa.06.0.copyload.us.i.i.i, 4294967295
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.03.us.i.i.i
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.ey = load ptr, ptr %i.ej, align 8, !tbaa !68, !noalias !475 ; 2 uses
  %.not.i32.us.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i32.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ez = load i64, ptr %i.en, align 8, !tbaa !84, !noalias !475
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef %i.ez)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  %.pre.i.us.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !68, !noalias !475
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.aa
  %i.fa = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.ey, %bb.aa ]
  %i.fb = xor i64 %i.et, -1
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.eo ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !69, !noalias !475
  %i.fe = and i64 %i.fd, %i.fb
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !69, !noalias !475
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i, %bb.z
  %i.ff = add nuw i64 %.03.us.i.i.i, 1            ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.ff, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, !llvm.loop !479

.preheader.i64.i.i:                               ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i64.i.i
  %i.fg = load ptr, ptr %i.ei, align 8, !tbaa !107, !alias.scope !473, !noalias !476 ; 4 uses
  %.not.i33.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i33.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter103 = and i64 %i.c, 1
  %i.fh = icmp eq i64 %i.c, 1
  br i1 %i.fh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %min.iters.check80 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check80, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93, label %vector.ph81

vector.ph81:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader
  %n.mod.vf82 = and i64 %i.c, 3                   ; 2 uses
  %i.fi = icmp eq i64 %n.mod.vf82, 0
  %i.fj = select i1 %i.fi, i64 4, i64 %n.mod.vf82
  %n.vec83 = sub i64 %i.c, %i.fj                  ; 2 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph81
  %index85 = phi i64 [ 0, %vector.ph81 ], [ %index.next90, %vector.body84 ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %index85
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %index85
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %wide.vec86 = load <4 x i64>, ptr %i.fk, align 8, !alias.scope !468, !noalias !477
  %strided.vec87 = shufflevector <4 x i64> %wide.vec86, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec88 = load <4 x i64>, ptr %i.fm, align 8, !alias.scope !468, !noalias !477
  %strided.vec89 = shufflevector <4 x i64> %wide.vec88, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fn = and <2 x i64> %strided.vec87, splat (i64 4294967295)
  %i.fo = and <2 x i64> %strided.vec89, splat (i64 4294967295)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index85 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <2 x i64> %i.fn, ptr %i.fp, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  store <2 x i64> %i.fo, ptr %i.fq, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  %index.next90 = add nuw i64 %index85, 4         ; 2 uses
  %i.fr = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.fr, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93, label %vector.body84, !llvm.loop !480

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93: ; preds = %vector.body84, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader
  %.0304.us.i.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader ], [ %n.vec83, %vector.body84 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i
  %.0304.us.i.i.i = phi i64 [ %i.fv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i ], [ %.0304.us.i.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.0304.us.i.i.i
  %.sroa.0.0.copyload.us.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !468, !noalias !477
  %i.ft = and i64 %.sroa.0.0.copyload.us.i.i.i, 4294967295
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0304.us.i.i.i
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  %i.fv = add nuw i64 %.0304.us.i.i.i, 1          ; 2 uses
  %exitcond13.not.i.i.i = icmp eq i64 %i.fv, %i.c
  br i1 %exitcond13.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, !llvm.loop !481

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ag
  %.03.i.i.i = phi i64 [ %i.gt, %bb.ag ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.03.i.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !475
  %i.fy = zext i32 %i.fx to i64                   ; 3 uses
  %i.fz = lshr i64 %i.fy, 6
  %i.ga = and i64 %i.fy, 63
  %i.gb = load ptr, ptr %i.ek, align 8, !tbaa !68, !noalias !475
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fz
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !69, !noalias !475
  %i.ge = shl nuw i64 1, %i.ga
  %i.gf = and i64 %i.ge, %i.gd
  %.not.i62.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i62.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.fy
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.gg, align 8, !alias.scope !468, !noalias !477
  %i.gh = and i64 %.sroa.06.0.copyload.i.i.i, 4294967295
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.03.i.i.i
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !68, !noalias !475 ; 2 uses
  %.not.i32.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i32.i.i.i, label %bb.af, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gk = load i64, ptr %i.en, align 8, !tbaa !84, !noalias !475
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef %i.gk)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc66.i.i:                                     ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !68, !noalias !475
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i: ; preds = %.noexc66.i.i, %bb.ae
  %i.gl = phi ptr [ %.pre.i.i.i.i, %.noexc66.i.i ], [ %i.gj, %bb.ae ]
  %i.gm = lshr i64 %.03.i.i.i, 6
  %i.gn = and i64 %.03.i.i.i, 63
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = xor i64 %i.go, -1
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gm ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !69, !noalias !475
  %i.gs = and i64 %i.gr, %i.gp
  store i64 %i.gs, ptr %i.gq, align 8, !tbaa !69, !noalias !475
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i, %bb.ad
  %i.gt = add nuw i64 %.03.i.i.i, 1               ; 2 uses
  %exitcond.not.i63.i.i = icmp eq i64 %i.gt, %i.c
  br i1 %exitcond.not.i63.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, !llvm.loop !479

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new
  %.0304.i.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new ], [ %i.hh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.0304.i.i.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !475
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.gw
  %.sroa.0.0.copyload.i65.i.i = load i64, ptr %i.gx, align 8, !alias.scope !468, !noalias !477
  %i.gy = and i64 %.sroa.0.0.copyload.i65.i.i, 4294967295
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0304.i.i.i
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  %i.ha = or disjoint i64 %.0304.i.i.i, 1         ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3, !noalias !475
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.hd
  %.sroa.0.0.copyload.i65.i.i.1 = load i64, ptr %i.he, align 8, !alias.scope !468, !noalias !477
  %i.hf = and i64 %.sroa.0.0.copyload.i65.i.i.1, 4294967295
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ha
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  %i.hh = add nuw i64 %.0304.i.i.i, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, !llvm.loop !482

_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader: ; preds = %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader
  %.0304.i.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader ], [ %i.hh, %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa ] ; 2 uses
  %lcmp.mod105 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod105)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.0304.i.i.i.epil.init
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3, !noalias !475
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.hk
  %.sroa.0.0.copyload.i65.i.i.epil = load i64, ptr %i.hl, align 8, !alias.scope !468, !noalias !477
  %i.hm = and i64 %.sroa.0.0.copyload.i65.i.i.epil, 4294967295
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.0304.i.i.i.epil.init
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !69, !alias.scope !471, !noalias !478
  br label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i

_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i: ; preds = %bb.ag, %bb.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader, %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, %.preheader.i64.i.i, %.preheader1.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.hr = load atomic i64, ptr %i.hq acquire, align 8 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 4294967297
  %i.ht = trunc i64 %i.hr to i32                  ; 2 uses
  br i1 %i.hs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.hq, align 8, !tbaa !77
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i32 0, ptr %i.hu, align 4, !tbaa !79
  %i.hv = load ptr, ptr %i.hp, align 8, !tbaa !80
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #28, !inline_history !483
  %i.hy = load ptr, ptr %i.hp, align 8, !tbaa !80
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #28, !inline_history !483
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i67.i.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i.i.i.i.i.i67.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ic = add nsw i32 %i.ht, -1
  store i32 %i.ic, ptr %i.hq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.id = atomicrmw volatile add ptr %i.hq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ht, %bb.ak ], [ %i.id, %bb.al ]
  %i.ie = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ie, label %bb.am, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, !prof !83

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i:       ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ai, %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114StrLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 4 uses
  %i.ii = load atomic i64, ptr %i.ih acquire, align 8 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 4294967297
  %i.ik = trunc i64 %i.ii to i32                  ; 2 uses
  br i1 %i.ij, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ih, align 8, !tbaa !77
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store i32 0, ptr %i.il, align 4, !tbaa !79
  %i.im = load ptr, ptr %i.ig, align 8, !tbaa !80
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #28, !inline_history !484
  %i.ip = load ptr, ptr %i.ig, align 8, !tbaa !80
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ig) #28, !inline_history !484
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i

bb.ap:                                            ; preds = %bb.an
end_hunk_0
begin_hunk_1_@_ZN6duckdb12BitLengthFun12GetFunctionsEv:._crit_edge.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.az ], [ %i.eo, %bb.aw ]
  %i.er = load ptr, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %.not.i70 = icmp eq ptr %i.er, null
  br i1 %.not.i70, label %_ZNSt14_Function_baseD2Ev.exit71, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.es = invoke noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit71 unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit71:                 ; preds = %bb.ba, %bb.bb
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit71, %bb.av
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZNSt14_Function_baseD2Ev.exit71 ], [ %i.en, %bb.av ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %.body

.body:                                            ; preds = %.body77.thread, %bb.f, %.body77, %bb.bd
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %bb.bd ], [ %i.m, %.body77 ], [ %i.m, %bb.f ], [ %i.p, %.body77.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  br label %.loopexit97

.loopexit97:                                      ; preds = %.body, %bb.au
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.em, %bb.au ], [ %.pn20.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.bo

bb.be:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bf:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i88
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bg:                                            ; preds = %bb.ac
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bh:                                            ; preds = %bb.ad
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.ah, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %8) #28
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn26 = phi { ptr, i32 } [ %i.ez, %bb.bi ], [ %i.ey, %bb.bh ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #28
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.bj ], [ %i.ex, %bb.bg ]
  %i.fa = load ptr, ptr %i.cg, align 8, !tbaa !27 ; 2 uses
  %.not.i72 = icmp eq ptr %i.fa, null
  br i1 %.not.i72, label %_ZNSt14_Function_baseD2Ev.exit73, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fb = invoke noundef zeroext i1 %i.fa(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit73 unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit73:                 ; preds = %bb.bk, %bb.bl
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #28
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit73, %bb.bf
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZNSt14_Function_baseD2Ev.exit73 ], [ %i.ew, %bb.bf ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #28
  br label %.body40

.body40:                                          ; preds = %.body91.thread, %bb.ab, %.body91, %bb.bn
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.bn ], [ %i.cc, %.body91 ], [ %i.cc, %bb.ab ], [ %i.cf, %.body91.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #28
  br label %.loopexit

.loopexit:                                        ; preds = %.body40, %bb.be
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.be ], [ %.pn26.pn.pn.pn, %.body40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit, %.loopexit97
  %.pn26.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn, %.loopexit ], [ %.pn20.pn.pn.pn.pn, %.loopexit97 ]
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.bo
  %.pn26.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn.pn, %bb.bo ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.ej, %bb.at ]
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb14ScalarFunction13UnaryFunctionINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30   ; 20 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !44
  switch i8 %i.d, label %bb.t [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8
  %i.m = shl i64 %.sroa.0.0.copyload.i.i, 3
  %i.n = and i64 %i.m, 34359738360
  store i64 %i.n, ptr %i.f, align 8, !tbaa !69
  br label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68, !noalias !490 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check66 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check66, label %.lr.ph17.i.i.i.preheader97, label %vector.ph67

.lr.ph17.i.i.i.preheader97:                       ; preds = %vector.body70, %.lr.ph17.i.i.i.preheader
  %.05916.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec69, %vector.body70 ]
  br label %.lr.ph17.i.i.i

vector.ph67:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.mod.vf68 = and i64 %i.c, 3                   ; 2 uses
  %i.u = icmp eq i64 %n.mod.vf68, 0
  %i.v = select i1 %i.u, i64 4, i64 %n.mod.vf68
  %n.vec69 = sub i64 %i.c, %i.v                   ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %index71
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %index71
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %wide.vec72 = load <4 x i64>, ptr %i.w, align 8, !alias.scope !485, !noalias !488
  %strided.vec73 = shufflevector <4 x i64> %wide.vec72, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec74 = load <4 x i64>, ptr %i.y, align 8, !alias.scope !485, !noalias !488
  %strided.vec75 = shufflevector <4 x i64> %wide.vec74, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.z = shl <2 x i64> %strided.vec73, splat (i64 3)
  %i.aa = shl <2 x i64> %strided.vec75, splat (i64 3)
  %i.ab = and <2 x i64> %i.z, splat (i64 34359738360)
  %i.ac = and <2 x i64> %i.aa, splat (i64 34359738360)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index71 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %i.ab, ptr %i.ad, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  store <2 x i64> %i.ac, ptr %i.ae, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.af, label %.lr.ph17.i.i.i.preheader97, label %vector.body70, !llvm.loop !491

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.ag, align 8, !tbaa !68, !noalias !490
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = icmp eq ptr %2, %i.a
  br i1 %i.ai, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76, !noalias !490 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !23, !noalias !490
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !490
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !490
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3, !noalias !490
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4, !noalias !490 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76, !noalias !490 ; 8 uses
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !23, !noalias !490
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !490 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8, !tbaa !77, !noalias !490
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !79, !noalias !490
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !80, !noalias !490
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !490
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #28, !noalias !490, !inline_history !492
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !80, !noalias !490
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !490
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #28, !noalias !490, !inline_history !492
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !490
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3, !noalias !490
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4, !noalias !490
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.m ], [ %i.bh, %bb.n ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !83

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #28, !noalias !490
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !84, !noalias !490
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !84, !noalias !490
  %i.bm = add i64 %i.c, 63
  %i.bn = lshr i64 %i.bm, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not18.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !68, !noalias !490 ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i60.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05813.us.i.i.i = phi i64 [ %i.cm, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bp = add i64 %.014.us.i.i.i, 64
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.c) ; 4 uses
  %i.br = icmp ult i64 %.014.us.i.i.i, %i.bq
  br i1 %i.br, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bs = sub nuw i64 %i.bq, %.014.us.i.i.i       ; 3 uses
  %min.iters.check52 = icmp ult i64 %i.bs, 5
  br i1 %min.iters.check52, label %.lr.ph.us.i.i.i.preheader98, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.mod.vf54 = and i64 %i.bs, 3                  ; 2 uses
  %i.bt = icmp eq i64 %n.mod.vf54, 0
  %i.bu = select i1 %i.bt, i64 4, i64 %n.mod.vf54
  %n.vec55 = sub i64 %i.bs, %i.bu                 ; 2 uses
  %i.bv = add i64 %.014.us.i.i.i, %n.vec55
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph53
  %index57 = phi i64 [ 0, %vector.ph53 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.bw = add nuw i64 %.014.us.i.i.i, %index57    ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.bw
  %i.by = getelementptr [16 x i8], ptr %i.r, i64 %i.bw
  %i.bz = getelementptr i8, ptr %i.by, i64 32
  %wide.vec58 = load <4 x i64>, ptr %i.bx, align 8, !alias.scope !485, !noalias !488
  %strided.vec59 = shufflevector <4 x i64> %wide.vec58, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec60 = load <4 x i64>, ptr %i.bz, align 8, !alias.scope !485, !noalias !488
  %strided.vec61 = shufflevector <4 x i64> %wide.vec60, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ca = shl <2 x i64> %strided.vec59, splat (i64 3)
  %i.cb = shl <2 x i64> %strided.vec61, splat (i64 3)
  %i.cc = and <2 x i64> %i.ca, splat (i64 34359738360)
  %i.cd = and <2 x i64> %i.cb, splat (i64 34359738360)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bw ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  store <2 x i64> %i.cd, ptr %i.cf, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %index.next62 = add nuw i64 %index57, 4         ; 2 uses
  %i.cg = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.cg, label %.lr.ph.us.i.i.i.preheader98, label %vector.body56, !llvm.loop !493

.lr.ph.us.i.i.i.preheader98:                      ; preds = %vector.body56, %.lr.ph.us.i.i.i.preheader
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bv, %vector.body56 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader98, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cl, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader98 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.19.us.i.i.i
  %.sroa.08.0.copyload.us.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !485, !noalias !488
  %i.ci = shl i64 %.sroa.08.0.copyload.us.i.i.i, 3
  %i.cj = and i64 %i.ci, 34359738360
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.us.i.i.i
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %i.cl = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cl, %i.bq
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !494

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bq, %.lr.ph.us.i.i.i ]
  %i.cm = add nuw nsw i64 %.05813.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cm, %i.bn
  br i1 %exitcond28.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !495

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05813.i.i.i = phi i64 [ %i.el, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.05813.i.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !69, !noalias !490 ; 4 uses
  %i.cp = add i64 %.014.i.i.i, 64
  %i.cq = tail call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %i.c) ; 11 uses
  switch i64 %i.co, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cr = icmp ult i64 %.014.i.i.i, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.cs = sub nuw i64 %i.cq, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader100, label %vector.ph

.lr.ph.i.i.i.preheader100:                        ; preds = %vector.body, %.lr.ph.i.i.i.preheader
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cv, %vector.body ]
  br label %.lr.ph.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.mod.vf = and i64 %i.cs, 3                    ; 2 uses
  %i.ct = icmp eq i64 %n.mod.vf, 0
  %i.cu = select i1 %i.ct, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.cs, %i.cu                   ; 2 uses
  %i.cv = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = add nuw i64 %.014.i.i.i, %index         ; 3 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.cw
  %i.cy = getelementptr [16 x i8], ptr %i.r, i64 %i.cw
  %i.cz = getelementptr i8, ptr %i.cy, i64 32
  %wide.vec = load <4 x i64>, ptr %i.cx, align 8, !alias.scope !485, !noalias !488
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec49 = load <4 x i64>, ptr %i.cz, align 8, !alias.scope !485, !noalias !488
  %strided.vec50 = shufflevector <4 x i64> %wide.vec49, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.da = shl <2 x i64> %strided.vec, splat (i64 3)
  %i.db = shl <2 x i64> %strided.vec50, splat (i64 3)
  %i.dc = and <2 x i64> %i.da, splat (i64 34359738360)
  %i.dd = and <2 x i64> %i.db, splat (i64 34359738360)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cw ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x i64> %i.dc, ptr %i.de, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  store <2 x i64> %i.dd, ptr %i.df, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %.lr.ph.i.i.i.preheader100, label %vector.body, !llvm.loop !496

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dh = icmp ult i64 %.014.i.i.i, %i.cq
  br i1 %i.dh, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.di = sub nuw i64 %i.cq, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.di, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.dj = and i64 %i.co, 1
  %.not.i.i.i.prol = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.014.i.i.i
  %.sroa.05.0.copyload.i.i.i.prol = load i64, ptr %i.dk, align 8, !alias.scope !485, !noalias !488
  %i.dl = shl i64 %.sroa.05.0.copyload.i.i.i.prol, 3
  %i.dm = and i64 %i.dl, 34359738360
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.014.i.i.i
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.do = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.do, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.dp = icmp eq i64 %i.cq, %.neg
  br i1 %i.dp, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader100, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader100 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.19.i.i.i
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !485, !noalias !488
  %i.dr = shl i64 %.sroa.08.0.copyload.i.i.i, 3
  %i.ds = and i64 %i.dr, 34359738360
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.19.i.i.i
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %i.du = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.du, %i.cq
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !497

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.ek, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.dv = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.co
  %.not.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.210.i.i.i
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !485, !noalias !488
  %i.dz = shl i64 %.sroa.05.0.copyload.i.i.i, 3
  %i.ea = and i64 %i.dz, 34359738360
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.210.i.i.i
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.ec = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.ed = sub nuw i64 %i.ec, %.014.i.i.i
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.ee, %i.co
  %.not.i.i.i.1 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ec
  %.sroa.05.0.copyload.i.i.i.1 = load i64, ptr %i.eg, align 8, !alias.scope !485, !noalias !488
  %i.eh = shl i64 %.sroa.05.0.copyload.i.i.i.1, 3
  %i.ei = and i64 %i.eh, 34359738360
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ec
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.ek = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.ek, %i.cq
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !498

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cq, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cq, %.lr.ph11.i.i.i.prol.loopexit ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.cq, %bb.s ], [ %i.cq, %.lr.ph.i.i.i ]
  %i.el = add nuw nsw i64 %.05813.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.el, %i.bn
  br i1 %exitcond26.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !495

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader97, %.lr.ph17.i.i.i
  %.05916.i.i.i = phi i64 [ %i.eq, %.lr.ph17.i.i.i ], [ %.05916.i.i.i.ph, %.lr.ph17.i.i.i.preheader97 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.05916.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.em, align 8, !alias.scope !485, !noalias !488
  %i.en = shl i64 %.sroa.0.0.copyload.i.i.i, 3
  %i.eo = and i64 %i.en, 34359738360
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05916.i.i.i
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !69, !alias.scope !488, !noalias !485
  %i.eq = add nuw i64 %.05916.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.eq, %i.c
  br i1 %exitcond29.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_114BitLenOperatorEEEvRNS_6VectorES6_m.exit, label %.lr.ph17.i.i.i, !llvm.loop !499

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !67 ; 7 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !89 ; 8 uses
  %i.ev = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !68, !noalias !507
  %.not.i.i60.i.i = icmp eq ptr %i.ey, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !107, !alias.scope !505, !noalias !508 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ez, null
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.ft, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.fb = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.fc = and i64 %.03.us.i.i.i, 63
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !68, !noalias !507
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !69, !noalias !507
  %i.fg = shl nuw i64 1, %i.fc                    ; 2 uses
  %i.fh = and i64 %i.ff, %i.fg
  %.not.us.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.03.us.i.i.i
  %.sroa.06.0.copyload.us.i.i.i = load i64, ptr %i.fi, align 8, !alias.scope !500, !noalias !509
  %i.fj = shl i64 %.sroa.06.0.copyload.us.i.i.i, 3
  %i.fk = and i64 %i.fj, 34359738360
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.03.us.i.i.i
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.fm = load ptr, ptr %i.ew, align 8, !tbaa !68, !noalias !507 ; 2 uses
  %.not.i32.us.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i32.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.fn = load i64, ptr %i.fa, align 8, !tbaa !84, !noalias !507
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, i64 noundef %i.fn)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  %.pre.i.us.i.i.i = load ptr, ptr %i.ew, align 8, !tbaa !68, !noalias !507
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.aa
  %i.fo = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.fm, %bb.aa ]
  %i.fp = xor i64 %i.fg, -1
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fb ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !69, !noalias !507
  %i.fs = and i64 %i.fr, %i.fp
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !69, !noalias !507
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i, %bb.z
  %i.ft = add nuw i64 %.03.us.i.i.i, 1            ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.ft, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, !llvm.loop !511

.preheader.i64.i.i:                               ; preds = %bb.y
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i64.i.i
  %i.fu = load ptr, ptr %i.ev, align 8, !tbaa !107, !alias.scope !505, !noalias !508 ; 4 uses
  %.not.i33.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i33.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter103 = and i64 %i.c, 1
  %i.fv = icmp eq i64 %i.c, 1
  br i1 %i.fv, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %min.iters.check80 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check80, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93, label %vector.ph81

vector.ph81:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader
  %n.mod.vf82 = and i64 %i.c, 3                   ; 2 uses
  %i.fw = icmp eq i64 %n.mod.vf82, 0
  %i.fx = select i1 %i.fw, i64 4, i64 %n.mod.vf82
  %n.vec83 = sub i64 %i.c, %i.fx                  ; 2 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph81
  %index85 = phi i64 [ 0, %vector.ph81 ], [ %index.next90, %vector.body84 ] ; 4 uses
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %index85
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %index85
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %wide.vec86 = load <4 x i64>, ptr %i.fy, align 8, !alias.scope !500, !noalias !509
  %strided.vec87 = shufflevector <4 x i64> %wide.vec86, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec88 = load <4 x i64>, ptr %i.ga, align 8, !alias.scope !500, !noalias !509
  %strided.vec89 = shufflevector <4 x i64> %wide.vec88, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.gb = shl <2 x i64> %strided.vec87, splat (i64 3)
  %i.gc = shl <2 x i64> %strided.vec89, splat (i64 3)
  %i.gd = and <2 x i64> %i.gb, splat (i64 34359738360)
  %i.ge = and <2 x i64> %i.gc, splat (i64 34359738360)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index85 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <2 x i64> %i.gd, ptr %i.gf, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  store <2 x i64> %i.ge, ptr %i.gg, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  %index.next90 = add nuw i64 %index85, 4         ; 2 uses
  %i.gh = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.gh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93, label %vector.body84, !llvm.loop !512

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93: ; preds = %vector.body84, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader
  %.0304.us.i.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader ], [ %n.vec83, %vector.body84 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i
  %.0304.us.i.i.i = phi i64 [ %i.gm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i ], [ %.0304.us.i.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader93 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %.0304.us.i.i.i
  %.sroa.0.0.copyload.us.i.i.i = load i64, ptr %i.gi, align 8, !alias.scope !500, !noalias !509
  %i.gj = shl i64 %.sroa.0.0.copyload.us.i.i.i, 3
  %i.gk = and i64 %i.gj, 34359738360
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0304.us.i.i.i
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  %i.gm = add nuw i64 %.0304.us.i.i.i, 1          ; 2 uses
  %exitcond13.not.i.i.i = icmp eq i64 %i.gm, %i.c
  br i1 %exitcond13.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, !llvm.loop !513

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ag
  %.03.i.i.i = phi i64 [ %i.hl, %bb.ag ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %.03.i.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3, !noalias !507
  %i.gp = zext i32 %i.go to i64                   ; 3 uses
  %i.gq = lshr i64 %i.gp, 6
  %i.gr = and i64 %i.gp, 63
  %i.gs = load ptr, ptr %i.ex, align 8, !tbaa !68, !noalias !507
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gq
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !69, !noalias !507
  %i.gv = shl nuw i64 1, %i.gr
  %i.gw = and i64 %i.gv, %i.gu
  %.not.i62.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i62.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.gp
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.gx, align 8, !alias.scope !500, !noalias !509
  %i.gy = shl i64 %.sroa.06.0.copyload.i.i.i, 3
  %i.gz = and i64 %i.gy, 34359738360
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.03.i.i.i
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.hb = load ptr, ptr %i.ew, align 8, !tbaa !68, !noalias !507 ; 2 uses
  %.not.i32.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i32.i.i.i, label %bb.af, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.hc = load i64, ptr %i.fa, align 8, !tbaa !84, !noalias !507
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, i64 noundef %i.hc)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc66.i.i:                                     ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %i.ew, align 8, !tbaa !68, !noalias !507
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i: ; preds = %.noexc66.i.i, %bb.ae
  %i.hd = phi ptr [ %.pre.i.i.i.i, %.noexc66.i.i ], [ %i.hb, %bb.ae ]
  %i.he = lshr i64 %.03.i.i.i, 6
  %i.hf = and i64 %.03.i.i.i, 63
  %i.hg = shl nuw i64 1, %i.hf
  %i.hh = xor i64 %i.hg, -1
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !69, !noalias !507
  %i.hk = and i64 %i.hj, %i.hh
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !69, !noalias !507
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i, %bb.ad
  %i.hl = add nuw i64 %.03.i.i.i, 1               ; 2 uses
  %exitcond.not.i63.i.i = icmp eq i64 %i.hl, %i.c
  br i1 %exitcond.not.i63.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, !llvm.loop !511

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new
  %.0304.i.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new ], [ %i.ib, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.0304.i.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3, !noalias !507
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ho
  %.sroa.0.0.copyload.i65.i.i = load i64, ptr %i.hp, align 8, !alias.scope !500, !noalias !509
  %i.hq = shl i64 %.sroa.0.0.copyload.i65.i.i, 3
  %i.hr = and i64 %i.hq, 34359738360
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0304.i.i.i
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  %i.ht = or disjoint i64 %.0304.i.i.i, 1         ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3, !noalias !507
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.hw
  %.sroa.0.0.copyload.i65.i.i.1 = load i64, ptr %i.hx, align 8, !alias.scope !500, !noalias !509
  %i.hy = shl i64 %.sroa.0.0.copyload.i65.i.i.1, 3
  %i.hz = and i64 %i.hy, 34359738360
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ht
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  %i.ib = add nuw i64 %.0304.i.i.i, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, !llvm.loop !514

_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader: ; preds = %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader
  %.0304.i.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader ], [ %i.ib, %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa ] ; 2 uses
  %lcmp.mod105 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod105)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.0304.i.i.i.epil.init
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3, !noalias !507
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ie
  %.sroa.0.0.copyload.i65.i.i.epil = load i64, ptr %i.if, align 8, !alias.scope !500, !noalias !509
  %i.ig = shl i64 %.sroa.0.0.copyload.i65.i.i.epil, 3
  %i.ih = and i64 %i.ig, 34359738360
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0304.i.i.i.epil.init
  store i64 %i.ih, ptr %i.ii, align 8, !tbaa !69, !alias.scope !503, !noalias !510
  br label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i

_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i: ; preds = %bb.ag, %bb.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader, %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i.loopexit94.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, %.preheader.i64.i.i, %.preheader1.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.il, align 8, !tbaa !77
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !79
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !80
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #28, !inline_history !515
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !80
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #28, !inline_history !515
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i67.i.i = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i67.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.io, %bb.ak ], [ %i.iy, %bb.al ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.iz, label %bb.am, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, !prof !83

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i:       ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ai, %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_114BitLenOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 4 uses
  %i.jd = load atomic i64, ptr %i.jc acquire, align 8 ; 2 uses
  %i.je = icmp eq i64 %i.jd, 4294967297
  %i.jf = trunc i64 %i.jd to i32                  ; 2 uses
  br i1 %i.je, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.jc, align 8, !tbaa !77
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  store i32 0, ptr %i.jg, align 4, !tbaa !79
  %i.jh = load ptr, ptr %i.jb, align 8, !tbaa !80
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(16) %i.jb) #28, !inline_history !516
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_119ArrayLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.r unwind label %bb.j

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.av, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !79
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !330
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !330
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.v ], [ %i.bi, %bb.w ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.x, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !83

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t, %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bm, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !79
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #28, !inline_history !331
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #28, !inline_history !331
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ac:                                            ; preds = %bb.aa
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bp, %bb.ab ], [ %i.bz, %bb.ac ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ca, label %bb.ad, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !83

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.ae:                                            ; preds = %bb.j, %bb.o, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.ap, %bb.o ], [ %i.q, %bb.j ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30   ; 19 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !44
  switch i8 %i.d, label %bb.t [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !69
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit"

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !69
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.f, align 8, !tbaa !69
  br label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67   ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68, !noalias !2228 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check69 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check69, label %.lr.ph17.i.i.i.preheader100, label %vector.ph70

.lr.ph17.i.i.i.preheader100:                      ; preds = %vector.body73, %.lr.ph17.i.i.i.preheader
  %.05916.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec72, %vector.body73 ]
  br label %.lr.ph17.i.i.i

vector.ph70:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.mod.vf71 = and i64 %i.c, 3                   ; 2 uses
  %i.s = icmp eq i64 %n.mod.vf71, 0
  %i.t = select i1 %i.s, i64 4, i64 %n.mod.vf71
  %n.vec72 = sub i64 %i.c, %i.t                   ; 2 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph70
  %index74 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body73 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %index74
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %index74
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %wide.vec75 = load <4 x i64>, ptr %i.w, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec76 = shufflevector <4 x i64> %wide.vec75, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec77 = load <4 x i64>, ptr %i.x, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec78 = shufflevector <4 x i64> %wide.vec77, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index74 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %strided.vec76, ptr %i.y, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  store <2 x i64> %strided.vec78, ptr %i.z, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %index.next79 = add nuw i64 %index74, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.aa, label %.lr.ph17.i.i.i.preheader100, label %vector.body73, !llvm.loop !2229

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.r, ptr %i.ab, align 8, !tbaa !68, !noalias !2228
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = icmp eq ptr %2, %i.a
  br i1 %i.ad, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76, !noalias !2228 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !23, !noalias !2228
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !2228
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !2228
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3, !noalias !2228
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !2228 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76, !noalias !2228 ; 8 uses
  store <2 x ptr> %i.ah, ptr %i.ac, align 8, !tbaa !23, !noalias !2228
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8, !noalias !2228 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ap, align 8, !tbaa !77, !noalias !2228
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !79, !noalias !2228
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !80, !noalias !2228
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !2228
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !noalias !2228, !inline_history !2230
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !80, !noalias !2228
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !2228
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !noalias !2228, !inline_history !2230
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !2228
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3, !noalias !2228
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4, !noalias !2228
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.as, %bb.m ], [ %i.bc, %bb.n ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !83

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !noalias !2228
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !84, !noalias !2228
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !84, !noalias !2228
  %i.bh = add i64 %i.c, 63
  %i.bi = lshr i64 %i.bh, 6                       ; 3 uses
  %.not18.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not18.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %.lr.ph15.i.i.i

.lr.ph15.i.i.i:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !68, !noalias !2228 ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i60.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit7.us.i.i.i
  %.014.us.i.i.i = phi i64 [ %.1.lcssa.us.i.i.i, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 7 uses
  %.05813.us.i.i.i = phi i64 [ %i.cc, %.loopexit7.us.i.i.i ], [ 0, %.lr.ph15.i.i.i ]
  %i.bk = add i64 %.014.us.i.i.i, 64
  %i.bl = tail call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.c) ; 4 uses
  %i.bm = icmp ult i64 %.014.us.i.i.i, %i.bl
  br i1 %i.bm, label %.lr.ph.us.i.i.i.preheader, label %.loopexit7.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %i.bn = sub nuw i64 %i.bl, %.014.us.i.i.i       ; 3 uses
  %min.iters.check55 = icmp ult i64 %i.bn, 5
  br i1 %min.iters.check55, label %.lr.ph.us.i.i.i.preheader101, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.us.i.i.i.preheader
  %n.mod.vf57 = and i64 %i.bn, 3                  ; 2 uses
  %i.bo = icmp eq i64 %n.mod.vf57, 0
  %i.bp = select i1 %i.bo, i64 4, i64 %n.mod.vf57
  %n.vec58 = sub i64 %i.bn, %i.bp                 ; 2 uses
  %i.bq = add i64 %.014.us.i.i.i, %n.vec58
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.br = add nuw i64 %.014.us.i.i.i, %index60    ; 3 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.br
  %i.bt = getelementptr [16 x i8], ptr %i.p, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 40
  %wide.vec61 = load <4 x i64>, ptr %i.bu, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec62 = shufflevector <4 x i64> %wide.vec61, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec63 = load <4 x i64>, ptr %i.bv, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec64 = shufflevector <4 x i64> %wide.vec63, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.br ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x i64> %strided.vec62, ptr %i.bw, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  store <2 x i64> %strided.vec64, ptr %i.bx, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.by, label %.lr.ph.us.i.i.i.preheader101, label %vector.body59, !llvm.loop !2231

.lr.ph.us.i.i.i.preheader101:                     ; preds = %vector.body59, %.lr.ph.us.i.i.i.preheader
  %.19.us.i.i.i.ph = phi i64 [ %.014.us.i.i.i, %.lr.ph.us.i.i.i.preheader ], [ %i.bq, %vector.body59 ]
  br label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader101, %.lr.ph.us.i.i.i
  %.19.us.i.i.i = phi i64 [ %i.cb, %.lr.ph.us.i.i.i ], [ %.19.us.i.i.i.ph, %.lr.ph.us.i.i.i.preheader101 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.19.us.i.i.i
  %.sroa.29.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.29.0.copyload.us.i.i.i = load i64, ptr %.sroa.29.0..sroa_idx.us.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.19.us.i.i.i
  store i64 %.sroa.29.0.copyload.us.i.i.i, ptr %i.ca, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %i.cb = add nuw i64 %.19.us.i.i.i, 1            ; 2 uses
  %exitcond27.not.i.i.i = icmp eq i64 %i.cb, %i.bl
  br i1 %exitcond27.not.i.i.i, label %.loopexit7.us.i.i.i, label %.lr.ph.us.i.i.i, !llvm.loop !2232

.loopexit7.us.i.i.i:                              ; preds = %.lr.ph.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i
  %.1.lcssa.us.i.i.i = phi i64 [ %.014.us.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i ], [ %i.bl, %.lr.ph.us.i.i.i ]
  %i.cc = add nuw nsw i64 %.05813.us.i.i.i, 1     ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %i.cc, %i.bi
  br i1 %exitcond28.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.i, !llvm.loop !2233

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %.lr.ph15.i.i.i, %.loopexit5.i.i.i
  %.014.i.i.i = phi i64 [ %.4.i.i.i, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 17 uses
  %.05813.i.i.i = phi i64 [ %i.dq, %.loopexit5.i.i.i ], [ 0, %.lr.ph15.i.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.05813.i.i.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !69, !noalias !2228 ; 4 uses
  %i.cf = add i64 %.014.i.i.i, 64
  %i.cg = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.c) ; 11 uses
  switch i64 %i.ce, label %.preheader4.i.i.i [
    i64 -1, label %.preheader6.i.i.i
    i64 0, label %.loopexit5.i.i.i
  ]

.preheader6.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.ch = icmp ult i64 %.014.i.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader6.i.i.i
  %i.ci = sub nuw i64 %i.cg, %.014.i.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ci, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader103, label %vector.ph

.lr.ph.i.i.i.preheader103:                        ; preds = %vector.body, %.lr.ph.i.i.i.preheader
  %.19.i.i.i.ph = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cl, %vector.body ]
  br label %.lr.ph.i.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.mod.vf = and i64 %i.ci, 3                    ; 2 uses
  %i.cj = icmp eq i64 %n.mod.vf, 0
  %i.ck = select i1 %i.cj, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.ci, %i.ck                   ; 2 uses
  %i.cl = add i64 %.014.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = add nuw i64 %.014.i.i.i, %index         ; 3 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.cm
  %i.co = getelementptr [16 x i8], ptr %i.p, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = getelementptr i8, ptr %i.co, i64 40
  %wide.vec = load <4 x i64>, ptr %i.cp, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec52 = load <4 x i64>, ptr %i.cq, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %strided.vec53 = shufflevector <4 x i64> %wide.vec52, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cm ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x i64> %strided.vec, ptr %i.cr, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  store <2 x i64> %strided.vec53, ptr %i.cs, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %.lr.ph.i.i.i.preheader103, label %vector.body, !llvm.loop !2234

.preheader4.i.i.i:                                ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.cu = icmp ult i64 %.014.i.i.i, %i.cg
  br i1 %i.cu, label %.lr.ph11.i.i.i.preheader, label %.loopexit5.i.i.i

.lr.ph11.i.i.i.preheader:                         ; preds = %.preheader4.i.i.i
  %i.cv = sub nuw i64 %i.cg, %.014.i.i.i
  %.neg = add i64 %.014.i.i.i, 1
  %xtraiter = and i64 %i.cv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph11.i.i.i.prol.loopexit, label %.lr.ph11.i.i.i.prol

.lr.ph11.i.i.i.prol:                              ; preds = %.lr.ph11.i.i.i.preheader
  %i.cw = and i64 %i.ce, 1
  %.not.i.i.i.prol = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.prol, label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph11.i.i.i.prol
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.014.i.i.i
  %.sroa.26.0..sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.26.0.copyload.i.i.i.prol = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i.prol, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.014.i.i.i
  store i64 %.sroa.26.0.copyload.i.i.i.prol, ptr %i.cy, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  br label %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa

.lr.ph11.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.p, %.lr.ph11.i.i.i.prol
  %i.cz = add nuw i64 %.014.i.i.i, 1
  br label %.lr.ph11.i.i.i.prol.loopexit

.lr.ph11.i.i.i.prol.loopexit:                     ; preds = %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph11.i.i.i.preheader
  %.210.i.i.i.unr = phi i64 [ %.014.i.i.i, %.lr.ph11.i.i.i.preheader ], [ %i.cz, %.lr.ph11.i.i.i.prol.loopexit.unr-lcssa ]
  %i.da = icmp eq i64 %i.cg, %.neg
  br i1 %i.da, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader103, %.lr.ph.i.i.i
  %.19.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i ], [ %.19.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.19.i.i.i
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.29.0.copyload.i.i.i = load i64, ptr %.sroa.29.0..sroa_idx.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.19.i.i.i
  store i64 %.sroa.29.0.copyload.i.i.i, ptr %i.dc, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %i.dd = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dd, %i.cg
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2235

.lr.ph11.i.i.i:                                   ; preds = %.lr.ph11.i.i.i.prol.loopexit, %bb.s
  %.210.i.i.i = phi i64 [ %i.dp, %bb.s ], [ %.210.i.i.i.unr, %.lr.ph11.i.i.i.prol.loopexit ] ; 5 uses
  %i.de = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.ce
  %.not.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i, label %.lr.ph11.i.i.i.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph11.i.i.i
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.210.i.i.i
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.26.0.copyload.i.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.210.i.i.i
  store i64 %.sroa.26.0.copyload.i.i.i, ptr %i.di, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  br label %.lr.ph11.i.i.i.1

.lr.ph11.i.i.i.1:                                 ; preds = %bb.q, %.lr.ph11.i.i.i
  %i.dj = add nuw i64 %.210.i.i.i, 1              ; 3 uses
  %i.dk = sub nuw i64 %i.dj, %.014.i.i.i
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.ce
  %.not.i.i.i.1 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph11.i.i.i.1
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.dj
  %.sroa.26.0..sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.26.0.copyload.i.i.i.1 = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i.1, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dj
  store i64 %.sroa.26.0.copyload.i.i.i.1, ptr %i.do, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph11.i.i.i.1
  %i.dp = add nuw i64 %.210.i.i.i, 2              ; 2 uses
  %exitcond25.not.i.i.i.1 = icmp eq i64 %i.dp, %i.cg
  br i1 %exitcond25.not.i.i.i.1, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !2236

.loopexit5.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph11.i.i.i.prol.loopexit, %bb.s, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.cg, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.cg, %.lr.ph11.i.i.i.prol.loopexit ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.cg, %bb.s ], [ %i.cg, %.lr.ph.i.i.i ]
  %i.dq = add nuw nsw i64 %.05813.i.i.i, 1        ; 2 uses
  %exitcond26.not.i.i.i = icmp eq i64 %i.dq, %i.bi
  br i1 %exitcond26.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, !llvm.loop !2233

.lr.ph17.i.i.i:                                   ; preds = %.lr.ph17.i.i.i.preheader100, %.lr.ph17.i.i.i
  %.05916.i.i.i = phi i64 [ %i.dt, %.lr.ph17.i.i.i ], [ %.05916.i.i.i.ph, %.lr.ph17.i.i.i.preheader100 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.05916.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !69, !alias.scope !2223, !noalias !2226
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05916.i.i.i
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.ds, align 8, !tbaa !69, !alias.scope !2226, !noalias !2223
  %i.dt = add nuw i64 %.05916.i.i.i, 1            ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dt, %i.c
  br i1 %exitcond29.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_12list_entry_tElZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_mT1_NS_14FunctionErrorsE.exit", label %.lr.ph17.i.i.i, !llvm.loop !2237

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !67 ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.x:                                             ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !89 ; 10 uses
  %i.dy = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !68, !noalias !2245
  %.not.i.i60.i.i = icmp eq ptr %i.eb, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i64.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.y
  br i1 %.not7.i.i.i, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !107, !alias.scope !2243, !noalias !2246 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ec, null
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ac
  %.03.us.i.i.i = phi i64 [ %i.eu, %bb.ac ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.ee = lshr i64 %.03.us.i.i.i, 6               ; 2 uses
  %i.ef = and i64 %.03.us.i.i.i, 63
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !68, !noalias !2245
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !69, !noalias !2245
  %i.ej = shl nuw i64 1, %i.ef                    ; 2 uses
  %i.ek = and i64 %i.ei, %i.ej
  %.not.us.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.03.us.i.i.i
  %.sroa.27.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.27.0.copyload.us.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.us.i.i.i, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03.us.i.i.i
  store i64 %.sroa.27.0.copyload.us.i.i.i, ptr %i.em, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i
  %i.en = load ptr, ptr %i.dz, align 8, !tbaa !68, !noalias !2245 ; 2 uses
  %.not.i32.us.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i32.us.i.i.i, label %bb.ab, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load i64, ptr %i.ed, align 8, !tbaa !84, !noalias !2245
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 noundef %i.eo)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.ab
  %.pre.i.us.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !68, !noalias !2245
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i: ; preds = %.noexc.i.i, %bb.aa
  %i.ep = phi ptr [ %.pre.i.us.i.i.i, %.noexc.i.i ], [ %i.en, %bb.aa ]
  %i.eq = xor i64 %i.ej, -1
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ee ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !69, !noalias !2245
  %i.et = and i64 %i.es, %i.eq
  store i64 %i.et, ptr %i.er, align 8, !tbaa !69, !noalias !2245
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us.i.i.i, %bb.z
  %i.eu = add nuw i64 %.03.us.i.i.i, 1            ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.eu, %i.c
  br i1 %exitcond11.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.i, !llvm.loop !2249

.preheader.i64.i.i:                               ; preds = %bb.y
  br i1 %.not7.i.i.i, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i64.i.i
  %i.ev = load ptr, ptr %i.dy, align 8, !tbaa !107, !alias.scope !2243, !noalias !2246 ; 6 uses
  %.not.i33.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i33.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %xtraiter106 = and i64 %i.c, 3                  ; 3 uses
  %i.ew = icmp ult i64 %i.c, 4
  br i1 %i.ew, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader: ; preds = %.lr.ph5.i.i.i
  %min.iters.check83 = icmp ult i64 %i.c, 5
  br i1 %min.iters.check83, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader96, label %vector.ph84

vector.ph84:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader
  %n.mod.vf85 = and i64 %i.c, 3                   ; 2 uses
  %i.ex = icmp eq i64 %n.mod.vf85, 0
  %i.ey = select i1 %i.ex, i64 4, i64 %n.mod.vf85
  %n.vec86 = sub i64 %i.c, %i.ey                  ; 2 uses
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph84
  %index88 = phi i64 [ 0, %vector.ph84 ], [ %index.next93, %vector.body87 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %index88
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %index88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %wide.vec89 = load <4 x i64>, ptr %i.fb, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %strided.vec90 = shufflevector <4 x i64> %wide.vec89, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec91 = load <4 x i64>, ptr %i.fc, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %strided.vec92 = shufflevector <4 x i64> %wide.vec91, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index88 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x i64> %strided.vec90, ptr %i.fd, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  store <2 x i64> %strided.vec92, ptr %i.fe, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  %index.next93 = add nuw i64 %index88, 4         ; 2 uses
  %i.ff = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.ff, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader96, label %vector.body87, !llvm.loop !2250

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader96: ; preds = %vector.body87, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader
  %.0304.us.i.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader ], [ %n.vec86, %vector.body87 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader96, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i
  %.0304.us.i.i.i = phi i64 [ %i.fi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i ], [ %.0304.us.i.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i.preheader96 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.0304.us.i.i.i
  %.sroa.2.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.sroa.2.0.copyload.us.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i.i.i, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.0304.us.i.i.i
  store i64 %.sroa.2.0.copyload.us.i.i.i, ptr %i.fh, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  %i.fi = add nuw i64 %.0304.us.i.i.i, 1          ; 2 uses
  %exitcond13.not.i.i.i = icmp eq i64 %i.fi, %i.c
  br i1 %exitcond13.not.i.i.i, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, !llvm.loop !2251

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i: ; preds = %.lr.ph.i61.i.i, %bb.ag
  %.03.i.i.i = phi i64 [ %i.gf, %bb.ag ], [ 0, %.lr.ph.i61.i.i ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.03.i.i.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !2245
  %i.fl = zext i32 %i.fk to i64                   ; 3 uses
  %i.fm = lshr i64 %i.fl, 6
  %i.fn = and i64 %i.fl, 63
  %i.fo = load ptr, ptr %i.ea, align 8, !tbaa !68, !noalias !2245
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !69, !noalias !2245
  %i.fr = shl nuw i64 1, %i.fn
  %i.fs = and i64 %i.fr, %i.fq
  %.not.i62.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not.i62.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.fl
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.sroa.27.0.copyload.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03.i.i.i
  store i64 %.sroa.27.0.copyload.i.i.i, ptr %i.fu, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.fv = load ptr, ptr %i.dz, align 8, !tbaa !68, !noalias !2245 ; 2 uses
  %.not.i32.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i32.i.i.i, label %bb.af, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fw = load i64, ptr %i.ed, align 8, !tbaa !84, !noalias !2245
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 noundef %i.fw)
          to label %.noexc67.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc67.i.i:                                     ; preds = %bb.af
  %.pre.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !68, !noalias !2245
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i: ; preds = %.noexc67.i.i, %bb.ae
  %i.fx = phi ptr [ %.pre.i.i.i.i, %.noexc67.i.i ], [ %i.fv, %bb.ae ]
  %i.fy = lshr i64 %.03.i.i.i, 6
  %i.fz = and i64 %.03.i.i.i, 63
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = xor i64 %i.ga, -1
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !69, !noalias !2245
  %i.ge = and i64 %i.gd, %i.gb
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !69, !noalias !2245
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i, %bb.ad
  %i.gf = add nuw i64 %.03.i.i.i, 1               ; 2 uses
  %exitcond.not.i63.i.i = icmp eq i64 %i.gf, %i.c
  br i1 %exitcond.not.i63.i.i, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, !llvm.loop !2249

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new
  %.0304.i.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new ], [ %i.hd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0304.i.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3, !noalias !2245
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.gi
  %.sroa.2.0..sroa_idx.i65.i.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.2.0.copyload.i66.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i65.i.i, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.0304.i.i.i
  store i64 %.sroa.2.0.copyload.i66.i.i, ptr %i.gk, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  %i.gl = or disjoint i64 %.0304.i.i.i, 1         ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3, !noalias !2245
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.go
  %.sroa.2.0..sroa_idx.i65.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.sroa.2.0.copyload.i66.i.i.1 = load i64, ptr %.sroa.2.0..sroa_idx.i65.i.i.1, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.gl
  store i64 %.sroa.2.0.copyload.i66.i.i.1, ptr %i.gq, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  %i.gr = or disjoint i64 %.0304.i.i.i, 2         ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3, !noalias !2245
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.gu
  %.sroa.2.0..sroa_idx.i65.i.i.2 = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.sroa.2.0.copyload.i66.i.i.2 = load i64, ptr %.sroa.2.0..sroa_idx.i65.i.i.2, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.gr
  store i64 %.sroa.2.0.copyload.i66.i.i.2, ptr %i.gw, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  %i.gx = or disjoint i64 %.0304.i.i.i, 3         ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3, !noalias !2245
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.ha
  %.sroa.2.0..sroa_idx.i65.i.i.3 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.sroa.2.0.copyload.i66.i.i.3 = load i64, ptr %.sroa.2.0..sroa_idx.i65.i.i.3, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.gx
  store i64 %.sroa.2.0.copyload.i66.i.i.3, ptr %i.hc, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  %i.hd = add nuw i64 %.0304.i.i.i, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i.loopexit97.unr-lcssa", label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, !llvm.loop !2252

"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i.loopexit97.unr-lcssa": ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader: ; preds = %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i.loopexit97.unr-lcssa", %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader
  %.0304.i.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.preheader ], [ %i.hd, %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i.loopexit97.unr-lcssa" ]
  %lcmp.mod108 = icmp ne i64 %xtraiter106, 0
  call void @llvm.assume(i1 %lcmp.mod108)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader
  %.0304.i.i.i.epil = phi i64 [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil ], [ %.0304.i.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil.preheader ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.0304.i.i.i.epil
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3, !noalias !2245
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.hg
  %.sroa.2.0..sroa_idx.i65.i.i.epil = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.sroa.2.0.copyload.i66.i.i.epil = load i64, ptr %.sroa.2.0..sroa_idx.i65.i.i.epil, align 8, !tbaa !69, !alias.scope !2238, !noalias !2247
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.0304.i.i.i.epil
  store i64 %.sroa.2.0.copyload.i66.i.i.epil, ptr %i.hi, align 8, !tbaa !69, !alias.scope !2241, !noalias !2248
  %i.hj = add nuw i64 %.0304.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i", label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil, !llvm.loop !2253

"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i": ; preds = %bb.ag, %bb.ac, %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i.loopexit97.unr-lcssa", %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, %.preheader.i64.i.i, %.preheader1.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i"
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.hm, align 8, !tbaa !77
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !79
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #28, !inline_history !2254
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !80
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #28, !inline_history !2254
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i68.i.i = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i68.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hp, %bb.ak ], [ %i.hz, %bb.al ]
  %i.ia = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ia, label %bb.am, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, !prof !83

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i:       ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ai, %"_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_12list_entry_tElNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_118ListLengthFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESL_Pvb.exit.i.i"
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.ic, null
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br i1 %.0.i.i15.i.i.i, label %bb.i, label %.body

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i
  %.pn4.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #28
  br label %.body

bb.j:                                             ; preds = %bb.g
  unreachable

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i": ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit13.thread.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !69
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.p, align 8, !tbaa !69
  br label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit"

bb.k:                                             ; preds = %bb.c
  %i.af = icmp eq i8 %i.g, 0
  %or.cond3.i.i = and i1 %i.af, %i.j
  br i1 %or.cond3.i.i, label %bb.l, label %bb.ap

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %.noexc16 unwind label %bb.fc

.noexc16:                                         ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 7 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %.noexc17 unwind label %bb.fc

.noexc17:                                         ; preds = %.noexc16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i35.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i35.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i: ; preds = %.noexc17
  %i.am = load i64, ptr %i.al, align 8, !tbaa !69
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i, label %.invoke

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i36.i.i, %.noexc17
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %.noexc20 unwind label %bb.fc

.noexc20:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i37.i.i
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc21 unwind label %bb.fc

.noexc21:                                         ; preds = %.noexc20
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 5 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc22 unwind label %bb.fc

.noexc22:                                         ; preds = %.noexc21
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %.noexc23 unwind label %bb.fc

.noexc23:                                         ; preds = %.noexc22
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc24 unwind label %bb.fc

.noexc24:                                         ; preds = %.noexc23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !68 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.au = icmp eq ptr %2, %i.c
  br i1 %i.au, label %bb.w, label %bb.m

bb.m:                                             ; preds = %.noexc24
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.av, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76 ; 8 uses
  store <2 x ptr> %i.ay, ptr %i.at, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %thread-pre-split.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !79
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !2282
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !2282
  br label %thread-pre-split.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.v, label %thread-pre-split.i.i.i, !prof !83

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.r, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !68
  br label %bb.w

bb.w:                                             ; preds = %thread-pre-split.i.i.i, %.noexc24
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.as, %.noexc24 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !84
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !84
  call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  %.not.i.i17.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i17.i.i.i, label %.preheader.i.i.i.i, label %bb.x

.preheader.i.i.i.i:                               ; preds = %bb.w
  %.not20.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not20.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.by = load i64, ptr %i.aj, align 8, !tbaa !69, !alias.scope !2286, !noalias !2290
  %.not.i.i71.i.i.i.i = icmp eq i64 %i.by, 1
  br i1 %.not.i.i71.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader", label %bb.ak

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader": ; preds = %.lr.ph18.i.i.i.i
  %min.iters.check171 = icmp ult i64 %i.f, 5
  br i1 %min.iters.check171, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184", label %vector.ph172

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184": ; preds = %vector.body175, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader"
  %.06117.i.i.i.i.ph = phi i64 [ 0, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader" ], [ %n.vec174, %vector.body175 ]
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i"

vector.ph172:                                     ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader"
  %n.mod.vf173 = and i64 %i.f, 3                  ; 2 uses
  %i.bz = icmp eq i64 %n.mod.vf173, 0
  %i.ca = select i1 %i.bz, i64 4, i64 %n.mod.vf173
  %n.vec174 = sub i64 %i.f, %i.ca                 ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph172
  %index176 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body175 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %index176
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %index176
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %wide.vec177 = load <4 x i64>, ptr %i.cd, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec178 = shufflevector <4 x i64> %wide.vec177, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec179 = load <4 x i64>, ptr %i.ce, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec180 = shufflevector <4 x i64> %wide.vec179, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index176 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <2 x i64> %strided.vec178, ptr %i.cf, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  store <2 x i64> %strided.vec180, ptr %i.cg, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %index.next181 = add nuw i64 %index176, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.ch, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184", label %vector.body175, !llvm.loop !2293

bb.x:                                             ; preds = %bb.w
  %i.ci = add i64 %i.f, 63
  %i.cj = lshr i64 %i.ci, 6                       ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not19.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.x, %.loopexit5.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit5.i.i.i.i ], [ 0, %bb.x ] ; 11 uses
  %.06015.i.i.i.i = phi i64 [ %i.dz, %.loopexit5.i.i.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.06015.i.i.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !69, !noalias !2294 ; 2 uses
  %i.cm = add i64 %.016.i.i.i.i, 64
  %i.cn = call noundef i64 @llvm.umin.i64(i64 %i.cm, i64 %i.f) ; 8 uses
  switch i64 %i.cl, label %.preheader4.i.i.i.i [
    i64 -1, label %.preheader6.i.i.i.i
    i64 0, label %.loopexit5.i.i.i.i
  ]

.preheader6.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.co = icmp ult i64 %.016.i.i.i.i, %i.cn
  br i1 %i.co, label %.lr.ph.i.i.i.i, label %.loopexit5.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader6.i.i.i.i
  %i.cp = load i64, ptr %i.aj, align 8, !tbaa !69, !alias.scope !2286, !noalias !2290
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cp, 1
  br i1 %.not.i.i.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader", label %bb.y

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader": ; preds = %.lr.ph.i.i.i.i
  %i.cq = sub i64 %i.cn, %.016.i.i.i.i            ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 5
  br i1 %min.iters.check, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185", label %vector.ph

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185": ; preds = %vector.body, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader"
  %.111.i.i.i.i.ph = phi i64 [ %.016.i.i.i.i, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader" ], [ %i.ct, %vector.body ]
  br label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i"

vector.ph:                                        ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader"
  %n.mod.vf = and i64 %i.cq, 3                    ; 2 uses
  %i.cr = icmp eq i64 %n.mod.vf, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.cq, %i.cs                   ; 2 uses
  %i.ct = add i64 %.016.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = add nuw i64 %.016.i.i.i.i, %index       ; 3 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.cu
  %i.cw = getelementptr [16 x i8], ptr %i.ah, i64 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = getelementptr i8, ptr %i.cw, i64 40
  %wide.vec = load <4 x i64>, ptr %i.cx, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec168 = load <4 x i64>, ptr %i.cy, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %strided.vec169 = shufflevector <4 x i64> %wide.vec168, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <2 x i64> %strided.vec, ptr %i.cz, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  store <2 x i64> %strided.vec169, ptr %i.da, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185", label %vector.body, !llvm.loop !2295

.preheader4.i.i.i.i:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.dc = icmp ult i64 %.016.i.i.i.i, %i.cn
  br i1 %i.dc, label %.lr.ph13.i.i.i.i, label %.loopexit5.i.i.i.i

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i": ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185", %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i"
  %.111.i.i.i.i = phi i64 [ %i.df, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i" ], [ %.111.i.i.i.i.ph, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i.preheader185" ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.111.i.i.i.i
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.417.0.copyload.i.i.i.i = load i64, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.111.i.i.i.i
  store i64 %.sroa.417.0.copyload.i.i.i.i, ptr %i.de, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %i.df = add nuw i64 %.111.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.df, %i.cn
  br i1 %exitcond.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", !llvm.loop !2296

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dg = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !2294 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28, !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28, !noalias !2294
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i, !noalias !2294

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.aa unwind label %bb.ab, !noalias !2294

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ac unwind label %bb.ab, !noalias !2294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i: ; preds = %bb.y
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28, !noalias !2294
  br label %common.resume.sink.split.i.i.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dj = load ptr, ptr %25, align 8, !tbaa !29, !noalias !2294 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.dj) #32, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28, !noalias !2294
  br i1 %.0.i.i.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28, !noalias !2294
  br i1 %.0.i.i.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

common.resume.sink.split.i.i.i.i:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i
  %.sink.i.i.i.i = phi ptr [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i ]
  %common.resume.op.ph.i.i.i.i = phi { ptr, i32 } [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i.i.i) #28, !noalias !2294
  br label %.body

bb.ac:                                            ; preds = %bb.aa
  unreachable

.lr.ph13.i.i.i.i:                                 ; preds = %.preheader4.i.i.i.i, %bb.aj
  %.212.i.i.i.i = phi i64 [ %i.dy, %bb.aj ], [ %.016.i.i.i.i, %.preheader4.i.i.i.i ] ; 4 uses
  %i.dm = sub nuw i64 %.212.i.i.i.i, %.016.i.i.i.i
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.cl
  %.not.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph13.i.i.i.i
  %i.dp = load i64, ptr %i.aj, align 8, !tbaa !69, !alias.scope !2286, !noalias !2290
  %.not.i.i63.i.i.i.i = icmp eq i64 %i.dp, 1
  br i1 %.not.i.i63.i.i.i.i, label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit70.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !2294 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28, !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28, !noalias !2294
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i, !noalias !2294

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ag unwind label %bb.ah, !noalias !2294

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ai unwind label %bb.ah, !noalias !2294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i64.i.i.i.i: ; preds = %bb.ae
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !2294
  br label %common.resume.sink.split.i.i.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i.i67.i.i.i.i = phi i1 [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dt = load ptr, ptr %23, align 8, !tbaa !29, !noalias !2294 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i68.i.i.i.i: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.dt) #32, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !2294
  br i1 %.0.i.i67.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i69.i.i.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28, !noalias !2294
  br i1 %.0.i.i67.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

bb.ai:                                            ; preds = %bb.ag
  unreachable

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit70.i.i.i.i": ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.212.i.i.i.i
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.411.0.copyload.i.i.i.i = load i64, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.212.i.i.i.i
  store i64 %.sroa.411.0.copyload.i.i.i.i, ptr %i.dx, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit70.i.i.i.i", %.lr.ph13.i.i.i.i
  %i.dy = add i64 %.212.i.i.i.i, 1                ; 2 uses
  %exitcond24.not.i.i.i.i = icmp eq i64 %i.dy, %i.cn
  br i1 %exitcond24.not.i.i.i.i, label %.loopexit5.i.i.i.i, label %.lr.ph13.i.i.i.i, !llvm.loop !2297

.loopexit5.i.i.i.i:                               ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i", %bb.aj, %.preheader4.i.i.i.i, %.preheader6.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.cn, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.cn, %bb.aj ], [ %.016.i.i.i.i, %.preheader4.i.i.i.i ], [ %.016.i.i.i.i, %.preheader6.i.i.i.i ], [ %i.cn, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i" ]
  %i.dz = add nuw nsw i64 %.06015.i.i.i.i, 1      ; 2 uses
  %exitcond25.not.i.i.i.i = icmp eq i64 %i.dz, %i.cj
  br i1 %exitcond25.not.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, !llvm.loop !2298

"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i": ; preds = %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184", %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i"
  %.06117.i.i.i.i = phi i64 [ %i.ec, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i" ], [ %.06117.i.i.i.i.ph, %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i.preheader184" ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.06117.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !69, !alias.scope !2283, !noalias !2291
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.06117.i.i.i.i
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %i.eb, align 8, !tbaa !69, !alias.scope !2288, !noalias !2292
  %i.ec = add nuw i64 %.06117.i.i.i.i, 1          ; 2 uses
  %exitcond26.not.i.i.i.i = icmp eq i64 %i.ec, %i.f
  br i1 %exitcond26.not.i.i.i.i, label %"_ZN6duckdb14BinaryExecutor7ExecuteINS_12list_entry_tEllZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvS9_S9_S9_mT2_.exit", label %"_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_12_GLOBAL__N_124ListLengthBinaryFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0bNS_12list_entry_tEllEET3_T_T1_T2_RNS_12ValidityMaskEm.exit78.i.i.i.i", !llvm.loop !2299

bb.ak:                                            ; preds = %.lr.ph18.i.i.i.i
  %i.ed = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !2294 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28, !noalias !2294
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28, !noalias !2294
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i, !noalias !2294

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.am unwind label %bb.an, !noalias !2294

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.ed, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ao unwind label %bb.an, !noalias !2294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i72.i.i.i.i: ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !2294
  br label %common.resume.sink.split.i.i.i.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i.i75.i.i.i.i = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eg = load ptr, ptr %21, align 8, !tbaa !29, !noalias !2294 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76.i.i.i.i: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.eg) #32, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28, !noalias !2294
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !2294
  br i1 %.0.i.i75.i.i.i.i, label %common.resume.sink.split.i.i.i.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i77.i.i.i.i: ; preds = %bb.an
end_hunk_3
