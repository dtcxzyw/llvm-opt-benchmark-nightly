Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/instantiate?download=true
inline.NumInlined: 558
inline.NumDeleted: 239
begin_hunk_0_@"_ZNSt17_Function_handlerIFN4lean8optionalINS0_4exprEEERKS2_jEZNS0_15instantiate_revES5_jPS4_E3$_0E9_M_invokeERKSt9_Any_dataS5_Oj":bb.a
          to label %_ZN4leangeERKNS_3natEj.exit.i.i.i unwind label %bb.i, !noalias !204

common.resume.i.i.i:                              ; preds = %bb.w, %bb.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.u, %bb.i ], [ %.pn.pn.i.i.i, %bb.w ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.i:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !204
  br label %common.resume.i.i.i

_ZN4leangeERKNS_3natEj.exit.i.i.i:                ; preds = %.critedge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !204
  br i1 %i.t, label %_ZN4leangeERKNS_3natEj.exit._crit_edge.i.i.i, label %.thread.i.i.i

_ZN4leangeERKNS_3natEj.exit._crit_edge.i.i.i:     ; preds = %_ZN4leangeERKNS_3natEj.exit.i.i.i
  %.pre.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !8, !noalias !204
  br label %bb.j

bb.j:                                             ; preds = %_ZN4leangeERKNS_3natEj.exit._crit_edge.i.i.i, %.split.i.i.i
  %.pre.i.i.i = phi ptr [ %.pre.pre.i.i.i, %_ZN4leangeERKNS_3natEj.exit._crit_edge.i.i.i ], [ %i.q, %.split.i.i.i ] ; 3 uses
  %i.v = load i32, ptr %1, align 8, !tbaa !209, !noalias !204 ; 3 uses
  %i.w = add i32 %i.v, %.val                      ; 2 uses
  %i.x = icmp ult i32 %i.w, %.val
  br i1 %i.x, label %._ZN4lean10object_refD2Ev.exit_crit_edge.i.i.i, label %bb.k

._ZN4lean10object_refD2Ev.exit_crit_edge.i.i.i:   ; preds = %bb.j
  %.pre47.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  %.pre48.i.i.i = lshr i64 %.pre47.i.i.i, 1
  br label %_ZN4lean10object_refD2Ev.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.y = zext i32 %i.w to i64
  %i.z = ptrtoint ptr %.pre.i.i.i to i64          ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  %i.ab = lshr i64 %i.z, 1                        ; 4 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.y
  %or.cond.i.i.i = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond.i.i.i, label %_ZN4lean10object_refD2Ev.exit.i.i.i, label %bb.l

_ZN4lean10object_refD2Ev.exit.i.i.i:              ; preds = %bb.k, %._ZN4lean10object_refD2Ev.exit_crit_edge.i.i.i
  %.pre-phi49.i.i.i = phi i64 [ %.pre48.i.i.i, %._ZN4lean10object_refD2Ev.exit_crit_edge.i.i.i ], [ %i.ab, %bb.k ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !211, !noalias !204
  %i.af = zext i32 %i.v to i64
  %.neg.i.i.i = sub nsw i64 %i.m, %.pre-phi49.i.i.i
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %.neg.i.i.i
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4lean16lift_loose_bvarsERKNS_4exprEj(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef %.val)
  store i8 1, ptr %0, align 8, !tbaa !83, !alias.scope !212
  br label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_15instantiate_revERKS2_jPS4_E3$_0JS5_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11, !noalias !204
  %i.ak = zext i32 %i.v to i64                    ; 3 uses
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = or disjoint i64 %i.al, 1
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !8, !noalias !204
  %i.ao = and i64 %i.z, 1
  %.not.i.i.i30.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i30.i.i.i, label %.critedge.i.i.i.i.i.i, label %bb.m, !prof !102

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
  %i.w = phi i64 [ 16, %.lr.ph.i.i.i.i.i ], [ %i.ai, %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i ] ; 4 uses
  %i.x = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i ] ; 2 uses
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
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !249, !noalias !246 ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.aa, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !noalias !246
  br label %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i
  %i.ad = icmp eq i64 %i.ab, 1
  br i1 %i.ad, label %bb.n, label %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !25, !noalias !246
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !25, !noalias !246
  br label %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i

_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.not.i.i.i.i.i.i.i18.i.i.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i.i.i.i.i18.i.i.i, label %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i
  %i.af = load i64, ptr %i.v, align 8, !tbaa !250, !noalias !246
  %i.ag = shl i64 %i.af, 3
  call void @_ZdaPvm(ptr noundef %i.aa, i64 noundef %i.ag) #11, !noalias !246
  %.pre2.pre.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !249, !noalias !246
  br label %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i

_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i
  %.pre2.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZSt18uninitialized_copyIPP11lean_objectS2_ET0_T_S4_S3_.exit.i.i.i.i.i.i.i.i ], [ %.pre2.pre.i.i.i.i.i.i, %bb.o ]
  %i.ah = shl i64 %i.w, 1                         ; 2 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !247, !noalias !246
  store i64 %i.ah, ptr %i.v, align 8, !tbaa !250, !noalias !246
  br label %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i

