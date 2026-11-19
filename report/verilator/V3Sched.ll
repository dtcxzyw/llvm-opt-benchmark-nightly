Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Sched?download=true
inline.NumInlined: 4815
inline.NumDeleted: 1903
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK7V3Sched17VirtIfaceTriggers17makeVscpToSensMapERKNS_10TriggerKitEjP11AstVarScope:bb.a
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.c ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = icmp ult ptr %i.n, %i.l                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK11AstVarScopeP10AstSenTreeSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %bb.c, !llvm.loop !465

_ZNSt3mapIPK11AstVarScopeP10AstSenTreeSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.c
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.p, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIPK11AstVarScopeP10AstSenTreeSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = icmp ult ptr %i.l, %i.r
  br i1 %i.s, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %bb.d, %_ZNSt3mapIPK11AstVarScopeP10AstSenTreeSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.b
  %.08.lcssa.i.i.i20.i = phi ptr [ %.19.i.i.i.i, %bb.d ], [ %.19.i.i.i.i, %_ZNSt3mapIPK11AstVarScopeP10AstSenTreeSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %bb.b ]
  %i.t = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc11 unwind label %bb.j   ; 5 uses

.noexc11:                                         ; preds = %.critedge.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !46
  store ptr %i.v, ptr %i.u, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.i, ptr %i.w, align 8, !tbaa !52
  %i.x = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.e unwind label %_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.e:                                             ; preds = %.noexc11
  %i.y = extractvalue { ptr, ptr } %i.x, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %.not.i.i.i = icmp ne ptr %i.z, null
  %i.aa = icmp eq ptr %i.y, %i.a
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.aa
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.af = phi i1 [ %i.ae, %bb.g ], [ true, %bb.f ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.af, ptr noundef nonnull %i.t, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !42
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !42
  br label %bb.i

_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc11
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #29
  br label %.body

bb.h:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %.thread.i
  %i.aj = add i32 %.017, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.critedge.i, %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.ai, %_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  tail call void @_ZNSt3mapIPK11AstVarScopeP10AstSenTreeSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK7V3Sched10TriggerKit22newExtraTriggerSenTreeEP11AstVarScopej(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIPK11AstVarScopeP10AstSenTreeSt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  invoke void @_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeIPK11AstVarScopeSt4pairIKS2_P10AstSenTreeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIPK10AstSenTreePS1_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S4_EEEP11AstVarScope(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.11") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 7 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %class.VNUser1InUse, align 1        ; 4 uses
  %4 = alloca %class.anon.138, align 8            ; 6 uses
  %5 = alloca %"struct.std::hash", align 1        ; 4 uses
  %6 = alloca %"struct.std::equal_to", align 1    ; 4 uses
  %7 = alloca %"class.std::allocator.139", align 1 ; 4 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !46
  %i.d = load ptr, ptr @v3Global, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @_ZN15VNUserInUseBase8allocateEiRjRb(i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser1InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser1InUse10s_userBusyE)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.02076 = load ptr, ptr %i.g, align 8, !tbaa !142 ; 2 uses
  %.not77 = icmp eq ptr %.02076, null
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !143
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !145  ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i.i, label %._crit_edge84, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.j, %._crit_edge ]
  %i.k = load ptr, ptr %.sroa.02.05.i.i.i, align 8, !tbaa !146 ; 2 uses
  %i.l = add nuw nsw i64 %.06.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZSt10__distanceINSt8__detail20_Node_const_iteratorISt4pairIKPK10AstSenTreePS3_ELb0ELb0EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !466

_ZSt10__distanceINSt8__detail20_Node_const_iteratorISt4pairIKPK10AstSenTreePS3_ELb0ELb0EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.m = icmp samesign ugt i64 %.06.i.i.i, 576460752303423486
  br i1 %i.m, label %bb.b, label %_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EE11_M_allocateEm.exit.i.i

bb.b:                                             ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorISt4pairIKPK10AstSenTreePS3_ELb0ELb0EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.552) #31
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorISt4pairIKPK10AstSenTreePS3_ELb0ELb0EEEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i
  %i.n = shl nuw nsw i64 %i.l, 4
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EED2Ev.exit.i ; 11 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.idx = phi i64 [ %.013.i.i.i.i.i.i.add, %.lr.ph.i.i.i.i.i.i ], [ 0, %_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.013.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.o, i64 %.013.i.i.i.i.i.i.idx
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !147
  store <2 x ptr> %i.q, ptr %.013.i.i.i.i.i.i.ptr, align 8, !tbaa !147
  %i.r = load ptr, ptr %.sroa.08.012.i.i.i.i.i.i, align 8, !tbaa !146 ; 2 uses
  %.013.i.i.i.i.i.i.add = add nuw nsw i64 %.013.i.i.i.i.i.i.idx, 16 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPK10AstSenTreePS1_ESaIS5_EEC2INSt8__detail20_Node_const_iteratorIS0_IKS3_S4_ELb0ELb0EEEvEET_SE_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !467

_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseISt4pairIPK10AstSenTreePS1_ESaIS5_EE11_M_allocateEm.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.02079 = phi ptr [ %.02076, %.lr.ph ], [ %.020, %bb.c ] ; 3 uses
  %.078 = phi i32 [ 0, %.lr.ph ], [ %8, %bb.c ]
  %8 = add nuw nsw i32 %.078, 1                   ; 2 uses
  %.sroa.0.0.insert.ext.i = zext nneg i32 %8 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.02079, i64 104
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.t, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %.02079, i64 112
  store i32 %i.h, ptr %i.u, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw i8, ptr %.02079, i64 8
  %.020 = load ptr, ptr %i.v, align 8, !tbaa !142 ; 2 uses
  %.not = icmp eq ptr %.020, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !468

_ZNSt6vectorISt4pairIPK10AstSenTreePS1_ESaIS5_EEC2INSt8__detail20_Node_const_iteratorIS0_IKS3_S4_ELb0ELb0EEEvEET_SE_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.o, i64 %.013.i.i.i.i.i.i.add ; 5 uses
  %i.x = lshr exact i64 %.013.i.i.i.i.i.i.add, 4
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_SV_T0_T1_"(ptr nonnull %i.o, ptr nonnull %.ptr.le, i64 noundef %i.aa)
  %i.ab = icmp samesign ugt i64 %.013.i.i.i.i.i.i.idx, 255
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairIPK10AstSenTreePS1_ESaIS5_EEC2INSt8__detail20_Node_const_iteratorIS0_IKS3_S4_ELb0ELb0EEEvEET_SE_RKS6_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 256 ; 2 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_SV_T0_"(ptr nonnull %i.o, ptr nonnull %i.ac)
  %i.ad = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !143 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_T0_.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.bg, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 7 uses
  %i.ae = load <2 x ptr>, ptr %.sroa.0.08.i.i.i.i, align 8
  %.sroa.04.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.08.i.i.i.i, align 8 ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.04.0.copyload.i.i.i.i.i, i64 104 ; 2 uses
  %i.ag = getelementptr i8, ptr %.sroa.04.0.copyload.i.i.i.i.i, i64 112
  %.val.val1.i.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !149
  %i.ah = icmp eq i32 %.val.val1.i.i.i.i.i, %i.ad
  %.fr.i.i.i.i.i = freeze i1 %i.ah                ; 2 uses
  %.sroa.0.08.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i, i64 -16 ; 3 uses
  %.val.val9.i.i.i.i.i = load i64, ptr %i.af, align 8
  %.val2.i10.i.i.i.i.i = load ptr, ptr %.sroa.0.08.i.i.i.i.i, align 8, !tbaa !151 ; 4 uses
  %i.ai = getelementptr i8, ptr %.val2.i10.i.i.i.i.i, i64 104
  %.val2.val.i11.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %.val2.i10.i.i.i.i.i, i64 112
  %.val2.val4.i12.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !149
  %i.ak = trunc i64 %.val.val9.i.i.i.i.i to i32
  %.sroa.0.0.extract.trunc.i.i.i13.i.i.i.i.i = select i1 %.fr.i.i.i.i.i, i32 %i.ak, i32 0
  %i.al = icmp eq i32 %.val2.val4.i12.i.i.i.i.i, %i.ad
  %i.am = trunc i64 %.val2.val.i11.i.i.i.i.i to i32
  %.sroa.0.0.extract.trunc.i2.i.i14.i.i.i.i.i = select i1 %i.al, i32 %i.am, i32 0
  %i.an = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i13.i.i.i.i.i, %.sroa.0.0.extract.trunc.i2.i.i14.i.i.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d
  br i1 %.fr.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %.val2.i17.us.i.i.i.i.i = phi ptr [ %.val2.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i ], [ %.val2.i10.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.016.us.i.i.i.i.i = phi ptr [ %.sroa.0.0.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.05.015.us.i.i.i.i.i = phi ptr [ %.sroa.0.016.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.val2.i17.us.i.i.i.i.i, ptr %.sroa.05.015.us.i.i.i.i.i, align 8, !tbaa !151
  %i.ao = getelementptr inbounds i8, ptr %.sroa.05.015.us.i.i.i.i.i, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !147
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.015.us.i.i.i.i.i, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !152
  %.sroa.0.0.us.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.us.i.i.i.i.i, i64 -16 ; 2 uses
  %.val.val.us.i.i.i.i.i = load i64, ptr %i.af, align 8
  %.val2.i.us.i.i.i.i.i = load ptr, ptr %.sroa.0.0.us.i.i.i.i.i, align 8, !tbaa !151 ; 3 uses
  %i.ar = getelementptr i8, ptr %.val2.i.us.i.i.i.i.i, i64 104
  %.val2.val.i.us.i.i.i.i.i = load i64, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %.val2.i.us.i.i.i.i.i, i64 112
  %.val2.val4.i.us.i.i.i.i.i = load i32, ptr %i.as, align 8, !tbaa !149
  %i.at = trunc i64 %.val.val.us.i.i.i.i.i to i32
  %i.au = icmp eq i32 %.val2.val4.i.us.i.i.i.i.i, %i.ad
  %i.av = trunc i64 %.val2.val.i.us.i.i.i.i.i to i32
  %.sroa.0.0.extract.trunc.i2.i.i.us.i.i.i.i.i = select i1 %i.au, i32 %i.av, i32 0
  %i.aw = icmp sgt i32 %.sroa.0.0.extract.trunc.i2.i.i.us.i.i.i.i.i, %i.at
  br i1 %i.aw, label %.lr.ph.split.us.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !0

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %.val2.i17.i.i.i.i.i = phi ptr [ %.val2.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %.val2.i10.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.016.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.05.015.i.i.i.i.i = phi ptr [ %.sroa.0.016.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.val2.i17.i.i.i.i.i, ptr %.sroa.05.015.i.i.i.i.i, align 8, !tbaa !151
  %i.ax = getelementptr inbounds i8, ptr %.sroa.05.015.i.i.i.i.i, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !147
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.015.i.i.i.i.i, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !152
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !151 ; 3 uses
  %i.ba = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 104
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 112
  %.val2.val4.i.i.i.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !149
  %i.bc = icmp eq i32 %.val2.val4.i.i.i.i.i.i, %i.ad
  %i.bd = trunc i64 %.val2.val.i.i.i.i.i.i to i32
  %i.be = icmp sgt i32 %i.bd, 0
  %i.bf = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph.split.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !0

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.split.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i, %bb.d
  %.sroa.05.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i, %bb.d ], [ %.sroa.0.016.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ]
  store <2 x ptr> %i.ae, ptr %.sroa.05.0.lcssa.i.i.i.i.i, align 8, !tbaa !147
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %.ptr.le
  br i1 %.not.i.i.i.i, label %.lr.ph83, label %bb.d, !llvm.loop !469

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPK10AstSenTreePS1_ESaIS5_EEC2INSt8__detail20_Node_const_iteratorIS0_IKS3_S4_ELb0ELb0EEEvEET_SE_RKS6_.exit
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_SV_T0_"(ptr nonnull %i.o, ptr nonnull %.ptr.le)
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPK10AstSenTreePS3_ESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIS5_S6_St4hashIS5_ESt8equal_toIS5_ESaIS2_IKS5_S6_EEEP11AstVarScopeE3$_0EEEvT_T0_.exit.i.i.i.i", %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br label %bb.f

._crit_edge84:                                    ; preds = %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit, %._crit_edge
  %.sroa.15.061102 = phi ptr [ null, %._crit_edge ], [ %i.w, %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit ] ; 2 uses
  %.sroa.046.06299 = phi ptr [ null, %._crit_edge ], [ %i.o, %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i6498 = phi ptr [ null, %._crit_edge ], [ %.ptr.le, %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEEC2IN9__gnu_cxx17__normal_iteratorIPS3_IS2_S5_ESt6vectorISN_SaISN_EEEEEET_ST_mRKSD_RKSB_RKS7_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %.sroa.046.06299, ptr %.0.lcssa.i.i.i.i.i.i6498, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt13unordered_mapIPK10AstSenTreePS0_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEEC2IN9__gnu_cxx17__normal_iteratorIPS8_IS2_S3_ESt6vectorISG_SaISG_EEEEEET_SM_mRKS5_RKS7_RKSB_.exit unwind label %bb.u

bb.f:                                             ; preds = %.lr.ph83, %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit
  %.sroa.042.082 = phi ptr [ %i.o, %.lr.ph83 ], [ %i.cp, %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.042.082, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !152
  %i.bm = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(160) %i.bl, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN10AstSenTree9cloneTreeEbb.exit unwind label %bb.q ; 4 uses

_ZN10AstSenTree9cloneTreeEbb.exit:                ; preds = %bb.f
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.c, ptr %4, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !155
  store ptr %i.bm, ptr %i.a, align 16, !tbaa !142
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !142
  invoke fastcc void @"_ZZN7AstNode11foreachImplI9AstVarRefZN7V3Sched32cloneMapWithNewTriggerReferencesERKSt13unordered_mapIPK10AstSenTreePS4_St4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_S7_EEEP11AstVarScopeE3$_1EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bENKUlPS_E_clESV_"(ptr nonnull readonly align 8 dereferenceable(8) %4, ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(152) %i.bm)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZN10AstSenTree9cloneTreeEbb.exit, %bb.l
  %.sroa.050.0.i.i = phi ptr [ %.sroa.050.1.i.i, %bb.l ], [ null, %_ZN10AstSenTree9cloneTreeEbb.exit ] ; 6 uses
  %.036.i.i = phi i64 [ %.137.i.i, %bb.l ], [ 32, %_ZN10AstSenTree9cloneTreeEbb.exit ] ; 3 uses
  %.034.i.i = phi ptr [ %.135.i.i, %bb.l ], [ %i.bh, %_ZN10AstSenTree9cloneTreeEbb.exit ] ; 4 uses
  %.032.i.i = phi ptr [ %.133.i.i, %bb.l ], [ %i.bj, %_ZN10AstSenTree9cloneTreeEbb.exit ] ; 2 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !155 ; 3 uses
  %i.bo = icmp ugt ptr %i.bn, %.034.i.i
  br i1 %i.bo, label %bb.g, label %bb.n, !prof !156

bb.g:                                             ; preds = %.noexc
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -8 ; 5 uses
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !155
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !142 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !142 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %.not40.i.i = icmp ult ptr %i.bp, %.032.i.i
  br i1 %.not40.i.i, label %bb.j, label %bb.h, !prof !156

bb.h:                                             ; preds = %bb.g
  %i.bv = shl i64 %.036.i.i, 1                    ; 3 uses
  %i.bw = icmp ugt i64 %i.bv, 2305843009213693951
  %i.bx = shl i64 %.036.i.i, 4
  %i.by = select i1 %i.bw, i64 -1, i64 %i.bx
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #27
          to label %bb.i unwind label %bb.m       ; 4 uses

bb.i:                                             ; preds = %bb.h
  %i.ca = ptrtoint ptr %i.bp to i64
  %i.cb = ptrtoint ptr %.034.i.i to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.034.i.i, i64 -16
  %i.ce = add i64 %i.cc, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull align 8 %i.cd, i64 %i.ce, i1 false)
  %.not.i.i.i.i32 = icmp eq ptr %.sroa.050.0.i.i, null
  br i1 %.not.i.i.i.i32, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.050.0.i.i) #29
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.cc ; 2 uses
  store ptr %i.cg, ptr %i.b, align 8, !tbaa !155
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bv
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -40
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i, %bb.g
  %i.cj = phi ptr [ %i.bp, %bb.g ], [ %i.cg, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 2 uses
  %.sroa.050.1.i.i = phi ptr [ %.sroa.050.0.i.i, %bb.g ], [ %i.bz, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ] ; 2 uses
  %.137.i.i = phi i64 [ %.036.i.i, %bb.g ], [ %i.bv, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ]
  %.135.i.i = phi ptr [ %.034.i.i, %bb.g ], [ %i.cf, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ]
  %.133.i.i = phi ptr [ %.032.i.i, %bb.g ], [ %i.ci, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
end_hunk_0
