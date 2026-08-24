Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CFG?download=true
inline.NumInlined: 3113
inline.NumDeleted: 1058
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK6hermes13DominanceInfo17properlyDominatesEPKNS_11InstructionES3_:bb.a
  ret i1 %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !7      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  store ptr %i.i, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !3
  store <2 x i32> %i.l, ptr %i.f, align 8, !tbaa !3
  store ptr %i.c, ptr %1, align 8, !tbaa !7
  store i32 0, ptr %i.k, align 4, !tbaa !11
  store i32 0, ptr %i.j, align 8, !tbaa !10
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !10   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !10   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  switch i32 %i.n, label %bb.h [
    i32 0, label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.i
  ], !prof !198

bb.h:                                             ; preds = %bb.g
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !32
  store ptr %i.t, ptr %i.s, align 8, !tbaa !32
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit: ; preds = %bb.g, %bb.i, %bb.h
  store i32 %i.n, ptr %i.p, align 8, !tbaa !10
  store i32 0, ptr %i.m, align 8, !tbaa !10
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.p, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #14
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37

bb.l:                                             ; preds = %bb.j
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not40 = icmp eq i32 %i.q, 1
  br i1 %.not40, label %bb.o, label %bb.n, !prof !125

bb.n:                                             ; preds = %bb.m
  %.idx39 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx39, i1 false)
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37

bb.o:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !32
  store ptr %i.z, ptr %i.y, align 8, !tbaa !32
  br label %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37

_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.029 = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.r, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !10
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.029, %i.ab
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37
  %i.ac = load ptr, ptr %1, align 8, !tbaa !7
  %.idx42 = shl nuw nsw i64 %.029, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx42
  %i.ae = load ptr, ptr %0, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.029
  %i.ag = sub nsw i64 %i.ab, %.029
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit37, %bb.p
  store i32 %i.n, ptr %i.p, align 8, !tbaa !10
  store i32 0, ptr %i.m, align 8, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %_ZSt4moveIPPN6hermes10BasicBlockES3_ET0_T_S5_S4_.exit, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %bb.e
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZSt16__is_permutationIPKPN6hermes10BasicBlockES4_N9__gnu_cxx5__ops19_Iter_equal_to_iterEEbT_S8_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %.not57 = icmp eq ptr %0, %1
  br i1 %.not57, label %.critedge42, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.03159 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ] ; 8 uses
  %.03258 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.03159, align 8, !tbaa !32
  %i.c = load ptr, ptr %.03258, align 8, !tbaa !32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSt9__advanceIPKPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.03159, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03258, i64 8
  %.not = icmp eq ptr %i.e, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.critedge42, label %.lr.ph, !llvm.loop !199

_ZSt9__advanceIPKPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %.lr.ph
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.03159 to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %.03258, i64 %i.i
  %.not3868 = icmp eq ptr %.03159, %1
  br i1 %.not3868, label %.critedge42, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZSt9__advanceIPKPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit
  %i.k = add i64 %i.g, -8
  %i.l = shl i64 %indvar, 3
  %i.m = add i64 %i.l, %i.a
  %i.n = sub i64 %i.k, %i.m                       ; 3 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.n, 24
  %n.vec114 = and i64 %i.p, 4611686018427387900   ; 3 uses
  %i.q = shl i64 %n.vec114, 3
  %i.r = getelementptr i8, ptr %.03258, i64 %i.q
  %cmp.n127 = icmp eq i64 %i.p, %n.vec114
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph70, %.critedge
  %indvar107 = phi i64 [ 0, %.lr.ph70 ], [ %indvar.next108, %.critedge ] ; 2 uses
  %.03569 = phi ptr [ %.03159, %.lr.ph70 ], [ %i.cj, %.critedge ] ; 12 uses
  %i.s = shl i64 %indvar107, 3
  %i.t = sub i64 %i.n, %i.s                       ; 2 uses
  %3 = lshr i64 %i.t, 3
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.u = ptrtoint ptr %.03569 to i64              ; 2 uses
  %i.v = sub i64 %i.u, %i.h                       ; 3 uses
  %i.w = ashr i64 %i.v, 5                         ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = load ptr, ptr %.03569, align 8, !tbaa !32 ; 4 uses
  %i.z = and i64 %i.v, -32
  %scevgep.i.i = getelementptr i8, ptr %.03159, i64 %i.z ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.047.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.am, %bb.h ] ; 2 uses
  %.02946.i.i = phi ptr [ %.03159, %.lr.ph.i.i ], [ %i.al, %bb.h ] ; 9 uses
  %i.aa = load ptr, ptr %.02946.i.i, align 8, !tbaa !32
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.ah = icmp eq ptr %i.ag, %i.y
  br i1 %i.ah, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 32
  %i.am = add nsw i64 %.047.i.i, -1
  %i.an = icmp sgt i64 %.047.i.i, 1
  br i1 %i.an, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !200

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre54.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre55.i.i = sub i64 %i.u, %.pre54.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi56.i.i = phi i64 [ %.pre55.i.i, %._crit_edge.loopexit.i.i ], [ %i.v, %bb.c ]
  %.029.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %.03159, %bb.c ] ; 5 uses
  %i.ao = ashr exact i64 %.pre-phi56.i.i, 3
  switch i64 %i.ao, label %bb.n [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i
  ]

