Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderDNA?download=true
inline.NumInlined: 851
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6Assimp7Blender3DNA27GetBlobToStructureConverterERKNS0_9StructureERKNS0_12FileDatabaseE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.48") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(232) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISM_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !40

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISM_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISM_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit.thread, label %bb.d

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IMN6Assimp7Blender9StructureEKFSt10shared_ptrINS9_8ElemBaseEEvEMSA_KFvSD_RKNS9_12FileDatabaseEEEESt10_Select1stISM_ESt4lessIS5_ESaISM_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISM_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIMN6Assimp7Blender9StructureEKFSt10shared_ptrINS8_8ElemBaseEEvEMS9_KFvSC_RKNS8_12FileDatabaseEEESt4lessIS5_ESaIS6_IKS5_SK_EEE4findERSN_.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.77", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.66", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !21

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #20 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8, !alias.scope !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7Blender13SectionParser4NextEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(81) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [4 x i8], align 1                   ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 %i.c
  %i.i = getelementptr i8, ptr %i.h, i64 %i.e     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ugt ptr %i.i, %i.l
  br i1 %i.m, label %bb.b, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.28)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

common.resume:                                    ; preds = %bb.av, %bb.aq, %bb.al, %bb.af, %bb.y, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.x, %bb.g ], [ %i.ah, %bb.j ], [ %i.ar, %bb.m ], [ %i.bb, %bb.p ], [ %i.ce, %bb.y ], [ %i.cx, %bb.af ], [ %i.do, %bb.al ], [ %i.ed, %bb.aq ], [ %i.fe, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.p = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp ugt ptr %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit

bb.e:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.29)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.w) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit:  ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.y = load i8, ptr %i.r, align 1               ; 2 uses
  store ptr %i.s, ptr %i.q, align 8
  store i8 %i.y, ptr %1, align 1
  %i.z = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp ugt ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6

bb.h:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.29)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ag) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit
  %i.ai = load i8, ptr %i.ab, align 1             ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.059.1..sroa_idx78 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ai, ptr %.sroa.059.1..sroa_idx78, align 1
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp ugt ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7

bb.k:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.29)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aq) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit6
  %i.as = load i8, ptr %i.al, align 1             ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8
  %.sroa.059.2..sroa_idx79 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.as, ptr %.sroa.059.2..sroa_idx79, align 1
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ugt ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.n, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8

bb.n:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.29)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ba) #20
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit7
  %i.bc = load i8, ptr %i.av, align 1             ; 2 uses
  store ptr %i.aw, ptr %i.au, align 8
  %.sroa.059.3..sroa_idx80 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.bc, ptr %.sroa.059.3..sroa_idx80, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %bb.q, label %.thread

