Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SymbolFileBreakpad?download=true
inline.NumInlined: 3307
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev:bb.a
bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit
  tail call void @free(ptr noundef %i.aa) #20
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, %bb.b
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #20
  br label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit

_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private8breakpad18SymbolFileBreakpad13GetUnwindPlanERKNS_7AddressERKNS_10SymbolFile20RegisterInfoResolverE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.443") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private8breakpad18SymbolFileBreakpad15ParseUnwindDataEv(ptr noundef nonnull align 8 dereferenceable(336) %1)
  %i.a = tail call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i

_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 4 uses
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i

_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.f, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.e, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i ] ; 2 uses
  %i.g = lshr i64 %.017.i.i.i.i.i, 1              ; 3 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.01116.i.i.i.i.i, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !90
  %i.j = icmp ult i64 %i.i, %i.a                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = xor i64 %i.g, -1
  %i.m = add nsw i64 %.017.i.i.i.i.i, %i.l
  %.112.i.i.i.i.i = select i1 %i.j, ptr %i.k, ptr %.01116.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.j, i64 %i.m, i64 %i.g ; 2 uses
  %i.n = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.n, label %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i, !llvm.loop !393

_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i: ; preds = %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f
  br label %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i

_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i: ; preds = %bb.b, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i
  %.015.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i ], [ %i.p, %bb.b ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %.015.i.i.i, %i.e
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.015.i.i.i, i64 -40 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !90   ; 2 uses
  %.not.i.i.i.i.i = icmp ule i64 %i.q, %i.a
  %i.r = getelementptr inbounds i8, ptr %.015.i.i.i, i64 -32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.q
  %i.u = icmp ult i64 %i.a, %i.t
  %i.v = select i1 %.not.i.i.i.i.i, i1 %i.u, i1 false
  br i1 %i.v, label %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i, label %.critedge.i.i.i, !llvm.loop !394

.critedge.i.i.i:                                  ; preds = %bb.b, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i
  %.015.lcssa.i.i.i = phi ptr [ %.015.i.i.i, %bb.b ], [ %i.e, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i ] ; 4 uses
  %.not17.i.i.i = icmp eq ptr %.015.lcssa.i.i.i, %i.o
  br i1 %.not17.i.i.i, label %.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.w = load i64, ptr %.015.lcssa.i.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i18.i.i.i = icmp ule i64 %i.w, %i.a
  %i.x = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.a, %i.z
  %i.ab = select i1 %.not.i.i18.i.i.i, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.d, label %.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i, i64 16
  tail call void @_ZN12lldb_private8breakpad18SymbolFileBreakpad18ParseCFIUnwindPlanERKNS1_8BookmarkERKNS_10SymbolFile20RegisterInfoResolverE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.443") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.h

.thread.i.i.i:                                    ; preds = %.critedge.i.i.i, %bb.c, %bb.a
  %i.ad = tail call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i.i13 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i13, label %.thread.i.i.i31, label %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i14

_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i14: ; preds = %.thread.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62 ; 4 uses
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i15

_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i15: ; preds = %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i15, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i14
  %.017.i.i.i.i.i16 = phi i64 [ %.1.i.i.i.i.i21, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i15 ], [ %i.ai, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i14 ] ; 2 uses
  %.01116.i.i.i.i.i17 = phi ptr [ %.112.i.i.i.i.i20, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i15 ], [ %i.ah, %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i14 ] ; 2 uses
  %i.aj = lshr i64 %.017.i.i.i.i.i16, 1           ; 3 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %.01116.i.i.i.i.i17, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !90
  %i.am = icmp ult i64 %i.al, %i.ad               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ao = xor i64 %i.aj, -1
  %i.ap = add nsw i64 %.017.i.i.i.i.i16, %i.ao
  %.112.i.i.i.i.i20 = select i1 %i.am, ptr %i.an, ptr %.01116.i.i.i.i.i17 ; 2 uses
  %.1.i.i.i.i.i21 = select i1 %i.am, i64 %i.ap, i64 %i.aj ; 2 uses
  %i.aq = icmp sgt i64 %.1.i.i.i.i.i21, 0
  br i1 %i.aq, label %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i15, label %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i22, !llvm.loop !393

_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i22: ; preds = %_ZSt9__advanceIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i15
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ai
  br label %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i23

_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i23: ; preds = %bb.e, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i22
  %.015.i.i.i24 = phi ptr [ %.112.i.i.i.i.i20, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.preheader.i.i.i22 ], [ %i.as, %bb.e ] ; 4 uses
  %.not.i.i.i25 = icmp eq ptr %.015.i.i.i24, %i.ah
  br i1 %.not.i.i.i25, label %.critedge.i.i.i27, label %bb.e

bb.e:                                             ; preds = %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i23
  %i.as = getelementptr inbounds i8, ptr %.015.i.i.i24, i64 -40 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i.i.i26 = icmp ule i64 %i.at, %i.ad
  %i.au = getelementptr inbounds i8, ptr %.015.i.i.i24, i64 -32
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = add i64 %i.av, %i.at
  %i.ax = icmp ult i64 %i.ad, %i.aw
  %i.ay = select i1 %.not.i.i.i.i.i26, i1 %i.ax, i1 false
  br i1 %i.ay, label %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i23, label %.critedge.i.i.i27, !llvm.loop !394

.critedge.i.i.i27:                                ; preds = %bb.e, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i23
  %.015.lcssa.i.i.i28 = phi ptr [ %.015.i.i.i24, %bb.e ], [ %i.ah, %_ZSt11lower_boundIPKN12lldb_private18AugmentedRangeDataImmNS0_8breakpad18SymbolFileBreakpad8BookmarkEEENS0_9RangeDataImmS4_EEPFbRKS9_SB_EET_SE_SE_RKT0_T1_.exit.i.i.i23 ] ; 4 uses
  %.not17.i.i.i29 = icmp eq ptr %.015.lcssa.i.i.i28, %i.ar
  br i1 %.not17.i.i.i29, label %.thread.i.i.i31, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i.i27
  %i.az = load i64, ptr %.015.lcssa.i.i.i28, align 8, !tbaa !90 ; 2 uses
  %.not.i.i18.i.i.i30 = icmp ule i64 %i.az, %i.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i28, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add i64 %i.bb, %i.az
  %i.bd = icmp ult i64 %i.ad, %i.bc
  %i.be = select i1 %.not.i.i18.i.i.i30, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.g, label %.thread.i.i.i31

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i28, i64 16
  tail call void @_ZN12lldb_private8breakpad18SymbolFileBreakpad18ParseWinUnwindPlanERKNS1_8BookmarkERKNS_10SymbolFile20RegisterInfoResolverE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.443") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.h

.thread.i.i.i31:                                  ; preds = %.critedge.i.i.i27, %bb.f, %.thread.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %.thread.i.i.i31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private8breakpad18SymbolFileBreakpad18ParseCFIUnwindPlanERKNS1_8BookmarkERKNS_10SymbolFile20RegisterInfoResolverE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.443") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, lldb_private::UnwindPlan::Row::AbstractRegisterLocation>, std::_Select1st<std::pair<const unsigned int, lldb_private::UnwindPlan::Row::AbstractRegisterLocation>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %5 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, lldb_private::UnwindPlan::Row::AbstractRegisterLocation>, std::_Select1st<std::pair<const unsigned int, lldb_private::UnwindPlan::Row::AbstractRegisterLocation>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %6 = alloca %"class.lldb_private::breakpad::SymbolFileBreakpad::LineIterator", align 8 ; 10 uses
  %7 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %8 = alloca [1 x %"class.lldb_private::AddressRange"], align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr.159", align 8 ; 5 uses
  %10 = alloca %"class.lldb_private::UnwindPlan::Row", align 8 ; 16 uses
  %11 = alloca %"class.lldb_private::UnwindPlan::Row", align 8 ; 10 uses
  %12 = alloca %"class.std::optional.446", align 8 ; 10 uses
  %13 = alloca %"class.lldb_private::UnwindPlan::Row", align 8 ; 9 uses
  %i.a = tail call noundef i64 @_ZN12lldb_private8breakpad18SymbolFileBreakpad18GetBaseFileAddressEv(ptr noundef nonnull align 8 dereferenceable(336) %1) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.ag

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %.sroa.09.0.copyload = load i32, ptr %2, align 8, !tbaa !31
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !41
  call void @_ZN12lldb_private8breakpad18SymbolFileBreakpad12LineIteratorC1ERNS_10ObjectFileENS0_6Record4KindENS1_8BookmarkE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef 8, i32 %.sroa.09.0.copyload, i64 %.sroa.211.0.copyload) #20
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i1 noundef zeroext true) #20, !inline_history !49
  %i.j = call noundef i64 @_ZNK12lldb_private11SectionList14GetNumSectionsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef 0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !44   ; 3 uses
  %.sroa.speculated3.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.m) ; 3 uses
  %i.r = icmp ugt i64 %i.o, %i.q
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.o, i64 %.sroa.speculated3.i.i)
  %.sroa.speculated.i.i = select i1 %i.r, i64 %i.q, i64 %.sroa.speculate.load.false.sroa.speculated.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.speculated3.i.i
  %i.u = sub i64 %.sroa.speculated.i.i, %.sroa.speculated3.i.i
  call void @_ZN12lldb_private8breakpad14StackCFIRecord5parseEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.446") align 8 %7, ptr %i.t, i64 %i.u) #20
  %i.v = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21, !noalias !502 ; 19 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store i32 1, ptr %i.w, align 8, !tbaa !26, !noalias !507
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  store i32 1, ptr %i.x, align 4, !tbaa !28, !noalias !507
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private10UnwindPlanESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.v, align 8, !tbaa !18, !noalias !507
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.y, i8 0, i64 48, i1 false), !noalias !507
  store i32 4, ptr %i.z, align 8, !tbaa !508, !noalias !507
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  store i32 -1, ptr %i.aa, align 4, !tbaa !519, !noalias !507
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr null, ptr %i.ab, align 8, !tbaa !520, !noalias !507
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 2 uses
  store i32 -1, ptr %i.ac, align 8, !tbaa !521, !noalias !507
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 84 ; 2 uses
  store i32 -1, ptr %i.ad, align 4, !tbaa !522, !noalias !507
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 2 uses
  store i32 -1, ptr %i.ae, align 8, !tbaa !523, !noalias !507
  call void @_ZN12lldb_private10UnwindPlan13SetSourceNameEPKc(ptr noundef nonnull align 8 dereferenceable(76) %i.y, ptr noundef nonnull @.str.11) #20
  store i32 0, ptr %i.ad, align 4, !tbaa !522
  store i32 0, ptr %i.ae, align 8, !tbaa !523
  store i32 1, ptr %i.ac, align 8, !tbaa !521
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !414
  %i.ah = add i64 %i.ag, %i.a
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @_ZNK12lldb_private11ModuleChild9GetModuleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.159") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.al) #20
  %i.am = load ptr, ptr %9, align 8, !tbaa !173   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(952) %i.am) #20
  call void @_ZN12lldb_private12AddressRangeC1EmmPKNS_11SectionListE(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ah, i64 noundef %i.aj, ptr noundef %i.aq) #20
  %i.ar = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !140 ; 2 uses
  %i.av = load <2 x ptr>, ptr %8, align 16, !tbaa !50
  store <2 x ptr> %i.av, ptr %i.ar, align 8, !tbaa !50
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !31
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !31
  br label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bd = load <2 x i64>, ptr %i.bc, align 16, !tbaa !41
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !41
  %14 = trunc i64 %i.j to i32                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !188 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !191 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !192
  store ptr %i.ar, ptr %i.be, align 8, !tbaa !188
  store ptr %i.as, ptr %i.bg, align 8, !tbaa !191
  store ptr %i.as, ptr %i.bi, align 8, !tbaa !192
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i18:                             ; preds = %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i18
  %.05.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i18 ], [ %i.bf, %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 2 uses
  call void @_ZN12lldb_private12AddressRangeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.05.i.i.i.i.i.i) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i19 = icmp eq ptr %i.bk, %i.bh
  br i1 %.not.i.i.i.i.i.i19, label %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i18, !llvm.loop !193