._crit_edge._crit_edge52.i.i:                     ; preds = %._crit_edge.i.i
  %.pre53.i.i = load ptr, ptr %.03569, align 8, !tbaa !32
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load ptr, ptr %.03569, align 8, !tbaa !32
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = load ptr, ptr %.029.lcssa.i.i, align 8, !tbaa !32
  %i.aq = load ptr, ptr %.03569, align 8, !tbaa !32 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.at = phi ptr [ %i.aq, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.as, %bb.j ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.au = load ptr, ptr %.1.i.i, align 8, !tbaa !32
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge52.i.i
  %i.ax = phi ptr [ %i.at, %bb.l ], [ %.pre53.i.i, %._crit_edge._crit_edge52.i.i ]
  %.2.i.i = phi ptr [ %i.aw, %bb.l ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge52.i.i ] ; 2 uses
  %i.ay = load ptr, ptr %.2.i.i, align 8, !tbaa !32
  %i.az = icmp eq ptr %i.ay, %i.ax
  br i1 %i.az, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 8
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 16
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 24
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit: ; preds = %bb.d, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94, %bb.i, %bb.k, %bb.m, %bb.n
  %.028.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %.03569, %bb.n ], [ %.2.i.i, %bb.m ], [ %.029.lcssa.i.i, %bb.i ], [ %i.bc, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit94 ], [ %i.ba, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit ], [ %i.bb, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit92 ], [ %.02946.i.i, %bb.d ]
  %.not39 = icmp eq ptr %.03569, %.028.i.i
  br i1 %.not39, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit
  %i.bd = load ptr, ptr %.03569, align 8, !tbaa !32 ; 4 uses
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert115 = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat116 = shufflevector <2 x ptr> %broadcast.splatinsert115, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next124, %vector.body117 ] ; 2 uses
  %vec.phi119 = phi <2 x i64> [ zeroinitializer, %vector.ph113 ], [ %i.bk, %vector.body117 ]
  %vec.phi120 = phi <2 x i64> [ zeroinitializer, %vector.ph113 ], [ %i.bl, %vector.body117 ]
  %i.be = shl i64 %index118, 3
  %next.gep121 = getelementptr i8, ptr %.03258, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <2 x ptr>, ptr %next.gep121, align 8, !tbaa !32
  %wide.load123 = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp eq <2 x ptr> %wide.load122, %broadcast.splat116
  %i.bh = icmp eq <2 x ptr> %wide.load123, %broadcast.splat116
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi119, %i.bi        ; 2 uses
  %i.bl = add <2 x i64> %vec.phi120, %i.bj        ; 2 uses
  %index.next124 = add nuw i64 %index118, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next124, %n.vec114
  br i1 %i.bm, label %middle.block125, label %vector.body117, !llvm.loop !201

middle.block125:                                  ; preds = %vector.body117
  %bin.rdx126 = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx126) ; 2 uses
  br i1 %cmp.n127, label %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %.lr.ph.i, %middle.block125
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %middle.block125 ]
  %.057.i.ph = phi ptr [ %.03258, %.lr.ph.i ], [ %i.r, %middle.block125 ]
  br label %scalar.ph111

