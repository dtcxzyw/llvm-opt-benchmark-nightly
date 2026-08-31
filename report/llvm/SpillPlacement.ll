Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SpillPlacement?download=true
inline.NumInlined: 872
inline.NumDeleted: 493
begin_hunk_0_@_ZN4llvm14SpillPlacementD2Ev:bb.a
bb.h:                                             ; preds = %.preheader.i.i
  tail call void @free(ptr noundef %i.ab) #18
  br label %_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i

_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i:       ; preds = %bb.h, %.preheader.i.i
  %i.ae = icmp eq ptr %i.z, %i.t
  br i1 %i.ae, label %_ZNKSt14default_deleteIA_N4llvm14SpillPlacement4NodeEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N4llvm14SpillPlacement4NodeEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i, %bb.g
  %i.af = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.u, i64 noundef %i.af) #21
  br label %_ZNSt10unique_ptrIA_N4llvm14SpillPlacement4NodeESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_N4llvm14SpillPlacement4NodeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit1, %_ZNKSt14default_deleteIA_N4llvm14SpillPlacement4NodeEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14SpillPlacementC2EOS0_(ptr noundef nonnull align 8 dereferenceable(288) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.c, ptr %i.a, align 8, !tbaa !85
  store ptr null, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156
  store ptr %i.f, ptr %i.d, align 8, !tbaa !156
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.h, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 8, ptr %i.j, align 4, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.m) ; 0 uses
  br label %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit

_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit:         ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.p, ptr %i.o, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.q, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 8, ptr %i.r, align 4, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !82
  %.not.i.i9 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i9, label %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit10, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.u) ; 0 uses
  br label %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit10

_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit10:       ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.x, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.y, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 8, ptr %i.z, align 4, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !82
  %.not.i.i11 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i11, label %_ZN4llvm11SmallVectorINS_14BlockFrequencyELj8EEC2EOS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_14BlockFrequencyEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %i.ac) ; 0 uses
  br label %_ZN4llvm11SmallVectorINS_14BlockFrequencyELj8EEC2EOS2_.exit

_ZN4llvm11SmallVectorINS_14BlockFrequencyELj8EEC2EOS2_.exit: ; preds = %_ZN4llvm11SmallVectorIjLj8EEC2EOS1_.exit10, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.aj, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 8, ptr %i.ak, align 4, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.am = load i32, ptr %i.al, align 8, !tbaa !82
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhEC2EOS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_14BlockFrequencyELj8EEC2EOS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ao = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(62) %i.ah, ptr noundef nonnull align 8 dereferenceable(62) %i.an) ; 0 uses
  br label %_ZN4llvm9SparseSetIjjNS_8identityEhEC2EOS2_.exit

_ZN4llvm9SparseSetIjjNS_8identityEhEC2EOS2_.exit: ; preds = %_ZN4llvm11SmallVectorINS_14BlockFrequencyELj8EEC2EOS2_.exit, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !12
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !12
  store ptr null, ptr %i.aq, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.au = load i32, ptr %i.at, align 8
  store i32 %i.au, ptr %i.as, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14SpillPlacement13releaseMemoryEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !85
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_N4llvm14SpillPlacement4NodeESt14default_deleteIS3_EE5resetEDn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.idx.i.i.i.i = mul i64 %i.d, 112               ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNKSt14default_deleteIA_N4llvm14SpillPlacement4NodeEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i.i
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.g = phi ptr [ %i.h, %_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i.i.i ], [ %i.f, %.preheader.preheader.i.i.i.i ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -112 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -72
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i.i
  tail call void @free(ptr noundef %i.j) #18
  br label %_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i.i.i

_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i.i.i:   ; preds = %bb.c, %.preheader.i.i.i.i
  %i.m = icmp eq ptr %i.h, %i.b
  br i1 %i.m, label %_ZNKSt14default_deleteIA_N4llvm14SpillPlacement4NodeEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i, label %.preheader.i.i.i.i

_ZNKSt14default_deleteIA_N4llvm14SpillPlacement4NodeEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i: ; preds = %_ZN4llvm14SpillPlacement4NodeD2Ev.exit.i.i.i.i, %bb.b
  %i.n = or disjoint i64 %.idx.i.i.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.c, i64 noundef %i.n) #21
  br label %_ZNSt10unique_ptrIA_N4llvm14SpillPlacement4NodeESt14default_deleteIS3_EE5resetEDn.exit

