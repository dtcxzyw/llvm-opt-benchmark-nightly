Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Diagnostic?download=true
inline.NumInlined: 599
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm11PagedVectorIN5clang6SrcMgr9SLocEntryELm32EEixEm:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !153
  br label %_ZSt31uninitialized_value_construct_nIPN5clang6SrcMgr9SLocEntryEmET_S4_T0_.exit

_ZSt31uninitialized_value_construct_nIPN5clang6SrcMgr9SLocEntryEmET_S4_T0_.exit: ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang6SrcMgr9SLocEntryEEEPT_m.exit, %bb.a
  %i.aw = phi ptr [ %.pre, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang6SrcMgr9SLocEntryEEEPT_m.exit ], [ %i.e, %bb.a ]
  %i.ax = and i64 %1, 31
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax
  ret ptr %i.ay
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang13SourceManager13loadSLocEntryEjPb(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !157

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !32
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !32
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #14 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !32  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !157

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !32
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !32
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !156
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !155
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  %i.g = load i32, ptr %i.a, align 8, !tbaa !32
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !32
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !32
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  %i.g = load i32, ptr %i.a, align 8, !tbaa !32
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !32
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StringMapIN5clang7tooling12ReplacementsENS_15MallocAllocatorEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<clang::tooling::Replacement, clang::tooling::Replacement, std::_Identity<clang::tooling::Replacement>, std::less<clang::tooling::Replacement>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false)
  store i32 56, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !48
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !158
  tail call void @_ZN4llvm13StringMapImpl4initEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.f) #14
  %i.g = load ptr, ptr %0, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !158  ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %1, align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.b, align 4, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.p, ptr %i.q, align 4, !tbaa !48
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.b ] ; 5 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !159
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !160  ; 5 uses
  %.not19 = icmp eq ptr %i.t, null
  br i1 %.not19, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.u = load i64, ptr %i.t, align 8, !tbaa !162  ; 5 uses
  %i.v = add i64 %i.u, 57
  %i.w = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #14 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN4llvm18StringMapEntryBase15allocateWithKeyINS_15MallocAllocatorEEEPvmmNS_9StringRefERT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 8 %i.y, i64 %i.u, i1 false)
  br label %_ZN4llvm18StringMapEntryBase15allocateWithKeyINS_15MallocAllocatorEEEPvmmNS_9StringRefERT_.exit.i

_ZN4llvm18StringMapEntryBase15allocateWithKeyINS_15MallocAllocatorEEEPvmmNS_9StringRefERT_.exit.i: ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  store i8 0, ptr %i.z, align 1, !tbaa !16
  store i64 %i.u, ptr %i.w, align 8, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !169
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !170
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !171
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !172
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !169 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm14StringMapEntryIN5clang7tooling12ReplacementsEE6createINS_15MallocAllocatorEJRS3_EEEPS4_NS_9StringRefERT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18StringMapEntryBase15allocateWithKeyINS_15MallocAllocatorEEEPvmmNS_9StringRefERT_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.ah, ptr %2, align 8, !tbaa !173
  %i.ai = call noundef ptr @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ak, %bb.f ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i, label %bb.f, !llvm.loop !176

_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i ], [ %i.am, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !178 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyERKS8_.exit.i.i.i.i.i.i, label %bb.g, !llvm.loop !179

_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyERKS8_.exit.i.i.i.i.i.i: ; preds = %bb.g
  store ptr %.0.i.i7.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !177
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !172
  store i64 %i.ao, ptr %i.ae, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !177
  br label %_ZN4llvm14StringMapEntryIN5clang7tooling12ReplacementsEE6createINS_15MallocAllocatorEJRS3_EEEPS4_NS_9StringRefERT_DpOT0_.exit

_ZN4llvm14StringMapEntryIN5clang7tooling12ReplacementsEE6createINS_15MallocAllocatorEJRS3_EEEPS4_NS_9StringRefERT_DpOT0_.exit: ; preds = %_ZN4llvm18StringMapEntryBase15allocateWithKeyINS_15MallocAllocatorEEEPvmmNS_9StringRefERT_.exit.i, %_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyERKS8_.exit.i.i.i.i.i.i
  %i.ap = load ptr, ptr %0, align 8, !tbaa !159
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  store ptr %i.w, ptr %i.aq, align 8, !tbaa !160
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !150
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4, !tbaa !150
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4llvm14StringMapEntryIN5clang7tooling12ReplacementsEE6createINS_15MallocAllocatorEJRS3_EEEPS4_NS_9StringRefERT_DpOT0_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !180

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.a
  ret void
}

declare void @_ZN4llvm13StringMapImpl4initEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !181, !nonnull !183, !align !184
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #16 ; 8 uses
  tail call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.d = load i32, ptr %1, align 8, !tbaa !185
  store i32 %i.d, ptr %i.c, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !186
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !178
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !175 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.m, %bb.e ], [ %i.c, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.l = load ptr, ptr %3, align 8, !tbaa !181, !nonnull !183, !align !184
  %i.m = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #16 ; 8 uses
  tail call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.k)
  %i.n = load i32, ptr %.034, align 8, !tbaa !185
  store i32 %i.n, ptr %i.m, align 8, !tbaa !185
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.m, ptr %i.p, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.02733, ptr %i.q, align 8, !tbaa !186
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178  ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !178
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !175 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !8
  %i.e = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !12
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #14 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !14
  %i.j = load i64, ptr %i.b, align 8, !tbaa !12
  store i64 %i.j, ptr %i.d, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !16
  store i8 %i.l, ptr %i.k, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !17
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !8
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17   ; 4 uses
end_hunk_0