_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i: ; preds = %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ai = phi i64 [ %i.w, %._crit_edge.i.i.i.i.i.i ], [ %i.ah, %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i ]
  %i.aj = phi i64 [ %i.x, %._crit_edge.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.z, %_ZN4lean6bufferIP11lean_objectLm16EE6expandEv.exit.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store ptr %storemerge4.i.i.i.i.i, ptr %i.al, align 8, !tbaa !25, !noalias !246
  %i.am = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.am, ptr %i.u, align 8, !tbaa !249, !noalias !246
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %storemerge.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !25, !noalias !246 ; 2 uses
  %i.ao = ptrtoint ptr %storemerge.i.i.i.i.i to i64
  %i.ap = trunc i64 %i.ao to i1
  br i1 %i.ap, label %bb.p, label %bb.j, !llvm.loop !251

bb.p:                                             ; preds = %_ZN4lean6bufferIP11lean_objectLm16EE9push_backERKS2_.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %4, align 8, !tbaa !247, !noalias !246 ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN4lean10object_refD2Ev.exit64.i.i.i.i, %bb.p
  %.024.i.i.i.i = phi ptr [ %i.ar, %bb.p ], [ %.2.i.i.i.i, %_ZN4lean10object_refD2Ev.exit64.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.024.i.i.i.i, %i.aq
  br i1 %.not.i.i.i.i, label %bb.bg, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds i8, ptr %.024.i.i.i.i, i64 -8 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25, !noalias !246 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11, !noalias !246
  invoke void @_ZN4lean11instantiateERKNS_5levelERKNS_8list_refINS_4nameEEERKNS3_IS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i" unwind label %bb.au, !noalias !246

"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i": ; preds = %bb.r
  %i.ax = load ptr, ptr %5, align 8, !tbaa !8, !noalias !246 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !8, !noalias !246
  %.not37.i.i.i.i = icmp eq ptr %i.ax, %i.ay      ; 2 uses
  br i1 %.not37.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i"
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11, !noalias !246
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8, !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !252
  store ptr %i.ax, ptr %i.b, align 16, !tbaa !25, !noalias !252
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !25, !noalias !252
  invoke void @_ZN4lean8mk_cnstrEjjPP11lean_objectj(ptr dead_on_unwind nonnull writable sret(%"class.lean::object_ref") align 8 %3, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.b, i32 noundef 0)
          to label %.noexc51.i.i.i.i unwind label %bb.av, !noalias !246

.noexc51.i.i.i.i:                                 ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !252
  %i.bb = load ptr, ptr %3, align 8, !tbaa !8, !noalias !246 ; 2 uses
  store ptr %i.bb, ptr %9, align 8, !tbaa !8, !alias.scope !243, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !246
  %i.bc = load ptr, ptr %5, align 8, !tbaa !8, !noalias !246 ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i

bb.t:                                             ; preds = %.noexc51.i.i.i.i
  %.val.i.i.i.i.i19.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.bf = icmp sgt i32 %.val.i.i.i.i.i19.i.i.i, 0
  br i1 %i.bf, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.bg = add nuw i32 %.val.i.i.i.i.i19.i.i.i, 1
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %.not.i.i.i6.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i19.i.i.i, 0
  br i1 %.not.i.i.i6.i.i.i.i.i, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = atomicrmw sub ptr %i.bc, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i

_ZN4lean3incEP11lean_object.exit.i.i.i.i.i:       ; preds = %bb.w, %bb.v, %bb.u, %.noexc51.i.i.i.i
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !8, !noalias !246 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i.i7.i.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i7.i.i.i.i.i, label %bb.x, label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i

bb.x:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i
  %.val.i.i.i8.i.i.i.i.i = load i32, ptr %i.bi, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.bl = icmp sgt i32 %.val.i.i.i8.i.i.i.i.i, 0
  br i1 %i.bl, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.bm = add nuw i32 %.val.i.i.i8.i.i.i.i.i, 1
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %.not.i.i.i9.i.i.i.i.i = icmp eq i32 %.val.i.i.i8.i.i.i.i.i, 0
  br i1 %.not.i.i.i9.i.i.i.i.i, label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = atomicrmw sub ptr %i.bi, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  br label %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i

_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i
  %.not385.i.i.i.i = icmp eq ptr %i.au, %i.aq
  br i1 %.not385.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i
  %.promoted.i.i.i = load ptr, ptr %9, align 8, !noalias !235
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4lean10object_refD2Ev.exit61.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %12 = phi ptr [ %i.cj, %_ZN4lean10object_refD2Ev.exit61.i.i.i.i ], [ %.promoted.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.bo = phi ptr [ %i.cj, %_ZN4lean10object_refD2Ev.exit61.i.i.i.i ], [ %i.bb, %.lr.ph.i.preheader.i.i.i ] ; 8 uses
  %.16.i.i.i.i = phi ptr [ %i.bp, %_ZN4lean10object_refD2Ev.exit61.i.i.i.i ], [ %i.au, %.lr.ph.i.preheader.i.i.i ]
  %i.bp = getelementptr inbounds i8, ptr %.16.i.i.i.i, i64 -8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25, !noalias !246
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11, !noalias !246
  invoke void @_ZN4lean11instantiateERKNS_5levelERKNS_8list_refINS_4nameEEERKNS3_IS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit53.i.i.i.i" unwind label %bb.aw, !noalias !246

"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit53.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %i.bs = load ptr, ptr %7, align 8, !tbaa !8, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !258
  store ptr %i.bs, ptr %i.a, align 16, !tbaa !25, !noalias !258
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !25, !noalias !258
  invoke void @_ZN4lean8mk_cnstrEjjPP11lean_objectj(ptr dead_on_unwind nonnull writable sret(%"class.lean::object_ref") align 8 %6, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 0)
          to label %.noexc56.i.i.i.i unwind label %bb.ax, !noalias !246

.noexc56.i.i.i.i:                                 ; preds = %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit53.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !258
  %i.bt = load ptr, ptr %7, align 8, !tbaa !8, !noalias !255 ; 4 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, 1
  %.not.i.i.i.i54.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i54.i.i.i.i, label %bb.ab, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc56.i.i.i.i
  %.val.i.i.i.i.i55.i.i.i.i = load i32, ptr %i.bt, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i.i.i.i55.i.i.i.i, 0
  br i1 %i.bw, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nuw i32 %.val.i.i.i.i.i55.i.i.i.i, 1
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i.i6.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i55.i.i.i.i, 0
  br i1 %.not.i.i.i6.i.i.i.i.i.i, label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = atomicrmw sub ptr %i.bt, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i

_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i:     ; preds = %bb.ae, %bb.ad, %bb.ac, %.noexc56.i.i.i.i
  %i.bz = ptrtoint ptr %i.bo to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i.i7.i.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i7.i.i.i.i.i.i, label %bb.af, label %_ZN4lean10object_refD2Ev.exit.i.i.i.i

bb.af:                                            ; preds = %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i
  %.val.i.i.i8.i.i.i.i.i.i = load i32, ptr %i.bo, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.cb = icmp sgt i32 %.val.i.i.i8.i.i.i.i.i.i, 0
  br i1 %i.cb, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.cc = add nuw i32 %.val.i.i.i8.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.cc, ptr %i.bo, align 4, !tbaa !11, !noalias !246
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.i9.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i8.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i9.i.i.i.i.i.i, label %_ZN4lean10object_refD2Ev.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = atomicrmw sub ptr %i.bo, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  %.pr.i.i.i.i = load i32, ptr %i.bo, align 4, !tbaa !11, !noalias !246
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.ce = phi i32 [ %.pr.i.i.i.i, %bb.ai ], [ %i.cc, %bb.ag ] ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %bb.ak, label %bb.al, !prof !261

bb.ak:                                            ; preds = %bb.aj
  %i.cg = add nsw i32 %i.ce, -1
  store i32 %i.cg, ptr %i.bo, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean10object_refD2Ev.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %.not.i1.i.i.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZN4lean10object_refD2Ev.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bo)
          to label %_ZN4lean10object_refD2Ev.exit.i.i.i.i unwind label %bb.an, !noalias !246

bb.an:                                            ; preds = %bb.am
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  store ptr %12, ptr %9, align 8, !noalias !235
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #12, !noalias !246
  unreachable

_ZN4lean10object_refD2Ev.exit.i.i.i.i:            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ah, %_ZN4lean3incEP11lean_object.exit.i.i.i.i.i.i
  %i.cj = load ptr, ptr %6, align 8, !tbaa !8, !noalias !246 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %6, align 8, !tbaa !8, !noalias !246
  %i.ck = load ptr, ptr %7, align 8, !tbaa !8, !noalias !246 ; 4 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = and i64 %i.cl, 1
  %.not.i.i.i59.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i59.i.i.i.i, label %bb.ao, label %_ZN4lean10object_refD2Ev.exit61.i.i.i.i

bb.ao:                                            ; preds = %_ZN4lean10object_refD2Ev.exit.i.i.i.i
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.ap, label %bb.aq, !prof !13

bb.ap:                                            ; preds = %bb.ao
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.ck, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean10object_refD2Ev.exit61.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %.not.i1.i.i60.i.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i1.i.i60.i.i.i.i, label %_ZN4lean10object_refD2Ev.exit61.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ck)
          to label %_ZN4lean10object_refD2Ev.exit61.i.i.i.i unwind label %bb.as, !noalias !246

bb.as:                                            ; preds = %bb.ar
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.cj, ptr %9, align 8, !noalias !235
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #12, !noalias !246
  unreachable

_ZN4lean10object_refD2Ev.exit61.i.i.i.i:          ; preds = %bb.ar, %bb.aq, %bb.ap, %_ZN4lean10object_refD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !246
  %.not38.i.i.i.i = icmp eq ptr %i.bp, %i.aq
  br i1 %.not38.i.i.i.i, label %.loopexit.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !262

bb.at:                                            ; preds = %bb.k
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.au:                                            ; preds = %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.av:                                            ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  store ptr %12, ptr %9, align 8, !noalias !235
  br label %bb.ay

bb.ax:                                            ; preds = %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit53.i.i.i.i"
  %i.cw = landingpad { ptr, i32 }
          cleanup
  store ptr %12, ptr %9, align 8, !noalias !235
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11, !noalias !246
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.ax ], [ %i.cv, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !246
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11, !noalias !235
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.ay ], [ %i.cu, %bb.av ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #11, !noalias !235
  br label %bb.bf

.loopexit.i.loopexit.i.i.i:                       ; preds = %_ZN4lean10object_refD2Ev.exit61.i.i.i.i
  store ptr %i.cj, ptr %9, align 8, !noalias !235
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.loopexit.i.i.i, %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i, %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i"
  %.2.i.i.i.i = phi ptr [ %i.au, %"_ZZZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEEENK3$_0clES2_ENKUlRKS8_E_clESE_.exit.i.i.i.i" ], [ %i.aq, %_ZN4lean8list_refINS_5levelEEC2ERKS1_RKS2_.exit.i.i.i.i ], [ %i.aq, %.loopexit.i.loopexit.i.i.i ]
  %i.cx = load ptr, ptr %5, align 8, !tbaa !8, !noalias !246 ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i.i.i62.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i62.i.i.i.i, label %bb.ba, label %_ZN4lean10object_refD2Ev.exit64.i.i.i.i

bb.ba:                                            ; preds = %.loopexit.i.i.i.i
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bb, label %bb.bc, !prof !13

bb.bb:                                            ; preds = %bb.ba
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean10object_refD2Ev.exit64.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %.not.i1.i.i63.i.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i1.i.i63.i.i.i.i, label %_ZN4lean10object_refD2Ev.exit64.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.cx)
          to label %_ZN4lean10object_refD2Ev.exit64.i.i.i.i unwind label %bb.be, !noalias !246