_ZNSt10unique_ptrIA_N4llvm14SpillPlacement4NodeESt14default_deleteIS3_EE5resetEDn.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N4llvm14SpillPlacement4NodeEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.o, align 8, !tbaa !82
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm14SpillPlacement12setThresholdENS_14BlockFrequencyE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(288) initializes((216, 224)) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = lshr i64 %1, 13
  %i.b = lshr i64 %1, 12
  %.lobit = and i64 %i.b, 1
  %i.c = add nuw nsw i64 %.lobit, %i.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !14
  ret void
}

declare i64 @_ZNK4llvm25MachineBlockFrequencyInfo12getEntryFreqEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14SpillPlacement8activateEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !157
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !82   ; 3 uses
  %.not1521.i.i = icmp ugt i32 %i.i, %i.g
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !81
  br i1 %.not1521.i.i, label %.lr.ph.i.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = add i32 %.01222.i.i, 256                 ; 2 uses
  %.not15.i.i = icmp ult i32 %i.j, %i.i
  br i1 %.not15.i.i, label %.lr.ph.i.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i, !llvm.loop !158

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.01222.i.i = phi i32 [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = zext i32 %.01222.i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !160
  %.not.i.i = icmp eq i32 %1, %i.m
  br i1 %.not.i.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit, label %bb.b

_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i: ; preds = %bb.b, %bb.a
  %i.n = trunc i32 %i.i to i8
  store i8 %i.n, ptr %i.e, align 1, !tbaa !157
  %i.o = load i32, ptr %i.h, align 8, !tbaa !82   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.q = load i32, ptr %i.p, align 4, !tbaa !83
  %.not.i4.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i4.i, label %bb.d, label %bb.c, !prof !161

bb.c:                                             ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(62) %i.a, i32 noundef %1)
  br label %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit

bb.d:                                             ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i
  %i.r = zext i32 %i.o to i64
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store i32 %1, ptr %i.t, align 1
  %i.u = load i32, ptr %i.h, align 8, !tbaa !82
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.h, align 8, !tbaa !82
  br label %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit

_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit: ; preds = %.lr.ph.i.i, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156
  %i.y = and i32 %1, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z                     ; 2 uses
  %i.ab = lshr i32 %1, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = and i64 %i.af, %i.aa
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit
  %i.ah = or i64 %i.af, %i.aa
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw [112 x i8], ptr %i.aj, i64 %i.c ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.0.0.copyload = load i64, ptr %i.al, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, i8 0, i64 20, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i32 0, ptr %i.an, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !82
  %i.av = icmp ugt i32 %i.au, 100
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %i.aw, i64 %i.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78
  %i.bb = tail call i64 @_ZNK4llvm25MachineBlockFrequencyInfo12getEntryFreqEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #18
  %i.bc = lshr i64 %i.bb, 4                       ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i64
  %i.bf = or i64 %i.bc, %i.be
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.bh = getelementptr inbounds nuw [112 x i8], ptr %i.bg, i64 %i.c
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14SpillPlacement14addConstraintsENS_8ArrayRefINS0_15BlockConstraintEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24
  %.028 = phi ptr [ %1, %.lr.ph ], [ %i.ar, %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24 ] ; 4 uses
  %i.e = load i32, ptr %.028, align 4, !tbaa !162 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %.sroa.05.0.copyload = load i64, ptr %i.h, align 8, !tbaa !14 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.028, i64 4 ; 4 uses
  %i.j = load i16, ptr %i.i, align 4              ; 2 uses
  %i.k = and i16 %i.j, 255
  %.not20 = icmp eq i16 %i.k, 0
  br i1 %.not20, label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = shl i32 %i.e, 1
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !160  ; 2 uses
  tail call void @_ZN4llvm14SpillPlacement8activateEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.r)
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.t, i64 %i.s ; 4 uses
  %i.v = load i16, ptr %i.i, align 4              ; 2 uses
  %trunc = trunc i16 %i.v to i8
  switch i8 %trunc, label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84
  %spec.select.i.i = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.copyload, i64 %i.x)
  store i64 %spec.select.i.i, ptr %i.w, align 8, !tbaa !84
  br label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exitthread-pre-split

