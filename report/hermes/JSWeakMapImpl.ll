Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSWeakMapImpl?download=true
inline.NumInlined: 494
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm17JSWeakMapImplBase24debugFreeSlotsAndGetSizeERNS0_7RuntimeEPS1_:bb.a

.lr.ph.i:                                         ; preds = %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i
  %i.o = phi i32 [ %i.v, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i ], [ %i.c, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E5beginEv.exit.i ]
  %.sroa.01.07.i = phi ptr [ %.sroa.01.2.i, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i ], [ %.pn13.i.i.i, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E5beginEv.exit.i ] ; 4 uses
  %i.p = load ptr, ptr %.sroa.01.07.i, align 8, !tbaa !22 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %.not5.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store atomic i8 1, ptr %i.p monotonic, align 4
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.01.07.i, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !10
  %i.s = load <2 x i32>, ptr %i.b, align 8, !tbaa !10
  %i.t = add <2 x i32> %i.s, <i32 -1, i32 1>      ; 2 uses
  store <2 x i32> %i.t, ptr %i.b, align 8, !tbaa !10
  %i.u = extractelement <2 x i32> %i.t, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.v = phi i32 [ %i.o, %.lr.ph.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 16 ; 3 uses
  %.not17.i3.i.i.i = icmp eq ptr %i.w, %.pn11.i.i.i
  br i1 %.not17.i3.i.i.i, label %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.e, %.critedge2.i5.i.i.i
  %.sroa.01.1.i = phi ptr [ %i.z, %.critedge2.i5.i.i.i ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.01.1.i, align 8, !tbaa !22
  %i.y = icmp ult ptr %i.x, inttoptr (i64 2 to ptr)
  br i1 %i.y, label %.critedge2.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i

.critedge2.i5.i.i.i:                              ; preds = %.lr.ph.i4.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.1.i, i64 16 ; 3 uses
  %.not.i6.i.i.i = icmp eq ptr %i.z, %.pn11.i.i.i
  br i1 %.not.i6.i.i.i, label %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i, !llvm.loop !0

_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i: ; preds = %.critedge2.i5.i.i.i, %.lr.ph.i4.i.i.i, %bb.e
  %.sroa.01.2.i = phi ptr [ %i.w, %bb.e ], [ %i.z, %.critedge2.i5.i.i.i ], [ %.sroa.01.1.i, %.lr.ph.i4.i.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !19
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ac
  %.not.i = icmp eq ptr %.sroa.01.2.i, %i.ad
  br i1 %.not.i, label %_ZN6hermes2vm17JSWeakMapImplBase20clearFreeableEntriesEv.exit, label %.lr.ph.i, !llvm.loop !2

_ZN6hermes2vm17JSWeakMapImplBase20clearFreeableEntriesEv.exit: ; preds = %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E5beginEv.exit.i
  %i.ae = phi i32 [ %i.c, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E5beginEv.exit.i ], [ %i.v, %_ZN4llvh6detail12DenseSetImplIN6hermes2vm6detail10WeakRefKeyENS_8DenseMapIS5_NS0_13DenseSetEmptyENS4_11WeakRefInfoENS0_12DenseSetPairIS5_EEEES8_E8IteratorppEv.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = uitofp i32 %i.ae to double
  %i.ah = fmul nnan double %i.ag, 2.000000e+00
  %i.ai = fadd nnan double %i.ah, 1.000000e+00
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !37
  %i.al = load double, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.am = fsub double 1.000000e+00, %i.al
  %i.an = fmul double %i.al, %i.ai
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.am, double %i.an)
  store double %i.ao, ptr %i.aj, align 8, !tbaa !37
  ret i32 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm17JSWeakMapImplBase8getMapIDERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #0 align 2 !guid !102 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.b = tail call noundef i32 @_ZN6hermes2vm6GCBase11getObjectIDEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(717) %1, ptr noundef nonnull %0) #10
  %i.c = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN6hermes2vm6GCBase9IDTracker17getExtraNativeIDsEj(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i32 noundef %i.b) #10 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !104
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6hermes2vm6GCBase9IDTracker12nextNativeIDEv(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #10
  %i.g = load i32, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %.not.i8 = icmp ult i32 %i.g, %i.i
  br i1 %.not.i8, label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE9push_backERKj.exit, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef 4) #10
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !104
  br label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE9push_backERKj.exit

_ZN4llvh23SmallVectorTemplateBaseIjLb1EE9push_backERKj.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre.i, %bb.c ], [ %i.g, %bb.b ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 %i.f, ptr %i.n, align 1
  %i.o = load i32, ptr %i.d, align 8, !tbaa !104
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE9push_backERKj.exit, %bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  ret i32 %i.r
}

declare noundef i32 @_ZN6hermes2vm6GCBase11getObjectIDEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(717), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZN6hermes2vm6GCBase9IDTracker17getExtraNativeIDsEj(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6hermes2vm6GCBase9IDTracker12nextNativeIDEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18JSWeakMapBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 !guid !107 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE51EE21WeakMapOrSetBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !10
  store i8 1, ptr %i.a, align 4, !tbaa !29
  br label %_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE51EE21WeakMapOrSetBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE51EE21WeakMapOrSetBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE51EE2vtE, ptr %i.e, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm18JSWeakSetBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 !guid !108 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE52EE21WeakMapOrSetBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !10
  store i8 1, ptr %i.a, align 4, !tbaa !29
  br label %_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE52EE21WeakMapOrSetBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit

_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE52EE21WeakMapOrSetBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE52EE2vtE, ptr %i.e, align 8, !tbaa !59
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare noundef i64 @_ZN6hermes2vm7Runtime23gcStableHashHermesValueENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes2vm6GCBase21allocWeakMapEntrySlotEPNS0_8JSObjectENS0_11HermesValueEPNS0_17JSWeakMapImplBaseE(ptr noundef nonnull align 8 dereferenceable(717), ptr noundef, i64, ptr noundef) local_unnamed_addr #1

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112), i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E11try_emplaceIJRS7_EEESt4pairINS_16DenseMapIteratorIS5_S7_S8_SA_Lb0EEEbERKS5_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.182") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !guid !109 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 11 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %i.h = add i32 %i.d, -1                         ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !22
  %.fr71.i.i = freeze ptr %i.i                    ; 5 uses
  %.02964.i.i = and i32 %i.g, %i.h                ; 3 uses
  %i.j = zext i32 %.02964.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.j ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 3 uses
  %i.m = icmp eq ptr %.fr71.i.i, %i.l
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = icmp ult ptr %.fr71.i.i, inttoptr (i64 2 to ptr)
  %i.o = getelementptr inbounds nuw i8, ptr %.fr71.i.i, i64 8
  br i1 %i.n, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i, !prof !34

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.thread.us.i.i
  %i.p = phi ptr [ %i.w, %.thread.us.i.i ], [ %i.l, %.lr.ph.i.i ]
  %i.q = phi ptr [ %i.v, %.thread.us.i.i ], [ %i.k, %.lr.ph.i.i ] ; 2 uses
  %.02967.us.i.i = phi i32 [ %.029.us.i.i, %.thread.us.i.i ], [ %.02964.i.i, %.lr.ph.i.i ]
  %.066.us.i.i = phi i32 [ %i.s, %.thread.us.i.i ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.03465.us.i.i = phi ptr [ %spec.select.us.i.i, %.thread.us.i.i ], [ null, %.lr.ph.i.i ] ; 3 uses
  %magicptr.us.i.i = ptrtoint ptr %i.p to i64
  switch i64 %magicptr.us.i.i, label %4 [
    i64 0, label %.split.us.i.i
    i64 1, label %.thread.us.i.i
  ]

4:                                                ; preds = %.lr.ph.split.us.i.i
  br label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %4, %.lr.ph.split.us.i.i
  %.0.i.i45.us.i.i = phi i1 [ false, %4 ], [ true, %.lr.ph.split.us.i.i ]
  %i.r = icmp eq ptr %.03465.us.i.i, null
  %or.cond.not.us.i.i = select i1 %.0.i.i45.us.i.i, i1 %i.r, i1 false
  %spec.select.us.i.i = select i1 %or.cond.not.us.i.i, ptr %i.q, ptr %.03465.us.i.i
  %i.s = add i32 %.066.us.i.i, 1
  %i.t = add i32 %.066.us.i.i, %.02967.us.i.i
  %.029.us.i.i = and i32 %i.t, %i.h               ; 2 uses
  %i.u = zext i32 %.029.us.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  %i.x = icmp eq ptr %.fr71.i.i, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.split.us.i.i, !llvm.loop !3

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.thread.i.i.a
  %i.y = phi ptr [ %i.al, %.thread.i.i.a ], [ %i.l, %.lr.ph.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.ak, %.thread.i.i.a ], [ %i.k, %.lr.ph.i.i ] ; 3 uses
  %.02967.i.i = phi i32 [ %.029.i.i, %.thread.i.i.a ], [ %.02964.i.i, %.lr.ph.i.i ]
  %.066.i.i = phi i32 [ %i.ah, %.thread.i.i.a ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %.03465.i.i = phi ptr [ %spec.select.i.i, %.thread.i.i.a ], [ null, %.lr.ph.i.i ] ; 3 uses
  %i.aa = icmp ult ptr %i.y, inttoptr (i64 2 to ptr)
  br i1 %i.aa, label %bb.d, label %bb.c, !prof !34

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !39  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i, !prof !34

_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %.loopexit, label %.thread.i.i, !prof !35

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.i.i
  %magicptr.i.i = ptrtoint ptr %i.y to i64
  switch i64 %magicptr.i.i, label %.thread.i.i [
    i64 0, label %.split.us.i.i
    i64 1, label %.thread.i.i.a
  ]

.split.us.i.i:                                    ; preds = %bb.d, %.lr.ph.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.03465.us.i.i, %.lr.ph.split.us.i.i ], [ %.03465.i.i, %bb.d ] ; 2 uses
  %.us-phi69.i.i = phi ptr [ %i.q, %.lr.ph.split.us.i.i ], [ %i.z, %bb.d ]
  %.not.i.i = icmp eq ptr %.us-phi.i.i, null
  %i.af = select i1 %.not.i.i, ptr %.us-phi69.i.i, ptr %.us-phi.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

.thread.i.i:                                      ; preds = %bb.d, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i
  br label %.thread.i.i.a

.thread.i.i.a:                                    ; preds = %.thread.i.i, %bb.d
  %.0.i.i45.i.i = phi i1 [ false, %.thread.i.i ], [ true, %bb.d ]
  %i.ag = icmp eq ptr %.03465.i.i, null
  %or.cond.not.i.i = select i1 %.0.i.i45.i.i, i1 %i.ag, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.z, ptr %.03465.i.i
  %i.ah = add i32 %.066.i.i, 1
  %i.ai = add i32 %.066.i.i, %.02967.i.i
  %.029.i.i = and i32 %i.ai, %i.h                 ; 2 uses
  %i.aj = zext i32 %.029.i.i to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22 ; 2 uses
  %i.am = icmp eq ptr %.fr71.i.i, %i.al
  br i1 %i.am, label %.loopexit, label %.lr.ph.split.i.i, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.split.us.i.i, %bb.a
  %.sink.i.i = phi ptr [ %i.af, %.split.us.i.i ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !17 ; 3 uses
  %i.ap = shl i32 %i.ao, 2
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.as = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !61
  %.neg.i.i = xor i32 %i.ao, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.av = sub i32 %.neg12.i.i, %i.au
  %i.aw = lshr i32 %i.d, 3
  %.not9.i.i = icmp ugt i32 %i.av, %i.aw
  br i1 %.not9.i.i, label %bb.g, label %.sink.split.i.i, !prof !43

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.as, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS3_11WeakRefInfoENS5_12DenseSetPairIS4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.ax = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.an, align 8, !tbaa !17
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.ay = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 3 uses
  %i.az = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ao, %bb.f ]
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.an, align 8, !tbaa !17
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !22
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !61
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !61
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !62
  %i.bg = load ptr, ptr %1, align 8, !tbaa !18
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.thread.i.i.a, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i, %.thread.us.i.i, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit
  %.sink51 = phi i32 [ %i.bh, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %.thread.us.i.i ], [ %i.d, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i ], [ %i.d, %.thread.i.i.a ]
  %.sink49 = phi ptr [ %i.bg, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %.thread.us.i.i ], [ %i.b, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i ], [ %i.b, %.thread.i.i.a ]
  %.sink48 = phi ptr [ %i.ay, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit ], [ %i.k, %bb.b ], [ %i.v, %.thread.us.i.i ], [ %i.z, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i ], [ %i.ak, %.thread.i.i.a ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E16InsertIntoBucketIRKS5_JRS7_EEEPSA_SH_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %.thread.us.i.i ], [ 0, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i ], [ 0, %.thread.i.i.a ]
  %i.bi = zext i32 %.sink51 to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.sink49, i64 %i.bi
  store ptr %.sink48, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bk, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !113 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %i.g = add i32 %i.c, -1                         ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !22
  %.fr71.i = freeze ptr %i.h                      ; 5 uses
  %.02964.i = and i32 %i.f, %i.g                  ; 3 uses
  %i.i = zext i32 %.02964.i to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.i ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 3 uses
  %i.l = icmp eq ptr %.fr71.i, %i.k
  br i1 %i.l, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPKSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = icmp ult ptr %.fr71.i, inttoptr (i64 2 to ptr)
  %i.n = getelementptr inbounds nuw i8, ptr %.fr71.i, i64 8
  br i1 %i.m, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !34

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.thread.us.i
  %i.o = phi ptr [ %i.v, %.thread.us.i ], [ %i.k, %.lr.ph.i ]
  %i.p = phi ptr [ %i.u, %.thread.us.i ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %.02967.us.i = phi i32 [ %.029.us.i, %.thread.us.i ], [ %.02964.i, %.lr.ph.i ]
  %.066.us.i = phi i32 [ %i.r, %.thread.us.i ], [ 1, %.lr.ph.i ] ; 2 uses
  %.03465.us.i = phi ptr [ %spec.select.us.i, %.thread.us.i ], [ null, %.lr.ph.i ] ; 3 uses
  %magicptr.us.i = ptrtoint ptr %i.o to i64
  switch i64 %magicptr.us.i, label %3 [
    i64 0, label %.split.us.i
    i64 1, label %.thread.us.i
  ]

3:                                                ; preds = %.lr.ph.split.us.i
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %3, %.lr.ph.split.us.i
  %.0.i.i45.us.i = phi i1 [ false, %3 ], [ true, %.lr.ph.split.us.i ]
  %i.q = icmp eq ptr %.03465.us.i, null
  %or.cond.not.us.i = select i1 %.0.i.i45.us.i, i1 %i.q, i1 false
  %spec.select.us.i = select i1 %or.cond.not.us.i, ptr %i.p, ptr %.03465.us.i
  %i.r = add i32 %.066.us.i, 1
  %i.s = add i32 %.066.us.i, %.02967.us.i
  %.029.us.i = and i32 %i.s, %i.g                 ; 2 uses
  %i.t = zext i32 %.029.us.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.w = icmp eq ptr %.fr71.i, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPKSA_.exit, label %.lr.ph.split.us.i, !llvm.loop !3

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.thread.i.a
  %i.x = phi ptr [ %i.ak, %.thread.i.a ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %i.y = phi ptr [ %i.aj, %.thread.i.a ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %.02967.i = phi i32 [ %.029.i, %.thread.i.a ], [ %.02964.i, %.lr.ph.i ]
  %.066.i = phi i32 [ %i.ag, %.thread.i.a ], [ 1, %.lr.ph.i ] ; 2 uses
  %.03465.i = phi ptr [ %spec.select.i, %.thread.i.a ], [ null, %.lr.ph.i ] ; 3 uses
  %i.z = icmp ult ptr %i.x, inttoptr (i64 2 to ptr)
  br i1 %i.z, label %bb.d, label %bb.c, !prof !34

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !39  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i, !prof !34

_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPKSA_.exit, label %.thread.i, !prof !35

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.i
  %magicptr.i = ptrtoint ptr %i.x to i64
  switch i64 %magicptr.i, label %.thread.i [
    i64 0, label %.split.us.i
    i64 1, label %.thread.i.a
  ]

.split.us.i:                                      ; preds = %bb.d, %.lr.ph.split.us.i
  %.us-phi.i = phi ptr [ %.03465.us.i, %.lr.ph.split.us.i ], [ %.03465.i, %bb.d ] ; 2 uses
  %.us-phi69.i = phi ptr [ %i.p, %.lr.ph.split.us.i ], [ %i.y, %bb.d ]
  %.not.i = icmp eq ptr %.us-phi.i, null
  %i.ae = select i1 %.not.i, ptr %.us-phi69.i, ptr %.us-phi.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPKSA_.exit

.thread.i:                                        ; preds = %bb.d, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i
  br label %.thread.i.a

.thread.i.a:                                      ; preds = %.thread.i, %bb.d
  %.0.i.i45.i = phi i1 [ false, %.thread.i ], [ true, %bb.d ]
  %i.af = icmp eq ptr %.03465.i, null
  %or.cond.not.i = select i1 %.0.i.i45.i, i1 %i.af, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.y, ptr %.03465.i
  %i.ag = add i32 %.066.i, 1
  %i.ah = add i32 %.066.i, %.02967.i
  %.029.i = and i32 %i.ah, %i.g                   ; 2 uses
  %i.ai = zext i32 %.029.i to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ai ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %i.al = icmp eq ptr %.fr71.i, %i.ak
  br i1 %i.al, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPKSA_.exit, label %.lr.ph.split.i, !llvm.loop !3

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPKSA_.exit: ; preds = %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i, %.thread.i.a, %.thread.us.i, %bb.a, %bb.b, %.split.us.i
  %.sink.i = phi ptr [ %i.ae, %.split.us.i ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.u, %.thread.us.i ], [ %i.y, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i ], [ %i.aj, %.thread.i.a ]
  %.2.i = phi i1 [ false, %.split.us.i ], [ false, %bb.a ], [ true, %bb.b ], [ true, %.thread.us.i ], [ true, %.thread.i.a ], [ true, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !60
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS3_11WeakRefInfoENS5_12DenseSetPairIS4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !118 {
_ZN4llvh8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS3_11WeakRefInfoENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !19
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #11 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !18
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS3_11WeakRefInfoENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !61
  %i.w = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter26 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter28 = phi i64 [ %prol.iter28.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr null, ptr %.07.i.prol, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.prol, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter28.next = add i64 %prol.iter28, 1     ; 2 uses
  %prol.iter28.cmp.not = icmp eq i64 %prol.iter28.next, %xtraiter26
  br i1 %prol.iter28.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !114

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  store ptr null, ptr %.07.i, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr null, ptr %i.ae, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.1, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr null, ptr %i.af, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.2, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr null, ptr %i.ag, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.3, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr null, ptr %i.ah, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.07.i, i64 72
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.4, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr null, ptr %i.ai, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.07.i, i64 88
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.5, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr null, ptr %i.aj, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.07.i, i64 104
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.6, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr null, ptr %i.ak, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.07.i, i64 120
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.7, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !115

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS3_11WeakRefInfoENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !61
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr null, ptr %.07.i.i.prol, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !116

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  store ptr null, ptr %.07.i.i, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr null, ptr %i.az, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.2, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr null, ptr %i.ba, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 56
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.3, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr null, ptr %i.bb, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 72
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.4, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr null, ptr %i.bc, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 88
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.5, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr null, ptr %i.bd, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 104
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.6, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr null, ptr %i.be, align 8, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 120
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.7, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !115

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not36.i = icmp eq i32 %i.b, 0
  br i1 %.not36.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit.i, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.thread.i
  %.037.i = phi ptr [ %i.ck, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.thread.i ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit.i ] ; 4 uses
  %i.bg = load ptr, ptr %.037.i, align 8, !tbaa !22
  %.fr71.i.i.i = freeze ptr %i.bg                 ; 4 uses
  %i.bh = icmp ult ptr %.fr71.i.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.bh, label %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  %i.bi = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = add i32 %i.bj, -1                       ; 2 uses
  %.02964.i.i.i = and i32 %i.bm, %i.bn            ; 2 uses
  %i.bo = zext i32 %.02964.i.i.i to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bo ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22 ; 2 uses
  %i.br = icmp eq ptr %.fr71.i.i.i, %i.bq
  br i1 %i.br, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %.fr71.i.i.i, i64 8
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.thread.i.i.i.a, %.lr.ph.i.i.i
  %i.bt = phi ptr [ %i.cg, %.thread.i.i.i.a ], [ %i.bq, %.lr.ph.i.i.i ] ; 3 uses
  %i.bu = phi ptr [ %i.cf, %.thread.i.i.i.a ], [ %i.bp, %.lr.ph.i.i.i ] ; 3 uses
  %.02967.i.i.i = phi i32 [ %.029.i.i.i, %.thread.i.i.i.a ], [ %.02964.i.i.i, %.lr.ph.i.i.i ]
  %.066.i.i.i = phi i32 [ %i.cc, %.thread.i.i.i.a ], [ 1, %.lr.ph.i.i.i ] ; 2 uses
  %.03465.i.i.i = phi ptr [ %spec.select.i.i.i, %.thread.i.i.i.a ], [ null, %.lr.ph.i.i.i ] ; 4 uses
  %i.bv = icmp ult ptr %i.bt, inttoptr (i64 2 to ptr)
  br i1 %i.bv, label %bb.e, label %bb.d, !prof !34

bb.d:                                             ; preds = %.lr.ph.split.i.i.i
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !39 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i.i, !prof !34

_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i.i: ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !39
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, label %.thread.i.i.i, !prof !35

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i.i
  %magicptr.i.i.i = ptrtoint ptr %i.bt to i64
  switch i64 %magicptr.i.i.i, label %.thread.i.i.i [
    i64 0, label %.split.us.i.i.loopexit30.i
    i64 1, label %.thread.i.i.i.a
  ]

.split.us.i.i.loopexit30.i:                       ; preds = %bb.e
  %.not.i.i21.i = icmp eq ptr %.03465.i.i.i, null
  %i.ca = select i1 %.not.i.i21.i, ptr %i.bu, ptr %.03465.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i

.thread.i.i.i:                                    ; preds = %bb.e, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i.i
  br label %.thread.i.i.i.a

.thread.i.i.i.a:                                  ; preds = %.thread.i.i.i, %bb.e
  %.0.i.i45.i.i.i = phi i1 [ false, %.thread.i.i.i ], [ true, %bb.e ]
  %i.cb = icmp eq ptr %.03465.i.i.i, null
  %or.cond.not.i.i.i = select i1 %.0.i.i45.i.i.i, i1 %i.cb, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bu, ptr %.03465.i.i.i
  %i.cc = add i32 %.066.i.i.i, 1
  %i.cd = add i32 %.066.i.i.i, %.02967.i.i.i
  %.029.i.i.i = and i32 %i.cd, %i.bn              ; 2 uses
  %i.ce = zext i32 %.029.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.ce ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !22 ; 2 uses
  %i.ch = icmp eq ptr %.fr71.i.i.i, %i.cg
  br i1 %i.ch, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, label %.lr.ph.split.i.i.i, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i: ; preds = %.thread.i.i.i.a, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i.i, %.split.us.i.i.loopexit30.i, %bb.c
  %.sink.i.i.i = phi ptr [ %i.ca, %.split.us.i.i.loopexit30.i ], [ %i.bp, %bb.c ], [ %i.cf, %.thread.i.i.i.a ], [ %i.bu, %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sink.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.037.i, i64 12, i1 false), !tbaa.struct !62
  %i.ci = load i32, ptr %i.ao, align 8, !tbaa !17
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ao, align 8, !tbaa !17
  br label %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.thread.i

_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.thread.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit.i, %.lr.ph.i6
  %i.ck = getelementptr inbounds nuw i8, ptr %.037.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ck, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6, !llvm.loop !117

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %_ZN6hermes2vm6detail11WeakRefInfo7isEqualERKNS1_10WeakRefKeyES5_.exit.thread.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm6detail10WeakRefKeyENS_6detail13DenseSetEmptyENS4_11WeakRefInfoENS6_12DenseSetPairIS5_EEEES5_S7_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_13JSWeakMapImplILNS0_8CellKindE51EEELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENSA_INS0_11HiddenClassEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !120 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %.not.i.not.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %.not.i4.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !72
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_13JSWeakMapImplILNS0_8CellKindE51EEELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENSA_INS0_11HiddenClassEEEEEEPT_jDpOT3_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !76   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #13 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.h, ptr %i.aa, align 8, !tbaa !75
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #14
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !76
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !73
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_13JSWeakMapImplILNS0_8CellKindE51EEELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENSA_INS0_11HiddenClassEEEEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_13JSWeakMapImplILNS0_8CellKindE51EEELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENSA_INS0_11HiddenClassEEEEEEPT_jDpOT3_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  %.sroa.01.0.copyload.i.i = load ptr, ptr %3, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8
  tail call void @_ZN6hermes2vm13JSWeakMapImplILNS0_8CellKindE51EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i) #10
  %i.ah = and i32 %1, 16777215
  %i.ai = or disjoint i32 %i.ah, 855638016
  store i32 %i.ai, ptr %i.h, align 4, !tbaa !77
  ret ptr %i.h
}

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_13JSWeakMapImplILNS0_8CellKindE52EEELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENSA_INS0_11HiddenClassEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !121 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %.not.i.not.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i, label %bb.b, label %bb.c, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %0, i32 noundef %1) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %.not.i4.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.k, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !72
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_13JSWeakMapImplILNS0_8CellKindE52EEELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENSA_INS0_11HiddenClassEEEEEEPT_jDpOT3_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !76   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #13 ; 4 uses
end_hunk_0
