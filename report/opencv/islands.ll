Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/islands?download=true
inline.NumInlined: 1818
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv5gimpl6passes11initIslandsERN3ade6passes11PassContextE:bb.a
  %.not.i.i.i.i5.i5.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.abi, 0
  br i1 %.not.i.i.i.i5.i5.i.i.i.i.i.i.i.i.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.abj = load i32, ptr %i.abh, align 4, !tbaa !34, !noalias !269 ; 2 uses
  %i.abk = add nsw i32 %i.abj, -1
  store i32 %i.abk, ptr %i.abh, align 4, !tbaa !34, !noalias !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i6.i.i.i.i.i.i.i.i.i

bb.io:                                            ; preds = %bb.im
  %i.abl = atomicrmw volatile add ptr %i.abh, i32 -1 acq_rel, align 4, !noalias !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i6.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i6.i.i.i.i.i.i.i.i.i: ; preds = %bb.io, %bb.in
  %.0.i.i.i.i.i7.i7.i.i.i.i.i.i.i.i.i = phi i32 [ %i.abj, %bb.in ], [ %i.abl, %bb.io ]
  %i.abm = icmp eq i32 %.0.i.i.i.i.i7.i7.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.abm, label %common.resume.sink.split.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i

_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE8metadataERKNS_6HandleINS_4NodeEEE.exit13.i.i.i.i.i.i.i.i.i: ; preds = %bb.ik, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i11.i.i.i.i.i.i.i.i.i, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !265
  %.sroa.0.0.copyload.i.i14.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !41, !noalias !265
  store ptr %.sroa.0.0.copyload.i.i14.i.i.i.i.i.i.i.i.i, ptr %4, align 8, !noalias !265
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aau, i64 32
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !53, !noalias !265
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abo, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE8metadataERKNS_6HandleINS_4NodeEEE.exit13.i.i.i.i.i.i.i.i.i
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aau, i64 24
  br label %bb.iq

bb.iq:                                            ; preds = %.noexc7.i.i.i.i.i.i.i.i, %bb.ip
  %.sroa.06.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abp, %bb.ip ], [ %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !54, !noalias !265, !nonnull !21, !noundef !21 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.abr = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.abq)
          to label %.noexc7.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !265

.noexc7.i.i.i.i.i.i.i.i:                          ; preds = %bb.iq
  br i1 %i.abr, label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE3getIS9_EENSt11conditionalILb1ERKT_RSU_E4typeEv.exit.i.i.i.i.i.i.i.i.i, label %bb.iq, !llvm.loop !2

bb.ir:                                            ; preds = %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE8metadataERKNS_6HandleINS_4NodeEEE.exit13.i.i.i.i.i.i.i.i.i
  %i.abs = invoke noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.aau, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc8.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !265 ; 2 uses

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %bb.ir
  %i.abt = getelementptr inbounds nuw i8, ptr %i.aau, i64 16 ; 2 uses
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !56, !noalias !265 ; 2 uses
  %i.abv = urem i64 %i.abs, %i.abu                ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !57, !noalias !265
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %i.abv
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !58, !noalias !265, !nonnull !21, !noundef !21 ; 2 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !54, !noalias !265 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !60, !noalias !265
  br label %bb.is

bb.is:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i
  %i.acb = phi i64 [ %i.abu, %.noexc8.i.i.i.i.i.i.i.i ], [ %i.acg, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.acc = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i ], [ %i.acj, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abz, %.noexc8.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aca, %.noexc8.i.i.i.i.i.i.i.i ], [ %i.ach, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.acd = icmp eq i64 %i.abs, %i.acc
  br i1 %i.acd, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.is
  %i.ace = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i, i64 8
  %i.acf = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ace)
          to label %.noexc9.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !265

.noexc9.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.acf, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.abt, align 8, !tbaa !56, !noalias !265
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.is
  %i.acg = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acb, %bb.is ] ; 2 uses
  %i.ach = load ptr, ptr %.0.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i, align 8, !tbaa !54, !noalias !265, !nonnull !21, !noundef !21 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  %i.acj = load i64, ptr %i.aci, align 8, !tbaa !60, !noalias !265 ; 2 uses
  %i.ack = urem i64 %i.acj, %i.acg
  %.not19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ack, %i.abv
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %bb.is

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i.i.i.i
  %i.acl = load ptr, ptr %.015.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !54, !noalias !265
  br label %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE3getIS9_EENSt11conditionalILb1ERKT_RSU_E4typeEv.exit.i.i.i.i.i.i.i.i.i

