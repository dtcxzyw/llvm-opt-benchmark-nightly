Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/TimeoutQueue?download=true
inline.NumInlined: 723
inline.NumDeleted: 184
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::TimeoutQueue::Event" = type { i64, i64, i64, %"class.std::function" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<folly::TimeoutQueue::Event, std::allocator<folly::TimeoutQueue::Event>>::_Vector_impl" }
%"struct.std::_Vector_base<folly::TimeoutQueue::Event, std::allocator<folly::TimeoutQueue::Event>>::_Vector_impl" = type { %"struct.std::_Vector_base<folly::TimeoutQueue::Event, std::allocator<folly::TimeoutQueue::Event>>::_Vector_impl_data" }
%"struct.std::_Vector_base<folly::TimeoutQueue::Event, std::allocator<folly::TimeoutQueue::Event>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE7insert_INS1_10rvalue_tagEEEPNS1_18ordered_index_nodeISQ_NSU_ISQ_NS1_15index_node_baseIS6_SK_EEEEEERKS6_RSZ_T_ = comdat any

$_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE7insert_INS1_10rvalue_tagEEEPNS1_18ordered_index_nodeISQ_NSU_ISQ_NS1_15index_node_baseIS6_SK_EEEEEERKS6_RSZ_T_ = comdat any

$__clang_call_terminate = comdat any

$_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE = comdat any

$_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NST_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEE = comdat any

$_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_ = comdat any

$_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev = comdat any

$_ZNSt11__copy_moveILb1ELb0ESt26bidirectional_iterator_tagE8__copy_mIN5boost11multi_index6detail19bidir_node_iteratorINS5_18ordered_index_nodeINS5_19null_augment_policyENS5_15index_node_baseIN5folly12TimeoutQueue5EventESaISC_EEEEEEESt20back_insert_iteratorISt6vectorISC_SD_EEEET0_T_SM_SL_ = comdat any

$_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly12TimeoutQueue3addEllSt8functionIFvllEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"struct.folly::TimeoutQueue::Event", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %i.c, ptr %4, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = add nsw i64 %2, %1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -1, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  store ptr %i.l, ptr %i.j, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvllEEC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !42
  store ptr %i.n, ptr %i.o, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvllEEC2EOS1_.exit