bb.q:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8
  %.not3 = icmp eq i8 %i.as, 0
  br i1 %.not3, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8
  %.ph = phi i64 [ 4, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit8 ], [ 3, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.bd, ptr %2, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not4 = icmp eq i8 %i.ai, 0
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.be, ptr %2, align 8
  br i1 %.not4, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 %i.y, ptr %i.be, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

bb.t:                                             ; preds = %bb.r, %.thread
  %i.bf = phi ptr [ %i.bd, %.thread ], [ %i.be, %bb.r ] ; 2 uses
  %i.bg = phi i64 [ %.ph, %.thread ], [ 2, %bb.r ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.bg, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.t, %bb.s
  %i.bh = phi ptr [ %i.bf, %bb.t ], [ %i.be, %bb.s ] ; 5 uses
  %i.bi = phi i64 [ %i.bg, %bb.t ], [ 1, %bb.s ]  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %cond67 = icmp eq i64 %i.bi, 1
  br i1 %cond67, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bn = load i8, ptr %i.bh, align 1
  store i8 %i.bn, ptr %i.bm, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bh, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.u, %bb.v
  %i.bo = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.bl, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1
  %.pre.i = load ptr, ptr %2, align 8
  store i64 0, ptr %i.bj, align 8
  store i8 0, ptr %.pre.i, align 1
  %i.bs = load ptr, ptr %2, align 8               ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bh
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bu = load i64, ptr %i.bh, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bw = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp ugt ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull @.str.29)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cd) #20
  br label %common.resume

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i32, ptr %i.by, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i = lshr i32 %i.cf, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i = lshr i32 %i.cf, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i = lshr i32 %i.cf, 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ch = load i8, ptr %i.cg, align 8, !range !5, !noundef !3
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.cf, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit:  ; preds = %bb.z, %bb.aa
  %.sroa.8.0.i.i = phi i32 [ %.sroa.8.0.extract.shift.i.i, %bb.z ], [ %.sroa.6.0.extract.shift.i.i, %bb.aa ]
  %.sroa.6.0.in.i.i = phi i32 [ %.sroa.6.0.extract.shift.i.i, %bb.z ], [ %.sroa.8.0.extract.shift.i.i, %bb.aa ]
  %.sroa.02.0.in.i.i = phi i32 [ %i.cf, %bb.z ], [ %.sroa.10.0.extract.shift.i.i, %bb.aa ]
  %.sroa.10.0.i.i = phi i32 [ %.sroa.10.0.extract.shift.i.i, %bb.z ], [ %i.cj, %bb.aa ]
  store ptr %i.bz, ptr %i.bx, align 8
  %.sroa.10.0.insert.shift.i.i = shl nuw i32 %.sroa.10.0.i.i, 24
  %.sroa.8.0.insert.ext.i.i = shl i32 %.sroa.8.0.i.i, 16
  %.sroa.8.0.insert.shift.i.i = and i32 %.sroa.8.0.insert.ext.i.i, 16711680
  %.sroa.8.0.insert.insert.i.i = or disjoint i32 %.sroa.10.0.insert.shift.i.i, %.sroa.8.0.insert.shift.i.i
  %.sroa.6.0.insert.ext.i.i = shl nuw i32 %.sroa.6.0.in.i.i, 8
  %.sroa.6.0.insert.shift.i.i = and i32 %.sroa.6.0.insert.ext.i.i, 65280
  %.sroa.6.0.insert.insert.i.i = or disjoint i32 %.sroa.8.0.insert.insert.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.02.0.insert.ext.i.i = and i32 %.sroa.02.0.in.i.i, 255
  %.sroa.02.0.insert.insert.i.i = or disjoint i32 %.sroa.6.0.insert.insert.i.i, %.sroa.02.0.insert.ext.i.i
  %i.ck = sext i32 %.sroa.02.0.insert.insert.i.i to i64
  store i64 %i.ck, ptr %i.d, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cm = load i8, ptr %i.cl, align 8, !range !5, !noundef !3
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 4 uses
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit
  %i.cp = call noundef i64 @_ZN6Assimp12StreamReaderILb1ELb1EE3GetImEET_v(ptr noundef nonnull align 8 dereferenceable(49) %i.co)
  br label %bb.ai

bb.ac:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp ugt ptr %i.cs, %i.cu
  br i1 %i.cv, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cw = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull @.str.29)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cw) #20
  br label %common.resume

bb.ag:                                            ; preds = %bb.ac
  %i.cy = load i32, ptr %i.cr, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i9 = lshr i32 %i.cy, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i10 = lshr i32 %i.cy, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i11 = lshr i32 %i.cy, 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.da = load i8, ptr %i.cz, align 8, !range !5, !noundef !3
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = and i32 %i.cy, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit

_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit:  ; preds = %bb.ag, %bb.ah
  %.sroa.8.0.i.i12 = phi i32 [ %.sroa.8.0.extract.shift.i.i10, %bb.ag ], [ %.sroa.6.0.extract.shift.i.i9, %bb.ah ]
  %.sroa.6.0.in.i.i13 = phi i32 [ %.sroa.6.0.extract.shift.i.i9, %bb.ag ], [ %.sroa.8.0.extract.shift.i.i10, %bb.ah ]
  %.sroa.02.0.in.i.i14 = phi i32 [ %i.cy, %bb.ag ], [ %.sroa.10.0.extract.shift.i.i11, %bb.ah ]
  %.sroa.10.0.i.i15 = phi i32 [ %.sroa.10.0.extract.shift.i.i11, %bb.ag ], [ %i.dc, %bb.ah ]
  store ptr %i.cs, ptr %i.cq, align 8
  %.sroa.10.0.insert.shift.i.i16 = shl nuw i32 %.sroa.10.0.i.i15, 24
  %.sroa.8.0.insert.ext.i.i17 = shl i32 %.sroa.8.0.i.i12, 16
  %.sroa.8.0.insert.shift.i.i18 = and i32 %.sroa.8.0.insert.ext.i.i17, 16711680
  %.sroa.8.0.insert.insert.i.i19 = or disjoint i32 %.sroa.10.0.insert.shift.i.i16, %.sroa.8.0.insert.shift.i.i18
  %.sroa.6.0.insert.ext.i.i20 = shl nuw i32 %.sroa.6.0.in.i.i13, 8
  %.sroa.6.0.insert.shift.i.i21 = and i32 %.sroa.6.0.insert.ext.i.i20, 65280
  %.sroa.6.0.insert.insert.i.i22 = or disjoint i32 %.sroa.8.0.insert.insert.i.i19, %.sroa.6.0.insert.shift.i.i21
  %.sroa.02.0.insert.ext.i.i23 = and i32 %.sroa.02.0.in.i.i14, 255
  %.sroa.02.0.insert.insert.i.i24 = or disjoint i32 %.sroa.6.0.insert.insert.i.i22, %.sroa.02.0.insert.ext.i.i23
  %i.dd = zext i32 %.sroa.02.0.insert.insert.i.i24 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit, %bb.ab
  %i.de = phi i64 [ %i.cp, %bb.ab ], [ %i.dd, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetU4Ev.exit ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = icmp ugt ptr %i.dj, %i.dl
  br i1 %i.dm, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull @.str.29)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dn) #20
  br label %common.resume

bb.am:                                            ; preds = %bb.ai
  %i.dp = load i32, ptr %i.di, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i25 = lshr i32 %i.dp, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i26 = lshr i32 %i.dp, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i27 = lshr i32 %i.dp, 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dr = load i8, ptr %i.dq, align 8, !range !5, !noundef !3
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit41, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = and i32 %i.dp, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit41

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit41: ; preds = %bb.am, %bb.an
  %.sroa.8.0.i.i28 = phi i32 [ %.sroa.8.0.extract.shift.i.i26, %bb.am ], [ %.sroa.6.0.extract.shift.i.i25, %bb.an ]
  %.sroa.6.0.in.i.i29 = phi i32 [ %.sroa.6.0.extract.shift.i.i25, %bb.am ], [ %.sroa.8.0.extract.shift.i.i26, %bb.an ]
  %.sroa.02.0.in.i.i30 = phi i32 [ %i.dp, %bb.am ], [ %.sroa.10.0.extract.shift.i.i27, %bb.an ]
  %.sroa.10.0.i.i31 = phi i32 [ %.sroa.10.0.extract.shift.i.i27, %bb.am ], [ %i.dt, %bb.an ]
  store ptr %i.dj, ptr %i.dh, align 8
  %.sroa.10.0.insert.shift.i.i32 = shl nuw i32 %.sroa.10.0.i.i31, 24
  %.sroa.8.0.insert.ext.i.i33 = shl i32 %.sroa.8.0.i.i28, 16
  %.sroa.8.0.insert.shift.i.i34 = and i32 %.sroa.8.0.insert.ext.i.i33, 16711680
  %.sroa.8.0.insert.insert.i.i35 = or disjoint i32 %.sroa.10.0.insert.shift.i.i32, %.sroa.8.0.insert.shift.i.i34
  %.sroa.6.0.insert.ext.i.i36 = shl nuw i32 %.sroa.6.0.in.i.i29, 8
  %.sroa.6.0.insert.shift.i.i37 = and i32 %.sroa.6.0.insert.ext.i.i36, 65280
  %.sroa.6.0.insert.insert.i.i38 = or disjoint i32 %.sroa.8.0.insert.insert.i.i35, %.sroa.6.0.insert.shift.i.i37
  %.sroa.02.0.insert.ext.i.i39 = and i32 %.sroa.02.0.in.i.i30, 255
  %.sroa.02.0.insert.insert.i.i40 = or disjoint i32 %.sroa.6.0.insert.insert.i.i38, %.sroa.02.0.insert.ext.i.i39
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.02.0.insert.insert.i.i40, ptr %i.du, align 8
  %i.dv = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = icmp ugt ptr %i.dy, %i.ea
  br i1 %i.eb, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit41
  %i.ec = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull @.str.29)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ec) #20
  br label %common.resume