_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE3getIS9_EENSt11conditionalILb1ERKT_RSU_E4typeEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i.i.i.i.i.i, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acl, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i.i ]
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !62, !noalias !265 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !265
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !71, !noalias !265 ; 3 uses
  %i.acr = load i64, ptr %i.m, align 8, !tbaa !71, !noalias !265
  %i.acs = icmp eq i64 %i.acq, %i.acr
  br i1 %i.acs, label %bb.it, label %"_ZZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESX_.exit.i.i.i.i.i.i.i.i"

bb.it:                                            ; preds = %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE3getIS9_EENSt11conditionalILb1ERKT_RSU_E4typeEv.exit.i.i.i.i.i.i.i.i.i
  %i.act = icmp eq i64 %i.acq, 0
  br i1 %i.act, label %"_ZZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESX_.exit.i.i.i.i.i.i.i.i", label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.acu = load ptr, ptr %40, align 8, !tbaa !70, !noalias !265
  %i.acv = load ptr, ptr %i.aco, align 8, !tbaa !70, !noalias !265
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.acv, ptr %i.acu, i64 %i.acq), !noalias !265
  %i.acw = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br label %"_ZZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESX_.exit.i.i.i.i.i.i.i.i"

"_ZZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESX_.exit.i.i.i.i.i.i.i.i": ; preds = %bb.iu, %bb.it, %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE3getIS9_EENSt11conditionalILb1ERKT_RSU_E4typeEv.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.acx = phi i1 [ false, %.noexc.i.i.i.i.i.i.i.i ], [ false, %_ZNK3ade13TypedMetadataILb1EJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE3getIS9_EENSt11conditionalILb1ERKT_RSU_E4typeEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.acw, %bb.iu ], [ true, %bb.it ]
  %i.acy = load ptr, ptr %i.ai, align 8, !tbaa !38, !noalias !265 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS6_5InputENS6_6OutputENS6_2OpENS6_4DataENS6_10ConstValueENS6_6IslandENS6_8ProtocolENS6_17OriginalInputMetaENS6_10OutputMetaENS6_7JournalENS3_6passes19TopologicalSortDataENS6_17DataObjectCounterENS6_11IslandModelENS6_14ActiveBackendsENS6_18CustomMetaFunctionENS6_9StreamingENS6_12DeserializedENS6_13HasIntrinsicsENS6_10DesyncPathENS6_10DesyncEdgeENS6_14DesynchronizedENS6_11CompileArgsEEEERKNS3_6HandleINS3_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS3_4util5Range13IterableRangeINS1F_8MapRangeINS1H_INS1F_9IterRangeINS_17__normal_iteratorIPPNS3_4EdgeESt6vectorIS1L_SaIS1L_EEEES1Q_EENSZ_12HandleMapperEEENSZ_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i.i.i", label %bb.iv

bb.iv:                                            ; preds = %"_ZZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESX_.exit.i.i.i.i.i.i.i.i"
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 12 ; 3 uses
  %i.ada = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !265
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ada, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.adb = load i32, ptr %i.acz, align 4, !tbaa !34, !noalias !265 ; 2 uses
  %i.adc = add nsw i32 %i.adb, -1
  store i32 %i.adc, ptr %i.acz, align 4, !tbaa !34, !noalias !265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ix:                                            ; preds = %bb.iv
  %i.add = atomicrmw volatile add ptr %i.acz, i32 -1 acq_rel, align 4, !noalias !265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ix, %bb.iw
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.adb, %bb.iw ], [ %i.add, %bb.ix ]
  %i.ade = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ade, label %bb.iy, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS6_5InputENS6_6OutputENS6_2OpENS6_4DataENS6_10ConstValueENS6_6IslandENS6_8ProtocolENS6_17OriginalInputMetaENS6_10OutputMetaENS6_7JournalENS3_6passes19TopologicalSortDataENS6_17DataObjectCounterENS6_11IslandModelENS6_14ActiveBackendsENS6_18CustomMetaFunctionENS6_9StreamingENS6_12DeserializedENS6_13HasIntrinsicsENS6_10DesyncPathENS6_10DesyncEdgeENS6_14DesynchronizedENS6_11CompileArgsEEEERKNS3_6HandleINS3_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS3_4util5Range13IterableRangeINS1F_8MapRangeINS1H_INS1F_9IterRangeINS_17__normal_iteratorIPPNS3_4EdgeESt6vectorIS1L_SaIS1L_EEEES1Q_EENSZ_12HandleMapperEEENSZ_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i.i.i"

