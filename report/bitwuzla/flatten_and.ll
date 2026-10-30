Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/flatten_and?download=true
inline.NumInlined: 654
inline.NumDeleted: 378
begin_hunk_0_@_ZNSt6vectorIN4bzla4NodeESaIS1_EE15_M_range_insertISt16reverse_iteratorIPKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SD_St20forward_iterator_tag:bb.a
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  tail call void @__clang_call_terminate(ptr %i.do) #22
  unreachable

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i78
  unreachable

_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPKN4bzla4NodeEEPS2_S2_ET0_T_S8_S7_RSaIT1_E.exit85: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i79, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i81 = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.dh, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i79 ] ; 5 uses
  %.not14.i.i.i.i.i86 = icmp eq ptr %1, %i.j
  br i1 %.not14.i.i.i.i.i86, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i87

.lr.ph.i.i.i.i.i87:                               ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPKN4bzla4NodeEEPS2_S2_ET0_T_S8_S7_RSaIT1_E.exit85, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i95
  %.016.i.i.i.i.i88 = phi ptr [ %i.dq, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i95 ], [ %.0.lcssa.i.i.i.i81, %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPKN4bzla4NodeEEPS2_S2_ET0_T_S8_S7_RSaIT1_E.exit85 ] ; 4 uses
  %.01215.i.i.i.i.i89 = phi ptr [ %i.dp, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i95 ], [ %1, %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPKN4bzla4NodeEEPS2_S2_ET0_T_S8_S7_RSaIT1_E.exit85 ] ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i88, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i89)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i95 unwind label %bb.ab

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i95: ; preds = %.lr.ph.i.i.i.i.i87
  %i.dp = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i89, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i88, i64 8 ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.dp, %i.j
  br i1 %.not.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i87, !llvm.loop !110

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i87
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  %i.dt = tail call ptr @__cxa_begin_catch(ptr %i.ds) #19 ; 0 uses
  %.not4.i.i.i.i.i.i.i90 = icmp eq ptr %.0.lcssa.i.i.i.i81, %.016.i.i.i.i.i88
  br i1 %.not4.i.i.i.i.i.i.i90, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i91

.lr.ph.i.i.i.i.i.i.i91:                           ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i91
  %.05.i.i.i.i.i.i.i92 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i91 ], [ %.0.lcssa.i.i.i.i81, %bb.ab ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i92) #19
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i92, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i93 = icmp eq ptr %i.du, %.016.i.i.i.i.i88
  br i1 %.not.i.i.i.i.i.i.i93, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i94, label %.lr.ph.i.i.i.i.i.i.i91, !llvm.loop !1

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i94: ; preds = %.lr.ph.i.i.i.i.i.i.i91, %bb.ab
  invoke void @__cxa_rethrow() #21
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i94
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #22
  unreachable

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i94
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit100: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i95, %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPKN4bzla4NodeEEPS2_S2_ET0_T_S8_S7_RSaIT1_E.exit85
  %.0.lcssa.i.i.i.i.i97 = phi ptr [ %.0.lcssa.i.i.i.i81, %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPKN4bzla4NodeEEPS2_S2_ET0_T_S8_S7_RSaIT1_E.exit85 ], [ %i.dq, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i95 ]
  %.not4.i.i = icmp eq ptr %i.ci, %i.j
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.ci, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit100 ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #19
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dy, %i.j
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit:          ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit100
  %.not.i101 = icmp eq ptr %i.ci, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.eb) #20
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit, %bb.af
  store ptr %i.cu, ptr %0, align 8, !tbaa !37
  store ptr %.0.lcssa.i.i.i.i.i97, ptr %i.i, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cr
  store ptr %i.ec, ptr %i.g, align 8, !tbaa !39
  br label %_ZSt4copyISt16reverse_iteratorIPKN4bzla4NodeEEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SE_SD_.exit

.body:                                            ; preds = %bb.y, %bb.ac, %bb.u
  %.0.lpad-body = phi ptr [ %i.cu, %bb.u ], [ %.0.lcssa.i.i.i.i.i69, %bb.y ], [ %.0.lcssa.i.i.i.i81, %bb.ac ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.db, %bb.u ], [ %i.dm, %bb.y ], [ %i.dv, %bb.ac ]
  %i.ed = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ee = tail call ptr @__cxa_begin_catch(ptr %i.ed) #19 ; 0 uses
  %.not4.i.i102 = icmp eq ptr %i.cu, %.0.lpad-body
  br i1 %.not4.i.i102, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %.body, %.lr.ph.i.i103
  %.05.i.i104 = phi ptr [ %i.ef, %.lr.ph.i.i103 ], [ %i.cu, %.body ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i104) #19
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i104, i64 8 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.ef, %.0.lpad-body
  br i1 %.not.i.i105, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i103, !llvm.loop !1

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i103, %.body
  %.not.i107 = icmp eq ptr %i.cu, null
  br i1 %.not.i107, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit108, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  %i.eg = shl nuw nsw i64 %i.cr, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.eg) #20
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit108

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit108: ; preds = %bb.ag, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #21
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit108
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ai