bb.e:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.u, align 8, !tbaa !84
  %spec.select.i5.i = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.copyload, i64 %i.y)
  store i64 %spec.select.i5.i, ptr %i.u, align 8, !tbaa !84
  br label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exitthread-pre-split

bb.f:                                             ; preds = %bb.c
  store i64 -1, ptr %i.u, align 8, !tbaa !14
  br label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exitthread-pre-split

_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exitthread-pre-split: ; preds = %bb.d, %bb.e, %bb.f
  %.pr = load i16, ptr %i.i, align 4
  br label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit

_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit: ; preds = %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exitthread-pre-split, %bb.c, %bb.b
  %i.z = phi i16 [ %.pr, %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exitthread-pre-split ], [ %i.v, %bb.c ], [ %i.j, %bb.b ]
  %.not21 = icmp ult i16 %i.z, 256
  br i1 %.not21, label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.ab = load i32, ptr %.028, align 4, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = shl i32 %i.ab, 1
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !160 ; 2 uses
  tail call void @_ZN4llvm14SpillPlacement8activateEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.ai)
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %i.ak, i64 %i.aj ; 4 uses
  %i.am = load i16, ptr %i.i, align 4
  %i.an = lshr i16 %i.am, 8
  %trunc26 = trunc nuw i16 %i.an to i8
  switch i8 %trunc26, label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24 [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !84
  %spec.select.i.i23 = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.copyload, i64 %i.ap)
  store i64 %spec.select.i.i23, ptr %i.ao, align 8, !tbaa !84
  br label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24

bb.i:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !84
  %spec.select.i5.i22 = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.copyload, i64 %i.aq)
  store i64 %spec.select.i5.i22, ptr %i.al, align 8, !tbaa !84
  br label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24

bb.j:                                             ; preds = %bb.g
  store i64 -1, ptr %i.al, align 8, !tbaa !14
  br label %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24