bb.iy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adf = load ptr, ptr %i.acy, align 8, !tbaa !40, !noalias !265
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 24
  %i.adh = load ptr, ptr %i.adg, align 8, !noalias !265
  call void %i.adh(ptr noundef nonnull align 8 dereferenceable(16) %i.acy) #21, !noalias !265, !inline_history !229
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS6_5InputENS6_6OutputENS6_2OpENS6_4DataENS6_10ConstValueENS6_6IslandENS6_8ProtocolENS6_17OriginalInputMetaENS6_10OutputMetaENS6_7JournalENS3_6passes19TopologicalSortDataENS6_17DataObjectCounterENS6_11IslandModelENS6_14ActiveBackendsENS6_18CustomMetaFunctionENS6_9StreamingENS6_12DeserializedENS6_13HasIntrinsicsENS6_10DesyncPathENS6_10DesyncEdgeENS6_14DesynchronizedENS6_11CompileArgsEEEERKNS3_6HandleINS3_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS3_4util5Range13IterableRangeINS1F_8MapRangeINS1H_INS1F_9IterRangeINS_17__normal_iteratorIPPNS3_4EdgeESt6vectorIS1L_SaIS1L_EEEES1Q_EENSZ_12HandleMapperEEENSZ_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.iq, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ir, %_ZNK3ade15ConstTypedGraphIJN2cv5gimpl8NodeTypeENS2_5InputENS2_6OutputENS2_2OpENS2_4DataENS2_10ConstValueENS2_6IslandENS2_8ProtocolENS2_17OriginalInputMetaENS2_10OutputMetaENS2_7JournalENS_6passes19TopologicalSortDataENS2_17DataObjectCounterENS2_11IslandModelENS2_14ActiveBackendsENS2_18CustomMetaFunctionENS2_9StreamingENS2_12DeserializedENS2_13HasIntrinsicsENS2_10DesyncPathENS2_10DesyncEdgeENS2_14DesynchronizedENS2_11CompileArgsEEE8metadataERKNS_6HandleINS_4NodeEEE.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp1387 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i6.i.i.i.i.i.i.i.i.i, %bb.il, %common.resume.sink.split.i.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i.i.i.i.i.i.i.i, %bb.hy
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %common.resume.op.ph.i.i.i.i.i.i.i.i.i, %common.resume.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.zz, %bb.hy ], [ %i.abf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i6.i.i.i.i.i.i.i.i.i ], [ %i.zz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i.i.i.i.i.i.i.i.i.i ], [ %i.abf, %bb.il ], [ %lpad.loopexit.split-lp1387, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.adi = load ptr, ptr %i.ai, align 8, !tbaa !38, !noalias !265 ; 4 uses
  %.not.i.i.i10.i.i.i.i.i.i.i.i = icmp eq ptr %i.adi, null
  br i1 %.not.i.i.i10.i.i.i.i.i.i.i.i, label %.body174.i, label %bb.iz

bb.iz:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 12 ; 3 uses
  %i.adk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !265
  %.not.i.i.i.i11.i.i.i.i.i.i.i.i = icmp eq i8 %i.adk, 0
  br i1 %.not.i.i.i.i11.i.i.i.i.i.i.i.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.adl = load i32, ptr %i.adj, align 4, !tbaa !34, !noalias !265 ; 2 uses
  %i.adm = add nsw i32 %i.adl, -1
  store i32 %i.adm, ptr %i.adj, align 4, !tbaa !34, !noalias !265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i12.i.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %bb.iz
  %i.adn = atomicrmw volatile add ptr %i.adj, i32 -1 acq_rel, align 4, !noalias !265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i12.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i12.i.i.i.i.i.i.i.i: ; preds = %bb.jb, %bb.ja
  %.0.i.i.i.i.i13.i.i.i.i.i.i.i.i = phi i32 [ %i.adl, %bb.ja ], [ %i.adn, %bb.jb ]
  %i.ado = icmp eq i32 %.0.i.i.i.i.i13.i.i.i.i.i.i.i.i, 1
  br i1 %i.ado, label %bb.jc, label %.body174.i

bb.jc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i12.i.i.i.i.i.i.i.i
  %i.adp = load ptr, ptr %i.adi, align 8, !tbaa !40, !noalias !265
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 24
  %i.adr = load ptr, ptr %i.adq, align 8, !noalias !265
  call void %i.adr(ptr noundef nonnull align 8 dereferenceable(16) %i.adi) #21, !noalias !265, !inline_history !229
  br label %.body174.i

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS6_5InputENS6_6OutputENS6_2OpENS6_4DataENS6_10ConstValueENS6_6IslandENS6_8ProtocolENS6_17OriginalInputMetaENS6_10OutputMetaENS6_7JournalENS3_6passes19TopologicalSortDataENS6_17DataObjectCounterENS6_11IslandModelENS6_14ActiveBackendsENS6_18CustomMetaFunctionENS6_9StreamingENS6_12DeserializedENS6_13HasIntrinsicsENS6_10DesyncPathENS6_10DesyncEdgeENS6_14DesynchronizedENS6_11CompileArgsEEEERKNS3_6HandleINS3_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS3_4util5Range13IterableRangeINS1F_8MapRangeINS1H_INS1F_9IterRangeINS_17__normal_iteratorIPPNS3_4EdgeESt6vectorIS1L_SaIS1L_EEEES1Q_EENSZ_12HandleMapperEEENSZ_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i.i.i": ; preds = %bb.iy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clESX_.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !265
  br i1 %i.acx, label %"_ZSt6any_ofIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN12_GLOBAL__N_121is_within_same_islandERKNS0_10TypedGraphIJN2cv5gimpl8NodeTypeENSQ_5InputENSQ_6OutputENSQ_2OpENSQ_4DataENSQ_10ConstValueENSQ_6IslandENSQ_8ProtocolENSQ_17OriginalInputMetaENSQ_10OutputMetaENSQ_7JournalENS0_6passes19TopologicalSortDataENSQ_17DataObjectCounterENSQ_11IslandModelENSQ_14ActiveBackendsENSQ_18CustomMetaFunctionENSQ_9StreamingENSQ_12DeserializedENSQ_13HasIntrinsicsENSQ_10DesyncPathENSQ_10DesyncEdgeENSQ_14DesynchronizedENSQ_11CompileArgsEEEERKNS0_6HandleISG_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EbT_S1V_T0_.exit.loopexit.i.i", label %bb.jd

bb.jd:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS6_5InputENS6_6OutputENS6_2OpENS6_4DataENS6_10ConstValueENS6_6IslandENS6_8ProtocolENS6_17OriginalInputMetaENS6_10OutputMetaENS6_7JournalENS3_6passes19TopologicalSortDataENS6_17DataObjectCounterENS6_11IslandModelENS6_14ActiveBackendsENS6_18CustomMetaFunctionENS6_9StreamingENS6_12DeserializedENS6_13HasIntrinsicsENS6_10DesyncPathENS6_10DesyncEdgeENS6_14DesynchronizedENS6_11CompileArgsEEEERKNS3_6HandleINS3_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS3_4util5Range13IterableRangeINS1F_8MapRangeINS1H_INS1F_9IterRangeINS_17__normal_iteratorIPPNS3_4EdgeESt6vectorIS1L_SaIS1L_EEEES1Q_EENSZ_12HandleMapperEEENSZ_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i.i.i"
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %.sroa.01.sroa.2.0.copyload.i.i
  br i1 %i.adt, label %"_ZSt6any_ofIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN12_GLOBAL__N_121is_within_same_islandERKNS0_10TypedGraphIJN2cv5gimpl8NodeTypeENSQ_5InputENSQ_6OutputENSQ_2OpENSQ_4DataENSQ_10ConstValueENSQ_6IslandENSQ_8ProtocolENSQ_17OriginalInputMetaENSQ_10OutputMetaENSQ_7JournalENS0_6passes19TopologicalSortDataENSQ_17DataObjectCounterENSQ_11IslandModelENSQ_14ActiveBackendsENSQ_18CustomMetaFunctionENSQ_9StreamingENSQ_12DeserializedENSQ_13HasIntrinsicsENSQ_10DesyncPathENSQ_10DesyncEdgeENSQ_14DesynchronizedENSQ_11CompileArgsEEEERKNS0_6HandleISG_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EbT_S1V_T0_.exit.loopexit.i.i", label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i.i.i.i, !llvm.loop !230

"_ZSt6any_ofIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN12_GLOBAL__N_121is_within_same_islandERKNS0_10TypedGraphIJN2cv5gimpl8NodeTypeENSQ_5InputENSQ_6OutputENSQ_2OpENSQ_4DataENSQ_10ConstValueENSQ_6IslandENSQ_8ProtocolENSQ_17OriginalInputMetaENSQ_10OutputMetaENSQ_7JournalENS0_6passes19TopologicalSortDataENSQ_17DataObjectCounterENSQ_11IslandModelENSQ_14ActiveBackendsENSQ_18CustomMetaFunctionENSQ_9StreamingENSQ_12DeserializedENSQ_13HasIntrinsicsENSQ_10DesyncPathENSQ_10DesyncEdgeENSQ_14DesynchronizedENSQ_11CompileArgsEEEERKNS0_6HandleISG_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EbT_S1V_T0_.exit.loopexit.i.i": ; preds = %bb.jd, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS6_5InputENS6_6OutputENS6_2OpENS6_4DataENS6_10ConstValueENS6_6IslandENS6_8ProtocolENS6_17OriginalInputMetaENS6_10OutputMetaENS6_7JournalENS3_6passes19TopologicalSortDataENS6_17DataObjectCounterENS6_11IslandModelENS6_14ActiveBackendsENS6_18CustomMetaFunctionENS6_9StreamingENS6_12DeserializedENS6_13HasIntrinsicsENS6_10DesyncPathENS6_10DesyncEdgeENS6_14DesynchronizedENS6_11CompileArgsEEEERKNS3_6HandleINS3_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS3_4util5Range13IterableRangeINS1F_8MapRangeINS1H_INS1F_9IterRangeINS_17__normal_iteratorIPPNS3_4EdgeESt6vectorIS1L_SaIS1L_EEEES1Q_EENSZ_12HandleMapperEEENSZ_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.ph.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS6_5InputENS6_6OutputENS6_2OpENS6_4DataENS6_10ConstValueENS6_6IslandENS6_8ProtocolENS6_17OriginalInputMetaENS6_10OutputMetaENS6_7JournalENS3_6passes19TopologicalSortDataENS6_17DataObjectCounterENS6_11IslandModelENS6_14ActiveBackendsENS6_18CustomMetaFunctionENS6_9StreamingENS6_12DeserializedENS6_13HasIntrinsicsENS6_10DesyncPathENS6_10DesyncEdgeENS6_14DesynchronizedENS6_11CompileArgsEEEERKNS3_6HandleINS3_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS3_4util5Range13IterableRangeINS1F_8MapRangeINS1H_INS1F_9IterRangeINS_17__normal_iteratorIPPNS3_4EdgeESt6vectorIS1L_SaIS1L_EEEES1Q_EENSZ_12HandleMapperEEENSZ_13OutEdgeMapperEEEE8iteratorEEEbT_.exit.i.i.i.i.i.i.i" ], [ %.sroa.01.sroa.2.0.copyload.i.i, %bb.jd ]
  %i.adu = icmp ne ptr %.sroa.0.1.i.i.i.i.ph.i.i, %.sroa.01.sroa.2.0.copyload.i.i
  br label %"_ZN3ade4util6any_ofINS0_5Range8MapRangeINS3_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEZN12_GLOBAL__N_121is_within_same_islandERKNS_10TypedGraphIJN2cv5gimpl8NodeTypeENSN_5InputENSN_6OutputENSN_2OpENSN_4DataENSN_10ConstValueENSN_6IslandENSN_8ProtocolENSN_17OriginalInputMetaENSN_10OutputMetaENSN_7JournalENS_6passes19TopologicalSortDataENSN_17DataObjectCounterENSN_11IslandModelENSN_14ActiveBackendsENSN_18CustomMetaFunctionENSN_9StreamingENSN_12DeserializedENSN_13HasIntrinsicsENSN_10DesyncPathENSN_10DesyncEdgeENSN_14DesynchronizedENSN_11CompileArgsEEEERKNS_6HandleISF_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEbOT_OT0_.exit.i"

"_ZN3ade4util6any_ofINS0_5Range8MapRangeINS3_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEZN12_GLOBAL__N_121is_within_same_islandERKNS_10TypedGraphIJN2cv5gimpl8NodeTypeENSN_5InputENSN_6OutputENSN_2OpENSN_4DataENSN_10ConstValueENSN_6IslandENSN_8ProtocolENSN_17OriginalInputMetaENSN_10OutputMetaENSN_7JournalENS_6passes19TopologicalSortDataENSN_17DataObjectCounterENSN_11IslandModelENSN_14ActiveBackendsENSN_18CustomMetaFunctionENSN_9StreamingENSN_12DeserializedENSN_13HasIntrinsicsENSN_10DesyncPathENSN_10DesyncEdgeENSN_14DesynchronizedENSN_11CompileArgsEEEERKNS_6HandleISF_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEbOT_OT0_.exit.i": ; preds = %"_ZSt6any_ofIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN12_GLOBAL__N_121is_within_same_islandERKNS0_10TypedGraphIJN2cv5gimpl8NodeTypeENSQ_5InputENSQ_6OutputENSQ_2OpENSQ_4DataENSQ_10ConstValueENSQ_6IslandENSQ_8ProtocolENSQ_17OriginalInputMetaENSQ_10OutputMetaENSQ_7JournalENS0_6passes19TopologicalSortDataENSQ_17DataObjectCounterENSQ_11IslandModelENSQ_14ActiveBackendsENSQ_18CustomMetaFunctionENSQ_9StreamingENSQ_12DeserializedENSQ_13HasIntrinsicsENSQ_10DesyncPathENSQ_10DesyncEdgeENSQ_14DesynchronizedENSQ_11CompileArgsEEEERKNS0_6HandleISG_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EbT_S1V_T0_.exit.loopexit.i.i", %bb.hf
  %.sroa.0.1.i.i.i.i.i.i = phi i1 [ false, %bb.hf ], [ %i.adu, %"_ZSt6any_ofIN3ade4util5Range13IterableRangeINS2_8MapRangeINS4_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS0_4EdgeESt6vectorIS9_SaIS9_EEEESE_EENS0_4Node12HandleMapperEEENSG_13OutEdgeMapperEEEE8iteratorEZN12_GLOBAL__N_121is_within_same_islandERKNS0_10TypedGraphIJN2cv5gimpl8NodeTypeENSQ_5InputENSQ_6OutputENSQ_2OpENSQ_4DataENSQ_10ConstValueENSQ_6IslandENSQ_8ProtocolENSQ_17OriginalInputMetaENSQ_10OutputMetaENSQ_7JournalENS0_6passes19TopologicalSortDataENSQ_17DataObjectCounterENSQ_11IslandModelENSQ_14ActiveBackendsENSQ_18CustomMetaFunctionENSQ_9StreamingENSQ_12DeserializedENSQ_13HasIntrinsicsENSQ_10DesyncPathENSQ_10DesyncEdgeENSQ_14DesynchronizedENSQ_11CompileArgsEEEERKNS0_6HandleISG_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EbT_S1V_T0_.exit.loopexit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread193.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread193.i: ; preds = %"_ZN3ade4util6any_ofINS0_5Range8MapRangeINS3_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEZN12_GLOBAL__N_121is_within_same_islandERKNS_10TypedGraphIJN2cv5gimpl8NodeTypeENSN_5InputENSN_6OutputENSN_2OpENSN_4DataENSN_10ConstValueENSN_6IslandENSN_8ProtocolENSN_17OriginalInputMetaENSN_10OutputMetaENSN_7JournalENS_6passes19TopologicalSortDataENSN_17DataObjectCounterENSN_11IslandModelENSN_14ActiveBackendsENSN_18CustomMetaFunctionENSN_9StreamingENSN_12DeserializedENSN_13HasIntrinsicsENSN_10DesyncPathENSN_10DesyncEdgeENSN_14DesynchronizedENSN_11CompileArgsEEEERKNS_6HandleISF_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEbOT_OT0_.exit.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.loopexit204.i, %bb.gd
  %i.adv = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %bb.gd ], [ %.sroa.0.1.i.i.i.i.i.i, %"_ZN3ade4util6any_ofINS0_5Range8MapRangeINS3_INS2_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEZN12_GLOBAL__N_121is_within_same_islandERKNS_10TypedGraphIJN2cv5gimpl8NodeTypeENSN_5InputENSN_6OutputENSN_2OpENSN_4DataENSN_10ConstValueENSN_6IslandENSN_8ProtocolENSN_17OriginalInputMetaENSN_10OutputMetaENSN_7JournalENS_6passes19TopologicalSortDataENSN_17DataObjectCounterENSN_11IslandModelENSN_14ActiveBackendsENSN_18CustomMetaFunctionENSN_9StreamingENSN_12DeserializedENSN_13HasIntrinsicsENSN_10DesyncPathENSN_10DesyncEdgeENSN_14DesynchronizedENSN_11CompileArgsEEEERKNS_6HandleISF_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEbOT_OT0_.exit.i" ], [ false, %.loopexit204.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.adw = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 4 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i.i103, label %_ZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.je

bb.je:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread193.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 12 ; 3 uses
  %i.ady = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i176.i = icmp eq i8 %i.ady, 0
  br i1 %.not.i.i.i.i176.i, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.adz = load i32, ptr %i.adx, align 4, !tbaa !34 ; 2 uses
  %i.aea = add nsw i32 %i.adz, -1
  store i32 %i.aea, ptr %i.adx, align 4, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104

bb.jg:                                            ; preds = %bb.je
  %i.aeb = atomicrmw volatile add ptr %i.adx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104: ; preds = %bb.jg, %bb.jf
  %.0.i.i.i.i.i.i105 = phi i32 [ %i.adz, %bb.jf ], [ %i.aeb, %bb.jg ]
  %i.aec = icmp eq i32 %.0.i.i.i.i.i.i105, 1
  br i1 %i.aec, label %bb.jh, label %_ZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.jh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104
  %i.aed = load ptr, ptr %i.adw, align 8, !tbaa !40
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.aef = load ptr, ptr %i.aee, align 8
  call void %i.aef(ptr noundef nonnull align 8 dereferenceable(16) %i.adw) #21, !inline_history !231
  br label %_ZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.loopexit.split-lp200.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fg, %bb.gu, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i152.i, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i100.i, %bb.gv, %bb.gc, %bb.fh
  %lpad.loopexit.split-lp1413 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS3_INS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPPNS_4EdgeESt6vectorIS8_SaIS8_EEEESD_EENS_4Node12HandleMapperEEENSF_13OutEdgeMapperEEEE8iteratorneERKSL_.exit.i.i.i.i.i.i.i, %bb.he
  %lpad.loopexit.split-lp1403 = landingpad { ptr, i32 }
          cleanup
  br label %.body174.i

.body174.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.jc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i12.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i.i.i
  %.pn28.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.jc ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i12.i.i.i.i.i.i.i.i ], [ %i.yu, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp1403, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp200.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body174.i, %bb.gr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i134.i, %bb.gn, %bb.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i117.i, %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, %bb.fd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i84.i, %bb.ez
  %.pn28.pn.pn.pn.i = phi { ptr, i32 } [ %i.ru, %bb.ez ], [ %.pn26.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i ], [ %i.vq, %bb.gn ], [ %i.ru, %bb.fd ], [ %i.ru, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i84.i ], [ %i.uk, %bb.fx ], [ %i.vq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i134.i ], [ %i.uk, %bb.gb ], [ %i.uk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i117.i ], [ %.pn28.i, %.body174.i ], [ %i.vq, %bb.gr ], [ %lpad.loopexit.split-lp1413, %.loopexit.split-lp200.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.aeg = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 4 uses
  %.not.i.i.i177.i = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i.i177.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit181.i, label %bb.ji

bb.ji:                                            ; preds = %.body.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 12 ; 3 uses
  %i.aei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i178.i = icmp eq i8 %i.aei, 0
  br i1 %.not.i.i.i.i178.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aej = load i32, ptr %i.aeh, align 4, !tbaa !34 ; 2 uses
  %i.aek = add nsw i32 %i.aej, -1
  store i32 %i.aek, ptr %i.aeh, align 4, !tbaa !34
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i179.i

bb.jk:                                            ; preds = %bb.ji
  %i.ael = atomicrmw volatile add ptr %i.aeh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i179.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i179.i: ; preds = %bb.jk, %bb.jj
  %.0.i.i.i.i.i180.i = phi i32 [ %i.aej, %bb.jj ], [ %i.ael, %bb.jk ]
  %i.aem = icmp eq i32 %.0.i.i.i.i.i180.i, 1
  br i1 %i.aem, label %bb.jl, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit181.i

bb.jl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i179.i
  %i.aen = load ptr, ptr %i.aeg, align 8, !tbaa !40
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 24
  %i.aep = load ptr, ptr %i.aeo, align 8
  call void %i.aep(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #21, !inline_history !231
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit181.i

_ZN3ade6HandleINS_4NodeEED2Ev.exit181.i:          ; preds = %bb.jl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i179.i, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %.body107

_ZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread193.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i104, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br i1 %i.adv, label %bb.jm, label %_ZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.jm:                                            ; preds = %_ZN12_GLOBAL__N_121is_within_same_islandERKN3ade10TypedGraphIJN2cv5gimpl8NodeTypeENS3_5InputENS3_6OutputENS3_2OpENS3_4DataENS3_10ConstValueENS3_6IslandENS3_8ProtocolENS3_17OriginalInputMetaENS3_10OutputMetaENS3_7JournalENS0_6passes19TopologicalSortDataENS3_17DataObjectCounterENS3_11IslandModelENS3_14ActiveBackendsENS3_18CustomMetaFunctionENS3_9StreamingENS3_12DeserializedENS3_13HasIntrinsicsENS3_10DesyncPathENS3_10DesyncEdgeENS3_14DesynchronizedENS3_11CompileArgsEEEERKNS0_6HandleINS0_4NodeEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.aeq = load i64, ptr %38, align 8, !tbaa !26, !noalias !270
  %i.aer = inttoptr i64 %i.aeq to ptr
  %i.aes = load ptr, ptr %i.t, align 8, !tbaa !38, !noalias !270 ; 2 uses
  %i.aet = load <2 x ptr>, ptr %43, align 16, !tbaa !41, !noalias !270
  store <2 x ptr> %i.aet, ptr %3, align 16, !tbaa !41, !noalias !270
  %.not.i.i.i.i.i117 = icmp eq ptr %i.aes, null
  br i1 %.not.i.i.i.i.i117, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i119, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aes, i64 12 ; 3 uses
  %i.aev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !270
  %.not.i.i.i.i.i.i118 = icmp eq i8 %i.aev, 0
  br i1 %.not.i.i.i.i.i.i118, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.aew = load i32, ptr %i.aeu, align 4, !tbaa !34, !noalias !270
  %i.aex = add nsw i32 %i.aew, 1
  store i32 %i.aex, ptr %i.aeu, align 4, !tbaa !34, !noalias !270
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i119

bb.jp:                                            ; preds = %bb.jn
  %i.aey = atomicrmw volatile add ptr %i.aeu, i32 1 acq_rel, align 4, !noalias !270 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i119

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i119:      ; preds = %bb.jp, %bb.jo, %bb.jm
  %i.aez = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.aer, ptr noundef nonnull align 8 %3)
          to label %bb.jq unwind label %bb.jv, !noalias !270 ; 21 uses

bb.jq:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i119
  %i.afa = load ptr, ptr %i.ak, align 8, !tbaa !38, !noalias !270 ; 4 uses
  %.not.i.i.i.i125 = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i.i125, label %bb.ka, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 12 ; 3 uses
  %i.afc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !270
  %.not.i.i.i.i3.i126 = icmp eq i8 %i.afc, 0
  br i1 %.not.i.i.i.i3.i126, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.afd = load i32, ptr %i.afb, align 4, !tbaa !34, !noalias !270 ; 2 uses
  %i.afe = add nsw i32 %i.afd, -1
  store i32 %i.afe, ptr %i.afb, align 4, !tbaa !34, !noalias !270
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i127

bb.jt:                                            ; preds = %bb.jr
  %i.aff = atomicrmw volatile add ptr %i.afb, i32 -1 acq_rel, align 4, !noalias !270
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i127

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i127: ; preds = %bb.jt, %bb.js
  %.0.i.i.i.i.i.i128 = phi i32 [ %i.afd, %bb.js ], [ %i.aff, %bb.jt ]
  %i.afg = icmp eq i32 %.0.i.i.i.i.i.i128, 1
  br i1 %i.afg, label %bb.ju, label %bb.ka

bb.ju:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i127
  %i.afh = load ptr, ptr %i.afa, align 8, !tbaa !40, !noalias !270
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 24
  %i.afj = load ptr, ptr %i.afi, align 8, !noalias !270
  call void %i.afj(ptr noundef nonnull align 8 dereferenceable(16) %i.afa) #21, !noalias !270, !inline_history !168
  br label %bb.ka

bb.jv:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i119
  %i.afk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.afl = load ptr, ptr %i.ak, align 8, !tbaa !38, !noalias !270 ; 4 uses
  %.not.i.i.i4.i120 = icmp eq ptr %i.afl, null
  br i1 %.not.i.i.i4.i120, label %.body107, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 12 ; 3 uses
  %i.afn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !270
  %.not.i.i.i.i5.i121 = icmp eq i8 %i.afn, 0
  br i1 %.not.i.i.i.i5.i121, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.afo = load i32, ptr %i.afm, align 4, !tbaa !34, !noalias !270 ; 2 uses
  %i.afp = add nsw i32 %i.afo, -1
  store i32 %i.afp, ptr %i.afm, align 4, !tbaa !34, !noalias !270
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i122

bb.jy:                                            ; preds = %bb.jw
  %i.afq = atomicrmw volatile add ptr %i.afm, i32 -1 acq_rel, align 4, !noalias !270
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i122

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i122: ; preds = %bb.jy, %bb.jx
  %.0.i.i.i.i.i7.i123 = phi i32 [ %i.afo, %bb.jx ], [ %i.afq, %bb.jy ]
  %i.afr = icmp eq i32 %.0.i.i.i.i.i7.i123, 1
  br i1 %i.afr, label %bb.jz, label %.body107

bb.jz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i122
  %i.afs = load ptr, ptr %i.afl, align 8, !tbaa !40, !noalias !270
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 24
  %i.afu = load ptr, ptr %i.aft, align 8, !noalias !270
  call void %i.afu(ptr noundef nonnull align 8 dereferenceable(16) %i.afl) #21, !noalias !270, !inline_history !168
  br label %.body107

bb.ka:                                            ; preds = %bb.ju, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i127, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
end_hunk_0
