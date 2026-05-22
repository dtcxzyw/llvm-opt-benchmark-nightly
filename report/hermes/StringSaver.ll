inline.NumInlined: 146
inline.NumDeleted: 71
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::StringRef" = type { ptr, i64 }

$_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm = comdat any

$_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_ = comdat any

$_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E20InsertIntoBucketImplIS2_EEPS8_RKS2_RKT_SC_ = comdat any

$_ZN4llvh8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4growEj = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh11StringSaver4saveENS_9StringRefE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7, !nonnull !11, !align !12
  %i.b = add i64 %2, 1
  %i.c = tail call noalias noundef nonnull ptr @_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(97) %i.a, i64 noundef %i.b, i64 noundef 1) ; 3 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  store i8 0, ptr %i.e, align 1, !tbaa !13
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh17UniqueStringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 7 uses
  store ptr %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8, !noalias !14
  %i.d = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !14
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19, !noalias !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !14
  br i1 %i.d, label %._ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit_crit_edge, label %bb.b

._ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit_crit_edge: ; preds = %bb.a
  %.sroa.02.0.copyload.pre = load ptr, ptr %i.e, align 8, !tbaa !21
  %.sroa.23.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.23.0.copyload.pre = load i64, ptr %.sroa.23.0..sroa_idx.phi.trans.insert, align 8, !tbaa !23
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E20InsertIntoBucketImplIS2_EEPS8_RKS2_RKT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.e), !noalias !14 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !25, !noalias !14
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !21
  %.sroa.2.0.copyload = load i64, ptr %i.b, align 8, !tbaa !23 ; 6 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !7, !nonnull !11, !align !12
  %i.h = add i64 %.sroa.2.0.copyload, 1
  %i.i = call noalias noundef nonnull ptr @_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(97) %i.g, i64 noundef %i.h, i64 noundef 1) ; 4 uses
  %i.j = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.j, label %_ZN4llvh11StringSaver4saveENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  br label %_ZN4llvh11StringSaver4saveENS_9StringRefE.exit

_ZN4llvh11StringSaver4saveENS_9StringRefE.exit:   ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.2.0.copyload
  store i8 0, ptr %i.k, align 1, !tbaa !13
  store ptr %i.i, ptr %i.f, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit: ; preds = %._ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit_crit_edge, %_ZN4llvh11StringSaver4saveENS_9StringRefE.exit
  %.sroa.23.0.copyload = phi i64 [ %.sroa.2.0.copyload, %_ZN4llvh11StringSaver4saveENS_9StringRefE.exit ], [ %.sroa.23.0.copyload.pre, %._ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit_crit_edge ]
  %.sroa.02.0.copyload = phi ptr [ %i.i, %_ZN4llvh11StringSaver4saveENS_9StringRefE.exit ], [ %.sroa.02.0.copyload.pre, %._ZN4llvh6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_E6insertERKS2_.exit_crit_edge ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.23.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noalias noundef nonnull ptr @_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE8AllocateEmm(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = add i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = add i64 %2, -1                           ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = and i64 %i.g, %i.h
  %i.j = sub i64 %i.i, %i.e                       ; 2 uses
  %i.k = add i64 %i.j, %1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.e
  %.not = icmp ugt i64 %i.k, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store ptr %3, ptr %0, align 8, !tbaa !39
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %i.f, %1                         ; 3 uses
  %i.r = icmp ugt i64 %i.q, 4096
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #9 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #8
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit

_ZN4llvh15MallocAllocator8AllocateEmm.exit:       ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42
  %.not.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backERKS3_.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 16) #8
  %.pre.i = load i32, ptr %i.v, align 8, !tbaa !41
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backERKS3_.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit, %bb.f
  %i.z = phi i32 [ %.pre.i, %bb.f ], [ %i.w, %_ZN4llvh15MallocAllocator8AllocateEmm.exit ]
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  store ptr %i.s, ptr %i.ac, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 1
  %i.ad = load i32, ptr %i.v, align 8, !tbaa !41
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.v, align 8, !tbaa !41
  %i.af = ptrtoint ptr %i.s to i64
  %i.ag = add i64 %i.f, %i.af
  %i.ah = and i64 %i.ag, %i.h
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.am = lshr i32 %i.al, 7
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.am, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.an to i64
  %i.ao = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #9 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.h, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #8
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i:     ; preds = %bb.h, %bb.g
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !42
  %.not.i.i = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit, label %bb.i, !prof !43

bb.i:                                             ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef 8) #8
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !41
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit: ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i, %bb.i
  %i.av = phi i32 [ %.pre.i.i, %bb.i ], [ %i.ar, %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i ]
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = ptrtoint ptr %i.ap to i64               ; 2 uses
  store i64 %i.az, ptr %i.ay, align 1
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ak, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.bc, ptr %i.l, align 8, !tbaa !40
  %i.bd = add i64 %i.f, %i.az
  %i.be = and i64 %i.bd, %i.h
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bf, i64 %1
  store ptr %4, ptr %0, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backERKS3_.exit, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit, %bb.b
  %.1 = phi ptr [ %i.p, %bb.b ], [ %i.ai, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backERKS3_.exit ], [ %i.bf, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !21
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !23
  %i.e = tail call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #8
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.c, -1                         ; 2 uses
  %i.h = and i32 %i.g, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.044 = phi i32 [ 1, %bb.b ], [ %i.t, %bb.i ]   ; 2 uses
  %.042 = phi i32 [ %i.h, %bb.b ], [ %i.v, %bb.i ] ; 2 uses
  %.039 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.i ] ; 4 uses
  %i.i = zext i32 %.042 to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.i ; 9 uses
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8, !tbaa !21 ; 3 uses
  %.sroa.211.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !23 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !21 ; 3 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %magicptr.i = ptrtoint ptr %.sroa.08.0.copyload to i64
  switch i64 %magicptr.i, label %bb.e [
    i64 -1, label %bb.d
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !48

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %.sroa.211.0.copyload, %.sroa.29.0.copyload
  br i1 %i.l, label %bb.f, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %.sroa.211.0.copyload, 0
  br i1 %i.m, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.010.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.211.0.copyload)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !48

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit: ; preds = %bb.c
  %i.o = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -2 to ptr)
  br i1 %i.o, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !48

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49: ; preds = %bb.e, %bb.g, %bb.d, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  %i.p = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr nonnull inttoptr (i64 -1 to ptr), i64 0)
  br i1 %i.p, label %bb.h, label %bb.i, !prof !43