_ZNSt8functionIFvllEEC2EOS1_.exit:                ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.p = invoke noundef ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE7insert_INS1_10rvalue_tagEEEPNS1_18ordered_index_nodeISQ_NSU_ISQ_NS1_15index_node_baseIS6_SK_EEEEEERKS6_RSZ_T_(ptr noundef nonnull align 1 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZNSt8functionIFvllEEC2EOS1_.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN5folly12TimeoutQueue5EventD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZN5folly12TimeoutQueue5EventD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #14
  unreachable

_ZN5folly12TimeoutQueue5EventD2Ev.exit:           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i64 %i.c

bb.g:                                             ; preds = %_ZNSt8functionIFvllEEC2EOS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i6, label %_ZN5folly12TimeoutQueue5EventD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZN5folly12TimeoutQueue5EventD2Ev.exit7 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #14
  unreachable

_ZN5folly12TimeoutQueue5EventD2Ev.exit7:          ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE7insert_INS1_10rvalue_tagEEEPNS1_18ordered_index_nodeISQ_NSU_ISQ_NS1_15index_node_baseIS6_SK_EEEEEERKS6_RSZ_T_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = and i64 %i.e, -2                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %select.unfold._crit_edge.thread.i, label %select.unfold.preheader.i

select.unfold.preheader.i:                        ; preds = %bb.a
  %i.h = inttoptr i64 %i.f to ptr
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %select.unfold.i, %select.unfold.preheader.i
  %.pn.i = phi ptr [ %i.k, %select.unfold.i ], [ %i.h, %select.unfold.preheader.i ]
  %.01727.i = getelementptr inbounds i8, ptr %.pn.i, i64 -80 ; 5 uses
  %i.i = load i64, ptr %.01727.i, align 8, !tbaa !45 ; 2 uses
  %i.j = icmp slt i64 %i.a, %i.i                  ; 2 uses
  %.in.v.i = select i1 %i.j, i64 88, i64 96
  %.in.i = getelementptr inbounds nuw i8, ptr %.01727.i, i64 %.in.v.i
  %i.k = load ptr, ptr %.in.i, align 8, !tbaa !48 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %select.unfold._crit_edge.i, label %select.unfold.i

select.unfold._crit_edge.i:                       ; preds = %select.unfold.i
  br i1 %i.j, label %select.unfold._crit_edge.thread.i, label %bb.e

select.unfold._crit_edge.thread.i:                ; preds = %select.unfold._crit_edge.i, %bb.a
  %.018.lcssa33.i = phi ptr [ %.01727.i, %select.unfold._crit_edge.i ], [ %i.c, %bb.a ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -80
  %i.q = select i1 %i.o, ptr null, ptr %i.p
  %i.r = icmp eq ptr %.018.lcssa33.i, %i.q
  br i1 %i.r, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %select.unfold._crit_edge.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i, i64 80 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !45   ; 3 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.w = inttoptr i64 %i.t to ptr
  %i.x = load i64, ptr %i.w, align 8, !tbaa !45
  %i.y = and i64 %i.x, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = icmp eq ptr %i.s, %i.z
  br i1 %i.aa, label %bb.d, label %.critedge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader25.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i.i
  %.0.in26.i.i.i = and i64 %i.t, -2
  %.027.i.i.i = inttoptr i64 %.0.in26.i.i.i to ptr ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.ah = icmp eq ptr %i.s, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i, label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i

.preheader25.i.i.i:                               ; preds = %.critedge.i.i.i, %.preheader25.i.i.i
  %.019.i.i.i = phi ptr [ %i.aj, %.preheader25.i.i.i ], [ %i.ae, %.critedge.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not20.i.i.i, label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i, label %.preheader25.i.i.i, !llvm.loop !0

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.028.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.027.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.ak = load i64, ptr %.028.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i = and i64 %i.ak, -2
  %.0.i.i.i = inttoptr i64 %.0.in.i.i.i to ptr    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.an = icmp eq ptr %.028.i.i.i, %i.am
  br i1 %i.an, label %.lr.ph.i.i.i, label %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i, !llvm.loop !1

_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i: ; preds = %.preheader25.i.i.i, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.d
  %.019.lcssa.sink.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.027.i.i.i, %.preheader.i.i.i ], [ %.019.i.i.i, %.preheader25.i.i.i ] ; 2 uses
  %i.ao = icmp eq ptr %.019.lcssa.sink.i.i.i, null
  %i.ap = getelementptr inbounds i8, ptr %.019.lcssa.sink.i.i.i, i64 -80 ; 2 uses
  %i.aq = select i1 %i.ao, ptr null, ptr %i.ap
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i, %select.unfold._crit_edge.i
  %i.ar = phi i64 [ %.pre, %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i ], [ %i.i, %select.unfold._crit_edge.i ]
  %not..0.i = phi i32 [ 0, %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i ], [ 1, %select.unfold._crit_edge.i ]
  %.018.lcssa32.i = phi ptr [ %.018.lcssa33.i, %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i ], [ %.01727.i, %select.unfold._crit_edge.i ]
  %.023.i = phi ptr [ %i.aq, %_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE9decrementERPSB_.exit.i ], [ %.01727.i, %select.unfold._crit_edge.i ]
  %i.as = icmp slt i64 %i.ar, %i.a
  br i1 %i.as, label %.sink.split.i, label %bb.m

.sink.split.i:                                    ; preds = %bb.e, %select.unfold._crit_edge.thread.i
  %.sroa.0.0.ph = phi i32 [ 0, %select.unfold._crit_edge.thread.i ], [ %not..0.i, %bb.e ]
  %.023.sink.i.ph = phi ptr [ %.018.lcssa33.i, %select.unfold._crit_edge.thread.i ], [ %.018.lcssa32.i, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph, i64 80 ; 3 uses
  %i.au = tail call noundef ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE7insert_INS1_10rvalue_tagEEEPNS1_18ordered_index_nodeISQ_NSU_ISQ_NS1_15index_node_baseIS6_SK_EEEEEERKS6_RSZ_T_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !43    ; 3 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.sink.split.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 9 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !46  ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ba = icmp eq i32 %.sroa.0.0.ph, 0
  br i1 %i.ba, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph, i64 88
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !48
  %i.bc = icmp eq ptr %.023.sink.i.ph, %i.ay
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = load i64, ptr %i.az, align 8, !tbaa !45
  %i.bf = and i64 %i.be, 1
  %i.bg = or i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store ptr %i.ax, ptr %i.bh, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.bk = icmp eq ptr %i.at, %i.bj
  br i1 %i.bk, label %bb.j, label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.ax, ptr %i.bi, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit

bb.k:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph, i64 96
  store ptr %i.ax, ptr %i.bl, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 96 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = icmp eq ptr %i.at, %i.bn
  br i1 %i.bo, label %bb.l, label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit

bb.l:                                             ; preds = %bb.k
  store ptr %i.ax, ptr %i.bm, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.bp = ptrtoint ptr %i.at to i64
  %i.bq = load i64, ptr %i.ax, align 8, !tbaa !45
  %i.br = and i64 %i.bq, 1
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.ax, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store ptr %i.az, ptr %3, align 8, !tbaa !52, !alias.scope !61
  call void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef nonnull %i.ax, ptr noundef nonnull align 8 dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %.sink.split.i, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit
  %.0 = phi ptr [ %i.au, %.sink.split.i ], [ %i.au, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit ], [ %.023.i, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE7insert_INS1_10rvalue_tagEEEPNS1_18ordered_index_nodeISQ_NSU_ISQ_NS1_15index_node_baseIS6_SK_EEEEEERKS6_RSZ_T_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %select.unfold._crit_edge.loopexit.i, label %select.unfold.preheader.i

select.unfold.preheader.i:                        ; preds = %bb.a
  %i.i = inttoptr i64 %i.g to ptr
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %select.unfold.i, %select.unfold.preheader.i
  %.pn.i = phi ptr [ %i.l, %select.unfold.i ], [ %i.i, %select.unfold.preheader.i ] ; 2 uses
  %.01014.i = getelementptr inbounds i8, ptr %.pn.i, i64 -56 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.pn.i, i64 -48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %.not = icmp slt i64 %i.b, %i.k                 ; 2 uses
  %.in.v.i = select i1 %.not, i64 64, i64 72
  %.in.i = getelementptr inbounds nuw i8, ptr %.01014.i, i64 %.in.v.i
  %i.l = load ptr, ptr %.in.i, align 8, !tbaa !48 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %select.unfold._crit_edge.loopexit.i, label %select.unfold.i

select.unfold._crit_edge.loopexit.i:              ; preds = %select.unfold.i, %bb.a
  %.011.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %.01014.i, %select.unfold.i ] ; 4 uses
  %.0.lcssa.i = phi i1 [ true, %bb.a ], [ %.not, %select.unfold.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.011.lcssa.i, i64 56 ; 3 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #15 ; 6 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  store ptr %i.s, ptr %i.q, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit, label %bb.b

bb.b:                                             ; preds = %select.unfold._crit_edge.loopexit.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !42
  store ptr %i.u, ptr %i.w, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !43
  br label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit

_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit: ; preds = %bb.b, %select.unfold._crit_edge.loopexit.i
  %i.x = phi ptr [ %i.o, %select.unfold._crit_edge.loopexit.i ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 9 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %.0.lcssa.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.lcssa.i, i64 64
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !48
  %i.ac = icmp eq ptr %.011.lcssa.i, %i.z
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.af = and i64 %i.ae, 1
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr %i.y, ptr %i.ah, align 8, !tbaa !48
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48
  %i.ak = icmp eq ptr %i.n, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !48
  br label %bb.i

bb.g:                                             ; preds = %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.011.lcssa.i, i64 72
  store ptr %i.y, ptr %i.al, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = icmp eq ptr %i.n, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.y, ptr %i.am, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ap = ptrtoint ptr %i.n to i64
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !45
  %i.ar = and i64 %i.aq, 1
  %i.as = or i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.y, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %3, align 8, !tbaa !52, !alias.scope !64
  call void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret ptr %i.x
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !45
  %i.b = and i64 %i.a, -2
  store i64 %i.b, ptr %0, align 8, !tbaa !45
  %i.c = load ptr, ptr %1, align 8, !tbaa !52     ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %.not99 = icmp eq ptr %0, %i.f
  br i1 %.not99, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !45
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = and i64 %i.j, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.lr.ph126, label %.critedge

.lr.ph:                                           ; preds = %bb.aj
  %i.m = load i64, ptr %.5, align 8, !tbaa !45
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45   ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph126, label %.critedge, !llvm.loop !65

.lr.ph126:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.s = phi i64 [ %i.p, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 5 uses
  %i.t = phi ptr [ %i.o, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 21 uses
  %i.u = phi i64 [ %i.n, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 4 uses
  %.0100125 = phi ptr [ %.5, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 12 uses
  %i.v = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 5 uses
  %i.y = icmp eq ptr %i.x, %i.t
  br i1 %i.y, label %bb.b, label %bb.s

bb.b:                                             ; preds = %.lr.ph126
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 4 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.ae = or disjoint i64 %i.s, 1
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !45
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ag = or i64 %i.af, 1
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !45
  %i.ah = load i64, ptr %.0100125, align 8, !tbaa !45
  %i.ai = and i64 %i.ah, -2
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = and i64 %i.an, -2
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !45
  %i.ap = load i64, ptr %.0100125, align 8, !tbaa !45
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !45
  %i.at = and i64 %i.as, -2
  %i.au = inttoptr i64 %i.at to ptr
  br label %bb.aj

.critedge2:                                       ; preds = %bb.b, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !48 ; 6 uses
  %i.ax = icmp eq ptr %.0100125, %i.aw
  br i1 %i.ax, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.critedge2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 4 uses
  store ptr %i.az, ptr %i.av, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !45
  %i.bb = and i64 %i.ba, 1
  %i.bc = or disjoint i64 %i.bb, %i.u
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !45
  %.pre103 = load i64, ptr %i.t, align 8, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = phi i64 [ %.pre103, %bb.f ], [ %i.s, %bb.e ]
  %i.be = and i64 %i.bd, -2
  %i.bf = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.bg = and i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.aw, align 8, !tbaa !45
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  %i.bj = and i64 %i.bi, -2
  %i.bk = icmp eq i64 %i.u, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %.0100125 to i64
  %i.bm = and i64 %i.bi, 1
  %i.bn = or i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !45
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !45
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit

bb.i:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !45  ; 3 uses
  %i.bp = and i64 %i.bo, -2
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.bt = icmp eq ptr %i.bs, %i.t
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.aw, ptr %i.br, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit

bb.k:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.aw, ptr %i.bu, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit: ; preds = %bb.h, %bb.j, %bb.k
  %i.bv = phi i64 [ %i.bo, %bb.j ], [ %i.bo, %bb.k ], [ %.pre.i, %bb.h ]
  store ptr %i.t, ptr %i.ay, align 8, !tbaa !48
  %i.bw = ptrtoint ptr %.0100125 to i64           ; 2 uses
  %i.bx = and i64 %i.bv, 1
  %i.by = or i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.t, align 8, !tbaa !45
  %.pre104 = and i64 %i.bw, -2
  %.pre105 = inttoptr i64 %.pre104 to ptr
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit, %.critedge2
  %.pre-phi106 = phi ptr [ %.pre105, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit ], [ %i.t, %.critedge2 ] ; 2 uses
  %.1 = phi ptr [ %i.t, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit ], [ %.0100125, %.critedge2 ] ; 3 uses
  %i.bz = load i64, ptr %.pre-phi106, align 8, !tbaa !45
  %i.ca = or i64 %i.bz, 1
  store i64 %i.ca, ptr %.pre-phi106, align 8, !tbaa !45
  %i.cb = load i64, ptr %.1, align 8, !tbaa !45
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !45
  %i.cf = and i64 %i.ce, -2
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !45
  %i.ci = and i64 %i.ch, -2
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !45
  %i.cj = load i64, ptr %.1, align 8, !tbaa !45
  %i.ck = and i64 %i.cj, -2
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !45
  %i.cn = and i64 %i.cm, -2                       ; 3 uses
  %i.co = inttoptr i64 %i.cn to ptr               ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !48 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 4 uses
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !48
  %.not.i41 = icmp eq ptr %i.cs, null
  br i1 %.not.i41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !45
  %i.cu = and i64 %i.ct, 1
  %i.cv = or disjoint i64 %i.cu, %i.cn
  store i64 %i.cv, ptr %i.cs, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !45
  %i.cx = and i64 %i.cw, -2
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !45
  %i.cz = and i64 %i.cy, 1
end_hunk_0
begin_hunk_1_@_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE:bb.a
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !45
  %i.ec = and i64 %i.eb, -2
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !45
  %i.ef = and i64 %i.ee, -2
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !45
  %i.eg = load i64, ptr %.0100125, align 8, !tbaa !45
  %i.eh = and i64 %i.eg, -2
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !45
  %i.ek = and i64 %i.ej, -2
  %i.el = inttoptr i64 %i.ek to ptr
  br label %bb.aj

.critedge4:                                       ; preds = %bb.s, %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !48 ; 6 uses
  %i.eo = icmp eq ptr %.0100125, %i.en
  br i1 %i.eo, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %.critedge4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !48 ; 4 uses
  store ptr %i.eq, ptr %i.em, align 8, !tbaa !48
  %.not.i43 = icmp eq ptr %i.eq, null
  br i1 %.not.i43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !45
  %i.es = and i64 %i.er, 1
  %i.et = or disjoint i64 %i.es, %i.u
  store i64 %i.et, ptr %i.eq, align 8, !tbaa !45
  %.pre = load i64, ptr %i.t, align 8, !tbaa !45
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.eu = phi i64 [ %.pre, %bb.w ], [ %i.s, %bb.v ]
  %i.ev = and i64 %i.eu, -2
  %i.ew = load i64, ptr %i.en, align 8, !tbaa !45
  %i.ex = and i64 %i.ew, 1
  %i.ey = or disjoint i64 %i.ex, %i.ev
  store i64 %i.ey, ptr %i.en, align 8, !tbaa !45
  %i.ez = load i64, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  %i.fa = and i64 %i.ez, -2
  %i.fb = icmp eq i64 %i.u, %i.fa
  br i1 %i.fb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fc = ptrtoint ptr %.0100125 to i64
  %i.fd = and i64 %i.ez, 1
  %i.fe = or i64 %i.fd, %i.fc
  store i64 %i.fe, ptr %i.c, align 8, !tbaa !45
  %.pre.i44 = load i64, ptr %i.t, align 8, !tbaa !45
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit45

bb.z:                                             ; preds = %bb.x
  %i.ff = load i64, ptr %i.t, align 8, !tbaa !45  ; 3 uses
  %i.fg = and i64 %i.ff, -2
  %i.fh = inttoptr i64 %i.fg to ptr               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !48
  %i.fk = icmp eq ptr %i.fj, %i.t
  br i1 %i.fk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.en, ptr %i.fi, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit45

bb.ab:                                            ; preds = %bb.z
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.en, ptr %i.fl, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit45

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit45: ; preds = %bb.y, %bb.aa, %bb.ab
  %i.fm = phi i64 [ %i.ff, %bb.aa ], [ %i.ff, %bb.ab ], [ %.pre.i44, %bb.y ]
  store ptr %i.t, ptr %i.ep, align 8, !tbaa !48
  %i.fn = ptrtoint ptr %.0100125 to i64           ; 2 uses
  %i.fo = and i64 %i.fm, 1
  %i.fp = or i64 %i.fo, %i.fn
  store i64 %i.fp, ptr %i.t, align 8, !tbaa !45
  %.pre107 = and i64 %i.fn, -2
  %.pre109 = inttoptr i64 %.pre107 to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit45, %.critedge4
  %.pre-phi110 = phi ptr [ %.pre109, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit45 ], [ %i.t, %.critedge4 ] ; 2 uses
  %.3 = phi ptr [ %i.t, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit45 ], [ %.0100125, %.critedge4 ] ; 3 uses
  %i.fq = load i64, ptr %.pre-phi110, align 8, !tbaa !45
  %i.fr = or i64 %i.fq, 1
  store i64 %i.fr, ptr %.pre-phi110, align 8, !tbaa !45
  %i.fs = load i64, ptr %.3, align 8, !tbaa !45
  %i.ft = and i64 %i.fs, -2
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.fw = and i64 %i.fv, -2
  %i.fx = inttoptr i64 %i.fw to ptr               ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.fz = and i64 %i.fy, -2
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !45
  %i.ga = load i64, ptr %.3, align 8, !tbaa !45
  %i.gb = and i64 %i.ga, -2
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !45
  %i.ge = and i64 %i.gd, -2                       ; 3 uses
  %i.gf = inttoptr i64 %i.ge to ptr               ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !48 ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !48 ; 4 uses
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !48
  %.not.i46 = icmp eq ptr %i.gj, null
  br i1 %.not.i46, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !45
  %i.gl = and i64 %i.gk, 1
  %i.gm = or disjoint i64 %i.gl, %i.ge
  store i64 %i.gm, ptr %i.gj, align 8, !tbaa !45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gn = load i64, ptr %i.gf, align 8, !tbaa !45
  %i.go = and i64 %i.gn, -2
  %i.gp = load i64, ptr %i.gh, align 8, !tbaa !45
  %i.gq = and i64 %i.gp, 1
  %i.gr = or disjoint i64 %i.gq, %i.go
  store i64 %i.gr, ptr %i.gh, align 8, !tbaa !45
  %i.gs = load i64, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  %i.gt = and i64 %i.gs, -2
  %i.gu = icmp eq i64 %i.ge, %i.gt
  br i1 %i.gu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gv = ptrtoint ptr %i.gh to i64
  %i.gw = and i64 %i.gs, 1
  %i.gx = or i64 %i.gw, %i.gv
  store i64 %i.gx, ptr %i.c, align 8, !tbaa !45
  %.pre.i47 = load i64, ptr %i.gf, align 8, !tbaa !45
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit48

bb.ag:                                            ; preds = %bb.ae
  %i.gy = load i64, ptr %i.gf, align 8, !tbaa !45 ; 3 uses
  %i.gz = and i64 %i.gy, -2
  %i.ha = inttoptr i64 %i.gz to ptr               ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !48
  %i.hd = icmp eq ptr %i.hc, %i.gf
  br i1 %i.hd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.gh, ptr %i.hb, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit48

bb.ai:                                            ; preds = %bb.ag
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.gh, ptr %i.he, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit48

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit48: ; preds = %bb.af, %bb.ah, %bb.ai
  %i.hf = phi i64 [ %i.gy, %bb.ah ], [ %i.gy, %bb.ai ], [ %.pre.i47, %bb.af ]
  store ptr %i.gf, ptr %i.gi, align 8, !tbaa !48
  %i.hg = ptrtoint ptr %i.gh to i64
  %i.hh = and i64 %i.hf, 1
  %i.hi = or i64 %i.hh, %i.hg
  store i64 %i.hi, ptr %i.gf, align 8, !tbaa !45
  br label %bb.aj

bb.aj:                                            ; preds = %bb.u, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit48, %bb.d, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit
  %.5 = phi ptr [ %.1, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE12rotate_rightEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit ], [ %i.au, %bb.d ], [ %i.el, %bb.u ], [ %.3, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit48 ] ; 3 uses
  %i.hj = load i64, ptr %i.c, align 8, !tbaa !45
  %i.hk = and i64 %i.hj, -2
  %i.hl = inttoptr i64 %i.hk to ptr               ; 3 uses
  %.not = icmp eq ptr %.5, %i.hl
  br i1 %.not, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !65

..critedge.loopexit_crit_edge:                    ; preds = %bb.aj
  br label %.critedge, !llvm.loop !65

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.a
  %.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.f, %.lr.ph.preheader ], [ %i.hl, %..critedge.loopexit_crit_edge ], [ %i.hl, %.lr.ph ] ; 2 uses
  %i.hm = load i64, ptr %.lcssa, align 8, !tbaa !45
  %i.hn = or i64 %i.hm, 1
  store i64 %i.hn, ptr %.lcssa, align 8, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly12TimeoutQueue12addRepeatingEllSt8functionIFvllEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"struct.folly::TimeoutQueue::Event", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %i.c, ptr %4, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = add nsw i64 %2, %1
  store i64 %i.g, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  store ptr %i.l, ptr %i.j, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvllEEC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !42
  store ptr %i.n, ptr %i.o, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvllEEC2EOS1_.exit

_ZNSt8functionIFvllEEC2EOS1_.exit:                ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.p = invoke noundef ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE7insert_INS1_10rvalue_tagEEEPNS1_18ordered_index_nodeISQ_NSU_ISQ_NS1_15index_node_baseIS6_SK_EEEEEERKS6_RSZ_T_(ptr noundef nonnull align 1 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZNSt8functionIFvllEEC2EOS1_.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN5folly12TimeoutQueue5EventD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZN5folly12TimeoutQueue5EventD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #14
  unreachable

_ZN5folly12TimeoutQueue5EventD2Ev.exit:           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i64 %i.c

bb.g:                                             ; preds = %_ZNSt8functionIFvllEEC2EOS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i7, label %_ZN5folly12TimeoutQueue5EventD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZN5folly12TimeoutQueue5EventD2Ev.exit8 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #14
  unreachable

_ZN5folly12TimeoutQueue5EventD2Ev.exit8:          ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5folly12TimeoutQueue14nextExpirationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 9223372036854775807, %bb.a ]
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly12TimeoutQueue5eraseEl(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = and i64 %i.e, -2                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = inttoptr i64 %i.f to ptr
  br label %.outer

.outer:                                           ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.pn.i.i.ph = phi ptr [ %i.p, %bb.e ], [ %i.h, %.lr.ph.i.i.i.i ]
  %.03238.i.i.i.i.ph = phi ptr [ %.039.i.i.i.i.le, %bb.e ], [ %i.c, %.lr.ph.i.i.i.i ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %.pn.i.i = phi ptr [ %i.l, %bb.c ], [ %.pn.i.i.ph, %.outer ] ; 5 uses
  %.039.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -80
  %i.i = load i64, ptr %.039.i.i.i.i, align 8, !tbaa !45 ; 2 uses
  %i.j = icmp slt i64 %i.i, %1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit, label %bb.b, !llvm.loop !66

bb.d:                                             ; preds = %bb.b
  %.039.i.i.i.i.le = getelementptr inbounds i8, ptr %.pn.i.i, i64 -80 ; 3 uses
  %i.n = icmp slt i64 %1, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 3 uses
  %i.q = icmp eq ptr %i.p, null                   ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.q, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit, label %.outer, !llvm.loop !66

bb.f:                                             ; preds = %bb.d
  br i1 %i.q, label %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.outer

.lr.ph.i.i.i.i.i.outer:                           ; preds = %bb.f, %bb.g
  %.pn.i.pn.i.i.i.i.ph = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %.0912.i.i.i.i.i.ph = phi ptr [ %.013.i.i.i.i.i.le, %bb.g ], [ %.039.i.i.i.i.le, %bb.f ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.outer, %bb.h
  %.pn.i.pn.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %.pn.i.pn.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.outer ] ; 4 uses
  %.013.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.pn.i.i.i.i, i64 -80
  %i.r = load i64, ptr %.013.i.i.i.i.i, align 8, !tbaa !45
  %i.s = icmp slt i64 %i.r, %1
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i.le = getelementptr inbounds i8, ptr %.pn.i.pn.i.i.i.i, i64 -80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.pn.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.outer, !llvm.loop !67

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.pn.i.pn.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !67

_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.09.lcssa.i.i.i.i.i = phi ptr [ %.039.i.i.i.i.le, %bb.f ], [ %.0912.i.i.i.i.i.ph, %bb.h ], [ %.013.i.i.i.i.i.le, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i, label %.lr.ph.i21.i.i.i.i.outer

.lr.ph.i21.i.i.i.i.outer:                         ; preds = %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i, %bb.i
  %.pn.i25.pn.i.i.i.i.ph = phi ptr [ %i.af, %bb.i ], [ %i.aa, %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i ]
  %.0912.i23.i.i.i.i.ph = phi ptr [ %.013.i22.i.i.i.i.le, %bb.i ], [ %.03238.i.i.i.i.ph, %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i ]
  br label %.lr.ph.i21.i.i.i.i

.lr.ph.i21.i.i.i.i:                               ; preds = %.lr.ph.i21.i.i.i.i.outer, %bb.j
  %.pn.i25.pn.i.i.i.i = phi ptr [ %i.ai, %bb.j ], [ %.pn.i25.pn.i.i.i.i.ph, %.lr.ph.i21.i.i.i.i.outer ] ; 4 uses
  %.013.i22.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i25.pn.i.i.i.i, i64 -80
  %i.ac = load i64, ptr %.013.i22.i.i.i.i, align 8, !tbaa !45
  %i.ad = icmp slt i64 %1, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i21.i.i.i.i
  %.013.i22.i.i.i.i.le = getelementptr inbounds i8, ptr %.pn.i25.pn.i.i.i.i, i64 -80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn.i25.pn.i.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i, label %.lr.ph.i21.i.i.i.i.outer, !llvm.loop !68

bb.j:                                             ; preds = %.lr.ph.i21.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn.i25.pn.i.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i, label %.lr.ph.i21.i.i.i.i, !llvm.loop !68

_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i: ; preds = %bb.j, %bb.i, %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %.03238.i.i.i.i.ph, %_ZN5boost11multi_index6detail25ordered_index_lower_boundINS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_6memberIS8_lXadL_ZNS8_2idEEEEElSt4lessIlEEEPT_SI_SI_RKT0_RKT1_RKT2_N4mpl_5bool_ILb0EEE.exit.i.i.i.i ], [ %.0912.i23.i.i.i.i.ph, %bb.j ], [ %.013.i22.i.i.i.i.le, %bb.i ] ; 2 uses
  %.not8.i = icmp eq ptr %.09.lcssa.i.i.i.i.i, %.sroa.3.0.i.i.i.i
  br i1 %.not8.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i, %.lr.ph.i
  %.010.i = phi i64 [ %i.al, %.lr.ph.i ], [ 0, %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i ]
  %.sroa.0.09.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.09.lcssa.i.i.i.i.i, %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i ]
  %i.ak = tail call ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NST_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEE(ptr noundef nonnull align 1 dereferenceable(4) %i.a, ptr %.sroa.0.09.i) ; 2 uses
  %i.al = add i64 %.010.i, 1                      ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %.sroa.3.0.i.i.i.i
  br i1 %.not.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit.loopexit, label %.lr.ph.i, !llvm.loop !69

_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit.loopexit: ; preds = %.lr.ph.i
  %i.am = icmp ne i64 %i.al, 0
  br label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit

_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit: ; preds = %bb.c, %bb.e, %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit.loopexit, %bb.a, %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i
  %.0.lcssa.i = phi i1 [ false, %_ZNK5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE11equal_rangeIlEESt4pairINS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NSV_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEES10_ERKT_.exit.i ], [ %i.am, %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseEl.exit.loopexit ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.c ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NST_ISQ_NS1_15index_node_baseIS6_SK_EEEEEEEE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %3 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader19.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %.0.in.in20.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !45
  %.0.in21.i.i.i.i = and i64 %.0.in.in20.i.i.i.i, -2
  %.022.i.i.i.i = inttoptr i64 %.0.in21.i.i.i.i to ptr ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.preheader19.i.i.i.i:                             ; preds = %bb.a, %.preheader19.i.i.i.i
  %storemerge.i.i.i.i = phi ptr [ %i.h, %.preheader19.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %.not17.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not17.i.i.i.i, label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS4_IS5_NS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEEEi.exit, label %.preheader19.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.022.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %.0.in.in.i.i.i.i = load i64, ptr %.023.i.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i.i = and i64 %.0.in.in.i.i.i.i, -2
  %.0.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i to ptr ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq ptr %.023.i.i.i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 16
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !48
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.preheader.i.i.i.i
  %.0.i.i.i = phi ptr [ %.023.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.c, %.preheader.i.i.i.i ]
  %i.l = phi ptr [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ null, %.preheader.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ %.0.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.022.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %i.l, %.0.lcssa.i.i.i.i
  %spec.select.i.i.i = select i1 %.not16.i.i.i.i, ptr %.0.i.i.i, ptr %.0.lcssa.i.i.i.i
  br label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS4_IS5_NS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEEEi.exit

_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS4_IS5_NS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEEEi.exit: ; preds = %.preheader19.i.i.i.i, %._crit_edge.i.i.i.i
  %.1.i.i.i = phi ptr [ %spec.select.i.i.i, %._crit_edge.i.i.i.i ], [ %storemerge.i.i.i.i, %.preheader19.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store ptr %i.s, ptr %3, align 8, !tbaa !52, !alias.scope !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.v = call noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.y, ptr %2, align 8, !tbaa !52, !alias.scope !79
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ab = call noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE12final_erase_EPNS1_18ordered_index_nodeINS1_19null_augment_policyENSJ_ISK_NS1_15index_node_baseIS5_SH_EEEEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS4_IS5_NS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEEEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 3)
          to label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE12final_erase_EPNS1_18ordered_index_nodeINS1_19null_augment_policyENSJ_ISK_NS1_15index_node_baseIS5_SH_EEEEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #14
  unreachable

_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE12final_erase_EPNS1_18ordered_index_nodeINS1_19null_augment_policyENSJ_ISK_NS1_15index_node_baseIS5_SH_EEEEEE.exit: ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS4_IS5_NS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEEEi.exit, %bb.b
  %i.ai = getelementptr inbounds i8, ptr %.1.i.i.i, i64 -80
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 104) #16
  ret ptr %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.preheader280

.preheader280:                                    ; preds = %bb.b, %.preheader280
  %.0153 = phi ptr [ %i.h, %.preheader280 ], [ %i.e, %bb.b ] ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0153, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %.preheader280, !llvm.loop !80

.thread:                                          ; preds = %bb.a, %bb.b
  %.0158.in.ph = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.a ]
  %.0158255 = load ptr, ptr %.0158.in.ph, align 8, !tbaa !48
  %i.i = load ptr, ptr %1, align 8, !tbaa !52
  br label %bb.n

bb.c:                                             ; preds = %.preheader280
  %i.j = getelementptr inbounds nuw i8, ptr %.0153, i64 16 ; 2 uses
  %.0158 = load ptr, ptr %i.j, align 8, !tbaa !48 ; 6 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !52     ; 4 uses
  %.not166 = icmp eq ptr %.0153, %0
  br i1 %.not166, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0153, i64 8
  %i.m = ptrtoint ptr %.0153 to i64               ; 3 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !45
  %i.o = and i64 %i.n, 1
  %i.p = or i64 %i.o, %i.m
  store i64 %i.p, ptr %i.b, align 8, !tbaa !45
  store ptr %i.b, ptr %i.l, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !48
  %.not168 = icmp eq ptr %.0153, %i.q
  br i1 %.not168, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %.0153, align 8, !tbaa !45
  %i.s = and i64 %i.r, -2                         ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.not169 = icmp eq ptr %.0158, null
  br i1 %.not169, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %.0158, align 8, !tbaa !45
  %i.v = and i64 %i.u, 1
  %i.w = or disjoint i64 %i.v, %i.s
  store i64 %i.w, ptr %.0158, align 8, !tbaa !45
  %.pre = load i64, ptr %.0153, align 8, !tbaa !45
  %.pre334 = and i64 %.pre, -2
  %.pre336 = inttoptr i64 %.pre334 to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi337 = phi ptr [ %.pre336, %bb.f ], [ %i.t, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pre-phi337, i64 8
  store ptr %.0158, ptr %i.x, align 8, !tbaa !48
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  store ptr %i.y, ptr %i.j, align 8, !tbaa !48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !45
  %i.aa = and i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.m
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0155 = phi ptr [ %i.t, %bb.g ], [ %.0153, %bb.d ]
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %i.ad = and i64 %i.ac, -2
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = icmp eq ptr %0, %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = and i64 %i.ac, 1
  %i.ah = or i64 %i.ag, %i.m
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !45
  %.pre320 = load i64, ptr %0, align 8, !tbaa !45
  %.pre333 = and i64 %.pre320, -2
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %0, align 8, !tbaa !45
  %i.aj = and i64 %i.ai, -2                       ; 3 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.an = icmp eq ptr %i.am, %0
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %.0153, ptr %i.al, align 8, !tbaa !48
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.0153, ptr %i.ao, align 8, !tbaa !48
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.pre-phi = phi i64 [ %i.aj, %bb.k ], [ %i.aj, %bb.l ], [ %.pre333, %bb.i ] ; 2 uses
  %i.ap = load i64, ptr %.0153, align 8, !tbaa !45
  %i.aq = and i64 %i.ap, 1                        ; 2 uses
  %i.ar = or disjoint i64 %i.aq, %.pre-phi
  store i64 %i.ar, ptr %.0153, align 8, !tbaa !45
  %i.as = load i64, ptr %0, align 8, !tbaa !45
  %i.at = and i64 %i.as, 1
  %i.au = or disjoint i64 %i.at, %.pre-phi
  store i64 %i.au, ptr %.0153, align 8, !tbaa !45
  %i.av = load i64, ptr %0, align 8, !tbaa !45
  %i.aw = and i64 %i.av, -2
  %i.ax = or disjoint i64 %i.aw, %i.aq
  store i64 %i.ax, ptr %0, align 8, !tbaa !45
  br label %bb.aa

bb.n:                                             ; preds = %.thread, %bb.c
  %i.ay = phi ptr [ %i.i, %.thread ], [ %i.k, %bb.c ] ; 5 uses
  %.0158258 = phi ptr [ %.0158255, %.thread ], [ %.0158, %bb.c ] ; 11 uses
  %.1154257 = phi ptr [ %0, %.thread ], [ %.0153, %bb.c ] ; 4 uses
  %i.az = load i64, ptr %.1154257, align 8, !tbaa !45
  %i.ba = and i64 %i.az, -2                       ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr               ; 3 uses
  %.not167 = icmp eq ptr %.0158258, null
  br i1 %.not167, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load i64, ptr %.0158258, align 8, !tbaa !45
  %i.bd = and i64 %i.bc, 1
  %i.be = or disjoint i64 %i.bd, %i.ba
  store i64 %i.be, ptr %.0158258, align 8, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !45 ; 2 uses
  %i.bg = and i64 %i.bf, -2
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = icmp eq ptr %0, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = ptrtoint ptr %.0158258 to i64
  %i.bk = and i64 %i.bf, 1
  %i.bl = or i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.ay, align 8, !tbaa !45
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bm = load i64, ptr %0, align 8, !tbaa !45
  %i.bn = and i64 %i.bm, -2
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48
  %i.br = icmp eq ptr %i.bq, %0
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %.0158258, ptr %i.bp, align 8, !tbaa !48
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %.0158258, ptr %i.bs, align 8, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %i.bt = load ptr, ptr %2, align 8, !tbaa !48
  %i.bu = icmp eq ptr %i.bt, %0
  br i1 %i.bu, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !48
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.w, label %.preheader279

bb.w:                                             ; preds = %bb.v
  %i.by = load i64, ptr %0, align 8, !tbaa !45
  %i.bz = and i64 %i.by, -2
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %.sink.split

.preheader279:                                    ; preds = %bb.v, %.preheader279
  %.0.i = phi ptr [ %i.cc, %.preheader279 ], [ %.0158258, %bb.v ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %.sink.split, label %.preheader279, !llvm.loop !81
end_hunk_1
begin_hunk_2_@_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_:bb.a
  store ptr %i.ji, ptr %i.ld, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190: ; preds = %bb.bu, %bb.bw, %bb.bx
  %i.le = phi i64 [ %i.kx, %bb.bw ], [ %i.kx, %bb.bx ], [ %.pre.i189, %bb.bu ]
  store ptr %.0, ptr %i.kf, align 8, !tbaa !48
  %i.lf = ptrtoint ptr %i.ji to i64
  %i.lg = and i64 %i.le, 1
  %i.lh = or i64 %i.lg, %i.lf
  store i64 %i.lh, ptr %.0, align 8, !tbaa !45
  %i.li = load ptr, ptr %i.cv, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert324 = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %.pre325 = load ptr, ptr %.phi.trans.insert324, align 8, !tbaa !48
  br label %bb.by

bb.by:                                            ; preds = %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190, %.critedge10.thread
  %i.lj = phi ptr [ %.pre325, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190 ], [ %i.jw, %.critedge10.thread ] ; 3 uses
  %i.lk = phi ptr [ %i.li, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE11rotate_leftEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE.exit190 ], [ %.0, %.critedge10.thread ] ; 9 uses
  %i.ll = load i64, ptr %.2157305, align 8, !tbaa !45
  %i.lm = and i64 %i.ll, 1
  %i.ln = load i64, ptr %i.lk, align 8, !tbaa !45
  %i.lo = and i64 %i.ln, -2
  %i.lp = or disjoint i64 %i.lo, %i.lm
  store i64 %i.lp, ptr %i.lk, align 8, !tbaa !45
  %i.lq = load i64, ptr %.2157305, align 8, !tbaa !45
  %i.lr = or i64 %i.lq, 1
  store i64 %i.lr, ptr %.2157305, align 8, !tbaa !45
  %.not173 = icmp eq ptr %i.lj, null
  br i1 %.not173, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ls = load i64, ptr %i.lj, align 8, !tbaa !45
  %i.lt = or i64 %i.ls, 1
  store i64 %i.lt, ptr %i.lj, align 8, !tbaa !45
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !48 ; 4 uses
  store ptr %i.lv, ptr %i.cv, align 8, !tbaa !48
  %.not.i191 = icmp eq ptr %i.lv, null
  br i1 %.not.i191, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lw = ptrtoint ptr %.2157305 to i64
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !45
  %i.ly = and i64 %i.lx, 1
  %i.lz = or i64 %i.ly, %i.lw
  store i64 %i.lz, ptr %i.lv, align 8, !tbaa !45
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ma = load i64, ptr %.2157305, align 8, !tbaa !45
  %i.mb = and i64 %i.ma, -2
  %i.mc = load i64, ptr %i.lk, align 8, !tbaa !45
  %i.md = and i64 %i.mc, 1
  %i.me = or disjoint i64 %i.md, %i.mb
  store i64 %i.me, ptr %i.lk, align 8, !tbaa !45
  %i.mf = load i64, ptr %i.cm, align 8, !tbaa !45 ; 2 uses
  %i.mg = and i64 %i.mf, -2
  %i.mh = inttoptr i64 %i.mg to ptr
  %i.mi = icmp eq ptr %.2157305, %i.mh
  br i1 %i.mi, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mj = ptrtoint ptr %i.lk to i64
  %i.mk = and i64 %i.mf, 1
  %i.ml = or i64 %i.mk, %i.mj
  store i64 %i.ml, ptr %i.cm, align 8, !tbaa !45
  %.pre.i192 = load i64, ptr %.2157305, align 8, !tbaa !45
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.mm = load i64, ptr %.2157305, align 8, !tbaa !45 ; 3 uses
  %i.mn = and i64 %i.mm, -2
  %i.mo = inttoptr i64 %i.mn to ptr               ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !48
  %i.mr = icmp eq ptr %.2157305, %i.mq
  br i1 %i.mr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr %i.lk, ptr %i.mp, align 8, !tbaa !48
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %i.lk, ptr %i.ms, align 8, !tbaa !48
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  %i.mt = phi i64 [ %i.mm, %bb.cf ], [ %i.mm, %bb.cg ], [ %.pre.i192, %bb.cd ]
  store ptr %.2157305, ptr %i.lu, align 8, !tbaa !48
  br label %.critedge.sink.split

.thread260:                                       ; preds = %bb.bp, %bb.bq, %bb.am, %bb.an
  %.0.sink432 = phi ptr [ %.0151, %bb.am ], [ %.0151, %bb.an ], [ %.0, %bb.bq ], [ %.0, %bb.bp ] ; 2 uses
  %i.mu = load i64, ptr %.0.sink432, align 8, !tbaa !45
  %i.mv = and i64 %i.mu, -2
  store i64 %i.mv, ptr %.0.sink432, align 8, !tbaa !45
  %.5.in.in = load i64, ptr %.2157305, align 8, !tbaa !45
  %.5.in = and i64 %.5.in.in, -2
  %.5 = inttoptr i64 %.5.in to ptr
  %i.mw = load i64, ptr %i.cm, align 8, !tbaa !45
  %i.mx = and i64 %i.mw, -2
  %i.my = inttoptr i64 %i.mx to ptr
  %.not171 = icmp eq ptr %.2157305, %i.my
  br i1 %.not171, label %.critedge..critedge.thread_crit_edge, label %.lr.ph, !llvm.loop !83

.critedge.sink.split:                             ; preds = %bb.be, %bb.ch
  %.sink437 = phi ptr [ %i.lk, %bb.ch ], [ %i.gn, %bb.be ]
  %.sink436 = phi i64 [ %i.mt, %bb.ch ], [ %i.hw, %bb.be ]
  %i.mz = ptrtoint ptr %.sink437 to i64
  %i.na = and i64 %.sink436, 1
  %i.nb = or i64 %i.na, %i.mz
  store i64 %i.nb, ptr %.2157305, align 8, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.preheader
  %.1159294 = phi ptr [ %.0158259, %.preheader ], [ %.1159304, %.critedge.sink.split ] ; 2 uses
  %.not176 = icmp eq ptr %.1159294, null
  br i1 %.not176, label %bb.ci, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.thread260, %.critedge
  %.1159294368 = phi ptr [ %.1159294, %.critedge ], [ %.2157305, %.thread260 ] ; 2 uses
  %.pre332 = load i64, ptr %.1159294368, align 8, !tbaa !45
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ab, %.critedge..critedge.thread_crit_edge
  %i.nc = phi i64 [ %.pre332, %.critedge..critedge.thread_crit_edge ], [ %i.ct, %bb.ab ]
  %.1159293 = phi ptr [ %.1159294368, %.critedge..critedge.thread_crit_edge ], [ %.1159304, %bb.ab ]
  %i.nd = or i64 %i.nc, 1
  store i64 %i.nd, ptr %.1159293, align 8, !tbaa !45
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge, %.critedge.thread, %bb.aa
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly12TimeoutQueue11runInternalElb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %4 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %5 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %6 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::vector", align 8       ; 12 uses
  %8 = alloca %"struct.folly::TimeoutQueue::Event", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit, %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !46   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !45
  %i.o = and i64 %i.n, -2                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit77, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = inttoptr i64 %i.o to ptr
  br label %.outer

.outer:                                           ; preds = %bb.d, %.lr.ph.i.i.i
  %.pn.i.ph = phi ptr [ %i.v, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.0912.i.i.i.ph = phi ptr [ %.013.i.i.i, %bb.d ], [ %i.l, %.lr.ph.i.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.e
  %.pn.i = phi ptr [ %i.y, %bb.e ], [ %.pn.i.ph, %.outer ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %.pn.i, i64 -48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = icmp slt i64 %1, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.013.i.i.i = getelementptr inbounds i8, ptr %.pn.i, i64 -56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit77, label %.outer, !llvm.loop !84

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit77, label %bb.c, !llvm.loop !84

.loopexit77:                                      ; preds = %bb.e, %bb.d, %bb.b
  %.09.lcssa.i.i.i = phi ptr [ %i.l, %bb.b ], [ %.0912.i.i.i.ph, %bb.e ], [ %.013.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -56
  %i.ae = select i1 %i.ac, ptr null, ptr %i.ad
  %i.af = invoke ptr @_ZNSt11__copy_moveILb1ELb0ESt26bidirectional_iterator_tagE8__copy_mIN5boost11multi_index6detail19bidir_node_iteratorINS5_18ordered_index_nodeINS5_19null_augment_policyENS5_15index_node_baseIN5folly12TimeoutQueue5EventESaISC_EEEEEEESt20back_insert_iteratorISt6vectorISC_SD_EEEET0_T_SM_SL_(ptr %i.ae, ptr %.09.lcssa.i.i.i, ptr nonnull %7)
          to label %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit unwind label %.loopexit.split-lp73 ; 0 uses

_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit: ; preds = %.loopexit77
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -56
  %i.al = select i1 %i.aj, ptr null, ptr %i.ak    ; 2 uses
  %.not4.i = icmp eq ptr %i.al, %.09.lcssa.i.i.i
  br i1 %.not4.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit, %.noexc
  %.sroa.03.05.i = phi ptr [ %i.bs, %.noexc ], [ %i.al, %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit ] ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.preheader19.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 56 ; 3 uses
  %.0.in.in20.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !45
  %.0.in21.i.i.i.i.i = and i64 %.0.in.in20.i.i.i.i.i, -2
  %.022.i.i.i.i.i = inttoptr i64 %.0.in21.i.i.i.i.i to ptr ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.preheader19.i.i.i.i.i:                           ; preds = %.lr.ph.i, %.preheader19.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi ptr [ %i.at, %.preheader19.i.i.i.i.i ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not17.i.i.i.i.i, label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i, label %.preheader19.i.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.022.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 4 uses
  %.0.in.in.i.i.i.i.i = load i64, ptr %.023.i.i.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i.i.i = and i64 %.0.in.in.i.i.i.i.i, -2
  %.0.i.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i.i to ptr ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48
  %i.aw = icmp eq ptr %.023.i.i.i.i.i, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 16
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !48
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %.023.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ao, %.preheader.i.i.i.i.i ]
  %i.ax = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ null, %.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.022.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.ax, %.0.lcssa.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %.not16.i.i.i.i.i, ptr %.0.i.i.i.i, ptr %.0.lcssa.i.i.i.i.i
  br label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i

_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i: ; preds = %.preheader19.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %.preheader19.i.i.i.i.i ]
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !44
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.d, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 80
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store ptr %i.bc, ptr %6, align 8, !tbaa !52, !alias.scope !100
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bf = invoke noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.ba, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.noexc43 unwind label %.loopexit72 ; 0 uses

.noexc43:                                         ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 56
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store ptr %i.bi, ptr %5, align 8, !tbaa !52, !alias.scope !101
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bl = invoke noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %.noexc44 unwind label %.loopexit72 ; 0 uses

.noexc44:                                         ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %.noexc44
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 24 ; 2 uses
  %i.bp = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 3)
          to label %.noexc unwind label %bb.g     ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #14
  unreachable

.noexc:                                           ; preds = %bb.f, %.noexc44
  %i.bs = getelementptr inbounds i8, ptr %.1.i.i.i.i, i64 -56 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.05.i, i64 noundef 104) #16
  %.not.i = icmp eq ptr %i.bs, %.09.lcssa.i.i.i
  br i1 %.not.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, label %.lr.ph.i, !llvm.loop !93

_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit: ; preds = %.noexc, %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit
  %i.bt = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %._crit_edge92, label %.lr.ph

._crit_edge:                                      ; preds = %bb.al
  %.pre99 = load ptr, ptr %7, align 8, !tbaa !102 ; 2 uses
  %.pre100 = load ptr, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %i.bw = icmp eq ptr %.pre99, %.pre100
  br i1 %i.bw, label %._crit_edge92, label %.lr.ph91

.loopexit72:                                      ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i, %.noexc43
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp73:                             ; preds = %.loopexit77
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.lr.ph:                                           ; preds = %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, %bb.al
  %.sroa.060.087 = phi ptr [ %i.hc, %bb.al ], [ %i.bt, %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !38
  %i.bz = icmp sgt i64 %i.by, -1
  br i1 %i.bz, label %bb.h, label %bb.al

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ca = load i64, ptr %.sroa.060.087, align 8, !tbaa !36 ; 2 uses
  store i64 %i.ca, ptr %8, align 8, !tbaa !36
  %i.cb = load i64, ptr %i.bx, align 8, !tbaa !38 ; 2 uses
  %i.cc = add nsw i64 %i.cb, %1
  store i64 %i.cc, ptr %i.f, align 8, !tbaa !37
  store i64 %i.cb, ptr %i.g, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvllEEC2ERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 24
  %i.cg = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ch = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !54
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !40
  store <2 x ptr> %i.ch, ptr %i.i, align 8, !tbaa !54
  %.pre = load i64, ptr %8, align 8, !tbaa !45
  br label %_ZNSt8functionIFvllEEC2ERKS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %.body unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #14
  unreachable

_ZNSt8functionIFvllEEC2ERKS1_.exit:               ; preds = %bb.j, %bb.h
  %i.co = phi ptr [ %i.ci, %bb.j ], [ null, %bb.h ] ; 3 uses
  %i.cp = phi i64 [ %.pre, %bb.j ], [ %i.ca, %bb.h ] ; 3 uses
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !46  ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.ct = and i64 %i.cs, -2                       ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %select.unfold._crit_edge.thread.i.i, label %select.unfold.preheader.i.i

select.unfold.preheader.i.i:                      ; preds = %_ZNSt8functionIFvllEEC2ERKS1_.exit
  %i.cv = inttoptr i64 %i.ct to ptr
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.i.i, %select.unfold.preheader.i.i
  %.pn.i.i = phi ptr [ %i.cy, %select.unfold.i.i ], [ %i.cv, %select.unfold.preheader.i.i ]
  %.01727.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -80 ; 4 uses
  %i.cw = load i64, ptr %.01727.i.i, align 8, !tbaa !45 ; 2 uses
  %i.cx = icmp slt i64 %i.cp, %i.cw               ; 2 uses
  %.in.v.i.i = select i1 %i.cx, i64 88, i64 96
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.01727.i.i, i64 %.in.v.i.i
  %i.cy = load ptr, ptr %.in.i.i, align 8, !tbaa !48 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold._crit_edge.i.i:                     ; preds = %select.unfold.i.i
  br i1 %i.cx, label %select.unfold._crit_edge.thread.i.i, label %.thread

select.unfold._crit_edge.thread.i.i:              ; preds = %select.unfold._crit_edge.i.i, %_ZNSt8functionIFvllEEC2ERKS1_.exit
  %.018.lcssa33.i.i = phi ptr [ %.01727.i.i, %select.unfold._crit_edge.i.i ], [ %i.cq, %_ZNSt8functionIFvllEEC2ERKS1_.exit ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !48 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 -80
  %i.de = select i1 %i.dc, ptr null, ptr %i.dd
  %i.df = icmp eq ptr %.018.lcssa33.i.i, %i.de
  br i1 %i.df, label %.sink.split.i.i, label %bb.n

bb.n:                                             ; preds = %select.unfold._crit_edge.thread.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 80 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !45 ; 3 uses
  %i.di = and i64 %i.dh, 1
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.o, label %.critedge.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.dk = inttoptr i64 %i.dh to ptr
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !45
  %i.dm = and i64 %i.dl, -2
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = icmp eq ptr %i.dg, %i.dn
  br i1 %i.do, label %bb.p, label %.critedge.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 96
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48
  br label %.loopexit140

.critedge.i.i.i.i:                                ; preds = %bb.o, %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader25.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.critedge.i.i.i.i
  %.0.in26.i.i.i.i = and i64 %i.dh, -2
  %.027.i.i.i.i = inttoptr i64 %.0.in26.i.i.i.i to ptr ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.027.i.i.i.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !48
  %i.dv = icmp eq ptr %i.dg, %i.du
  br i1 %i.dv, label %.lr.ph.i.i.i.i, label %.loopexit140

.preheader25.i.i.i.i:                             ; preds = %.critedge.i.i.i.i, %.preheader25.i.i.i.i
  %.019.i.i.i.i = phi ptr [ %i.dx, %.preheader25.i.i.i.i ], [ %i.ds, %.critedge.i.i.i.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !48 ; 2 uses
  %.not20.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not20.i.i.i.i, label %.loopexit140, label %.preheader25.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.0.i.i.i.i45, %.lr.ph.i.i.i.i ], [ %.027.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.dy = load i64, ptr %.028.i.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i.i = and i64 %i.dy, -2
  %.0.i.i.i.i45 = inttoptr i64 %.0.in.i.i.i.i to ptr ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i45, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.eb = icmp eq ptr %.028.i.i.i.i, %i.ea
  br i1 %i.eb, label %.lr.ph.i.i.i.i, label %.loopexit140, !llvm.loop !1

.loopexit140:                                     ; preds = %.preheader25.i.i.i.i, %.lr.ph.i.i.i.i, %bb.p, %.preheader.i.i.i.i
  %.019.lcssa.sink.i.i.i.i = phi ptr [ %i.dq, %bb.p ], [ %.0.i.i.i.i45, %.lr.ph.i.i.i.i ], [ %.027.i.i.i.i, %.preheader.i.i.i.i ], [ %.019.i.i.i.i, %.preheader25.i.i.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.019.lcssa.sink.i.i.i.i, i64 -80
  %.pre.i = load i64, ptr %i.ec, align 8, !tbaa !45
  %i.ed = icmp slt i64 %.pre.i, %i.cp
  br i1 %i.ed, label %.sink.split.i.i, label %.noexc33

.thread:                                          ; preds = %select.unfold._crit_edge.i.i
  %i.ee = icmp slt i64 %i.cw, %i.cp
  br i1 %i.ee, label %.sink.split.i.i, label %.noexc33.thread138

.sink.split.i.i:                                  ; preds = %.thread, %.loopexit140, %select.unfold._crit_edge.thread.i.i
  %i.ef = phi i1 [ true, %select.unfold._crit_edge.thread.i.i ], [ true, %.loopexit140 ], [ false, %.thread ]
  %.023.sink.i.ph.i = phi ptr [ %.018.lcssa33.i.i, %select.unfold._crit_edge.thread.i.i ], [ %.018.lcssa33.i.i, %.loopexit140 ], [ %.01727.i.i, %.thread ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph.i, i64 80 ; 3 uses
  %i.eh = load i64, ptr %i.f, align 8, !tbaa !45
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !45
  %i.ek = and i64 %i.ej, -2                       ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %select.unfold._crit_edge.loopexit.i.i, label %select.unfold.preheader.i.i48

select.unfold.preheader.i.i48:                    ; preds = %.sink.split.i.i
  %i.em = inttoptr i64 %i.ek to ptr
  br label %select.unfold.i.i49

select.unfold.i.i49:                              ; preds = %select.unfold.i.i49, %select.unfold.preheader.i.i48
  %.pn.i.i50 = phi ptr [ %i.ep, %select.unfold.i.i49 ], [ %i.em, %select.unfold.preheader.i.i48 ] ; 2 uses
  %.01014.i.i = getelementptr inbounds i8, ptr %.pn.i.i50, i64 -56 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.pn.i.i50, i64 -48
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !45
  %.not.i51 = icmp slt i64 %i.eh, %i.eo           ; 2 uses
  %.in.v.i.i52 = select i1 %.not.i51, i64 64, i64 72
  %.in.i.i53 = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 %.in.v.i.i52
  %i.ep = load ptr, ptr %.in.i.i53, align 8, !tbaa !48 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %select.unfold._crit_edge.loopexit.i.i, label %select.unfold.i.i49

select.unfold._crit_edge.loopexit.i.i:            ; preds = %select.unfold.i.i49, %.sink.split.i.i
  %.011.lcssa.i.i = phi ptr [ %i.cq, %.sink.split.i.i ], [ %.01014.i.i, %select.unfold.i.i49 ] ; 4 uses
  %.0.lcssa.i.i = phi i1 [ true, %.sink.split.i.i ], [ %.not.i51, %select.unfold.i.i49 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 56 ; 3 uses
  %i.es = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #15
          to label %.noexc54 unwind label %bb.ai  ; 8 uses

.noexc54:                                         ; preds = %select.unfold._crit_edge.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.es, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 24, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i8 0, i64 24, i1 false)
  %i.ev = load ptr, ptr %i.j, align 8, !tbaa !39
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !39
  %i.ew = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i, label %bb.q

bb.q:                                             ; preds = %.noexc54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !42
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i

_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i: ; preds = %bb.q, %.noexc54
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 56 ; 9 uses
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !46  ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %.0.lcssa.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 64
  store ptr %i.ey, ptr %i.fb, align 8, !tbaa !48
  %i.fc = icmp eq ptr %.011.lcssa.i.i, %i.ez
  br i1 %i.fc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fd = ptrtoint ptr %i.ey to i64
  %i.fe = load i64, ptr %i.fa, align 8, !tbaa !45
  %i.ff = and i64 %i.fe, 1
  %i.fg = or i64 %i.ff, %i.fd
  store i64 %i.fg, ptr %i.fa, align 8, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  store ptr %i.ey, ptr %i.fh, align 8, !tbaa !48
  %.pre97 = load i64, ptr %i.ey, align 8, !tbaa !45
  %i.fi = and i64 %.pre97, 1
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 64 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !48
  %i.fl = icmp eq ptr %i.er, %i.fk
  br i1 %i.fl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  store ptr %i.ey, ptr %i.fj, align 8, !tbaa !48
  br label %bb.x

bb.v:                                             ; preds = %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 72
  store ptr %i.ey, ptr %i.fm, align 8, !tbaa !48
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 72 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !48
  %i.fp = icmp eq ptr %i.er, %i.fo
  br i1 %i.fp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr %i.ey, ptr %i.fn, align 8, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.fq = phi i64 [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ %i.fi, %bb.s ]
  %i.fr = ptrtoint ptr %i.er to i64
  %i.fs = or i64 %i.fq, %i.fr
  store i64 %i.fs, ptr %i.ey, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  store ptr %i.fa, ptr %3, align 8, !tbaa !52, !alias.scope !103
  invoke void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef nonnull %i.ey, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.es, i64 80 ; 9 uses
  %i.fv = load ptr, ptr %i.c, align 8, !tbaa !46  ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.ef, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph.i, i64 88
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !48
  %i.fy = icmp eq ptr %.023.sink.i.ph.i, %i.fv
  br i1 %i.fy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fz = ptrtoint ptr %i.fu to i64
  %i.ga = load i64, ptr %i.fw, align 8, !tbaa !45
  %i.gb = and i64 %i.ga, 1
  %i.gc = or i64 %i.gb, %i.fz
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !45
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  store ptr %i.fu, ptr %i.gd, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 88 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !48
  %i.gg = icmp eq ptr %i.eg, %i.gf
  br i1 %i.gg, label %bb.ac, label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.fu, ptr %i.ge, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ad:                                            ; preds = %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph.i, i64 96
  store ptr %i.fu, ptr %i.gh, align 8, !tbaa !48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 96 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !48
  %i.gk = icmp eq ptr %i.eg, %i.gj
  br i1 %i.gk, label %bb.ae, label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.fu, ptr %i.gi, align 8, !tbaa !48
  br label %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i

_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.gl = ptrtoint ptr %i.eg to i64
  %i.gm = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.gn = and i64 %i.gm, 1
  %i.go = or i64 %i.gn, %i.gl
  store i64 %i.go, ptr %i.fu, align 8, !tbaa !45
  %i.gp = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i8 0, i64 16, i1 false)
  store ptr %i.fw, ptr %4, align 8, !tbaa !52, !alias.scope !104
  invoke void @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE9rebalanceEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refE(ptr noundef nonnull %i.fu, ptr noundef nonnull align 8 dead_on_return %4)
          to label %.noexc33.thread unwind label %bb.ai

.noexc33.thread:                                  ; preds = %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre98.pre = load ptr, ptr %i.i, align 8, !tbaa !40
  br label %bb.af

.noexc33:                                         ; preds = %.loopexit140
  %i.gq = icmp eq ptr %.019.lcssa.sink.i.i.i.i, null
  br i1 %i.gq, label %bb.af, label %.noexc33.thread138

bb.af:                                            ; preds = %.noexc33.thread, %.noexc33
  %.pre98 = phi ptr [ %.pre98.pre, %.noexc33.thread ], [ %i.co, %.noexc33 ]
  %i.gr = load i64, ptr %i.d, align 8, !tbaa !44
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.d, align 8, !tbaa !44
  br label %.noexc33.thread138

.noexc33.thread138:                               ; preds = %.thread, %bb.af, %.noexc33
  %i.gt = phi ptr [ %.pre98, %bb.af ], [ %i.co, %.noexc33 ], [ %i.co, %.thread ] ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i34, label %_ZN5folly12TimeoutQueue5EventD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %.noexc33.thread138
  %i.gu = invoke noundef zeroext i1 %i.gt(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %_ZN5folly12TimeoutQueue5EventD2Ev.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #14
  unreachable

_ZN5folly12TimeoutQueue5EventD2Ev.exit:           ; preds = %.noexc33.thread138, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.al

bb.ai:                                            ; preds = %bb.x, %select.unfold._crit_edge.loopexit.i.i, %_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE4linkEPS5_NS1_18ordered_index_sideES6_S6_.exit.i
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load ptr, ptr %i.i, align 8, !tbaa !40  ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i36, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gz = invoke noundef zeroext i1 %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %.body unwind label %bb.ak     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #14
  unreachable

.body:                                            ; preds = %bb.aj, %bb.ai, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.k ], [ %i.gx, %bb.aj ], [ %i.cj, %bb.l ], [ %i.gx, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.au

bb.al:                                            ; preds = %_ZN5folly12TimeoutQueue5EventD2Ev.exit, %.lr.ph
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 56 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.bu
  br i1 %i.hd, label %._crit_edge, label %.lr.ph

._crit_edge92:                                    ; preds = %bb.ap, %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, %._crit_edge
  %i.he = load i64, ptr %i.d, align 8, !tbaa !44
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge92
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !48
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -48
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !37
  br label %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit

.lr.ph91:                                         ; preds = %._crit_edge, %bb.ap
  %.sroa.056.089 = phi ptr [ %i.hr, %bb.ap ], [ %.pre99, %._crit_edge ] ; 5 uses
  %i.hl = load i64, ptr %.sroa.056.089, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.hl, ptr %i.a, align 8, !tbaa !45
  store i64 %1, ptr %i.b, align 8, !tbaa !45
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !40
  %.not.i.i39 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i39, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph91
  invoke void @_ZSt25__throw_bad_function_callv() #17
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %.lr.ph91
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !39
  invoke void %i.hq(ptr noundef nonnull align 8 dereferenceable(32) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ap unwind label %.loopexit, !inline_history !98

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 56 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %.pre100
  br i1 %i.hs, label %._crit_edge92, label %.lr.ph91

.loopexit:                                        ; preds = %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNK5folly12TimeoutQueue14nextExpirationEv.exit:  ; preds = %bb.am, %._crit_edge92
  %i.ht = phi i64 [ %i.hk, %bb.am ], [ 9223372036854775807, %._crit_edge92 ] ; 2 uses
  %i.hu = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %i.hv = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hu, %i.hv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ic, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i ], [ %i.hu, %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i42
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.hz = invoke noundef zeroext i1 %i.hx(ptr noundef nonnull align 8 dereferenceable(32) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %i.hy, i32 noundef 3)
          to label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #14
  unreachable

_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i: ; preds = %bb.aq, %.lr.ph.i.i.i42
  %i.ic = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ic, %i.hv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i42, !llvm.loop !4

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit
  %i.id = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.hu, %_ZNK5folly12TimeoutQueue14nextExpirationEv.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i
  %i.ie = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #16
  br label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ii = icmp sgt i64 %i.ht, %1
  %.not30 = select i1 %2, i1 true, i1 %i.ii
  br i1 %.not30, label %bb.at, label %bb.b, !llvm.loop !99

bb.at:                                            ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit
  ret i64 %i.ht

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit72, %.loopexit.split-lp73, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp73 ], [ %lpad.loopexit74, %.loopexit72 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #14
  unreachable

_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5folly12TimeoutQueue5EventEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #16
  br label %_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly12TimeoutQueue5EventES2_EvT_S4_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt11__copy_moveILb1ELb0ESt26bidirectional_iterator_tagE8__copy_mIN5boost11multi_index6detail19bidir_node_iteratorINS5_18ordered_index_nodeINS5_19null_augment_policyENS5_15index_node_baseIN5folly12TimeoutQueue5EventESaISC_EEEEEEESt20back_insert_iteratorISt6vectorISC_SD_EEEET0_T_SM_SL_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %0, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit
  %.sroa.02.07 = phi ptr [ %0, %.lr.ph ], [ %i.ae, %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit ] ; 6 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !57   ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.07, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 24
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 2)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !54
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !54
  br label %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i:         ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.l

_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i: ; preds = %bb.e, %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.r, ptr %i.a, align 8, !tbaa !57
  br label %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit

bb.i:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.07)
  br label %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit

_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit: ; preds = %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader19.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 56 ; 3 uses
  %.0.in.in20.i.i.i = load i64, ptr %i.u, align 8, !tbaa !45
  %.0.in21.i.i.i = and i64 %.0.in.in20.i.i.i, -2
  %.022.i.i.i = inttoptr i64 %.0.in21.i.i.i to ptr ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.preheader19.i.i.i:                               ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit, %.preheader19.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.z, %.preheader19.i.i.i ], [ %i.t, %_ZNSt20back_insert_iteratorISt6vectorIN5folly12TimeoutQueue5EventESaIS3_EEEaSERKS3_.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not17.i.i.i, label %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit, label %.preheader19.i.i.i, !llvm.loop !2

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.023.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.022.i.i.i, %.preheader.i.i.i ] ; 4 uses
  %.0.in.in.i.i.i = load i64, ptr %.023.i.i.i, align 8, !tbaa !45
  %.0.in.i.i.i = and i64 %.0.in.in.i.i.i, -2
  %.0.i.i.i = inttoptr i64 %.0.in.i.i.i to ptr    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = icmp eq ptr %.023.i.i.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i.i.i
  %.0.i.i = phi ptr [ %.023.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.u, %.preheader.i.i.i ]
  %i.ad = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ null, %.preheader.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.022.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.ad, %.0.lcssa.i.i.i
  %spec.select.i.i = select i1 %.not16.i.i.i, ptr %.0.i.i, ptr %.0.lcssa.i.i.i
  br label %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit

_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit: ; preds = %.preheader19.i.i.i, %._crit_edge.i.i.i
  %.1.i.i = phi ptr [ %spec.select.i.i, %._crit_edge.i.i.i ], [ %storemerge.i.i.i, %.preheader19.i.i.i ]
  %i.ae = getelementptr inbounds i8, ptr %.1.i.i, i64 -56 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZN5boost11multi_index6detail19bidir_node_iteratorINS1_18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEppEv.exit, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !54
  store <2 x ptr> %i.x, ptr %i.s, align 8, !tbaa !54
  br label %_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZSt10destroy_atIN5folly12TimeoutQueue5EventEEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZSt10destroy_atIN5folly12TimeoutQueue5EventEEvPT_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #14
  unreachable

_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE12_M_check_lenEmPKc.exit, %bb.d
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i64 24, i1 false), !alias.scope !115
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 24, i1 false), !alias.scope !113, !noalias !114
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39, !alias.scope !114, !noalias !113
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !39, !alias.scope !113, !noalias !114
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40, !alias.scope !114, !noalias !113 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i

_ZSt12construct_atIN5folly12TimeoutQueue5EventEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !42, !alias.scope !115
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !40, !alias.scope !113, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !114, !noalias !113
  br label %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !109

_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5folly12TimeoutQueue5EventEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.am, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32
  %.012.i.i.i28 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.an, %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i29, i64 24, i1 false), !alias.scope !118
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 24, i1 false), !alias.scope !116, !noalias !117
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39, !alias.scope !117, !noalias !116
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !39, !alias.scope !116, !noalias !117
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40, !alias.scope !117, !noalias !116 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i30 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i30, label %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32, label %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i31

_ZSt12construct_atIN5folly12TimeoutQueue5EventEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i31: ; preds = %.lr.ph.i.i.i27
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 16, i1 false), !tbaa.struct !42, !alias.scope !118
  store ptr %i.at, ptr %i.av, align 8, !tbaa !40, !alias.scope !116, !noalias !117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !117, !noalias !116
  br label %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32

_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5folly12TimeoutQueue5EventEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i31, %.lr.ph.i.i.i27
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.aw, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !109

_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35: ; preds = %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.an, %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ax, %_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #16
  br label %_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !56
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !58
  ret void

bb.i:                                             ; preds = %_ZSt10destroy_atIN5folly12TimeoutQueue5EventEEvPT_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZSt10destroy_atIN5folly12TimeoutQueue5EventEEvPT_.exit: ; preds = %bb.e, %bb.f
  %i.be = extractvalue { ptr, i32 } %i.y, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #13 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #16
  invoke void @__cxa_rethrow() #17
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bd

bb.k:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #14
  unreachable

bb.l:                                             ; preds = %_ZSt10destroy_atIN5folly12TimeoutQueue5EventEEvPT_.exit
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = distinct !{!2, !49}
!3 = distinct !{!3, !49}
!4 = distinct !{!4, !49}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 7, !"openmp", i32 51}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSSaIN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEEEE"}
!18 = !{!"_ZTSN5boost16base_from_memberISaINS_11multi_index6detail18ordered_index_nodeINS2_19null_augment_policyENS3_IS4_NS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEEELi0EEE", !17, i64 0}
!19 = !{!"any pointer", !13, i64 0}
!20 = !{!"p1 _ZTSN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEEE", !19, i64 0}
!21 = !{!"_ZTSN5boost11multi_index6detail13header_holderIPNS1_18ordered_index_nodeINS1_19null_augment_policyENS3_IS4_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS8_EEEEEEENS0_21multi_index_containerIS8_NS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS8_lXadL_ZNS8_2idEEEEEN4mpl_2naESK_EENS0_18ordered_non_uniqueINSH_IS8_lXadL_ZNS8_10expirationEEEEESK_SK_EESK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_SK_EES9_EEEE", !20, i64 0}
!22 = !{!"_ZTSN5boost11multi_index6memberIN5folly12TimeoutQueue5EventElXadL_ZNS4_10expirationEEEEE"}
!23 = !{!"_ZTSSt4lessIlE"}
!24 = !{!"_ZTSN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEEE", !22, i64 0, !23, i64 1}
!25 = !{!"_ZTSN5boost11multi_index6detail13ordered_indexINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEEE", !24, i64 0}
!26 = !{!"_ZTSN5boost11multi_index6memberIN5folly12TimeoutQueue5EventElXadL_ZNS4_2idEEEEE"}
!27 = !{!"_ZTSN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEEE", !25, i64 0, !26, i64 2, !23, i64 3}
!28 = !{!"_ZTSN5boost11multi_index6detail13ordered_indexINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_2idEEEEESt4lessIlENS1_9nth_layerILi1ES6_NS0_10indexed_byINS0_14ordered_uniqueIS7_N4mpl_2naESE_EENS0_18ordered_non_uniqueINS3_IS6_lXadL_ZNS6_10expirationEEEEESE_SE_EESE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_SE_EESaIS6_EEENS_3mpl7vector0ISE_EENS1_18ordered_unique_tagENS1_19null_augment_policyEEE", !27, i64 0}
!29 = !{!"long", !13, i64 0}
!30 = !{!"_ZTSN5boost11multi_index21multi_index_containerIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS4_lXadL_ZNS4_2idEEEEEN4mpl_2naESA_EENS0_18ordered_non_uniqueINS7_IS4_lXadL_ZNS4_10expirationEEEEESA_SA_EESA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_EESaIS4_EEE", !18, i64 0, !21, i64 8, !28, i64 16, !29, i64 24}
!31 = !{!"_ZTSN5folly12TimeoutQueueE", !30, i64 0, !29, i64 32}
!32 = !{!31, !29, i64 32}
!33 = !{!"_ZTSSt14_Function_base", !13, i64 0, !19, i64 16}
!34 = !{!"_ZTSSt8functionIFvllEE", !33, i64 0, !19, i64 24}
!35 = !{!"_ZTSN5folly12TimeoutQueue5EventE", !29, i64 0, !29, i64 8, !29, i64 16, !34, i64 24}
!36 = !{!35, !29, i64 0}
!37 = !{!35, !29, i64 8}
!38 = !{!35, !29, i64 16}
!39 = !{!34, !19, i64 24}
!40 = !{!33, !19, i64 16}
!41 = !{!13, !13, i64 0}
!42 = !{i64 0, i64 16, !41}
!43 = !{!20, !20, i64 0}
!44 = !{!30, !29, i64 24}
!45 = !{!29, !29, i64 0}
!46 = !{!21, !20, i64 0}
!47 = !{!"p1 _ZTSN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEEE", !19, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"p1 long", !19, i64 0}
!51 = !{!"_ZTSN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE10parent_refE", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"p1 _ZTSN5folly12TimeoutQueue5EventE", !19, i64 0}
!54 = !{!19, !19, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN5folly12TimeoutQueue5EventESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!56 = !{!55, !53, i64 0}
!57 = !{!55, !53, i64 8}
!58 = !{!55, !53, i64 16}
!59 = distinct !{!59, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!60 = distinct !{!60, !59, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!63 = distinct !{!63, !62, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !49}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE6parentEv"}
!71 = distinct !{!71, !70, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE6parentEv: argument 0"}
!72 = distinct !{!72, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!73 = distinct !{!73, !72, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!74 = distinct !{!74, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEE6parentEv"}
!75 = distinct !{!75, !74, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEE6parentEv: argument 0"}
!76 = distinct !{!76, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!77 = distinct !{!77, !76, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!78 = !{!73, !71}
!79 = !{!77, !75}
!80 = distinct !{!80, !49}
!81 = distinct !{!81, !49}
!82 = distinct !{!82, !49}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !49}
!85 = distinct !{!85, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE6parentEv"}
!86 = distinct !{!86, !85, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS2_IS3_NS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEEEE6parentEv: argument 0"}
!87 = distinct !{!87, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!88 = distinct !{!88, !87, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!89 = distinct !{!89, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEE6parentEv"}
!90 = distinct !{!90, !89, !"_ZN5boost11multi_index6detail18ordered_index_nodeINS1_19null_augment_policyENS1_15index_node_baseIN5folly12TimeoutQueue5EventESaIS7_EEEE6parentEv: argument 0"}
!91 = distinct !{!91, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!92 = distinct !{!92, !91, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!93 = distinct !{!93, !49}
!94 = distinct !{!94, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!95 = distinct !{!95, !94, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!96 = distinct !{!96, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv"}
!97 = distinct !{!97, !96, !"_ZN5boost11multi_index6detail34ordered_index_node_compressed_baseINS1_19null_augment_policyESaIcEE6parentEv: argument 0"}
!98 = distinct !{null}
!99 = distinct !{!99, !49}
!100 = !{!88, !86}
!101 = !{!92, !90}
!102 = !{!53, !53, i64 0}
!103 = !{!95}
!104 = !{!97}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !"_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_"}
!107 = distinct !{!107, !106, !"_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!108 = distinct !{!108, !106, !"_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!109 = distinct !{!109, !49}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_"}
!111 = distinct !{!111, !110, !"_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!112 = distinct !{!112, !110, !"_ZSt19__relocate_object_aIN5folly12TimeoutQueue5EventES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!113 = !{!107}
!114 = !{!108}
!115 = !{!107, !108}
!116 = !{!111}
!117 = !{!112}
!118 = !{!111, !112}
end_hunk_2
