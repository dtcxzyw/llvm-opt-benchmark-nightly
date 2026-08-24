Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/instantiate?download=true
inline.NumInlined: 558
inline.NumDeleted: 239
begin_hunk_0_@"_ZNSt17_Function_handlerIFN4lean8optionalINS0_4exprEEERKS2_jEZNS0_15instantiate_revES5_jPS4_E3$_0E9_M_invokeERKSt9_Any_dataS5_Oj":bb.a
bb.m:                                             ; preds = %bb.l
  %i.ap = icmp samesign ult i64 %i.ab, %i.ak
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = sub nuw nsw i64 %i.ab, %i.ak
  %i.ar = shl nuw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = inttoptr i64 %i.as to ptr
  br label %bb.o

.critedge.i.i.i.i.i.i:                            ; preds = %bb.l
  %i.au = invoke ptr @lean_nat_big_sub(ptr noundef %.pre.i.i.i, ptr noundef nonnull %i.an)
          to label %bb.o unwind label %bb.u, !noalias !204

bb.o:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.n, %bb.m
  %.1.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.m ], [ %i.at, %bb.n ], [ %i.au, %.critedge.i.i.i.i.i.i ]
  store ptr %.1.i.i.i.i.i.i, ptr %6, align 8, !tbaa !8, !alias.scope !215, !noalias !204
  invoke void @_ZN4lean7mk_bvarERKNS_3natE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4lean10object_refD2Ev.exit33.i.i.i unwind label %bb.v, !noalias !204

_ZN4lean10object_refD2Ev.exit33.i.i.i:            ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  store i8 1, ptr %0, align 8, !tbaa !83, !alias.scope !221
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %5, align 8, !tbaa !8, !noalias !221
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !8, !alias.scope !221
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8, !tbaa !8, !noalias !221
  %i.ax = load ptr, ptr %6, align 8, !tbaa !8, !noalias !204 ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 1
  %.not.i.i.i34.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i34.i.i.i, label %bb.p, label %_ZN4lean10object_refD2Ev.exit39.i.i.i

bb.p:                                             ; preds = %_ZN4lean10object_refD2Ev.exit33.i.i.i
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !11, !noalias !204 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !11, !noalias !204
  br label %_ZN4lean10object_refD2Ev.exit39.i.i.i

bb.r:                                             ; preds = %bb.p
  %.not.i1.i.i35.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i1.i.i35.i.i.i, label %_ZN4lean10object_refD2Ev.exit39.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ax)
          to label %_ZN4lean10object_refD2Ev.exit39.i.i.i unwind label %bb.t, !noalias !204

bb.t:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #12, !noalias !204
  unreachable

_ZN4lean10object_refD2Ev.exit39.i.i.i:            ; preds = %bb.s, %bb.r, %bb.q, %_ZN4lean10object_refD2Ev.exit33.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !204
  br label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_15instantiate_revERKS2_jPS4_E3$_0JS5_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.u:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #11, !noalias !204
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.bf, %bb.u ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !204
  br label %common.resume.i.i.i

