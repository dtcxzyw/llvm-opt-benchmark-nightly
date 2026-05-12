inline.NumInlined: 5367
inline.NumDeleted: 2188
begin_hunk_0_@_ZN8facebook5velox6memory10MemoryPool16getPreferredSizeEm:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory10MemoryPool16setPreferredSizeESt8functionIFmmEE(ptr noundef nonnull align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.b, null
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory10MemoryPool16setPreferredSizeESt8functionIFmmEE:bb.a
bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %_ZNSt8functionIFmmEEC2ERKS1_.exit.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory10MemoryPool16setPreferredSizeESt8functionIFmmEE:bb.a

_ZNSt8functionIFmmEEC2ERKS1_.exit.i:              ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !191
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.a, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 16, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !67
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.c, align 8, !tbaa !67
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFmmEEaSERKS1_.exit, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_
; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory14MemoryPoolImpl22setDestructionCallbackERKSt8functionIFvPNS1_10MemoryPoolEEE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.42", align 8  ; 12 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.269", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox6memory14MemoryPoolImpl22setDestructionCallbackERKSt8functionIFvPNS1_10MemoryPoolEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvPN8facebook5velox6memory10MemoryPoolEEEC2ERKS6_.exit.i, label %bb.m
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox6memory14MemoryPoolImpl22setDestructionCallbackERKSt8functionIFvPNS1_10MemoryPoolEEE:bb.a
bb.o:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !81  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %.body, label %bb.p

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox6memory14MemoryPoolImpl22setDestructionCallbackERKSt8functionIFvPNS1_10MemoryPoolEEE:bb.a
_ZNSt8functionIFvPN8facebook5velox6memory10MemoryPoolEEEC2ERKS6_.exit.i: ; preds = %bb.n, %bb.l
  %i.af = phi ptr [ null, %bb.l ], [ %.pre, %bb.n ] ; 3 uses
  %i.ag = phi <2 x ptr> [ splat (ptr null), %bb.l ], [ %i.z, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  store ptr %i.af, ptr %i.v, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !67
  store ptr %i.ai, ptr %i.w, align 8, !tbaa !67
end_hunk_6
begin_hunk_7_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %"struct.std::pair.211", align 8    ; 10 uses
  %4 = alloca %"struct.std::pair.211", align 8    ; 9 uses
  %5 = alloca %struct.AllocationStats, align 8    ; 4 uses
  %6 = alloca %struct.AllocationStats, align 8    ; 4 uses
  %7 = alloca %struct.AllocationStats, align 8    ; 4 uses
  %8 = alloca %struct.AllocationStats, align 8    ; 4 uses
  %9 = alloca %struct.AllocationStats, align 8    ; 4 uses
  %10 = alloca %struct.AllocationStats, align 8   ; 4 uses
  %11 = alloca %struct.AllocationStats, align 8   ; 4 uses
  %12 = alloca %"struct.std::pair.211", align 8   ; 8 uses
  %13 = alloca %"struct.std::pair.211", align 8   ; 9 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.e, %i.d                       ; 3 uses
end_hunk_7
begin_hunk_8_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  %.lcssa133 = phi i64 [ %i.f, %.lr.ph ], [ %i.gn, %bb.b ]
  %storemerge59.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.q = udiv exact i64 %.lcssa133, 48            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.r = add nsw i64 %i.q, -2
  %i.s = lshr i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.s, %._crit_edge ], [ %i.au, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit20.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.z = getelementptr inbounds [48 x i8], ptr %0, i64 %.010.i.i.i ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
end_hunk_8
begin_hunk_9_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEC2EOSB_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.aa, ptr %12, align 8, !tbaa !16
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !22
  store i64 %i.ah, ptr %i.t, align 8, !tbaa !22
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_9
begin_hunk_10_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  store i8 0, ptr %i.ab, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !607
  store ptr %i.w, ptr %13, align 8, !tbaa !26
  %i.am = icmp eq ptr %i.ai, %i.t
  br i1 %i.am, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

end_hunk_10
begin_hunk_11_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEC2EOSB_.exit17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEC2EOSB_.exit.i.i.i
  store ptr %i.ai, ptr %13, align 8, !tbaa !16
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !22
  store i64 %i.ap, ptr %i.w, align 8, !tbaa !22
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEC2EOSB_.exit17.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEC2EOSB_.exit17.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i, %bb.e
  store i64 %i.aj, ptr %i.x, align 8, !tbaa !21
  store ptr %i.t, ptr %12, align 8, !tbaa !16
  store i64 0, ptr %i.u, align 8, !tbaa !21
  store i8 0, ptr %i.t, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElSE_NS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.q, ptr noundef %13)
  %i.aq = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.w
  br i1 %i.ar, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

end_hunk_11
begin_hunk_12_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEC2EOSB_.exit17.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.au = add nsw i64 %.010.i.i.i, -1
  %i.av = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.t
  br i1 %i.aw, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit20.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i

end_hunk_12
begin_hunk_13_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit20.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit20.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_RT0_.exit.i.i", label %bb.c, !llvm.loop !703

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_RT0_.exit.i.i": ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsED2Ev.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
end_hunk_13
begin_hunk_14_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.cx) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
end_hunk_14
begin_hunk_15_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.cy) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
end_hunk_15
begin_hunk_16_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit46: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i43, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i40, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.x:                                             ; preds = %.lr.ph137
end_hunk_16
begin_hunk_17_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit32: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i29, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i26, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.af:                                            ; preds = %bb.x
end_hunk_17
begin_hunk_18_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.cy) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.ah:                                            ; preds = %bb.af
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.cx) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i.preheader": ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit46, %bb.p, %bb.n
end_hunk_18
begin_hunk_19_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_":bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !607
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_SO_SO_T0_.exit.i", !llvm.loop !707

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEET_SO_SO_T0_.exit": ; preds = %bb.aj
end_hunk_19