_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit24: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %_ZN4llvm14SpillPlacement4Node7addBiasENS_14BlockFrequencyENS0_16BorderConstraintE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14SpillPlacement12addPrefSpillENS_8ArrayRefIjEEb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr nofree readonly captures(address) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not22 = icmp eq i64 %2, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.023.us = phi ptr [ %i.ab, %.lr.ph.split.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = load i32, ptr %.023.us, align 4, !tbaa !160 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
end_hunk_0
begin_hunk_1_@_ZN4llvm14SpillPlacement17scanActiveBundlesEv:bb.a
  br i1 %i.ao, label %bb.g, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !83
  %.not.i16 = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i16, label %bb.i, label %bb.h, !prof !161

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %.sroa.4.029)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = zext i32 %i.ap to i64
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  store i32 %.sroa.4.029, ptr %i.at, align 1
  %i.au = load i32, ptr %i.b, align 8, !tbaa !82
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.b, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %i.aw = add nuw i32 %.sroa.4.029, 1             ; 3 uses
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %._crit_edge.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.az = lshr i32 %i.aw, 6                       ; 4 uses
  %i.ba = add i32 %i.ax, -1                       ; 2 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 4 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.az, %i.bb
  br i1 %.not42.i.i.i.i, label %._crit_edge.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.bd = and i32 %i.aw, 63                       ; 2 uses
  %i.be = sub nuw nsw i32 64, %i.bd
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 -1, %i.bf
  %i.bh = xor i64 %i.bg, -1
  %i.bi = and i32 %i.ba, 63
  %i.bj = xor i32 %i.bi, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 -1, %i.bk                      ; 2 uses
  %i.bm = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bn = zext nneg i32 %i.bb to i64
  %i.bo = add nuw nsw i32 %i.bb, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bo to i64 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bm
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !14
  %i.br = select i1 %.not.i.i.i, i64 -1, i64 %i.bh
  %i.bs = icmp eq i32 %i.az, %i.bb
  %i.bt = select i1 %i.bs, i64 %i.bl, i64 -1
  %spec.select44.peel.i.i.i.i = and i64 %i.bt, %i.br
  %.230.peel.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i, %i.bq ; 2 uses
  %.not37.peel.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i, label %bb.k, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.peel.i.i.i.i = add nuw nsw i64 %i.bm, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i, label %._crit_edge.loopexit, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.k, %bb.l
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.l ], [ %indvars.iv.next.peel.i.i.i.i, %bb.k ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.bw = icmp eq i64 %indvars.iv.i.i.i.i, %i.bn
  %i.bx = select i1 %i.bw, i64 %i.bl, i64 -1
  %.230.i.i.i.i = and i64 %i.bx, %i.bv            ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %.230.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.l, label %.loopexit48.i.i.i.i

.loopexit48.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.l:                                             ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.loopexit, label %.peel.next.i.i.i.i, !llvm.loop !177

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit48.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %.loopexit48.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i ]
  %.230.lcssa.i.i.i.i = phi i64 [ %.230.i.i.i.i, %.loopexit48.i.i.i.i ], [ %.230.peel.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.by = shl nuw i32 %.pre-phi.i.i.i.i, 6
  %i.bz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca            ; 2 uses
  %.not = icmp eq i32 %i.cb, -1
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm14SpillPlacement6updateEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %i.b ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i ; 2 uses
  %.not30.i = icmp eq i32 %i.l, 0                 ; 2 uses
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.sroa.025.0.lcssa.i = phi i64 [ %i.f, %bb.a ], [ %.sroa.025.1.i, %bb.d ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %.sroa.0.1.i, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !179  ; 2 uses
  %spec.select.i.i.i = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.copyload, i64 %.sroa.0.0.lcssa.i)
  %.not28.i = icmp ult i64 %.sroa.025.0.lcssa.i, %spec.select.i.i.i
  br i1 %.not28.i, label %_ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit, label %._crit_edge.i._ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit_crit_edge

._crit_edge.i._ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit_crit_edge: ; preds = %._crit_edge.i
  store i32 -1, ptr %i.o, align 8, !tbaa !179
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZNK4llvm14SpillPlacement4Node22getDissentingNeighborsERNS_9SparseSetIjjNS_8identityEhEEPKS1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.033.i = phi ptr [ %i.x, %bb.d ], [ %i.j, %bb.a ] ; 4 uses
  %.sroa.0.032.i = phi i64 [ %.sroa.0.1.i, %bb.d ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.025.031.i = phi i64 [ %.sroa.025.1.i, %bb.d ], [ %i.f, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !165
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !179
  switch i32 %i.w, label %bb.d [
    i32 -1, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.05.0.copyload.i = load i64, ptr %.033.i, align 8, !tbaa !14
  %spec.select.i.i = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.copyload.i, i64 %.sroa.025.031.i)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %.sroa.04.0.copyload.i = load i64, ptr %.033.i, align 8, !tbaa !14
  %spec.select.i21.i = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.04.0.copyload.i, i64 %.sroa.0.032.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.sroa.025.1.i = phi i64 [ %.sroa.025.031.i, %.lr.ph.i ], [ %spec.select.i.i, %bb.b ], [ %.sroa.025.031.i, %bb.c ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.032.i, %.lr.ph.i ], [ %.sroa.0.032.i, %bb.b ], [ %spec.select.i21.i, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.033.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.n
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit: ; preds = %._crit_edge.i
  %spec.select.i.i22.i = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.copyload, i64 %.sroa.025.0.lcssa.i)
  %.not29.i = icmp uge i64 %.sroa.0.0.lcssa.i, %spec.select.i.i22.i ; 2 uses
  %..i = zext i1 %.not29.i to i32
  store i32 %..i, ptr %i.o, align 8, !tbaa !179
  %i.y = icmp sgt i32 %i.p, 0
  %i.z = xor i1 %.not29.i, %i.y
  br i1 %i.z, label %bb.e, label %_ZNK4llvm14SpillPlacement4Node22getDissentingNeighborsERNS_9SparseSetIjjNS_8identityEhEEPKS1_.exit

bb.e:                                             ; preds = %._crit_edge.i._ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit_crit_edge, %_ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  br i1 %.not30.i, label %_ZNK4llvm14SpillPlacement4Node22getDissentingNeighborsERNS_9SparseSetIjjNS_8identityEhEEPKS1_.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 236
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i, %.lr.ph.i4
  %.014.i = phi ptr [ %i.j, %.lr.ph.i4 ], [ %i.bc, %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !165 ; 4 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !179
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !179
  %.not10.i = icmp eq i32 %i.ag, %i.ak
  br i1 %.not10.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !157
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 8, !tbaa !82 ; 3 uses
  %.not1521.i.i.i = icmp ugt i32 %i.ap, %i.ao
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !81
  br i1 %.not1521.i.i.i, label %.lr.ph.i.i.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = add i32 %.01222.i.i.i, 256              ; 2 uses
  %.not15.i.i.i = icmp ult i32 %i.aq, %i.ap
  br i1 %.not15.i.i.i, label %.lr.ph.i.i.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i.i, !llvm.loop !158

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.01222.i.i.i = phi i32 [ %i.aq, %bb.h ], [ %i.ao, %bb.g ] ; 2 uses
  %i.ar = zext i32 %.01222.i.i.i to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !160
  %.not.i.i.i = icmp eq i32 %i.af, %i.at
  br i1 %.not.i.i.i, label %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i, label %bb.h

_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i.i: ; preds = %bb.h, %bb.g
  %i.au = trunc i32 %i.ap to i8
  store i8 %i.au, ptr %i.am, align 1, !tbaa !157
  %i.av = load i32, ptr %i.ac, align 8, !tbaa !82 ; 2 uses
  %i.aw = load i32, ptr %i.ad, align 4, !tbaa !83
  %.not.i4.i.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i4.i.i, label %bb.j, label %bb.i, !prof !161

bb.i:                                             ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(62) %i.aa, i32 noundef %i.af)
  br label %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i

bb.j:                                             ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE9findIndexEj.exit.thread.i.i
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !81
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  store i32 %i.af, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.ac, align 8, !tbaa !82
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ac, align 8, !tbaa !82
  br label %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i

_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i: ; preds = %.lr.ph.i.i.i, %bb.j, %bb.i, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i, i64 16 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bc, %i.n
  br i1 %.not.i5, label %_ZNK4llvm14SpillPlacement4Node22getDissentingNeighborsERNS_9SparseSetIjjNS_8identityEhEEPKS1_.exit, label %bb.f

_ZNK4llvm14SpillPlacement4Node22getDissentingNeighborsERNS_9SparseSetIjjNS_8identityEhEEPKS1_.exit: ; preds = %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i, %bb.e, %._crit_edge.i._ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit_crit_edge, %_ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit
  %i.bd = phi i1 [ false, %._crit_edge.i._ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit_crit_edge ], [ false, %_ZN4llvm14SpillPlacement4Node6updateEPKS1_NS_14BlockFrequencyE.exit ], [ true, %bb.e ], [ true, %_ZN4llvm9SparseSetIjjNS_8identityEhE6insertERKj.exit.i ]
  ret i1 %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14SpillPlacement7iterateEv(ptr noundef nonnull align 8 dereferenceable(288) initializes((96, 100)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79
  %i.g = mul i32 %i.f, 10                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.not4 = icmp eq i32 %i.g, 0
  br i1 %.not4, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %.in = phi i32 [ %i.g, %.lr.ph ], [ %i.l, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ]
  %i.l = add i32 %.in, -1                         ; 2 uses
  %i.m = load i32, ptr %i.h, align 8, !tbaa !82   ; 3 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !160  ; 4 uses
  %i.s = add i32 %i.m, -1
  store i32 %i.s, ptr %i.h, align 8, !tbaa !82
  %i.t = tail call noundef zeroext i1 @_ZN4llvm14SpillPlacement6updateEj(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.r)
  br i1 %i.t, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit, !llvm.loop !186

bb.d:                                             ; preds = %bb.c
  %i.u = zext i32 %i.r to i64
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !179
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !83
  %.not.i = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !161

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.r)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store i32 %i.r, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.b, align 8, !tbaa !82
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14SpillPlacement7prepareERNS_9BitVectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(288) initializes((32, 40), (96, 100), (232, 236)) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm9BitVector15set_unused_bitsEb.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79   ; 4 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !167
  %i.j = add i32 %i.i, 63
  %i.k = lshr i32 %i.j, 6                         ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !83
  %.not.i.i.i.i.i = icmp ugt i32 %i.k, %i.o
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, !prof !187

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull %i.p, i64 noundef %i.l, i64 noundef 8) #18
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !82 ; 2 uses
  %.pre.i.i = zext i32 %.pre.i.i.i to i64
  %.pre4.pre.i.pre = load i32, ptr %i.d, align 8, !tbaa !167
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.pre4.pre.i = phi i32 [ %i.i, %bb.a ], [ %.pre4.pre.i.pre, %bb.b ]
  %.pre-phi.i.i = phi i64 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.q = phi i32 [ 0, %bb.a ], [ %.pre.i.i.i, %bb.b ]
  %i.r = load ptr, ptr %1, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi.i.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !14
  %i.t = add i32 %i.q, %i.k                       ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !82
  %i.u = zext i32 %i.t to i64
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i:    ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i
  %i.v = phi i64 [ 0, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ]
  %i.w = phi i32 [ %i.i, %_ZN4llvm9BitVector15set_unused_bitsEb.exit.i ], [ %.pre4.pre.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE28reserveForParamAndGetAddressERmm.exit.i.i.i ]
  %i.x = and i32 %i.w, 63                         ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %_ZN4llvm9BitVector6resizeEjb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nsw i64 -1, %i.y
  %i.aa = xor i64 %i.z, -1
  %i.ab = load ptr, ptr %1, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.v
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.af = and i64 %i.ae, %i.aa
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !14
  br label %_ZN4llvm9BitVector6resizeEjb.exit

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm14SpillPlacement6finishEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(288) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !167, !noalias !188 ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.d, -1                         ; 2 uses
  %i.g = lshr i32 %i.f, 6                         ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !81, !noalias !188 ; 2 uses
  %i.i = and i32 %i.f, 63
  %i.j = xor i32 %i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 -1, %i.k                        ; 2 uses
  %i.m = zext nneg i32 %i.g to i64
  %i.n = add nuw nsw i32 %i.g, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.n to i64
  %i.o = load i64, ptr %i.h, align 8, !tbaa !14, !noalias !188
  %i.p = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.q = select i1 %i.p, i64 %i.l, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.o, %i.q       ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.c, label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.c, %bb.d
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.d ], [ 1, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.i.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14, !noalias !188
  %i.t = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.m
  %i.u = select i1 %i.t, i64 %i.l, i64 -1
  %.230.i.i.i.i.i = and i64 %i.u, %i.s            ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.d, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
end_hunk_1