scalar.ph111:                                     ; preds = %scalar.ph111.preheader, %scalar.ph111
  %.08.i = phi i64 [ %spec.select.i, %scalar.ph111 ], [ %.08.i.ph, %scalar.ph111.preheader ]
  %.057.i = phi ptr [ %i.br, %scalar.ph111 ], [ %.057.i.ph, %scalar.ph111.preheader ] ; 2 uses
  %i.bo = load ptr, ptr %.057.i, align 8, !tbaa !32
  %i.bp = icmp eq ptr %i.bo, %i.bd
  %i.bq = zext i1 %i.bp to i64
  %spec.select.i = add nuw nsw i64 %.08.i, %i.bq  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.j
  br i1 %.not.i, label %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, label %scalar.ph111, !llvm.loop !202

_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit: ; preds = %scalar.ph111, %middle.block125
  %spec.select.i.lcssa = phi i64 [ %i.bn, %middle.block125 ], [ %spec.select.i, %scalar.ph111 ] ; 2 uses
  %i.bs = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bs, label %.critedge42, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i44.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i44.preheader
  %n.vec = and i64 %4, 4611686018427387900        ; 3 uses
  %i.bt = shl i64 %n.vec, 3
  %i.bu = getelementptr i8, ptr %.03569, i64 %i.bt
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi109 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bv = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.03569, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !32
  %wide.load110 = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !32
  %i.bx = icmp eq <2 x ptr> %wide.load, %broadcast.splat
  %i.by = icmp eq <2 x ptr> %wide.load110, %broadcast.splat
  %i.bz = zext <2 x i1> %i.bx to <2 x i64>
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = add <2 x i64> %vec.phi, %i.bz           ; 2 uses
  %i.cc = add <2 x i64> %vec.phi109, %i.ca        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, label %.lr.ph.i44.preheader130

.lr.ph.i44.preheader130:                          ; preds = %.lr.ph.i44.preheader, %middle.block
  %.08.i45.ph = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.ce, %middle.block ]
  %.057.i46.ph = phi ptr [ %.03569, %.lr.ph.i44.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader130, %.lr.ph.i44
  %.08.i45 = phi i64 [ %spec.select.i47, %.lr.ph.i44 ], [ %.08.i45.ph, %.lr.ph.i44.preheader130 ]
  %.057.i46 = phi ptr [ %i.ci, %.lr.ph.i44 ], [ %.057.i46.ph, %.lr.ph.i44.preheader130 ] ; 2 uses
  %i.cf = load ptr, ptr %.057.i46, align 8, !tbaa !32
  %i.cg = icmp eq ptr %i.cf, %i.bd
  %i.ch = zext i1 %i.cg to i64
  %spec.select.i47 = add nuw nsw i64 %.08.i45, %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i46, i64 8 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ci, %1
  br i1 %.not.i48, label %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, label %.lr.ph.i44, !llvm.loop !204

_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50: ; preds = %.lr.ph.i44, %middle.block
  %spec.select.i47.lcssa = phi i64 [ %i.ce, %middle.block ], [ %spec.select.i47, %.lr.ph.i44 ]
  %.not40 = icmp eq i64 %spec.select.i47.lcssa, %spec.select.i.lcssa
  br i1 %.not40, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.03569, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.cj, %1
  %indvar.next108 = add i64 %indvar107, 1
  br i1 %.not38, label %.critedge42, label %bb.c, !llvm.loop !205

.critedge42:                                      ; preds = %bb.b, %.critedge, %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50, %bb.a, %_ZSt9__advanceIPKPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit
  %.5 = phi i1 [ true, %_ZSt9__advanceIPKPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit ], [ true, %bb.a ], [ false, %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit50 ], [ true, %.critedge ], [ false, %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit ], [ true, %bb.b ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE12ApplyUpdatesERS5_NS_8ArrayRefINS_3cfg6UpdateIPS4_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvh::DomTreeBuilder::SemiNCAInfo<llvh::DominatorTreeBase<hermes::BasicBlock, false>>::BatchUpdateInfo", align 8 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  switch i64 %2, label %bb.e [
    i64 0, label %bb.m
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !177  ; 2 uses
  %i.e = and i64 %i.d, 4
  %i.f = icmp eq i64 %i.e, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !173    ; 2 uses
  %i.h = and i64 %i.d, -8
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE10InsertEdgeERS5_PNS6_15BatchUpdateInfoEPS4_SA_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null, ptr noundef %i.g, ptr noundef %i.i)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE10DeleteEdgeERS5_PNS6_15BatchUpdateInfoEPS4_SA_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null, ptr noundef %i.g, ptr noundef %i.i)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !161
  call void @_ZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEb(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false)
  %i.p = load i32, ptr %i.k, align 8, !tbaa !10   ; 4 uses
  %i.q = zext i32 %i.p to i64
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E7reserveEj(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i32 noundef %i.p)
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E7reserveEj(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 noundef %i.p)
  %i.r = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.s = load i32, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32, %bb.e
  %i.v = icmp eq i32 %i.p, 0
  %i.w = load i8, ptr %i.o, align 8, !range !28
  %i.x = trunc nuw i8 %i.w to i1
  %.not2938 = select i1 %i.v, i1 true, i1 %i.x
  br i1 %.not2938, label %._crit_edge, label %.lr.ph40