bb.be:                                            ; preds = %bb.bd
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #12, !noalias !246
  unreachable

_ZN4lean10object_refD2Ev.exit64.i.i.i.i:          ; preds = %bb.bd, %bb.bc, %bb.bb, %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !246
  br i1 %.not37.i.i.i.i, label %bb.q, label %_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i, !llvm.loop !263

bb.bf:                                            ; preds = %bb.az, %bb.au
  %.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i.i, %bb.az ], [ %i.ct, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11, !noalias !246
  br label %bb.bm

bb.bg:                                            ; preds = %bb.q
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !8, !noalias !246 ; 5 uses
  store ptr %i.df, ptr %9, align 8, !tbaa !8, !alias.scope !243, !noalias !235
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = and i64 %i.dg, 1
  %.not.i.i.i.i65.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i65.i.i.i.i, label %bb.bh, label %_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i.i.i.i66.i.i.i.i = load i32, ptr %i.df, align 4, !tbaa !11, !noalias !246 ; 3 uses
  %i.di = icmp sgt i32 %.val.i.i.i.i.i66.i.i.i.i, 0
  br i1 %i.di, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.dj = add nuw i32 %.val.i.i.i.i.i66.i.i.i.i, 1
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !11, !noalias !246
  br label %_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i.i.i.i67.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i66.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i67.i.i.i.i, label %_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dk = atomicrmw sub ptr %i.df, i32 1 monotonic, align 4, !noalias !246 ; 0 uses
  br label %_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i

_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i: ; preds = %_ZN4lean10object_refD2Ev.exit64.i.i.i.i, %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %i.dl = load ptr, ptr %4, align 8, !tbaa !247, !noalias !246 ; 2 uses
  %.not.i.i.i69.i.i.i.i = icmp eq ptr %i.dl, %i.t
  br i1 %.not.i.i.i69.i.i.i.i, label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i
  %i.dm = load i64, ptr %i.v, align 8, !tbaa !250, !noalias !246
  %i.dn = shl i64 %i.dm, 3
  call void @_ZdaPvm(ptr noundef %i.dl, i64 noundef %i.dn) #11, !noalias !246
  br label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit.i.i.i.i

_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit.i.i.i.i: ; preds = %bb.bl, %_ZN4lean8list_refINS_5levelEEC2ERKS2_.exit68.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !246
  br label %"_ZN4lean9map_reuseINS_5levelEZZNS_19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS5_IS1_EEENK3$_0clES4_EUlRKS1_E_EENS5_IT_EERKSI_OT0_.exit.i.i.i"

bb.bm:                                            ; preds = %bb.bf, %bb.at
  %.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.cs, %bb.at ], [ %.pn.pn.pn.pn.i.i.i.i, %bb.bf ]
  %i.do = load ptr, ptr %4, align 8, !tbaa !247, !noalias !246 ; 2 uses
  %.not.i.i.i70.i.i.i.i = icmp eq ptr %i.do, %i.t
  br i1 %.not.i.i.i70.i.i.i.i, label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit71.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dp = load i64, ptr %i.v, align 8, !tbaa !250, !noalias !246
  %i.dq = shl i64 %i.dp, 3
  call void @_ZdaPvm(ptr noundef %i.do, i64 noundef %i.dq) #11, !noalias !235
  br label %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit71.i.i.i.i

