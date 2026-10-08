Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMTargetParser?download=true
inline.NumInlined: 883
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4llvm3ARM13getDefaultCPUENS_9StringRefE:bb.a
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !41
  %i.aq = icmp eq i32 %i.ap, %i.r
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 116
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !42, !range !43, !noundef !44
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.critedge.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.3
  %.0.add.3 = add nuw nsw i64 %.0.idx21, 128      ; 2 uses
  %.not.3 = icmp eq i64 %.0.add.3, 3072
  br i1 %.not.3, label %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit.thread, label %.preheader

_ZN4llvm3ARM9parseArchENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i, %bb.f, %.critedge, %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %.critedge ], [ @.str.72, %bb.f ], [ null, %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit ], [ null, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %.critedge ], [ 7, %bb.f ], [ 0, %_ZN4llvm3ARM9parseArchENS_9StringRefE.exit ], [ 0, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread22.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZN4llvm3ARM10parseHWDivENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %.fr31 = freeze i64 %1
  switch i64 %.fr31, label %.loopexit [
    i64 9, label %_ZN4llvmeqENS_9StringRefES0_.exit.4
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit.3
    i64 7, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit.1
    i64 5, label %_ZN4llvmeqENS_9StringRefES0_.exit.2
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1635151465
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1684630625
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %.loopexit

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.1, %_ZN4llvmeqENS_9StringRefES0_.exit.2, %_ZN4llvmeqENS_9StringRefES0_.exit.3, %_ZN4llvmeqENS_9StringRefES0_.exit.4
  %.018.idx28.lcssa = phi i64 [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 24, %_ZN4llvmeqENS_9StringRefES0_.exit.1 ], [ 48, %_ZN4llvmeqENS_9StringRefES0_.exit.2 ], [ 72, %_ZN4llvmeqENS_9StringRefES0_.exit.3 ], [ 96, %_ZN4llvmeqENS_9StringRefES0_.exit.4 ]
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML10HWDivNamesE, i64 %.018.idx28.lcssa
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !131
  br label %.loopexit

_ZN4llvmeqENS_9StringRefES0_.exit.1:              ; preds = %bb.a
  %i.m = load i32, ptr %0, align 1
  %i.n = icmp ne i32 %i.m, 1701736302
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %.loopexit

_ZN4llvmeqENS_9StringRefES0_.exit.2:              ; preds = %bb.a
  %i.q = load i32, ptr %0, align 1
  %i.r = xor i32 %i.q, 1836410996
  %i.s = getelementptr i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = xor i32 %i.u, 98
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %.loopexit

_ZN4llvmeqENS_9StringRefES0_.exit.3:              ; preds = %bb.a
  %i.aa = load i16, ptr %0, align 1
  %i.ab = xor i16 %i.aa, 29281
  %i.ac = getelementptr i8, ptr %0, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i16
  %i.af = xor i16 %i.ae, 109
  %i.ag = or i16 %i.ab, %i.af
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %.loopexit

_ZN4llvmeqENS_9StringRefES0_.exit.4:              ; preds = %bb.a
  %i.ak = load i64, ptr %0, align 1
  %i.al = xor i64 %i.ak, 8241917594319546484
  %i.am = getelementptr i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = xor i64 %i.ao, 109
  %i.aq = or i64 %i.al, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %bcmp.i.i.i.i.fr.i = freeze i32 %i.as
  %.not.i.i.i = icmp eq i32 %bcmp.i.i.i.i.fr.i, 0
  %spec.select.i = select i1 %.not.i.i.i, ptr @.str.397, ptr %0 ; 2 uses
  %i.at = load i64, ptr %spec.select.i, align 1
  %i.au = xor i64 %i.at, 7887325170580157025
  %i.av = getelementptr i8, ptr %spec.select.i, i64 8
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.ax, 98
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.3, %_ZN4llvmeqENS_9StringRefES0_.exit.2, %_ZN4llvmeqENS_9StringRefES0_.exit.1, %_ZN4llvmeqENS_9StringRefES0_.exit.4, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %spec.select = phi i64 [ %i.l, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ 0, %bb.a ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.4 ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.1 ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.2 ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.3 ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4llvm3ARM12parseCPUArchENS_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  %.fr30 = freeze i64 %1                          ; 3 uses
  %i.a = icmp eq i64 %.fr30, 0
  br i1 %i.a, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.5
  %.012.idx27.us = phi i64 [ %.012.add.us.5, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.5 ], [ 0, %bb.a ] ; 8 uses
  %.012.ptr28.us = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.012.idx27.us
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.012.ptr28.us, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !32
  %.not.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0
  br i1 %.not.i.us, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us

_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us:    ; preds = %.split.us
  %.012.add.us = or disjoint i64 %.012.idx27.us, 32 ; 2 uses
  %.012.ptr28.us.1 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.012.add.us
  %.sroa.2.0..sroa_idx.us.1 = getelementptr inbounds nuw i8, ptr %.012.ptr28.us.1, i64 8
  %.sroa.2.0.copyload.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.us.1, align 8, !tbaa !32
  %.not.i.us.1 = icmp eq i64 %.sroa.2.0.copyload.us.1, 0
  br i1 %.not.i.us.1, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.1

_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.1:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us
  %.012.add.us.1 = add nuw nsw i64 %.012.idx27.us, 64 ; 2 uses
  %.012.ptr28.us.2 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.012.add.us.1
  %.sroa.2.0..sroa_idx.us.2 = getelementptr inbounds nuw i8, ptr %.012.ptr28.us.2, i64 8
  %.sroa.2.0.copyload.us.2 = load i64, ptr %.sroa.2.0..sroa_idx.us.2, align 8, !tbaa !32
  %.not.i.us.2 = icmp eq i64 %.sroa.2.0.copyload.us.2, 0
  br i1 %.not.i.us.2, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.2

_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.2:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.1
  %.012.add.us.2 = add nuw nsw i64 %.012.idx27.us, 96 ; 2 uses
  %.012.ptr28.us.3 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.012.add.us.2
  %.sroa.2.0..sroa_idx.us.3 = getelementptr inbounds nuw i8, ptr %.012.ptr28.us.3, i64 8
  %.sroa.2.0.copyload.us.3 = load i64, ptr %.sroa.2.0..sroa_idx.us.3, align 8, !tbaa !32
  %.not.i.us.3 = icmp eq i64 %.sroa.2.0.copyload.us.3, 0
  br i1 %.not.i.us.3, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.3

_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.3:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.2
  %.012.add.us.3 = add nuw nsw i64 %.012.idx27.us, 128 ; 2 uses
  %.012.ptr28.us.4 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.012.add.us.3
  %.sroa.2.0..sroa_idx.us.4 = getelementptr inbounds nuw i8, ptr %.012.ptr28.us.4, i64 8
  %.sroa.2.0.copyload.us.4 = load i64, ptr %.sroa.2.0..sroa_idx.us.4, align 8, !tbaa !32
  %.not.i.us.4 = icmp eq i64 %.sroa.2.0.copyload.us.4, 0
  br i1 %.not.i.us.4, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.4

_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.4:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.3
  %.012.add.us.4 = add nuw nsw i64 %.012.idx27.us, 160 ; 2 uses
  %.012.ptr28.us.5 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.012.add.us.4
  %.sroa.2.0..sroa_idx.us.5 = getelementptr inbounds nuw i8, ptr %.012.ptr28.us.5, i64 8
  %.sroa.2.0.copyload.us.5 = load i64, ptr %.sroa.2.0..sroa_idx.us.5, align 8, !tbaa !32
  %.not.i.us.5 = icmp eq i64 %.sroa.2.0.copyload.us.5, 0
  br i1 %.not.i.us.5, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.5

_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.5:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.4
  %.012.add.us.5 = add nuw nsw i64 %.012.idx27.us, 192 ; 2 uses
  %.not.us.5 = icmp eq i64 %.012.add.us.5, 3072
  br i1 %.not.us.5, label %.loopexit, label %.split.us

.split:                                           ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18
  %.012.idx27 = phi i64 [ %.012.add, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18 ], [ 0, %bb.a ] ; 3 uses
  %.012.ptr28 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.012.idx27 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.012.ptr28, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32
  %.not.i = icmp eq i64 %.fr30, %.sroa.2.0.copyload
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %.split
  %.sroa.0.0.copyload = load ptr, ptr %.012.ptr28, align 16, !tbaa !31
  %bcmp.i = tail call i32 @bcmp(ptr %0, ptr %.sroa.0.0.copyload, i64 %.fr30)
  %i.b = icmp eq i32 %bcmp.i, 0
  br i1 %i.b, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread18

_ZN4llvmeqENS_9StringRefES0_.exit.thread18:       ; preds = %.split, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.012.add = add nuw nsw i64 %.012.idx27, 32     ; 2 uses
  %.not = icmp eq i64 %.012.add, 3072
  br i1 %.not, label %.loopexit, label %.split

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %.split.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.2, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.3, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.4
  %i.c = phi i64 [ %.012.add.us.4, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.4 ], [ %.012.idx27.us, %.split.us ], [ %.012.add.us, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us ], [ %.012.add.us.1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.1 ], [ %.012.add.us.2, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.2 ], [ %.012.add.us.3, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.3 ], [ %.012.idx27, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread18, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.5, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.g = phi i32 [ %i.f, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18.us.5 ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread18 ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3ARM20fillValidCPUArchListERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %.0.idx8 = phi i64 [ 0, %bb.a ], [ %.0.add, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ] ; 2 uses
  %.0.ptr9 = getelementptr inbounds nuw i8, ptr @_ZN4llvm3ARML8CPUNamesE, i64 %.0.idx8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.ptr9, i64 16
  %i.d = load i32, ptr %i.c, align 16, !tbaa !41
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %.0.ptr9, align 16, !tbaa !31 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ptr9, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32 ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !132
  %.not.i = icmp ult i32 %i.e, %i.f
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %bb.d
  %i.g = zext i32 %i.e to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.i, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !46
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.0.add = add nuw nsw i64 %.0.idx8, 32          ; 2 uses
  %.not = icmp eq i64 %.0.add, 3072
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local { ptr, i64 } @_ZN4llvm3ARM23computeDefaultTargetABIERKNS_6TripleE(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #19 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp eq i32 %i.h, 15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @_ZN4llvm3ARM16parseArchProfileENS_9StringRefE(ptr %i.b, i64 %i.c)
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = icmp eq i32 %i.p, 27                     ; 2 uses
  %. = select i1 %i.q, i64 7, i64 8
  %.str.176..str.177 = select i1 %i.q, ptr @.str.176, ptr @.str.177
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 3 uses
  %i.t = icmp eq i32 %i.s, 15
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %switch.tableidx = add i32 %i.v, -5             ; 4 uses
  %i.w = icmp ult i32 %switch.tableidx, 46
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 35184372292623, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond31 = select i1 %i.w, i1 %switch.lobit, i1 false
  br i1 %or.cond31, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %switch.tableidx18 = add i32 %i.s, -3           ; 4 uses
  %i.x = icmp ult i32 %switch.tableidx18, 15
  %switch.maskindex22 = trunc i32 %switch.tableidx18 to i16
  %switch.shifted23 = lshr i16 17155, %switch.maskindex22
  %switch.lobit24 = trunc i16 %switch.shifted23 to i1
  %or.cond32 = select i1 %i.x, i1 %switch.lobit24, i1 false
  br i1 %or.cond32, label %switch.lookup21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %i.v, 50
  %i.z = icmp eq i32 %i.s, 41
  %i.aa = or i1 %i.z, %i.y                        ; 2 uses
  %spec.select = select i1 %i.aa, i64 11, i64 5
  %spec.select30 = select i1 %i.aa, ptr @.str.178, ptr @.str.175
  br label %bb.i

switch.lookup:                                    ; preds = %bb.f
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm3ARM23computeDefaultTargetABIERKNS_6TripleE, i64 %i.ab
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ac = zext nneg i32 %switch.tableidx to i64
  %switch.gep16 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE, i64 %i.ac
  %switch.load17 = load ptr, ptr %switch.gep16, align 8
  br label %bb.i

switch.lookup21:                                  ; preds = %bb.g
  %i.ad = zext nneg i32 %switch.tableidx18 to i64
  %switch.gep25 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm3ARM23computeDefaultTargetABIERKNS_6TripleE.2, i64 %i.ad
  %switch.load26 = load i8, ptr %switch.gep25, align 1
  %switch.ext27 = zext i8 %switch.load26 to i64
  %i.ae = zext nneg i32 %switch.tableidx18 to i64
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE.4, i64 %i.ae
  %switch.load29 = load ptr, ptr %switch.gep28, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup21, %switch.lookup, %bb.e, %bb.d, %bb.b, %bb.c
  %.sroa.10.0 = phi i64 [ %spec.select, %bb.h ], [ %., %bb.d ], [ 5, %bb.b ], [ 5, %bb.c ], [ %switch.ext, %switch.lookup ], [ 5, %bb.e ], [ %switch.ext27, %switch.lookup21 ]
  %.sroa.0.0 = phi ptr [ %spec.select30, %bb.h ], [ %.str.176..str.177, %bb.d ], [ @.str.175, %bb.b ], [ @.str.175, %bb.c ], [ %switch.load17, %switch.lookup ], [ @.str.175, %bb.e ], [ %switch.load29, %switch.lookup21 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN4llvm3ARM16computeTargetABIERKNS_6TripleENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #8 {
bb.a:
  switch i64 %2, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread [
    i64 0, label %bb.b
    i64 7, label %_ZN4llvmeqENS_9StringRefES0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #19 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %i.f = icmp eq i32 %i.e, 5
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp eq i32 %i.h, 15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef i32 @_ZN4llvm3ARM16parseArchProfileENS_9StringRefE(ptr %i.b, i64 %i.c)
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %_ZNK4llvm9StringRef11starts_withES0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = icmp eq i32 %i.p, 27
  br i1 %i.q, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60   ; 3 uses
  %i.t = icmp eq i32 %i.s, 15
  br i1 %i.t, label %_ZNK4llvm9StringRef11starts_withES0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