bb.ar:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit41
  %i.ee = load i32, ptr %i.dx, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i42 = lshr i32 %i.ee, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i43 = lshr i32 %i.ee, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i44 = lshr i32 %i.ee, 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.eg = load i8, ptr %i.ef, align 8, !range !5, !noundef !3
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit58, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = and i32 %i.ee, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit58

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit58: ; preds = %bb.ar, %bb.as
  %.sroa.8.0.i.i45 = phi i32 [ %.sroa.8.0.extract.shift.i.i43, %bb.ar ], [ %.sroa.6.0.extract.shift.i.i42, %bb.as ]
  %.sroa.6.0.in.i.i46 = phi i32 [ %.sroa.6.0.extract.shift.i.i42, %bb.ar ], [ %.sroa.8.0.extract.shift.i.i43, %bb.as ]
  %.sroa.02.0.in.i.i47 = phi i32 [ %i.ee, %bb.ar ], [ %.sroa.10.0.extract.shift.i.i44, %bb.as ]
  %.sroa.10.0.i.i48 = phi i32 [ %.sroa.10.0.extract.shift.i.i44, %bb.ar ], [ %i.ei, %bb.as ]
  store ptr %i.dy, ptr %i.dw, align 8
  %.sroa.10.0.insert.shift.i.i49 = shl nuw i32 %.sroa.10.0.i.i48, 24
  %.sroa.8.0.insert.ext.i.i50 = shl i32 %.sroa.8.0.i.i45, 16
  %.sroa.8.0.insert.shift.i.i51 = and i32 %.sroa.8.0.insert.ext.i.i50, 16711680
  %.sroa.8.0.insert.insert.i.i52 = or disjoint i32 %.sroa.10.0.insert.shift.i.i49, %.sroa.8.0.insert.shift.i.i51
  %.sroa.6.0.insert.ext.i.i53 = shl nuw i32 %.sroa.6.0.in.i.i46, 8
  %.sroa.6.0.insert.shift.i.i54 = and i32 %.sroa.6.0.insert.ext.i.i53, 65280
  %.sroa.6.0.insert.insert.i.i55 = or disjoint i32 %.sroa.8.0.insert.insert.i.i52, %.sroa.6.0.insert.shift.i.i54
  %.sroa.02.0.insert.ext.i.i56 = and i32 %.sroa.02.0.in.i.i47, 255
  %.sroa.02.0.insert.insert.i.i57 = or disjoint i32 %.sroa.6.0.insert.insert.i.i55, %.sroa.02.0.insert.ext.i.i56
  %i.ej = sext i32 %.sroa.02.0.insert.insert.i.i57 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ej, ptr %i.ek, align 8
  %i.el = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %sext = shl i64 %i.es, 32
  %i.et = ashr exact i64 %sext, 32
  store i64 %i.et, ptr %0, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = load ptr, ptr %i.em, align 8
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = load i64, ptr %i.d, align 8
  %i.fc = icmp ult i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit58
  %i.fd = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull @.str.24)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fd) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %common.resume

bb.aw:                                            ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #20
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !55
  store i8 0, ptr %i.a, align 8, !alias.scope !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !55 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !55 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !55 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !55 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
end_hunk_0