_ZSt4copyISt16reverse_iteratorIPKN4bzla4NodeEEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i42, %_ZSt22__uninitialized_move_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit55, %_ZSt13move_backwardIPN4bzla4NodeES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void

bb.ai:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  tail call void @__clang_call_terminate(ptr %i.ej) #22
  unreachable

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit108
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<bzla::Node, bzla::Node, std::allocator<bzla::Node>, std::__detail::_Identity, std::equal_to<bzla::Node>, std::hash<bzla::Node>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.023.0.in = phi ptr [ %i.c, %bb.b ], [ %.sroa.023.0, %bb.d ]
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !tbaa !33 ; 4 uses
  %.not = icmp eq ptr %.sroa.023.0, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 8
  %i.e = tail call noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  br i1 %i.e, label %.loopexit, label %bb.c, !llvm.loop !111

.thread:                                          ; preds = %bb.c, %bb.a
  %i.f = tail call noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = urem i64 %i.f, %i.h                      ; 3 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !51
  %.not30 = icmp eq i64 %i.j, 0
  br i1 %.not30, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.k = load ptr, ptr %0, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.o = phi i64 [ %.pre.i.i, %bb.f ], [ %i.v, %bb.h ]
  %.015.i.i = phi ptr [ %i.m, %bb.f ], [ %.0.i.i, %bb.h ]
  %.0.i.i = phi ptr [ %i.n, %bb.f ], [ %i.s, %bb.h ] ; 3 uses
  %i.p = icmp eq i64 %i.f, %i.o
  br i1 %i.p, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.r = tail call noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  br i1 %i.r, label %_ZNKSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i, %bb.g
  %i.s = load ptr, ptr %.0.i.i, align 8, !tbaa !33 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.s, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i
  %i.t = load i64, ptr %i.g, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %i.w = urem i64 %i.v, %i.t
  %.not19.i.i = icmp eq i64 %i.w, %i.i
  br i1 %.not19.i.i, label %bb.g, label %.critedge, !llvm.loop !112

_ZNKSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i
  %i.x = load ptr, ptr %.015.i.i, align 8, !tbaa !33 ; 2 uses
  %.not18 = icmp eq ptr %i.x, null
  br i1 %.not18, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS2_EEbRKT_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i, %bb.h, %bb.e, %_ZNKSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.y = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 5 uses
  store ptr null, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN4bzla4NodeES7_NS_10_AllocNodeISaINS_10_Hash_nodeIS5_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSD_.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 24) #20
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.k

common.resume:                                    ; preds = %bb.j, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #22
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN4bzla4NodeES7_NS_10_AllocNodeISaINS_10_Hash_nodeIS5_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSD_.exit: ; preds = %.critedge
  store ptr %0, ptr %4, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.y, ptr %i.ag, align 8, !tbaa !57
  %i.ah = invoke ptr @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i, i64 noundef %i.f, ptr noundef nonnull %i.y, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.m

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN4bzla4NodeES7_NS_10_AllocNodeISaINS_10_Hash_nodeIS5_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.loopexit

bb.m:                                             ; preds = %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN4bzla4NodeES7_NS_10_AllocNodeISaINS_10_Hash_nodeIS5_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSD_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

.loopexit:                                        ; preds = %bb.d, %_ZNKSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.1 = phi ptr [ %i.ah, %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.x, %_ZNKSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit ], [ %.sroa.023.0, %bb.d ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %_ZNKSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #19 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !114
  invoke void @__cxa_rethrow() #21
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !31
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !54
  %i.u = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  store ptr %i.x, ptr %3, align 8, !tbaa !33
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !52
  store ptr %3, ptr %i.y, align 8, !tbaa !33
  br label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  store ptr %i.aa, ptr %3, align 8, !tbaa !33
  store ptr %3, ptr %i.z, align 8, !tbaa !32
  %i.ab = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !54
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !52
  br label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !51
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !117
  br label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4bzla4NodeELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !116

end_hunk_0