common.resume.i.i.i:                              ; preds = %bb.ca, %bb.bt, %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit71.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i.i, %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit71.i.i.i.i ], [ %i.eb, %bb.bt ], [ %i.eq, %bb.ca ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit71.i.i.i.i: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !246
  br label %common.resume.i.i.i

"_ZN4lean9map_reuseINS_5levelEZZNS_19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS5_IS1_EEENK3$_0clES4_EUlRKS1_E_EENS5_IT_EERKSI_OT0_.exit.i.i.i": ; preds = %_ZN4lean6bufferIP11lean_objectLm16EED2Ev.exit.i.i.i.i, %bb.i
  invoke void @_ZN4lean12update_constERKNS_4exprERKNS_8list_refINS_5levelEEE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4lean10object_refD2Ev.exit.i.i.i unwind label %bb.bt, !noalias !235

_ZN4lean10object_refD2Ev.exit.i.i.i:              ; preds = %"_ZN4lean9map_reuseINS_5levelEZZNS_19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS5_IS1_EEENK3$_0clES4_EUlRKS1_E_EENS5_IT_EERKSI_OT0_.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  store i8 1, ptr %0, align 8, !tbaa !83, !alias.scope !267
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %8, align 8, !tbaa !8, !noalias !267
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !8, !alias.scope !267
  store ptr inttoptr (i64 1 to ptr), ptr %8, align 8, !tbaa !8, !noalias !267
  %i.dt = load ptr, ptr %9, align 8, !tbaa !8, !noalias !235 ; 4 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = and i64 %i.du, 1
  %.not.i.i.i21.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i21.i.i.i, label %bb.bo, label %_ZN4lean10object_refD2Ev.exit23.i.i.i

bb.bo:                                            ; preds = %_ZN4lean10object_refD2Ev.exit.i.i.i
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !11, !noalias !235 ; 3 uses
  %i.dx = icmp sgt i32 %i.dw, 1
  br i1 %i.dx, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %bb.bo
  %i.dy = add nsw i32 %i.dw, -1
  store i32 %i.dy, ptr %i.dt, align 4, !tbaa !11, !noalias !235
  br label %_ZN4lean10object_refD2Ev.exit23.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %.not.i1.i.i22.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i1.i.i22.i.i.i, label %_ZN4lean10object_refD2Ev.exit23.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.dt)
          to label %_ZN4lean10object_refD2Ev.exit23.i.i.i unwind label %bb.bs, !noalias !235

