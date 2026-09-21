Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Builtins?download=true
inline.NumInlined: 563
inline.NumDeleted: 271
begin_hunk_0_@_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE:bb.a
bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !47
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !47
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !69
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !47
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !47
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !47
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !47
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !47
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !47
  ret void
}

declare noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !47
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !47
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang7Builtin14TargetFeatures14getAndFeaturesEN4llvm9StringRefE(ptr dead_on_unwind noalias writable sret(%"struct.clang::Builtin::TargetFeatures::FeatureListStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i64 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"struct.clang::Builtin::TargetFeatures::FeatureListStatus", align 8 ; 6 uses
  %.not4589.not = icmp eq i64 %3, 0
  br i1 %.not4589.not, label %.thread79.thread, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.a
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph95, %bb.j
  %.094 = phi i32 [ 0, %.lr.ph95 ], [ %.3.ph, %bb.j ] ; 6 uses
  %.03393 = phi i8 [ 1, %.lr.ph95 ], [ %.336.ph, %bb.j ] ; 5 uses
  %.03792 = phi i64 [ 0, %.lr.ph95 ], [ %.340.ph, %bb.j ] ; 5 uses
  %.04290 = phi i64 [ 0, %.lr.ph95 ], [ %i.ab, %bb.j ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.04290
  %i.b = load i8, ptr %i.a, align 1, !tbaa !37    ; 3 uses
  switch i8 %i.b, label %bb.j [
    i8 40, label %bb.c
    i8 41, label %bb.d
    i8 124, label %bb.e
    i8 44, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %.094, 0
  %i.d = add nuw i64 %.04290, 1
  %spec.select = select i1 %i.c, i64 %i.d, i64 %.03792
  %i.e = add nsw i32 %.094, 1
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = add nsw i32 %.094, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.b
  %.1 = phi i32 [ %i.f, %bb.d ], [ %.094, %bb.b ], [ %.094, %bb.b ] ; 2 uses
  %i.g = icmp eq i32 %.1, 0
  br i1 %i.g, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.h = trunc nuw i8 %.03393 to i1
  %.not = icmp ne i64 %.04290, %.03792
  %or.cond.not = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.g, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated3.i = call i64 @llvm.umin.i64(i64 %3, i64 %.03792) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated3.i ; 3 uses
  %i.j = call i64 @llvm.usub.sat.i64(i64 %.04290, i64 %.sroa.speculated3.i) ; 3 uses
  %i.k = icmp eq i8 %i.b, 41
  br i1 %i.k, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %.not98 = icmp ugt i64 %.04290, %.sroa.speculated3.i
  br i1 %.not98, label %.lr.ph, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit.thread

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.8.088 = phi i64 [ %.sroa.8.0.copyload, %.lr.ph ], [ %i.j, %.preheader ]
  %.sroa.670.087 = phi ptr [ %.sroa.670.0.copyload, %.lr.ph ], [ %i.i, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN5clang7Builtin14TargetFeatures14getAndFeaturesEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::Builtin::TargetFeatures::FeatureListStatus") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %.sroa.670.087, i64 %.sroa.8.088), !inline_history !0
  %.sroa.068.0.copyload = load i8, ptr %4, align 8, !tbaa !74 ; 2 uses
  %.sroa.670.0.copyload = load ptr, ptr %.sroa.670.0..sroa_idx, align 8, !tbaa !75
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.l = trunc nuw i8 %.sroa.068.0.copyload to i1
  %i.m = icmp eq i64 %.sroa.8.0.copyload, 0
  %or.cond84 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond84, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit.thread, label %.lr.ph, !llvm.loop !1

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %1, align 8, !tbaa !137, !nonnull !138, !align !139 ; 3 uses
  %i.o = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.i, i64 %i.j) #16
  %i.p = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr %i.i, i64 %i.j, i32 noundef %i.o) #16 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !55
  br i1 %i.q, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %bb.h
  %i.s = sext i32 %i.p to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !72
  %.pre6.i = zext i32 %.pre.i to i64
  %i.t = icmp eq i64 %i.s, %.pre6.i
  br i1 %i.t, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !141, !range !142, !noundef !138
  br label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit

_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit.thread: ; preds = %.lr.ph, %.preheader
  %.134.ph = phi i8 [ 0, %.preheader ], [ %.sroa.068.0.copyload, %.lr.ph ]
  %i.y = add nuw i64 %.04290, 1
  br label %bb.j

_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit: ; preds = %bb.h, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %bb.i, %bb.f
  %.134 = phi i8 [ %.03393, %bb.f ], [ 0, %bb.h ], [ %i.x, %bb.i ], [ 0, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i ] ; 2 uses
  %i.z = add nuw i64 %.04290, 1                   ; 2 uses
  %i.aa = icmp eq i8 %i.b, 124
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit.thread, %bb.e, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit, %bb.b, %bb.c
  %.340.ph = phi i64 [ %.03792, %bb.e ], [ %i.z, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit ], [ %spec.select, %bb.c ], [ %.03792, %bb.b ], [ %i.y, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit.thread ] ; 2 uses
  %.336.ph = phi i8 [ %.03393, %bb.e ], [ %.134, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit ], [ %.03393, %bb.c ], [ %.03393, %bb.b ], [ %.134.ph, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit.thread ] ; 2 uses
  %.3.ph = phi i32 [ %.1, %bb.e ], [ 0, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit ], [ %i.e, %bb.c ], [ %.094, %bb.b ], [ 0, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit.thread ]
  %i.ab = add nuw i64 %.04290, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %3
  br i1 %exitcond.not, label %.thread79, label %bb.b, !llvm.loop !135

bb.k:                                             ; preds = %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit
  store i8 %.134, ptr %0, align 8, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.speculated4.i = call i64 @llvm.umin.i64(i64 %3, i64 %i.z) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated4.i
  %i.ae = sub nuw i64 %3, %.sroa.speculated4.i
  store ptr %i.ad, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %i.af, align 8
  br label %bb.n

.thread79:                                        ; preds = %bb.j
  %i.ag = trunc nuw i8 %.336.ph to i1
  br i1 %i.ag, label %.thread79.thread, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit60

.thread79.thread:                                 ; preds = %bb.a, %.thread79
  %.037.lcssa108 = phi i64 [ %.340.ph, %.thread79 ], [ 0, %bb.a ] ; 2 uses
  %.not46 = icmp eq i64 %.037.lcssa108, %3
  br i1 %.not46, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit60, label %bb.l

bb.l:                                             ; preds = %.thread79.thread
  %i.ah = load ptr, ptr %1, align 8, !tbaa !137, !nonnull !138, !align !139 ; 3 uses
  %.sroa.speculated4.i51 = call i64 @llvm.umin.i64(i64 %3, i64 %.037.lcssa108) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated4.i51 ; 2 uses
  %i.aj = sub i64 %3, %.sroa.speculated4.i51      ; 2 uses
  %i.ak = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.ai, i64 %i.aj) #16
  %i.al = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, ptr %i.ai, i64 %i.aj, i32 noundef %i.ak) #16 ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !55
  br i1 %i.am, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit60, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i55

_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i55: ; preds = %bb.l
  %i.ao = sext i32 %i.al to i64                   ; 2 uses
  %.phi.trans.insert.i56 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre.i57 = load i32, ptr %.phi.trans.insert.i56, align 8, !tbaa !72
  %.pre6.i58 = zext i32 %.pre.i57 to i64
  %i.ap = icmp eq i64 %i.ao, %.pre6.i58
  br i1 %i.ap, label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit60, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i55
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !141, !range !142, !noundef !138
  br label %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit60

_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit60: ; preds = %bb.m, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i55, %bb.l, %.thread79.thread, %.thread79
  %.5 = phi i8 [ 0, %.thread79 ], [ 1, %.thread79.thread ], [ %i.at, %bb.m ], [ 0, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i55 ], [ 0, %bb.l ]
  store i8 %.5, ptr %0, align 8, !tbaa !144
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_ZNK4llvm9StringMapIbNS_15MallocAllocatorEE6lookupENS_9StringRefE.exit60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang7Builtin10InfosShardEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIN5clang7Builtin10InfosShardEE12assignRemoteEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #16
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIN5clang7Builtin10InfosShardEE12assignRemoteEOS4_.exit

_ZN4llvm15SmallVectorImplIN5clang7Builtin10InfosShardEE12assignRemoteEOS4_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !31
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !31
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !48
  store i32 0, ptr %i.j, align 8, !tbaa !47
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !47   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !145

bb.g:                                             ; preds = %bb.f
  %.idx = mul nuw nsw i64 %i.o, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit

_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !47
  store i32 0, ptr %i.m, align 8, !tbaa !47
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48
  %i.v = icmp ult i32 %i.u, %i.n
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w, i64 noundef %i.o, i64 noundef 40) #16
  br label %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !146

bb.m:                                             ; preds = %bb.l
  %.idx36 = mul nuw nsw i64 %i.r, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit34

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit34

_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !47
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.z
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7Builtin10InfosShardELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit34
  %i.aa = load ptr, ptr %1, align 8, !tbaa !21
  %.idx39 = mul nuw nsw i64 %.026, 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx39
  %i.ac = load ptr, ptr %0, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %.026
  %.idx3840 = sub nsw i64 %i.z, %.026
  %gepdiff = mul nsw i64 %.idx3840, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 8 %i.ab, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang7Builtin10InfosShardELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang7Builtin10InfosShardELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !47
  store i32 0, ptr %i.m, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN5clang7Builtin10InfosShardES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseIN5clang7Builtin10InfosShardELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIN5clang7Builtin10InfosShardEE12assignRemoteEOS4_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
