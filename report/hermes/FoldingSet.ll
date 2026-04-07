inline.NumInlined: 249
inline.NumDeleted: 86
begin_hunk_0_@_ZN4llvh14FoldingSetBase15GrowBucketCountEj:bb.a
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  call void @_ZN4llvh14FoldingSetBase15GrowBucketCountEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.o, ptr %2, align 8, !tbaa !17
  store i32 0, ptr %i.p, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN4llvh14FoldingSetBase15GrowBucketCountEj:bb.a
  %i.al = load ptr, ptr %0, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.01628, ptr noundef nonnull align 8 dereferenceable(144) %2) #23
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !23
  %i.ar = add i32 %i.aq, -1
end_hunk_1
begin_hunk_2_@_ZN4llvh14FoldingSetBase15GrowBucketCountEj:bb.a
.thread:                                          ; preds = %bb.f, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !31
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
begin_hunk_3_@_ZN4llvh14FoldingSetBase10InsertNodeEPNS0_4NodeEPv:bb.a
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh14FoldingSetBase15GrowBucketCountEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !17
end_hunk_3
begin_hunk_4_@_ZN4llvh14FoldingSetBase10RemoveNodeEPNS0_4NodeE:bb.a

.critedge.backedge:                               ; preds = %bb.d, %bb.c
  %.021.be = phi ptr [ %i.f, %bb.c ], [ %i.j, %bb.d ]
  br label %.critedge, !llvm.loop !32

.critedge.thread.sink.split:                      ; preds = %bb.d, %bb.c
  %.lcssa.sink = phi ptr [ %.021, %bb.c ], [ %i.i, %bb.d ]
end_hunk_4
begin_hunk_5_@_ZN4llvh14FoldingSetBase15GetOrInsertNodeEPNS0_4NodeE:bb.a
  %i.z = load ptr, ptr %0, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %.01631.i, ptr noundef nonnull align 8 dereferenceable(144) %4, i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(144) %3) #23
  br i1 %i.ac, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
end_hunk_5
begin_hunk_6_@_ZN4llvh14FoldingSetBase15GetOrInsertNodeEPNS0_4NodeE:bb.a
  br i1 %i.al, label %bb.e, label %_ZN4llvh14FoldingSetBase10InsertNodeEPNS0_4NodeEPv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh14FoldingSetBase15GrowBucketCountEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !17
end_hunk_6
begin_hunk_7_@_ZN4llvh14FoldingSetBase15GetOrInsertNodeEPNS0_4NodeE:bb.a
  %i.ap = load ptr, ptr %0, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #23
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.au = load i32, ptr %i.o, align 8, !tbaa !23
  %i.av = add i32 %i.au, -1
end_hunk_7
begin_hunk_8_@_ZN4llvh14FoldingSetBase15GetOrInsertNodeEPNS0_4NodeE:bb.a
  br i1 %i.ba, label %_ZN4llvh16FoldingSetNodeIDD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.az) #23
  br label %_ZN4llvh16FoldingSetNodeIDD2Ev.exit.i

_ZN4llvh16FoldingSetNodeIDD2Ev.exit.i:            ; preds = %bb.f, %bb.e
end_hunk_8
begin_hunk_9_@_ZN4llvh22FoldingSetIteratorImplC2EPPv:bb.a

.critedge2:                                       ; preds = %bb.b, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.b, !llvm.loop !33

.critedge:                                        ; preds = %bb.b, %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh22FoldingSetIteratorImpl7advanceEv(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.not.i = trunc i64 %i.c to i1
end_hunk_9
begin_hunk_10_@_ZN4llvh22FoldingSetIteratorImpl7advanceEv:bb.a
  br i1 %.not16, label %.critedge2.backedge, label %.critedge

.critedge2.backedge:                              ; preds = %bb.c, %.critedge2
  br label %.critedge2, !llvm.loop !37

.critedge:                                        ; preds = %bb.c, %.critedge2, %bb.a
  %storemerge = phi ptr [ %i.b, %bb.a ], [ %i.g, %.critedge2 ], [ %i.g, %bb.c ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !34
  ret void
}

end_hunk_10
begin_hunk_11_@_ZN4llvh28FoldingSetBucketIteratorImplC2EPPv:bb.a
  %.not.i = trunc i64 %i.b to i1
  %i.c = or i1 %.not, %.not.i
  %i.d = select i1 %i.c, ptr %1, ptr %i.a
  store ptr %i.d, ptr %0, align 8, !tbaa !38
  ret void
}