bb.bs:                                            ; preds = %bb.br
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #12, !noalias !235
  unreachable

_ZN4lean10object_refD2Ev.exit23.i.i.i:            ; preds = %bb.br, %bb.bq, %bb.bp, %_ZN4lean10object_refD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11, !noalias !235
  br label %"_ZSt10__invoke_rIN4lean8optionalINS0_4exprEEERZNS0_19instantiate_lparamsERKS2_RKNS0_8list_refINS0_4nameEEERKNS6_INS0_5levelEEEE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit"

bb.bt:                                            ; preds = %"_ZN4lean9map_reuseINS_5levelEZZNS_19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS5_IS1_EEENK3$_0clES4_EUlRKS1_E_EENS5_IT_EERKSI_OT0_.exit.i.i.i"
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11, !noalias !235
  br label %common.resume.i.i.i

bb.bu:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11, !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11, !noalias !235
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ed = load ptr, ptr %1, align 8, !tbaa !240, !noalias !235, !nonnull !55, !align !157
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !242, !noalias !235, !nonnull !55, !align !157
  call void @_ZN4lean11instantiateERKNS_5levelERKNS_8list_refINS_4nameEEERKNS3_IS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(8) %i.ef), !noalias !235
  invoke void @_ZN4lean11update_sortERKNS_4exprERKNS_5levelE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN4lean10object_refD2Ev.exit26.i.i.i unwind label %bb.ca, !noalias !235

