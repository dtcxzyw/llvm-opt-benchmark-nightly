Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Context?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1949
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm3ubi7Context17getTargetFunctionERKNS0_7PointerE:bb.a
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = mul i64 %.0.i, -4658895280553007687      ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.t, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !152, !noalias !805
  %i.ad = and i32 %i.y, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !190

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.ag = phi i64 [ %i.am, %bb.f ], [ %i.z, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.al, %bb.f ], [ %i.y, %bb.e ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !129, !noalias !805
  %i.aj = icmp eq i64 %.0.i, %i.ai
  br i1 %i.aj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit, label %bb.f, !prof !191

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add nuw i32 %.017.i.i.i.i, 1
  %i.al = and i32 %i.ak, %i.t                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !152, !noalias !805
  %i.aq = and i32 %i.al, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !192

.loopexit.i.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %i.at = zext i32 %i.r to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.at
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.r to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit ], [ %i.at, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ah, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit ], [ %i.au, %.loopexit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  %i.aw = icmp eq ptr %.lcssa.sink.i.i, %i.av
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !807
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit, %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %.1 = phi ptr [ null, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %i.ay, %bb.g ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_8FunctionENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef ptr @_ZN4llvm3ubi7Context14getTargetBlockERKNS0_7PointerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3170) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 3 uses
  %i.d = icmp ult i32 %i.c, 65                    ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.neg.i.i = add nsw i32 %i.c, -64
  %i.e = load i64, ptr %i.a, align 8, !tbaa !165
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 false)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = add nsw i32 %.neg.i.i, %i.g
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #25
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = sub i32 %i.c, %.0.i.i
  %i.k = icmp ugt i32 %i.j, 64
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.m = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr %i.a, ptr %i.m
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !165 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !150, !noalias !816 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !151, !noalias !816 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3140
  %i.r = load i32, ptr %i.q, align 4, !tbaa !149, !noalias !816 ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %i.r, -1                         ; 2 uses
  %i.u = mul i64 %.0.i, -4658895280553007687      ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.t, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !152, !noalias !817
  %i.ad = and i32 %i.y, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !190

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %i.ag = phi i64 [ %i.am, %bb.f ], [ %i.z, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.al, %bb.f ], [ %i.y, %bb.e ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !129, !noalias !817
  %i.aj = icmp eq i64 %.0.i, %i.ai
  br i1 %i.aj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit, label %bb.f, !prof !191

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add nuw i32 %.017.i.i.i.i, 1
  %i.al = and i32 %i.ak, %i.t                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !152, !noalias !817
  %i.aq = and i32 %i.al, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !192

.loopexit.i.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %i.at = zext i32 %i.r to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.at
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.r to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit ], [ %i.at, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.ah, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit.loopexit ], [ %i.au, %.loopexit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  %i.aw = icmp eq ptr %.lcssa.sink.i.i, %i.av
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !819
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit, %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %.1 = phi ptr [ null, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %i.ay, %bb.g ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt4pairIPNS_10BasicBlockENS_18IntrusiveRefCntPtrINS_3ubi12MemoryObjectEEEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS9_EEEEmS9_SB_SE_E4findERKm.exit ]
  ret ptr %.1
}