end_hunk_11
begin_hunk_12_@_ZN4llvh7hashing6detail23hash_combine_range_implIKjEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #23
end_hunk_12
begin_hunk_13_@_ZN4llvh7hashing6detail23hash_combine_range_implIKjEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  br i1 %.not.i, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !41 ; 2 uses
  %.not1.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not1.i, i64 -49064778989728563, i64 %i.d
  store i64 %i.e, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !41
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #23
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !41 ; 10 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
end_hunk_13
begin_hunk_14_@_ZN4llvh7hashing6detail23hash_combine_range_implIKjEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.aj = mul i64 %i.ai, -7070675565921424023     ; 2 uses
  %i.ak = add i64 %i.w, %i.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.al, align 1, !noalias !42 ; 2 uses
  %i.am = add i64 %i.ak, %.0.copyload.i.i.i       ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 27)
  %i.ao = mul i64 %i.an, -5435081209227447693
  %i.ap = mul i64 %i.f, -5435081209227447692
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i7.i.i = load i64, ptr %i.aq, align 1, !noalias !42 ; 2 uses
  %i.ar = add i64 %.0.copyload.i7.i.i, %i.ap      ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 22)
  %i.at = mul i64 %i.as, -5435081209227447693
  %i.au = xor i64 %i.ao, %i.aj                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i8.i.i = load i64, ptr %i.av, align 1, !noalias !42 ; 2 uses
  %i.aw = add i64 %.0.copyload.i8.i.i, %i.w
  %i.ax = add i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = add i64 %i.v, %i.z                      ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN4llvh7hashing6detail23hash_combine_range_implIKjEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.ba = mul i64 %i.az, -5435081209227447693     ; 3 uses
  %i.bb = mul i64 %i.f, -7894485801551159383
  %i.bc = add i64 %i.au, %i.z
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 1, !noalias !42
  %i.bd = add i64 %.0.copyload.i.i.i.i, %i.bb     ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i15.i.i.i = load i64, ptr %i.be, align 1, !noalias !42 ; 2 uses
  %i.bf = add i64 %i.bc, %i.bd
  %i.bg = add i64 %i.bf, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 43)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i17.i.i.i = load i64, ptr %i.bi, align 1, !noalias !42 ; 2 uses
  %i.bj = add i64 %i.bd, %.0.copyload.i.i.i
  %i.bk = add i64 %i.bj, %.0.copyload.i17.i.i.i   ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 20)
end_hunk_15
begin_hunk_16_@_ZN4llvh7hashing6detail23hash_combine_range_implIKjEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.bp = add i64 %i.aj, %i.ba
  %i.bq = add i64 %i.ax, %.0.copyload.i17.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.br, align 1, !noalias !42
  %i.bs = add i64 %i.bp, %.0.copyload.i.i10.i.i   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bt, align 1, !noalias !42 ; 2 uses
  %i.bu = add i64 %i.bq, %i.bs
  %i.bv = add i64 %i.bu, %.0.copyload.i15.i11.i.i ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 43)
end_hunk_16
begin_hunk_17_@_ZN4llvh7hashing6detail23hash_combine_range_implIKjEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.dw = add i64 %i.ds, %.0.copyload.i15.i11.i   ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %.not = icmp eq ptr %.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.58.0.lcssa = phi i64 [ %i.cb, %bb.e ], [ %i.dv, %.lr.ph ] ; 3 uses
end_hunk_17
begin_hunk_18_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm
define linkonce_odr hidden noalias noundef nonnull ptr @_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = add i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !46
  %i.d = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = add i64 %2, -1                           ; 4 uses
  %i.g = add i64 %i.f, %i.e
end_hunk_18
begin_hunk_19_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm:bb.a
  %i.j = sub i64 %i.i, %i.e                       ; 2 uses
  %i.k = add i64 %i.j, %1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.e
  %.not = icmp ugt i64 %i.k, %i.o
end_hunk_19
begin_hunk_20_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm:bb.a
bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store ptr %i.q, ptr %0, align 8, !tbaa !59
  br label %bb.j

bb.c:                                             ; preds = %bb.a
end_hunk_20
begin_hunk_21_@_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm:bb.a
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.al, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store ptr %i.bd, ptr %i.l, align 8, !tbaa !60
  %i.be = add i64 %i.f, %i.ba
  %i.bf = and i64 %i.be, %i.h
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %1
  store ptr %i.bh, ptr %0, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backERKS3_.exit, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit, %bb.b
end_hunk_21
begin_hunk_22_@llvm.umin.i32
!28 = !{!24, !4, i64 20}
!29 = !{!30, !10, i64 0}
!30 = !{!"_ZTSN4llvh14FoldingSetBase4NodeE", !10, i64 0}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN4llvh22FoldingSetIteratorImplE", !36, i64 0}
!36 = !{!"p1 _ZTSN4llvh14FoldingSetBase4NodeE", !10, i64 0}
!37 = distinct !{!37, !20}
!38 = !{!39, !10, i64 0}
!39 = !{!"_ZTSN4llvh28FoldingSetBucketIteratorImplE", !10, i64 0}
!40 = !{!"branch_weights", i32 1, i32 1048575}
!41 = !{!11, !11, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm: argument 0"}
!44 = distinct !{!44, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm"}
!45 = distinct !{!45, !20}
!46 = !{!47, !11, i64 80}
!47 = !{!"_ZTSN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEE", !48, i64 0, !48, i64 8, !49, i64 16, !54, i64 64, !11, i64 80, !11, i64 88, !58, i64 96}
!48 = !{!"p1 omnipotent char", !10, i64 0}
!49 = !{!"_ZTSN4llvh11SmallVectorIPvLj4EEE", !50, i64 0, !53, i64 16}
!50 = !{!"_ZTSN4llvh15SmallVectorImplIPvEE", !51, i64 0}
!51 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPvLb1EEE", !52, i64 0}
!52 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPvvEE", !14, i64 0}
!53 = !{!"_ZTSN4llvh18SmallVectorStorageIPvLj4EEE", !5, i64 0}
!54 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPvmELj0EEE", !55, i64 0}
!55 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPvmEEE", !56, i64 0}
!56 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !57, i64 0}
!57 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPvmEvEE", !14, i64 0}
!58 = !{!"_ZTSN4llvh15MallocAllocatorE"}
!59 = !{!47, !48, i64 0}
!60 = !{!47, !48, i64 8}
end_hunk_22