bb.h:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49
  %.not = icmp eq ptr %.039, null
  %i.q = select i1 %.not, ptr %i.j, ptr %.039
  br label %.thread

bb.i:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49
  %.sroa.02.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !21
  %.sroa.23.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !23
  %i.r = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr nonnull inttoptr (i64 -2 to ptr), i64 0)
  %i.s = icmp eq ptr %.039, null
  %or.cond.not = select i1 %i.r, i1 %i.s, i1 false
  %spec.select = select i1 %or.cond.not, ptr %i.j, ptr %.039
  %i.t = add i32 %.044, 1
  %i.u = add i32 %.042, %.044
  %i.v = and i32 %i.u, %i.g
  br label %bb.c, !llvm.loop !50

.thread:                                          ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit, %bb.d, %bb.g, %bb.f, %bb.a, %bb.h
  %.sink = phi ptr [ %i.q, %bb.h ], [ null, %bb.a ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.d ], [ %i.j, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.d ], [ true, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  store ptr %.sink, ptr %2, align 8, !tbaa !19
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %bb.d [
    i64 -1, label %bb.b
    i64 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, inttoptr (i64 -1 to ptr)
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, inttoptr (i64 -2 to ptr)
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.d:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, %3
  br i1 %i.c, label %bb.e, label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.e:                                             ; preds = %bb.d
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.e = icmp eq i32 %bcmp, 0
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ false, %bb.d ], [ %i.e, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

declare i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E20InsertIntoBucketImplIS2_EEPS8_RKS2_RKT_SC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %i.g = shl i32 %i.d, 2
  %i.h = add i32 %i.g, 4
  %i.i = mul i32 %i.f, 3
  %.not = icmp ult i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.f, 1
  tail call void @_ZN4llvh8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.k = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53
  %.neg = xor i32 %i.d, -1
  %.neg15 = add i32 %i.f, %.neg
  %i.o = sub i32 %.neg15, %i.n
  %i.p = lshr i32 %i.f, 3
  %.not12 = icmp ugt i32 %i.o, %i.p
  br i1 %.not12, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.q = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %3, %bb.c ], [ %i.r, %bb.d ], [ %i.l, %bb.b ] ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !52
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 8, !tbaa !52
  %.sroa.01.0.copyload = load ptr, ptr %.0, align 8, !tbaa !21
  %i.u = icmp eq ptr %.sroa.01.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 2 uses
end_hunk_0