_ZN4lean10object_refD2Ev.exit26.i.i.i:            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  store i8 1, ptr %0, align 8, !tbaa !83, !alias.scope !271
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load ptr, ptr %10, align 8, !tbaa !8, !noalias !271
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !8, !alias.scope !271
  store ptr inttoptr (i64 1 to ptr), ptr %10, align 8, !tbaa !8, !noalias !271
  %i.ei = load ptr, ptr %11, align 8, !tbaa !8, !noalias !235 ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = and i64 %i.ej, 1
  %.not.i.i.i27.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i27.i.i.i, label %bb.bv, label %_ZN4lean10object_refD2Ev.exit29.i.i.i

bb.bv:                                            ; preds = %_ZN4lean10object_refD2Ev.exit26.i.i.i
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !11, !noalias !235 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %bb.bw, label %bb.bx, !prof !13

bb.bw:                                            ; preds = %bb.bv
  %i.en = add nsw i32 %i.el, -1
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !11, !noalias !235
  br label %_ZN4lean10object_refD2Ev.exit29.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %.not.i1.i.i28.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i1.i.i28.i.i.i, label %_ZN4lean10object_refD2Ev.exit29.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ei)
          to label %_ZN4lean10object_refD2Ev.exit29.i.i.i unwind label %bb.bz, !noalias !235

bb.bz:                                            ; preds = %bb.by
  %i.eo = landingpad { ptr, i32 }
end_hunk_0