.lr.ph:                                           ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32
  %.02637 = phi ptr [ %i.bl, %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32 ], [ %i.r, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = load ptr, ptr %.02637, align 8, !tbaa !173
  store ptr %i.y, ptr %i.a, align 8, !tbaa !32
  %i.z = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E16FindAndConstructEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02637, i64 8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !177
  %i.ad = and i64 %i.ac, -4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit, label %bb.f, !prof !53

bb.f:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull %i.ai, i64 noundef 0, i64 noundef 8) #14
  %.pre.i = load i32, ptr %i.ae, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit: ; preds = %.lr.ph, %bb.f
  %i.aj = phi i32 [ %.pre.i, %bb.f ], [ %i.af, %.lr.ph ]
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !7
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  store i64 %i.ad, ptr %i.am, align 1
  %i.an = load i32, ptr %i.ae, align 8, !tbaa !10
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ae, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !177
  %i.aq = and i64 %i.ap, -8
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !32
  %i.as = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E16FindAndConstructEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %.02637, align 8, !tbaa !173
  %i.av = load i64, ptr %i.ab, align 8, !tbaa !177
  %i.aw = and i64 %i.av, 4
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, -5
  %i.az = or disjoint i64 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !10 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11
  %.not.i30 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i30, label %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32, label %bb.g, !prof !53

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull %i.be, i64 noundef 0, i64 noundef 8) #14
  %.pre.i31 = load i32, ptr %i.ba, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32

_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit, %bb.g
  %i.bf = phi i32 [ %.pre.i31, %bb.g ], [ %i.bb, %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit ]
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  store i64 %i.az, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !10
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ba, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
end_hunk_0
begin_hunk_1_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE21verifySiblingPropertyERKS5_:bb.a
  %i.dm = icmp ult i64 %i.dl, 7
  br i1 %i.dm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dn = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull @.str.26, i64 noundef 7) #14 ; 0 uses
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.di, ptr noundef nonnull align 1 dereferenceable(7) @.str.26, i64 7, i1 false)
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !159
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 7
  store ptr %i.dp, ptr %i.dh, align 8, !tbaa !159
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit

bb.aa:                                            ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit
  tail call void @_ZNK6hermes10BasicBlock14printAsOperandERN4llvh11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(80) %i.de, ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, i1 noundef zeroext false) #14
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit

_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !156
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !159 ; 2 uses
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp ult i64 %i.dw, 32
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit
  %i.dy = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull @.str.46, i64 noundef 32) #14
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit51

bb.ac:                                            ; preds = %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dt, ptr noundef nonnull align 1 dereferenceable(32) @.str.46, i64 32, i1 false)
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !159
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store ptr %i.ea, ptr %i.ds, align 8, !tbaa !159
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit51

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit51: ; preds = %bb.ab, %bb.ac
  %.0.i.i48 = phi ptr [ %i.dy, %bb.ab ], [ %.0.i.i, %bb.ac ] ; 7 uses
  %i.eb = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %.not.i52 = icmp eq ptr %i.eb, null
  br i1 %.not.i52, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit51
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !156
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 24 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !159 ; 2 uses
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = icmp ult i64 %i.ei, 7
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ek = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i48, ptr noundef nonnull @.str.26, i64 noundef 7) #14 ; 0 uses
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit53

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ef, ptr noundef nonnull align 1 dereferenceable(7) @.str.26, i64 7, i1 false)
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !159
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 7
  store ptr %i.em, ptr %i.ee, align 8, !tbaa !159
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit53

