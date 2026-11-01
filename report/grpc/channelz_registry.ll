Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channelz_registry?download=true
inline.NumInlined: 1349
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@__cxa_guard_release
; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core8channelz16ChannelzRegistry22InternalGetAllEntitiesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.5") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Tuple_implILm0EJSt6vectorIN9grpc_core17WeakRefCountedPtrINS1_8channelz8BaseNodeEEESaIS5_EEbEED2Ev.exit:
  %2 = alloca %"class.std::tuple", align 8        ; 5 uses
  %3 = alloca %class.anon, align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN9grpc_core8channelz16ChannelzRegistry10QueryNodesElN4absl12lts_2025051211FunctionRefIFbPKNS0_8BaseNodeEEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 0, ptr nonnull %3, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core8channelz16ChannelzRegistry22InternalGetAllEntitiesEvE3$_0bJPKNS4_8BaseNodeEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", i64 noundef -1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !67
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  store ptr %i.e, ptr %i.c, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core8channelz16ChannelzRegistry10QueryNodesElN4absl12lts_2025051211FunctionRefIFbPKNS0_8BaseNodeEEEEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::tuple") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, ptr %3, ptr nofree readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 8 uses
  %7 = alloca %"class.grpc_core::SharedBitGen", align 1 ; 4 uses
  %8 = alloca %"class.std::vector.5", align 16    ; 24 uses
  %9 = alloca [2 x %"struct.std::pair.48"], align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEN9grpc_core12SharedBitGenEEvT_S9_OT0_(ptr %.sroa.0241.1, ptr nonnull %.sroa.10.1, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4absl12lts_202505129c_shuffleISt6vectorImSaImEEN9grpc_core12SharedBitGenEEEvRT_OT0_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge379 = phi i64 [ 0, %bb.a ], [ %i.o, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.sroa.0241.0378 = phi ptr [ null, %bb.a ], [ %.sroa.0241.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %.sroa.10.0377 = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.sroa.15248.0376 = phi ptr [ null, %bb.a ], [ %.sroa.15248.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.0377, %.sroa.15248.0376
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %storemerge379, ptr %.sroa.10.0377, align 8, !tbaa !70
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.a = ptrtoint ptr %.sroa.10.0377 to i64
  %i.b = ptrtoint ptr %.sroa.0241.0378 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = icmp eq i64 %i.c, 9223372036854775800
  br i1 %i.d, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc unwind label %.loopexit.split-lp306.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.e = ashr exact i64 %i.c, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1)
  %i.f = add nsw i64 %.sroa.speculated.i.i.i, %i.e ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.f, i64 1152921504606846975)
  %i.i = select i1 %i.g, i64 1152921504606846975, i64 %i.h ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
          to label %.noexc91 unwind label %.loopexit.split-lp306.loopexit.split-lp ; 4 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c ; 2 uses
  store i64 %storemerge379, ptr %i.l, align 8, !tbaa !70
  %i.m = icmp sgt i64 %i.c, 0
  br i1 %i.m, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc91
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.sroa.0241.0378, i64 %i.c, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc91
  %.not.i17.i.i = icmp eq ptr %.sroa.0241.0378, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.0378, i64 noundef %i.c) #28
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d
  %.sroa.15248.1 = phi ptr [ %i.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.15248.0376, %bb.d ] ; 7 uses
  %.pn = phi ptr [ %i.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.10.0377, %bb.d ] ; 2 uses
  %.sroa.0241.1 = phi ptr [ %i.k, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0241.0378, %bb.d ] ; 12 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.o = add nuw nsw i64 %storemerge379, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, 63
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !139

.loopexit.split-lp306.loopexit.split-lp:          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp676 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit143

_ZN4absl12lts_202505129c_shuffleISt6vectorImSaImEEN9grpc_core12SharedBitGenEEEvRT_OT0_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %_ZN4absl12lts_202505129MutexLockD2Ev.exit141.thread

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %_ZN4absl12lts_202505129c_shuffleISt6vectorImSaImEEN9grpc_core12SharedBitGenEEEvRT_OT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %.sroa.0.0.in.i.i.i.i = phi ptr [ %i.q, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit ], [ %i.ad, %bb.k ]
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !tbaa !72 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 10
  %i.s = load i8, ptr %i.r, align 1, !tbaa !73    ; 2 uses
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS9_lE15checked_compareE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %bb.j
  %.07.i.i.i.i.i.i.i = phi i64 [ %i.y, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.07.i.i.i.i.i.i.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !70
  %i.x = icmp slt i64 %i.w, %2
  br i1 %i.x, label %bb.j, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS9_lE15checked_compareE.exit.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = add nuw nsw i64 %.07.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.t
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS9_lE15checked_compareE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS9_lE15checked_compareE.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i, %bb.i
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.t, %bb.j ], [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !73
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i.i

bb.k:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS9_lE15checked_compareE.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 256
  %i.ac = and i64 %.0.lcssa.i.i.i.i.i.i.i, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  br label %bb.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS9_lE15checked_compareE.exit.i.i.i.i
  %i.ae = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i.i
  %.sroa.7.0.i.i.i.i = phi i32 [ %i.ae, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i.i ], [ %i.al, %bb.m ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE15internal_locateIlEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i.i ], [ %i.am, %bb.m ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !73
  %i.ah = zext i8 %i.ag to i32
  %i.ai = icmp eq i32 %.sroa.7.0.i.i.i.i, %i.ah
  br i1 %i.ai, label %bb.m, label %.loopexit304

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !73
  %i.al = zext i8 %i.ak to i32
  %i.am = load ptr, ptr %.sroa.0.0.i8.i.i.i, align 8, !tbaa !72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !73
  %.not.i11.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i11.i.i.i, label %bb.l, label %.loopexit304.thread, !llvm.loop !1

.loopexit304.thread:                              ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.critedge.preheader

.loopexit304:                                     ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !72 ; 2 uses
  %.phi.trans.insert434 = getelementptr inbounds nuw i8, ptr %.pre, i64 10
  %.pre435 = load i8, ptr %.phi.trans.insert434, align 1, !tbaa !73
  %.pre436 = zext i8 %.pre435 to i32
  %i.aq = icmp ne ptr %.sroa.0.0.i8.i.i.i, %.pre
  %i.ar = icmp ne i32 %.sroa.7.0.i.i.i.i, %.pre436
  %i.as = select i1 %i.aq, i1 true, i1 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  br i1 %i.as, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %.loopexit304
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  br label %bb.o

.critedge.preheader:                              ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit, %.loopexit304.thread, %.loopexit304
  %i.aw = phi ptr [ %i.ap, %.loopexit304.thread ], [ %i.at, %.loopexit304 ], [ %i.at, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit ] ; 2 uses
  %.not296388 = icmp eq ptr %.sroa.0241.1, %.sroa.10.1
  br i1 %.not296388, label %.critedge90, label %.lr.ph391

.lr.ph391:                                        ; preds = %.critedge.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.ac

bb.n:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit143

_ZN4absl12lts_202505129MutexLockD2Ev.exit141.thread: ; preds = %_ZN4absl12lts_202505129c_shuffleISt6vectorImSaImEEN9grpc_core12SharedBitGenEEEvRT_OT0_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit143

bb.o:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit
  %.sroa.9.0382 = phi i32 [ %.sroa.7.0.i.i.i.i, %.lr.ph ], [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit ] ; 3 uses
  %.sroa.0226.0381 = phi ptr [ %.sroa.0.0.i8.i.i.i, %.lr.ph ], [ %.sroa.0226.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit ] ; 7 uses
  %i.bj = and i32 %.sroa.9.0382, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0226.0381, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !75 ; 8 uses
  %i.bo = invoke noundef zeroext i1 %4(ptr %3, ptr noundef %i.bn)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit unwind label %bb.p, !inline_history !140

_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit: ; preds = %bb.o
  br i1 %i.bo, label %bb.q, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit

bb.q:                                             ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8, !noalias !171 ; 3 uses
  %i.bs = lshr i64 %i.br, 32
  %.0.masked8.i = and i64 %i.br, 4294967295
  %i.bt = or i64 %i.bs, %.0.masked8.i
  %or.cond.not9.i = icmp eq i64 %i.bt, 0
  br i1 %or.cond.not9.i, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.q, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i
  %.010.i = phi i64 [ %i.bx, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i ], [ %i.br, %bb.q ] ; 2 uses
  %i.bu = add i64 %.010.i, 1
  %i.bv = cmpxchg weak ptr %i.bq, i64 %.010.i, i64 %i.bu acq_rel acquire, align 8, !noalias !171 ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  br i1 %i.bw, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i: ; preds = %.critedge.i
  %i.bx = extractvalue { i64, i1 } %i.bv, 0       ; 3 uses
  %i.by = lshr i64 %i.bx, 32
  %.0.masked.i = and i64 %i.bx, 4294967295
  %i.bz = or i64 %i.by, %.0.masked.i
  %or.cond.not.i = icmp eq i64 %i.bz, 0
  br i1 %or.cond.not.i, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread, label %.critedge.i

_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit: ; preds = %.critedge.i
  %i.ca = icmp eq ptr %i.bn, null
  br i1 %i.ca, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread, label %bb.s

.loopexit.split-lp300.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw add ptr %i.bq, i64 -1 acq_rel, align 8
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.r, label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit, !prof !76

bb.r:                                             ; preds = %.loopexit.split-lp300.loopexit.split-lp
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !78
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(232) %i.bn) #26, !inline_history !2
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit

bb.s:                                             ; preds = %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit
  %i.cg = load ptr, ptr %i.au, align 8, !tbaa !79 ; 6 uses
  %i.ch = load ptr, ptr %8, align 16, !tbaa !80   ; 11 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = ashr exact i64 %i.ck, 3                 ; 4 uses
  %i.cm = icmp eq i64 %i.cl, %5
  br i1 %i.cm, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = load ptr, ptr %i.av, align 16, !tbaa !69
  %.not.i96 = icmp eq ptr %i.cg, %i.cn
  br i1 %.not.i96, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.bn, ptr %i.cg, align 8, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.co, ptr %i.au, align 8, !tbaa !79
  br label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.cp = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cp, label %bb.w, label %_ZNKSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #29
          to label %.noexc148 unwind label %.loopexit.split-lp300.loopexit.split-lp

.noexc148:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i, %i.cl ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cl
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i146 = icmp ne i64 %i.ct, 0
  call void @llvm.assume(i1 %.not.i.i146)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #27
          to label %.noexc149 unwind label %.loopexit.split-lp300.loopexit.split-lp ; 10 uses

.noexc149:                                        ; preds = %_ZNKSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ck
  store ptr %i.bn, ptr %i.cw, align 8, !tbaa !82
  %.not10.i.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc149
  %i.cx = add i64 %i.ci, -8
  %i.cy = sub i64 %i.cx, %i.cj                    ; 3 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader652, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.db = and i64 %i.cy, -8
  %i.dc = add i64 %i.db, 8                        ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cv, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.ch, i64 %i.dc
  %bound0 = icmp ult ptr %i.cv, %i.de
  %bound1 = icmp ult ptr %i.ch, %i.dd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader652, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.df = shl i64 %n.vec, 3                       ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cv, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.ch, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cv, i64 %i.di ; 2 uses
  %next.gep591 = getelementptr i8, ptr %i.ch, i64 %i.di ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.dj = getelementptr i8, ptr %next.gep591, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep591, align 8, !tbaa !82, !alias.scope !174
  %wide.load592 = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !82, !alias.scope !174
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !82, !alias.scope !175, !noalias !176
  store <2 x ptr> %wide.load592, ptr %i.dk, align 8, !tbaa !82, !alias.scope !175, !noalias !176
  store <2 x ptr> splat (ptr null), ptr %next.gep591, align 8, !tbaa !82, !alias.scope !174
  store <2 x ptr> splat (ptr null), ptr %i.dj, align 8, !tbaa !82, !alias.scope !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader652

.lr.ph.i.i.i.i.preheader652:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader652, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader652 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader652 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.dm = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !82, !alias.scope !173
  store ptr %i.dm, ptr %.012.i.i.i.i, align 8, !tbaa !82, !alias.scope !172
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !82, !alias.scope !173
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i147 = icmp eq ptr %i.dn, %i.cg
  br i1 %.not.i.i.i.i147, label %_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !150

_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc149
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cv, %.noexc149 ], [ %i.dg, %middle.block ], [ %i.do, %.lr.ph.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i, label %.noexc97, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.dq = load ptr, ptr %i.av, align 16, !tbaa !69
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ds) #28
  br label %.noexc97

.noexc97:                                         ; preds = %bb.x, %_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.cv, ptr %8, align 16, !tbaa !80
  store ptr %i.dp, ptr %i.au, align 8, !tbaa !79
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.dt, ptr %i.av, align 16, !tbaa !69
  br label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread

_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread: ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i, %bb.q, %_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit, %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit, %bb.u, %.noexc97
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0226.0381, i64 11
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !73
  %.not.i.i100 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i100, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread
  %i.dw = add nsw i32 %.sroa.9.0382, 1            ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0226.0381, i64 10
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !73
  %i.dz = zext i8 %i.dy to i32
  %i.ea = icmp eq i32 %i.dw, %i.dz
  br i1 %i.ea, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.y, %bb.z
  %.01521.i.i.i = phi ptr [ %i.eb, %bb.z ], [ %.sroa.0226.0381, %bb.y ] ; 2 uses
  %i.eb = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !72 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 11
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !73
  %.not17.i.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not17.i.i.i, label %bb.z, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !73  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 10
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !73
  %i.ei = icmp eq i8 %i.ef, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !3

.thread.i.i:                                      ; preds = %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0226.0381, i64 256
  %i.ek = add i32 %.sroa.9.0382, 1
  %i.el = and i32 %i.ek, 255
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.en, %.thread.i.i ], [ %i.eq, %bb.aa ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !72 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !73
  %.not.i.i.i.i102 = icmp eq i8 %i.ep, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i102, label %bb.aa, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit, !llvm.loop !4

.critedge.loopexit23.i.i.i:                       ; preds = %bb.z
  %i.er = zext i8 %i.ef to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS8_EELi256ELb0EEEEERSD_PSD_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.aa, %.critedge.loopexit23.i.i.i, %bb.y
  %.sroa.0226.1 = phi ptr [ %.116.i.i.i, %bb.aa ], [ %.sroa.0226.0381, %bb.y ], [ %i.eb, %.critedge.loopexit23.i.i.i ], [ %.sroa.0226.0381, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.9.1 = phi i32 [ 0, %bb.aa ], [ %i.dw, %bb.y ], [ %i.er, %.critedge.loopexit23.i.i.i ], [ %i.dw, %.lr.ph.i.i.i ] ; 2 uses
  %i.es = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 10
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !73
  %i.ev = zext i8 %i.eu to i32
  %i.ew = icmp ne ptr %.sroa.0226.1, %i.es
  %i.ex = icmp ne i32 %.sroa.9.1, %i.ev
  %.not3.i = select i1 %i.ew, i1 true, i1 %i.ex
  br i1 %.not3.i, label %bb.o, label %.critedge.preheader

bb.ab:                                            ; preds = %bb.s
  store i8 0, ptr %0, align 8, !tbaa !178
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ey, align 8, !tbaa !80
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !67
  store <2 x ptr> %11, ptr %i.ez, align 8, !tbaa !67
  br label %.loopexit297.sink.split

.critedge:                                        ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit132
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0213.0389, i64 8
  %.not296 = icmp eq ptr %.sroa.0213.0389, %.pn
  br i1 %.not296, label %.thread284, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph391, %.critedge
  %.sroa.0233.4390 = phi ptr [ null, %.lr.ph391 ], [ %.sroa.0233.10282, %.critedge ] ; 7 uses
  %.sroa.0213.0389 = phi ptr [ %.sroa.0241.1, %.lr.ph391 ], [ %i.fa, %.critedge ] ; 3 uses
  %i.fb = load i64, ptr %.sroa.0213.0389, align 8, !tbaa !70
  %i.fc = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw [128 x i8], ptr %i.fc, i64 %i.fb ; 7 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit104 unwind label %bb.ad

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit104: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store ptr %i.fe, ptr %9, align 8, !tbaa !181
  store ptr %i.ff, ptr %i.ay, align 8, !tbaa !182
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 80
  store ptr %i.fg, ptr %i.az, align 8, !tbaa !181
  store ptr %i.fh, ptr %i.ba, align 8, !tbaa !182
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit

bb.ae:                                            ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit104, %.thread
  %.050.idx386 = phi i64 [ 0, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit104 ], [ %.050.add, %.thread ] ; 2 uses
  %.050.ptr = getelementptr inbounds nuw i8, ptr %9, i64 %.050.idx386 ; 2 uses
  %.sroa.0200.0.copyload = load ptr, ptr %.050.ptr, align 8 ; 4 uses
  %.sroa.7.0..050.sroa_idx = getelementptr inbounds nuw i8, ptr %.050.ptr, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..050.sroa_idx, align 8 ; 4 uses
  %i.fj = load ptr, ptr %.sroa.0200.0.copyload, align 8, !tbaa !85 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0200.0.copyload, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0200.0.copyload, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %.backedge
  %.0385 = phi ptr [ %i.fj, %.preheader ], [ %.0.be, %.backedge ] ; 18 uses
  %i.fp = invoke noundef zeroext i1 %4(ptr %3, ptr noundef nonnull %.0385)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit107 unwind label %bb.ah, !inline_history !140

_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit107: ; preds = %bb.af
  br i1 %i.fp, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit107
  %i.fq = getelementptr inbounds nuw i8, ptr %.0385, i64 120
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !112
  br label %.backedge

.backedge:                                        ; preds = %bb.bl, %_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit127, %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116.thread, %bb.bh, %.noexc126, %bb.ag
  %.0.be = phi ptr [ %i.fr, %bb.ag ], [ %i.gg, %bb.bl ], [ %i.ge, %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116.thread ], [ %i.gg, %_ZNSt6vectorIN9grpc_core17WeakRefCountedPtrINS0_8channelz8BaseNodeEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit127 ], [ %i.gg, %bb.bh ], [ %i.gg, %.noexc126 ] ; 2 uses
  %.not77 = icmp eq ptr %.0.be, null
  br i1 %.not77, label %.thread, label %bb.af, !llvm.loop !151

bb.ah:                                            ; preds = %bb.af
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_8channelz8BaseNodeEED2Ev.exit131

bb.ai:                                            ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFbPKN9grpc_core8channelz8BaseNodeEEEclES6_.exit107
  %i.ft = getelementptr inbounds nuw i8, ptr %.0385, i64 8 ; 4 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8, !noalias !183 ; 3 uses
  %i.fv = lshr i64 %i.fu, 32
  %.0.masked8.i108 = and i64 %i.fu, 4294967295
  %i.fw = or i64 %i.fv, %.0.masked8.i108
  %or.cond.not9.i109 = icmp eq i64 %i.fw, 0
  br i1 %or.cond.not9.i109, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116.thread, label %.critedge.i110

.critedge.i110:                                   ; preds = %bb.ai, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i112
  %.010.i111 = phi i64 [ %i.ga, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i112 ], [ %i.fu, %bb.ai ] ; 2 uses
  %i.fx = add i64 %.010.i111, 1
  %i.fy = cmpxchg weak ptr %i.ft, i64 %.010.i111, i64 %i.fx acq_rel acquire, align 8, !noalias !183 ; 2 uses
  %i.fz = extractvalue { i64, i1 } %i.fy, 1
  br i1 %i.fz, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i112

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i112: ; preds = %.critedge.i110
  %i.ga = extractvalue { i64, i1 } %i.fy, 0       ; 3 uses
  %i.gb = lshr i64 %i.ga, 32
  %.0.masked.i113 = and i64 %i.ga, 4294967295
  %i.gc = or i64 %i.gb, %.0.masked.i113
  %or.cond.not.i114 = icmp eq i64 %i.gc, 0
  br i1 %or.cond.not.i114, label %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116.thread, label %.critedge.i110

_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116.thread: ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit.i112, %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %.0385, i64 120
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !112
  br label %.backedge, !llvm.loop !151

_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116: ; preds = %.critedge.i110
  %i.gf = getelementptr inbounds nuw i8, ptr %.0385, i64 120 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !112 ; 9 uses
  %i.gh = load i64, ptr %i.fl, align 8, !tbaa !113
  %i.gi = add i64 %i.gh, -1
  store i64 %i.gi, ptr %i.fl, align 8, !tbaa !113
  %i.gj = getelementptr inbounds nuw i8, ptr %.0385, i64 112 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !114 ; 4 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116
  store ptr %i.gg, ptr %.sroa.0200.0.copyload, align 8, !tbaa !85
  %i.gm = icmp eq ptr %i.gg, null
  br i1 %i.gm, label %bb.ak, label %.thread.i

bb.ak:                                            ; preds = %bb.aj
  store ptr null, ptr %i.fm, align 8, !tbaa !115
  br label %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList6RemoveEPNS0_8BaseNodeE.exit

bb.al:                                            ; preds = %_ZN9grpc_core14DualRefCountedINS_8channelz8BaseNodeENS_19PolymorphicRefCountENS_11UnrefDeleteEE16WeakRefIfNonZeroEv.exit116
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 120
  store ptr %i.gg, ptr %i.gn, align 8, !tbaa !112
  %i.go = icmp eq ptr %i.gg, null
  br i1 %i.go, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  store ptr %i.gk, ptr %i.fm, align 8, !tbaa !115
  br label %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList6RemoveEPNS0_8BaseNodeE.exit

.thread.i:                                        ; preds = %bb.al, %bb.aj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 112
  store ptr %i.gk, ptr %i.gp, align 8, !tbaa !114
  br label %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList6RemoveEPNS0_8BaseNodeE.exit

_ZN9grpc_core8channelz16ChannelzRegistry8NodeList6RemoveEPNS0_8BaseNodeE.exit: ; preds = %.thread.i, %bb.am, %bb.ak
  %i.gq = load i64, ptr %i.fn, align 8, !tbaa !113
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.fn, align 8, !tbaa !113
  %i.gs = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !85 ; 3 uses
  %.not.i117 = icmp eq ptr %i.gs, null
  br i1 %.not.i117, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList6RemoveEPNS0_8BaseNodeE.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  store ptr %.0385, ptr %i.gt, align 8, !tbaa !114
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList6RemoveEPNS0_8BaseNodeE.exit
  store ptr %i.gs, ptr %i.gf, align 8, !tbaa !112
  store ptr null, ptr %i.gj, align 8, !tbaa !114
  store ptr %.0385, ptr %.sroa.7.0.copyload, align 8, !tbaa !85
  %i.gu = load ptr, ptr %i.fo, align 8, !tbaa !115
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.ap, label %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList9AddToHeadEPNS0_8BaseNodeE.exit

bb.ap:                                            ; preds = %bb.ao
  store ptr %.0385, ptr %i.fo, align 8, !tbaa !115
  br label %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList9AddToHeadEPNS0_8BaseNodeE.exit

_ZN9grpc_core8channelz16ChannelzRegistry8NodeList9AddToHeadEPNS0_8BaseNodeE.exit: ; preds = %bb.ao, %bb.ap
  %i.gw = load i64, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0385, i64 32 ; 3 uses
  store atomic i64 %i.gw, ptr %i.gx seq_cst, align 8
  %i.gy = add nsw i64 %i.gw, 1
  store i64 %i.gy, ptr %1, align 8, !tbaa !43
  %i.gz = load atomic i64, ptr %i.gx seq_cst, align 8, !noalias !184 ; 3 uses
  %i.ha = load i64, ptr %i.bb, align 8, !tbaa !52, !noalias !185
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %.noexc.i, label %.preheader621

.noexc.i:                                         ; preds = %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList9AddToHeadEPNS0_8BaseNodeE.exit
  %i.hc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc120:                                        ; preds = %.noexc.i
  store ptr %i.hc, ptr %i.hc, align 8, !tbaa !72, !noalias !185
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.hd, align 8, !tbaa !73, !noalias !185
  store ptr %i.hc, ptr %i.aw, align 8, !tbaa !72, !noalias !185
  store ptr %i.hc, ptr %i.q, align 8, !tbaa !72, !noalias !185
  br label %.preheader621

.preheader621:                                    ; preds = %.noexc120, %_ZN9grpc_core8channelz16ChannelzRegistry8NodeList9AddToHeadEPNS0_8BaseNodeE.exit
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader621, %bb.as
  %.sroa.0.0.in.i.i.i = phi ptr [ %i.hq, %bb.as ], [ %i.q, %.preheader621 ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !72, !noalias !185 ; 10 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !73, !noalias !185 ; 2 uses
  %i.hg = zext i8 %i.hf to i64                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIlPN9grpc_core8channelz8BaseNodeESt4lessIlESaISt4pairIKlS7_EELi256ELb0EEEE11lower_boundIlEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS9_lE15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aq, %bb.ar
  %.07.i.i.i.i.i.i = phi i64 [ %i.hl, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
end_hunk_0