.thread.i.i.i:                                    ; preds = %_ZN4leangeERKNS_3natEj.exit.i.i.i, %.split.i.i.i, %bb.g
  store i8 0, ptr %0, align 8, !tbaa !83, !alias.scope !222
  br label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_15instantiate_revERKS2_jPS4_E3$_0JS5_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_15instantiate_revERKS2_jPS4_E3$_0JS5_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %_ZN4lean10object_refD2Ev.exit.i.i.i, %_ZN4lean10object_refD2Ev.exit39.i.i.i, %.thread.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN4lean8optionalINS0_4exprEEERKS2_jEZNS0_15instantiate_revES5_jPS4_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4lean15instantiate_revERKNS1_4exprEjPS3_E3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4lean15instantiate_revERKNS_4exprEjPS1_E3$_0", ptr %0, align 8, !tbaa !110
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean15instantiate_revERKNS1_4exprEjPS3_E3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !25
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean15instantiate_revERKNS1_4exprEjPS3_E3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !225
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean15instantiate_revERKNS1_4exprEjPS3_E3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4lean15instantiate_revERKNS1_4exprEjPS3_E3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN4lean8optionalINS0_4exprEEERKS2_EZNS0_19instantiate_lparamsES5_RKNS0_8list_refINS0_4nameEEERKNS7_INS0_5levelEEEE3$_0E9_M_invokeERKSt9_Any_dataS5_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::optional") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %3 = alloca %"class.lean::object_ref", align 8  ; 4 uses
  %4 = alloca %"class.lean::buffer.10", align 8   ; 13 uses
  %5 = alloca %"class.lean::level", align 8       ; 8 uses
  %6 = alloca %"class.lean::list_ref.4", align 8  ; 6 uses
  %7 = alloca %"class.lean::level", align 8       ; 8 uses
  %8 = alloca %"class.lean::expr", align 8        ; 6 uses
  %9 = alloca %"class.lean::list_ref.4", align 8  ; 16 uses
  %10 = alloca %"class.lean::expr", align 8       ; 6 uses
  %11 = alloca %"class.lean::level", align 8      ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.c = tail call noundef zeroext i1 @_ZN4lean14has_univ_paramERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !235
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  store i8 1, ptr %0, align 8, !tbaa !83, !alias.scope !239
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %2, align 8, !tbaa !8, !noalias !239 ; 5 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !8, !alias.scope !239
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_19instantiate_lparamsERKS2_RKNS0_8list_refINS0_4nameEEERKNS6_INS0_5levelEEEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit"

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.e, align 4, !tbaa !11, !noalias !239 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %.val.i.i.i.i.i.i.i.i.i.i, 1
  store i32 %i.i, ptr %i.e, align 4, !tbaa !11, !noalias !239
  br label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_19instantiate_lparamsERKS2_RKNS0_8list_refINS0_4nameEEERKNS6_INS0_5levelEEEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit"

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_19instantiate_lparamsERKS2_RKNS0_8list_refINS0_4nameEEERKNS6_INS0_5levelEEEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4, !noalias !239 ; 0 uses
  br label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_19instantiate_lparamsERKS2_RKNS0_8list_refINS0_4nameEEERKNS6_INS0_5levelEEEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit"

bb.g:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !8, !noalias !235 ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.l, align 4, !noalias !235
  %.mask.i.i.i.i.i = and i32 %.val.i.i.i.i.i.i.i.i, -16777216
  switch i32 %.mask.i.i.i.i.i, label %bb.cb [
    i32 67108864, label %bb.h
    i32 50331648, label %bb.bu
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11, !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11, !noalias !235
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !240, !noalias !235, !nonnull !55, !align !157 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !242, !noalias !235, !nonnull !55, !align !157 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !8, !noalias !246 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr %9, align 8, !tbaa !8, !alias.scope !243, !noalias !235
  br label %"_ZN4lean9map_reuseINS_5levelEZZNS_19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS5_IS1_EEENK3$_0clES4_EUlRKS1_E_EENS5_IT_EERKSI_OT0_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !246
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !247, !noalias !246
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.u, align 8, !tbaa !249, !noalias !246
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 16, ptr %i.v, align 8, !tbaa !250, !noalias !246
  br label %bb.j

bb.j:                                             ; preds = %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.w = phi i64 [ 16, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i ] ; 4 uses
  %i.x = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ak, %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i ] ; 2 uses
  %storemerge4.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.x, %i.w
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.k

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j
  %.pre.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !247, !noalias !246
  br label %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.y = shl i64 %i.w, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #14
          to label %.noexc.i.i.i.i unwind label %bb.at, !noalias !246 ; 4 uses

.noexc.i.i.i.i:                                   ; preds = %bb.k
  %i.aa = load ptr, ptr %4, align 8, !tbaa !247, !noalias !246 ; 4 uses
  %12 = load i64, ptr %i.u, align 8, !tbaa !249, !noalias !246 ; 4 uses
  %i.ab = icmp ugt i64 %12, 1
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %12, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.aa, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !noalias !246
  br label %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.ac = icmp eq i64 %12, 1
  br i1 %i.ac, label %bb.n, label %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !25, !noalias !246
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !25, !noalias !246
  br label %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i

