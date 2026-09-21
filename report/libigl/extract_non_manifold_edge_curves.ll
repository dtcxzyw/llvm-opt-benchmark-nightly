Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/extract_non_manifold_edge_curves?download=true
inline.NumInlined: 501
inline.NumDeleted: 288
begin_hunk_0_@_ZNSt6vectorIS_ImSaImEESaIS1_EE12emplace_backIJSt14_List_iteratorImES6_EEERS1_DpOT_:bb.a
  %.06.i.i811.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.f, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i ]
  %i.j = phi ptr [ null, %.preheader.i.i.i.i ], [ %i.i, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.06.i.i811.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !32
  %.not6.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  store i64 %i.n, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.sroa.0.0.copyload.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7

bb.c:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i6.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #17
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_realloc_insertIJSt14_List_iteratorImES6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit
  %i.aa = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZNSt15__new_allocatorISt6vectorImSaImEEE9constructIS2_JSt14_List_iteratorImES6_EEEvPT_DpOT0_.exit ]
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24
  ret ptr %i.ab
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !65 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #17
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !45
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail12_Insert_baseImSt4pairIKmmESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb0EEEE15_M_insert_rangeIPKS3_NS_10_AllocNodeISaINS_10_Hash_nodeIS3_Lb0EEEEEEEEvT_SO_RKT0_St17integral_constantIbLb0EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.e) ; 2 uses
  %i.n = extractvalue { i8, i64 } %i.m, 0
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.p = extractvalue { i8, i64 } %i.m, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.p)
          to label %.lr.ph unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #16 ; 0 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !81
  invoke void @__cxa_rethrow() #19
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit
  %.023 = phi ptr [ %1, %.lr.ph ], [ %i.af, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit ] ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.023, i64 16, i1 false)
  %i.z = load i64, ptr %i.k, align 8, !tbaa !74
  %.not.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %.thread22.i.i.i

.preheader:                                       ; preds = %bb.h, %bb.i
  %.sroa.0.0.in.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.i ], [ %i.w, %bb.h ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !65 ; 4 uses
  %.not27.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not27.i.i.i, label %.thread22.i.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %4 = load i64, ptr %i.y, align 8, !tbaa !22     ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ac = icmp eq i64 %4, %i.ab
  br i1 %i.ac, label %.loopexit.i.i, label %.preheader, !llvm.loop !110

.thread22.i.i.i:                                  ; preds = %.preheader, %bb.h
  %5 = load i64, ptr %i.y, align 8, !tbaa !22
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.i, %.thread22.i.i.i
  %.sroa.019.3.i.i.i = phi ptr [ null, %.thread22.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.i ]
  %.sroa.4.3.i.i.i = phi i64 [ %5, %.thread22.i.i.i ], [ %4, %bb.i ]
  %i.ad = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %.sroa.019.3.i.i.i, i64 noundef %.sroa.4.3.i.i.i, ptr noundef nonnull %i.x)
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i ; 0 uses

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit11.i.i: ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #17
  br label %common.resume

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit: ; preds = %.loopexit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.af, %2
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !111

.loopexit:                                        ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_insertIRKS2_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEOT_RKT0_St17integral_constantIbLb0EE.exit, %bb.a
  ret void
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !114
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !113

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #18 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !64
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.n
  %.072 = phi i8 [ %.2, %bb.n ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ]
  %.05271 = phi ptr [ %.05668, %bb.n ], [ null, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 5 uses
  %.05370 = phi i64 [ %i.l, %bb.n ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05469 = phi i64 [ %.155, %bb.n ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 3 uses
  %.05668 = phi ptr [ %i.i, %bb.n ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 13 uses
  %i.i = load ptr, ptr %.05668, align 8, !tbaa !65 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05668, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = urem i64 %i.k, %1                        ; 6 uses
  %.not62 = icmp ne ptr %.05271, null
  %i.m = icmp eq i64 %.05370, %i.l
  %or.cond = and i1 %.not62, %i.m
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %.05271, align 8, !tbaa !65
  store ptr %i.n, ptr %.05668, align 8, !tbaa !65
  store ptr %.05668, ptr %.05271, align 8, !tbaa !65
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph
  %i.o = trunc nuw i8 %.072 to i1
  br i1 %i.o, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %.05271, align 8, !tbaa !65 ; 2 uses
  %.not63 = icmp eq ptr %i.p, null
  br i1 %.not63, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  %i.s = urem i64 %i.r, %1                        ; 2 uses
  %.not64 = icmp eq i64 %i.s, %.05370
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.s
  store ptr %.05271, ptr %i.t, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.f
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %.not65 = icmp eq ptr %i.v, null
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !64
  store ptr %i.w, ptr %.05668, align 8, !tbaa !65
  store ptr %.05668, ptr %i.g, align 8, !tbaa !64
  store ptr %i.g, ptr %i.u, align 8, !tbaa !75
  %i.x = load ptr, ptr %.05668, align 8, !tbaa !65
  %.not66 = icmp eq ptr %i.x, null
  br i1 %.not66, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.05469
  store ptr %.05668, ptr %i.y, align 8, !tbaa !75
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !65
  store ptr %i.z, ptr %.05668, align 8, !tbaa !65
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !75
  store ptr %.05668, ptr %i.aa, align 8, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.e
  %.155 = phi i64 [ %.05469, %bb.e ], [ %.05469, %bb.m ], [ %i.l, %bb.l ], [ %i.l, %bb.k ]
  %.2 = phi i8 [ 1, %bb.e ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.n
  %i.ab = trunc nuw i8 %.2 to i1
  br i1 %i.ab, label %bb.o, label %._crit_edge.thread

bb.o:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %.05668, align 8, !tbaa !65 ; 2 uses
  %.not60 = icmp eq ptr %i.ac, null
  br i1 %.not60, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.af = urem i64 %i.ae, %1                      ; 2 uses
  %.not61 = icmp eq i64 %i.af, %i.l
  br i1 %.not61, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.af
  store ptr %.05668, ptr %i.ag, align 8, !tbaa !75
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.p, %bb.q, %bb.o, %._crit_edge
  %i.ah = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.am = shl i64 %i.al, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.am) #17
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge.thread, %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.an, align 8, !tbaa !45
  store ptr %.0.i, ptr %0, align 8, !tbaa !44
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

end_hunk_0