_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i18, %_ZSt10_ConstructIN12lldb_private12AddressRangeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i.i.i
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bn) #22
  br label %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit

_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12lldb_private12AddressRangeEEvT_S3_.exit.i.i.i.i, %bb.f
  call void @_ZN12lldb_private12AddressRangeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #20
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !25 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.bq, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !28
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #20, !inline_history !146
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #20, !inline_history !146
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i20 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.cd, %bb.k ]
  %i.ce = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ce, label %bb.l, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN12lldb_private12AddressRangeESaIS1_EED2Ev.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZN12lldb_private10UnwindPlan3RowC1Ev(ptr noundef nonnull align 8 dereferenceable(105) %10) #20
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.03.0.copyload = load ptr, ptr %i.cf, align 8, !tbaa !40
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !41
  %i.cg = call noundef zeroext i1 @_ZN12lldb_private8breakpad18SymbolFileBreakpad17ParseCFIUnwindRowEN4llvm9StringRefERKNS_10SymbolFile20RegisterInfoResolverERNS_10UnwindPlan3RowE(ptr noundef nonnull align 8 dereferenceable(336) %1, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(105) %10)
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.aa

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %11, ptr noundef nonnull align 8 dereferenceable(105) %10, i64 56, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 4 uses
  store i32 0, ptr %i.ch, align 8, !tbaa !524
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 3 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !529
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !530
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !531
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !532
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !529 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i21, label %_ZN12lldb_private10UnwindPlan3RowC2ERKS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.co, ptr %5, align 8, !tbaa !533
  %i.cp = call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.cp, %bb.o ], [ %i.cr, %bb.p ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !535 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %bb.p, !llvm.loop !536

_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %bb.p
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cj, align 8, !tbaa !537
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.cp, %_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.ct, %bb.q ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !538 ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i8.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyERKSC_.exit.i.i.i, label %bb.q, !llvm.loop !539

_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyERKSC_.exit.i.i.i: ; preds = %bb.q
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !537
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !532
  store i64 %i.cv, ptr %i.cl, align 8, !tbaa !532
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  store ptr %i.cp, ptr %i.ci, align 8, !tbaa !537
  br label %_ZN12lldb_private10UnwindPlan3RowC2ERKS1_.exit

_ZN12lldb_private10UnwindPlan3RowC2ERKS1_.exit:   ; preds = %bb.n, %_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyERKSC_.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !540, !range !67, !noundef !68
  store i8 %i.cy, ptr %i.cw, align 8, !tbaa !540
  call void @_ZN12lldb_private10UnwindPlan9AppendRowENS0_3RowE(ptr noundef nonnull align 8 dereferenceable(76) %i.y, ptr nofree noundef nonnull align 8 dereferenceable(112) %11) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !529
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN12lldb_private10UnwindPlan3Row24AbstractRegisterLocationEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cz, ptr noundef %i.da)
  %i.db = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN12lldb_private8breakpad18SymbolFileBreakpad12LineIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %6) ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !16
  %.not.i63 = icmp ne i32 %i.dd, %14
  %i.de = load i64, ptr %i.l, align 8             ; 2 uses
  %.not5.i64 = icmp ne i64 %i.de, -1
  %.0.i65 = select i1 %.not.i63, i1 true, i1 %.not5.i64
  br i1 %.0.i65, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12lldb_private10UnwindPlan3RowC2ERKS1_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 104
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.z
  %i.dr = phi i64 [ %i.de, %.lr.ph ], [ %i.er, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ds = load i64, ptr %i.n, align 8, !tbaa !42  ; 2 uses
  %i.dt = load i64, ptr %i.p, align 8, !tbaa !44  ; 3 uses
  %.sroa.speculated3.i.i22 = call i64 @llvm.umin.i64(i64 %i.dt, i64 %i.dr) ; 3 uses
  %i.du = icmp ugt i64 %i.ds, %i.dt
  %.sroa.speculate.load.false.sroa.speculated.i.i23 = call i64 @llvm.umax.i64(i64 %i.ds, i64 %.sroa.speculated3.i.i22)
  %.sroa.speculated.i.i24 = select i1 %i.du, i64 %i.dt, i64 %.sroa.speculate.load.false.sroa.speculated.i.i23
  %i.dv = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.speculated3.i.i22
  %i.dx = sub i64 %.sroa.speculated.i.i24, %.sroa.speculated3.i.i22
  call void @_ZN12lldb_private8breakpad14StackCFIRecord5parseEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.446") align 8 %12, ptr %i.dw, i64 %i.dx) #20
  %i.dy = load i8, ptr %i.df, align 8, !tbaa !410, !range !67, !noundef !68
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
end_hunk_0