_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.not.i.i.i.i.i.i.i18.i.i.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i.i.i.i.i18.i.i.i, label %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i
  %13 = load i64, ptr %i.v, align 8, !tbaa !250, !noalias !246
  %i.ae = shl i64 %13, 3
  call void @_ZdaPvm(ptr noundef %i.aa, i64 noundef %i.ae) #11, !noalias !246
  %.pre2.pre.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !249, !noalias !246
  br label %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i

_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i
  %.pre2.i.i.i.i.i.i = phi i64 [ %12, %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i ], [ %.pre2.pre.i.i.i.i.i.i, %bb.o ]
  %i.af = shl i64 %i.w, 1                         ; 2 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !247, !noalias !246
  store i64 %i.af, ptr %i.v, align 8, !tbaa !250, !noalias !246
  br label %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i

_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i: ; preds = %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ag = phi i64 [ %i.w, %._crit_edge.i.i.i.i.i.i ], [ %i.af, %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i ]
  %i.ah = phi i64 [ %i.x, %._crit_edge.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.z, %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  store ptr %storemerge4.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !25, !noalias !246
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.u, align 8, !tbaa !249, !noalias !246
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %storemerge.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !25, !noalias !246 ; 2 uses
  %i.am = ptrtoint ptr %storemerge.i.i.i.i.i to i64
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %bb.p, label %bb.j, !llvm.loop !251

bb.p:                                             ; preds = %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i
  %i.ao = load ptr, ptr %4, align 8, !tbaa !247, !noalias !246 ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN4lean10object_refD2Ev.exit64.i.i.i.i, %bb.p
  %.024.i.i.i.i = phi ptr [ %i.ap, %bb.p ], [ %.2.i.i.i.i, %_ZN4lean10object_refD2Ev.exit64.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.024.i.i.i.i, %i.ao
  br i1 %.not.i.i.i.i, label %bb.bg, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds i8, ptr %.024.i.i.i.i, i64 -8 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25, !noalias !246 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !246
  invoke void @_ZN4lean11instantiateERKNS_5levelERKNS_8list_refINS_4nameEEERKNS3_IS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i" unwind label %bb.au, !noalias !246

"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i": ; preds = %bb.r
  %i.av = load ptr, ptr %5, align 8, !tbaa !8, !noalias !246 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !8, !noalias !246
  %.not37.i.i.i.i = icmp eq ptr %i.av, %i.aw      ; 2 uses
  br i1 %.not37.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11, !noalias !246
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8, !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !252
  store ptr %i.av, ptr %i.b, align 16, !tbaa !25, !noalias !252
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !25, !noalias !252
  invoke void @_ZN4lean8mk_cnstrEjjPP11lean_objectj(ptr dead_on_unwind nonnull writable sret(%"class.lean::object_ref") align 8 %3, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.b, i32 noundef 0)
          to label %.noexc51.i.i.i.i unwind label %bb.av, !noalias !246

.noexc51.i.i.i.i:                                 ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !252
  %i.az = load ptr, ptr %3, align 8, !tbaa !8, !noalias !246 ; 2 uses
  store ptr %i.az, ptr %9, align 8, !tbaa !8, !alias.scope !243, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !246
  %i.ba = load ptr, ptr %5, align 8, !tbaa !8, !noalias !246 ; 4 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i

bb.t:                                             ; preds = %.noexc51.i.i.i.i
  %.val.i.i.i.i.i19.i.i.i = load i32, ptr %i.ba, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i.i.i.i19.i.i.i, 0
  br i1 %i.bd, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.be = add nuw i32 %.val.i.i.i.i.i19.i.i.i, 1
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %.not.i.i.i6.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i19.i.i.i, 0
  br i1 %.not.i.i.i6.i.i.i.i.i, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = atomicrmw sub ptr %i.ba, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i

_ZN4lean3incEP11lean_object.exit.i.i.i.i.i:       ; preds = %bb.w, %bb.v, %bb.u, %.noexc51.i.i.i.i
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !8, !noalias !246 ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i.i7.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i7.i.i.i.i.i, label %bb.x, label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i

bb.x:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i
  %.val.i.i.i8.i.i.i.i.i = load i32, ptr %i.bg, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.bj = icmp sgt i32 %.val.i.i.i8.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.bk = add nuw i32 %.val.i.i.i8.i.i.i.i.i, 1
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %.not.i.i.i9.i.i.i.i.i = icmp eq i32 %.val.i.i.i8.i.i.i.i.i, 0
  br i1 %.not.i.i.i9.i.i.i.i.i, label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  br label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i

_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i
  %.not385.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not385.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i
  %.promoted.i.i.i = load ptr, ptr %9, align 8, !noalias !235
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4lean10object_refD2Ev.exit61.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %i.bm = phi ptr [ %i.ci, %_ZN4lean10object_refD2Ev.exit61.i.i.i.i ], [ %.promoted.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.bn = phi ptr [ %i.ci, %_ZN4lean10object_refD2Ev.exit61.i.i.i.i ], [ %i.az, %.lr.ph.i.preheader.i.i.i ] ; 8 uses
  %.16.i.i.i.i = phi ptr [ %i.bo, %_ZN4lean10object_refD2Ev.exit61.i.i.i.i ], [ %i.as, %.lr.ph.i.preheader.i.i.i ]
  %i.bo = getelementptr inbounds i8, ptr %.16.i.i.i.i, i64 -8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !246
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11, !noalias !246
  invoke void @_ZN4lean11instantiateERKNS_5levelERKNS_8list_refINS_4nameEEERKNS3_IS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit53.i.i.i.i" unwind label %bb.aw, !noalias !246

"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit53.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %i.br = load ptr, ptr %7, align 8, !tbaa !8, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !258
  store ptr %i.br, ptr %i.a, align 16, !tbaa !25, !noalias !258
  store ptr %i.bn, ptr %i.ar, align 8, !tbaa !25, !noalias !258
  invoke void @_ZN4lean8mk_cnstrEjjPP11lean_objectj(ptr dead_on_unwind nonnull writable sret(%"class.lean::object_ref") align 8 %6, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 0)
          to label %.noexc56.i.i.i.i unwind label %bb.ax, !noalias !246

.noexc56.i.i.i.i:                                 ; preds = %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit53.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !258
  %i.bs = load ptr, ptr %7, align 8, !tbaa !8, !noalias !255 ; 4 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, 1
  %.not.i.i.i.i54.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i54.i.i.i.i, label %bb.ab, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc56.i.i.i.i
  %.val.i.i.i.i.i55.i.i.i.i = load i32, ptr %i.bs, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.bv = icmp sgt i32 %.val.i.i.i.i.i55.i.i.i.i, 0
  br i1 %i.bv, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bw = add nuw i32 %.val.i.i.i.i.i55.i.i.i.i, 1
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i.i6.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i55.i.i.i.i, 0
  br i1 %.not.i.i.i6.i.i.i.i.i.i, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bx = atomicrmw sub ptr %i.bs, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i

_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i:     ; preds = %bb.ae, %bb.ad, %bb.ac, %.noexc56.i.i.i.i
  %i.by = ptrtoint ptr %i.bn to i64
  %i.bz = and i64 %i.by, 1
  %.not.i.i7.i.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i7.i.i.i.i.i.i, label %bb.af, label %_ZN4lean10object_refD2Ev.exit.i.i.i.i

bb.af:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i
  %.val.i.i.i8.i.i.i.i.i.i = load i32, ptr %i.bn, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i.i8.i.i.i.i.i.i, 0
  br i1 %i.ca, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.cb = add nuw i32 %.val.i.i.i8.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.cb, ptr %i.bn, align 4, !tbaa !11, !noalias !246
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.i9.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i8.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i9.i.i.i.i.i.i, label %_ZN4lean10object_refD2Ev.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cc = atomicrmw sub ptr %i.bn, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  %.pr.i.i.i.i = load i32, ptr %i.bn, align 4, !tbaa !11, !noalias !246
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.cd = phi i32 [ %.pr.i.i.i.i, %bb.ai ], [ %i.cb, %bb.ag ] ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.ak, label %bb.al, !prof !261

bb.ak:                                            ; preds = %bb.aj
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.bn, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean10object_refD2Ev.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %.not.i1.i.i.i.i.i.i.i = icmp eq i32 %i.cd, 0
end_hunk_0