declare { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext i8 @_ZNK4llvm3ubi7Context22getCurrentRoundingModeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3170) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.b = load i8, ptr %i.a, align 8, !tbaa !139
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @_ZNK4llvm3ubi7Context27getCurrentExceptionBehaviorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3170) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3169
  %i.b = load i8, ptr %i.a, align 1, !tbaa !140
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm3ubi7Context22setCurrentRoundingModeENS_12RoundingModeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3170) initializes((3168, 3169)) %0, i8 noundef signext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3168
  store i8 %1, ptr %i.a, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm3ubi7Context27setCurrentExceptionBehaviorENS_2fp17ExceptionBehaviorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3170) initializes((3169, 3170)) %0, i8 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3169
  store i8 %1, ptr %i.a, align 1, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm3ubi7Context14isDefaultFPEnvEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3170) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %1 = load i16, ptr %i.a, align 8, !tbaa !165
  %i.b = icmp eq i16 %1, 1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm3ubi7Context34getEffectiveNaNPropagationBehaviorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3170) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.b = load i8, ptr %i.a, align 4, !tbaa !128, !range !233, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.e = load i32, ptr %i.d, align 4
  %.0 = select i1 %i.c, i32 1, i32 %i.e
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3ubi7Context13getRandomBoolEv(ptr noundef nonnull align 8 dereferenceable(3170) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.b = load i8, ptr %i.a, align 4, !tbaa !128, !range !233, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.d)
  %i.f = trunc i64 %i.e to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm3ubi7Context15getRandomUInt64Ev(ptr noundef nonnull align 8 dereferenceable(3170) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.b = load i8, ptr %i.a, align 4, !tbaa !128, !range !233, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm3ubi12MemoryObject8isGlobalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !299
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm3ubi12MemoryObject16isStackAllocatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !299
  %i.c = icmp eq i32 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm3ubi12MemoryObject15isHeapAllocatedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !299
  %switch = icmp ugt i32 %i.b, 2
  ret i1 %switch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN4llvm8ConstantESt4pairIKS2_NS0_3ubi20MaterializedConstantEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301
  tail call void @_ZNSt8_Rb_treeIPN4llvm8ConstantESt4pairIKS2_NS0_3ubi20MaterializedConstantEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !300  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  tail call void @_ZN4llvm3ubi8AnyValue7destroyEv(ptr noundef nonnull align 8 dereferenceable(33) %i.e) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !820

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm3ubi7Context20ExposedProvenanceSetEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmN4llvm3ubi7Context20ExposedProvenanceSetEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit
  %.08 = phi ptr [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmN4llvm3ubi7Context20ExposedProvenanceSetEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit ], [ %1, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.08, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN4llvm3ubi7Context20ExposedProvenanceSetEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.08, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !300  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.08, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.08, i64 120
  %i.g = load i8, ptr %i.f, align 8, !tbaa !282, !range !233, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.08, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !283
  tail call void @free(ptr noundef %i.j) #21
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i:   ; preds = %bb.b, %.lr.ph
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !136  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_3ubi7Context17ExposedProvenanceELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.n, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm3ubi7Context17ExposedProvenanceD2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvm3ubi7Context17ExposedProvenanceD2Ev.exit.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.preheader.i.i.i.i.i ]
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !189  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3ubi7Context17ExposedProvenanceD2Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !201
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !201
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %_ZN4llvm3ubi7Context17ExposedProvenanceD2Ev.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !199  ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3ubi18WildcardProvenanceEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.u, align 4, !tbaa !290
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !290
  %.not.i.i.i.i.i.i6 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i6, label %bb.f, label %_ZN4llvm18IntrusiveRefCntPtrINS_3ubi18WildcardProvenanceEED2Ev.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !186
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.g, label %_ZN4llvm3ubi18WildcardProvenanceD2Ev.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !165 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN4llvm3ubi18WildcardProvenanceD2Ev.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #22
  br label %_ZN4llvm3ubi18WildcardProvenanceD2Ev.exit.i.i.i.i.i.i

_ZN4llvm3ubi18WildcardProvenanceD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.u, i64 noundef 32) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3ubi18WildcardProvenanceEED2Ev.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrINS_3ubi18WildcardProvenanceEED2Ev.exit.i.i: ; preds = %_ZN4llvm3ubi18WildcardProvenanceD2Ev.exit.i.i.i.i.i.i, %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !186
  %i.af = icmp ugt i32 %i.ae, 64
  br i1 %i.af, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3ubi18WildcardProvenanceEED2Ev.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !165 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.j
end_hunk_0