bb.ag:                                            ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit51
  tail call void @_ZNK6hermes10BasicBlock14printAsOperandERN4llvh11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(80) %i.eb, ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i48, i1 noundef zeroext false) #14
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit53

_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit53: ; preds = %bb.ae, %bb.af, %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !156
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 24 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !159 ; 2 uses
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = icmp ult i64 %i.et, 13
  br i1 %i.eu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit53
  %i.ev = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i48, ptr noundef nonnull @.str.45, i64 noundef 13) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit56

bb.ai:                                            ; preds = %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.eq, ptr noundef nonnull align 1 dereferenceable(13) @.str.45, i64 13, i1 false)
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !159
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 13
  store ptr %i.ex, ptr %i.ep, align 8, !tbaa !159
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit56

_ZN4llvh11raw_ostreamlsEPKc.exit56:               ; preds = %bb.ah, %bb.ai
  %i.ey = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #14 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !159
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !405
  %.not.i57 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not.i57, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5countEPKS3_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit56
  tail call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %i.ey) #14
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5countEPKS3_.exit

.loopexit91:                                      ; preds = %bb.u, %.lr.ph, %bb.t
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.060.0102, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.fd, %i.bt
  br i1 %.not90, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit91, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE5clearEv.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.064.0103, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.fe, %i.aa
  br i1 %.not89, label %.loopexit93, label %.preheader

.loopexit93:                                      ; preds = %._crit_edge, %bb.d, %bb.e
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.068.0105, i64 16 ; 3 uses
  %.not5.i3.i = icmp eq ptr %i.ff, %.pn12.i
  br i1 %.not5.i3.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.loopexit93, %.critedge2.i6.i
  %.sroa.068.1 = phi ptr [ %i.fh, %.critedge2.i6.i ], [ %i.ff, %.loopexit93 ] ; 3 uses
  %i.fg = load ptr, ptr %.sroa.068.1, align 8, !tbaa !32
  %magicptr.i5.i = ptrtoint ptr %i.fg to i64
  switch i64 %magicptr.i5.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit [
    i64 -8, label %.critedge2.i6.i
    i64 -16, label %.critedge2.i6.i
  ]

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i, %.lr.ph.i4.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.068.1, i64 16 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.fh, %.pn12.i
  br i1 %.not.i7.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !43

_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %.loopexit93
  %.sroa.068.2 = phi ptr [ %i.ff, %.loopexit93 ], [ %i.fh, %.critedge2.i6.i ], [ %.sroa.068.1, %.lr.ph.i4.i ] ; 2 uses
  %.not88 = icmp eq ptr %.sroa.068.2, %i.n
  br i1 %.not88, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5countEPKS3_.exit, label %bb.d

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS3_Lb0EEEE7InfoRecENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5countEPKS3_.exit: ; preds = %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit, %_ZN4llvh11raw_ostreamlsEPKc.exit56, %bb.aj
  %.not8899 = phi i1 [ false, %bb.aj ], [ false, %_ZN4llvh11raw_ostreamlsEPKc.exit56 ], [ true, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit ], [ true, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit ]
  ret i1 %.not8899
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #3

declare void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZSt16__is_permutationIPKPN6hermes10BasicBlockEPS2_N9__gnu_cxx5__ops19_Iter_equal_to_iterEEbT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %.not56 = icmp eq ptr %0, %1
  br i1 %.not56, label %.critedge42, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.03158 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ] ; 8 uses
  %.03257 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.03158, align 8, !tbaa !32
  %i.c = load ptr, ptr %.03257, align 8, !tbaa !32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSt9__advanceIPPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.03158, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03257, i64 8
  %.not = icmp eq ptr %i.e, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.critedge42, label %.lr.ph, !llvm.loop !417

_ZSt9__advanceIPPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %.lr.ph
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.03158 to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %.03257, i64 %i.i
  %.not3867 = icmp eq ptr %.03158, %1
  br i1 %.not3867, label %.critedge42, label %.lr.ph69

.lr.ph69:                                         ; preds = %_ZSt9__advanceIPPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit
  %i.k = add i64 %i.g, -8
  %i.l = shl i64 %indvar, 3
  %i.m = add i64 %i.l, %i.a
  %i.n = sub i64 %i.k, %i.m                       ; 3 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.n, 24
  %n.vec113 = and i64 %i.p, 4611686018427387900   ; 3 uses
  %i.q = shl i64 %n.vec113, 3
  %i.r = getelementptr i8, ptr %.03257, i64 %i.q
  %cmp.n126 = icmp eq i64 %i.p, %n.vec113
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph69, %.critedge
  %indvar106 = phi i64 [ 0, %.lr.ph69 ], [ %indvar.next107, %.critedge ] ; 2 uses
  %.03568 = phi ptr [ %.03158, %.lr.ph69 ], [ %i.cj, %.critedge ] ; 12 uses
  %i.s = shl i64 %indvar106, 3
  %i.t = sub i64 %i.n, %i.s                       ; 2 uses
  %3 = lshr i64 %i.t, 3
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.u = ptrtoint ptr %.03568 to i64              ; 2 uses
  %i.v = sub i64 %i.u, %i.h                       ; 3 uses
  %i.w = ashr i64 %i.v, 5                         ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = load ptr, ptr %.03568, align 8, !tbaa !32 ; 4 uses
  %i.z = and i64 %i.v, -32
  %scevgep.i.i = getelementptr i8, ptr %.03158, i64 %i.z ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.047.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.am, %bb.h ] ; 2 uses
  %.02946.i.i = phi ptr [ %.03158, %.lr.ph.i.i ], [ %i.al, %bb.h ] ; 9 uses
  %i.aa = load ptr, ptr %.02946.i.i, align 8, !tbaa !32
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.ah = icmp eq ptr %i.ag, %i.y
  br i1 %i.ah, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit91, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.ak = icmp eq ptr %i.aj, %i.y
  br i1 %i.ak, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 32
  %i.am = add nsw i64 %.047.i.i, -1
  %i.an = icmp sgt i64 %.047.i.i, 1
  br i1 %i.an, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !200

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre54.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre55.i.i = sub i64 %i.u, %.pre54.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi56.i.i = phi i64 [ %.pre55.i.i, %._crit_edge.loopexit.i.i ], [ %i.v, %bb.c ]
  %.029.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %.03158, %bb.c ] ; 5 uses
  %i.ao = ashr exact i64 %.pre-phi56.i.i, 3
  switch i64 %i.ao, label %bb.n [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i
  ]

._crit_edge._crit_edge52.i.i:                     ; preds = %._crit_edge.i.i
  %.pre53.i.i = load ptr, ptr %.03568, align 8, !tbaa !32
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load ptr, ptr %.03568, align 8, !tbaa !32
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = load ptr, ptr %.029.lcssa.i.i, align 8, !tbaa !32
  %i.aq = load ptr, ptr %.03568, align 8, !tbaa !32 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.at = phi ptr [ %i.aq, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.as, %bb.j ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.au = load ptr, ptr %.1.i.i, align 8, !tbaa !32
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge52.i.i
  %i.ax = phi ptr [ %i.at, %bb.l ], [ %.pre53.i.i, %._crit_edge._crit_edge52.i.i ]
  %.2.i.i = phi ptr [ %i.aw, %bb.l ], [ %.029.lcssa.i.i, %._crit_edge._crit_edge52.i.i ] ; 2 uses
  %i.ay = load ptr, ptr %.2.i.i, align 8, !tbaa !32
  %i.az = icmp eq ptr %i.ay, %i.ax
  br i1 %i.az, label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 8
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit91: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 16
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit93: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i, i64 24
  br label %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit

_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit: ; preds = %bb.d, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit91, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit93, %bb.i, %bb.k, %bb.m, %bb.n
  %.028.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %.03568, %bb.n ], [ %.2.i.i, %bb.m ], [ %.029.lcssa.i.i, %bb.i ], [ %i.bc, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit93 ], [ %i.ba, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit ], [ %i.bb, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit.loopexit.split.loop.exit91 ], [ %.02946.i.i, %bb.d ]
  %.not39 = icmp eq ptr %.03568, %.028.i.i
  br i1 %.not39, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit
  %i.bd = load ptr, ptr %.03568, align 8, !tbaa !32 ; 4 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert114 = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat115 = shufflevector <2 x ptr> %broadcast.splatinsert114, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph112
  %index117 = phi i64 [ 0, %vector.ph112 ], [ %index.next123, %vector.body116 ] ; 2 uses
  %vec.phi118 = phi <2 x i64> [ zeroinitializer, %vector.ph112 ], [ %i.bk, %vector.body116 ]
  %vec.phi119 = phi <2 x i64> [ zeroinitializer, %vector.ph112 ], [ %i.bl, %vector.body116 ]
  %i.be = shl i64 %index117, 3
  %next.gep120 = getelementptr i8, ptr %.03257, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load121 = load <2 x ptr>, ptr %next.gep120, align 8, !tbaa !32
  %wide.load122 = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !32
  %i.bg = icmp eq <2 x ptr> %wide.load121, %broadcast.splat115
  %i.bh = icmp eq <2 x ptr> %wide.load122, %broadcast.splat115
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi118, %i.bi        ; 2 uses
  %i.bl = add <2 x i64> %vec.phi119, %i.bj        ; 2 uses
  %index.next123 = add nuw i64 %index117, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next123, %n.vec113
  br i1 %i.bm, label %middle.block124, label %vector.body116, !llvm.loop !418

middle.block124:                                  ; preds = %vector.body116
  %bin.rdx125 = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx125) ; 2 uses
  br i1 %cmp.n126, label %_ZSt10__count_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIPKS2_EEENSt15iterator_traitsIT_E15difference_typeESB_SB_T0_.exit, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %.lr.ph.i, %middle.block124
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %middle.block124 ]
  %.057.i.ph = phi ptr [ %.03257, %.lr.ph.i ], [ %i.r, %middle.block124 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %.08.i = phi i64 [ %spec.select.i, %scalar.ph110 ], [ %.08.i.ph, %scalar.ph110.preheader ]
  %.057.i = phi ptr [ %i.br, %scalar.ph110 ], [ %.057.i.ph, %scalar.ph110.preheader ] ; 2 uses
  %i.bo = load ptr, ptr %.057.i, align 8, !tbaa !32
  %i.bp = icmp eq ptr %i.bo, %i.bd
  %i.bq = zext i1 %i.bp to i64
  %spec.select.i = add nuw nsw i64 %.08.i, %i.bq  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.j
  br i1 %.not.i, label %_ZSt10__count_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIPKS2_EEENSt15iterator_traitsIT_E15difference_typeESB_SB_T0_.exit, label %scalar.ph110, !llvm.loop !419

_ZSt10__count_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIPKS2_EEENSt15iterator_traitsIT_E15difference_typeESB_SB_T0_.exit: ; preds = %scalar.ph110, %middle.block124
  %spec.select.i.lcssa = phi i64 [ %i.bn, %middle.block124 ], [ %spec.select.i, %scalar.ph110 ] ; 2 uses
  %i.bs = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bs, label %.critedge42, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %_ZSt10__count_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIPKS2_EEENSt15iterator_traitsIT_E15difference_typeESB_SB_T0_.exit
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i44.preheader129, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i44.preheader
  %n.vec = and i64 %4, 4611686018427387900        ; 3 uses
  %i.bt = shl i64 %n.vec, 3
  %i.bu = getelementptr i8, ptr %.03568, i64 %i.bt
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi108 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bv = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.03568, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !32
  %wide.load109 = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !32
  %i.bx = icmp eq <2 x ptr> %wide.load, %broadcast.splat
  %i.by = icmp eq <2 x ptr> %wide.load109, %broadcast.splat
  %i.bz = zext <2 x i1> %i.bx to <2 x i64>
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = add <2 x i64> %vec.phi, %i.bz           ; 2 uses
  %i.cc = add <2 x i64> %vec.phi108, %i.ca        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !420

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, label %.lr.ph.i44.preheader129

.lr.ph.i44.preheader129:                          ; preds = %.lr.ph.i44.preheader, %middle.block
  %.08.i45.ph = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.ce, %middle.block ]
  %.057.i46.ph = phi ptr [ %.03568, %.lr.ph.i44.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader129, %.lr.ph.i44
  %.08.i45 = phi i64 [ %spec.select.i47, %.lr.ph.i44 ], [ %.08.i45.ph, %.lr.ph.i44.preheader129 ]
  %.057.i46 = phi ptr [ %i.ci, %.lr.ph.i44 ], [ %.057.i46.ph, %.lr.ph.i44.preheader129 ] ; 2 uses
  %i.cf = load ptr, ptr %.057.i46, align 8, !tbaa !32
  %i.cg = icmp eq ptr %i.cf, %i.bd
  %i.ch = zext i1 %i.cg to i64
  %spec.select.i47 = add nuw nsw i64 %.08.i45, %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i46, i64 8 ; 2 uses
  %.not.i48 = icmp eq ptr %i.ci, %1
  br i1 %.not.i48, label %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, label %.lr.ph.i44, !llvm.loop !421

_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit: ; preds = %.lr.ph.i44, %middle.block
  %spec.select.i47.lcssa = phi i64 [ %i.ce, %middle.block ], [ %spec.select.i47, %.lr.ph.i44 ]
  %.not40 = icmp eq i64 %spec.select.i47.lcssa, %spec.select.i.lcssa
  br i1 %.not40, label %.critedge, label %.critedge42

.critedge:                                        ; preds = %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, %_ZSt9__find_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEET_S9_S9_T0_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.03568, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.cj, %1
  %indvar.next107 = add i64 %indvar106, 1
  br i1 %.not38, label %.critedge42, label %bb.c, !llvm.loop !422

.critedge42:                                      ; preds = %bb.b, %.critedge, %_ZSt10__count_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIPKS2_EEENSt15iterator_traitsIT_E15difference_typeESB_SB_T0_.exit, %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit, %bb.a, %_ZSt9__advanceIPPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit
  %.5 = phi i1 [ true, %_ZSt9__advanceIPPN6hermes10BasicBlockElEvRT_T0_St26random_access_iterator_tag.exit ], [ true, %bb.a ], [ false, %_ZSt10__count_ifIPKPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIS4_EEENSt15iterator_traitsIT_E15difference_typeESA_SA_T0_.exit ], [ true, %.critedge ], [ false, %_ZSt10__count_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops17_Iter_equals_iterIPKS2_EEENSt15iterator_traitsIT_E15difference_typeESB_SB_T0_.exit ], [ true, %bb.b ]
  ret i1 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16VerifyDFSNumbersERKS5_ENKUlPNS_15DomTreeNodeBaseIS4_EEE_clESB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #14 ; 8 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit.thread, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %.not.i3 = icmp eq ptr %i.b, null
  br i1 %.not.i3, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit.thread, label %bb.d

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit.thread: ; preds = %bb.a, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 7
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit.thread
  %i.k = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull @.str.26, i64 noundef 7) #14 ; 0 uses
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit

bb.c:                                             ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.26, i64 7, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  store ptr %i.m, ptr %i.e, align 8, !tbaa !159
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit

bb.d:                                             ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterC2EPNS_15DomTreeNodeBaseIS4_EE.exit
  tail call void @_ZNK6hermes10BasicBlock14printAsOperandERN4llvh11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.a, i1 noundef zeroext false) #14
  br label %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit

_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !156
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, 2
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull @.str.10, i64 noundef 2) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvh14DomTreeBuilderlsERNS_11raw_ostreamERKNS0_11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16BlockNamePrinterE.exit
  store i16 31520, ptr %i.q, align 1
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store ptr %i.x, ptr %i.p, align 8, !tbaa !159
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.e ], [ %i.a, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !85
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, i64 noundef %i.aa) #14 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !156
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !159 ; 2 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ak = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, ptr noundef nonnull @.str.24, i64 noundef 2) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i16 8236, ptr %i.af, align 1
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !159
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !159
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.g, %bb.h
  %.0.i.i5 = phi ptr [ %i.ak, %bb.g ], [ %i.ab, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !86
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i5, i64 noundef %i.ap) #14 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !159 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !156
  %.not.i7 = icmp ult ptr %i.as, %i.au
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  %i.av = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.aq, i8 noundef zeroext 125) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !159
  store i8 125, ptr %i.as, align 1, !tbaa !410
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16VerifyDFSNumbersERKS5_ENKUlPNS_15DomTreeNodeBaseIS4_EESB_E0_clESB_SB_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 35
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull @.str.39, i64 noundef 35) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

end_hunk_1
