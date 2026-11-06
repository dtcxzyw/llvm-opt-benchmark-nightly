Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourTileCacheBuilder?download=true
inline.NumInlined: 236
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z13dtMarkBoxAreaR16dtTileCacheLayerPKfffS2_S2_S2_h:bb.a
  %i.dp = load <2 x float>, ptr %6, align 4, !tbaa !79 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.dq = phi <2 x float> [ %i.cp, %bb.d ], [ %i.cp, %bb.e ], [ %i.dp, %bb.f ], [ %i.cp, %bb.c ]
  %i.dr = phi <2 x float> [ %i.cq, %bb.d ], [ %i.cq, %bb.e ], [ %i.dp, %bb.f ], [ %i.cq, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %.preheader.lr.ph, %bb.a
  ret i32 1073741824
}

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, 0) i32 @_Z21dtBuildTileCacheLayerP21dtTileCacheCompressorP22dtTileCacheLayerHeaderPKhS4_S4_PPhPi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i8, ptr %i.b, align 4, !tbaa !62
  %i.d = zext i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.f = load i8, ptr %i.e, align 1, !tbaa !63
  %i.g = zext i8 %i.f to i32
  %i.h = mul nuw nsw i32 %i.g, %i.d               ; 3 uses
  %i.i = mul nuw nsw i32 %i.h, 3                  ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.i) #15, !call_target !84 ; 2 uses
  %i.n = add nsw i32 %i.m, 56
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.o, i32 noundef 0) #15 ; 7 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.p, ptr noundef nonnull align 4 dereferenceable(56) %1, i64 56, i1 false)
  %i.q = zext nneg i32 %i.i to i64
  %i.r = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %i.q, i32 noundef 1) #15 ; 7 uses
  %.not46 = icmp eq ptr %i.r, null
  br i1 %.not46, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z6dtFreePv(ptr noundef nonnull %i.p) #15
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = zext nneg i32 %i.h to i64                ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %2, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %3, i64 %i.s, i1 false)
  %i.u = shl nuw nsw i32 %i.h, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %4, i64 %i.s, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.y = load ptr, ptr %0, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.r, i32 noundef %i.i, ptr noundef nonnull %i.x, i32 noundef %i.m, ptr noundef nonnull %i.a) #15, !call_target !99 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_Z6dtFreePv(ptr noundef nonnull %i.r) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.p, ptr %5, align 8, !tbaa !142
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !76
  %i.ae = add nsw i32 %i.ad, 56
  store i32 %i.ae, ptr %6, align 4, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi ptr [ %i.r, %bb.f ], [ %i.p, %bb.e ]
  %.0 = phi i32 [ 1073741824, %bb.f ], [ %i.ab, %bb.e ]
  call void @_Z6dtFreePv(ptr noundef nonnull %.sink) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.a
  %.2 = phi i32 [ -2147483644, %bb.a ], [ %.0, %bb.g ], [ -2147483644, %bb.c ]
  ret i32 %.2
}

declare noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef, i32 noundef) local_unnamed_addr #10

declare void @_Z6dtFreePv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @_Z20dtFreeTileCacheLayerP16dtTileCacheAllocP16dtTileCacheLayer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #15, !call_target !41
  ret void
}

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, 0) i32 @_Z26dtDecompressTileCacheLayerP16dtTileCacheAllocP21dtTileCacheCompressorPhiPP16dtTileCacheLayer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %4, null
  %.not57 = icmp eq ptr %2, null
  %or.cond = or i1 %.not57, %.not
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !144
  %i.b = load i32, ptr %2, align 4, !tbaa !145
  %.not58 = icmp eq i32 %i.b, 1146375250
  br i1 %.not58, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %.not59 = icmp eq i32 %i.d, 1
  br i1 %.not59, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load i8, ptr %i.e, align 4, !tbaa !62
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !63
  %i.j = zext i8 %i.i to i32
  %i.k = mul nuw nsw i32 %i.j, %i.g               ; 4 uses
  %i.l = shl nuw nsw i32 %i.k, 2                  ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 104
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.n) #15, !call_target !28 ; 11 uses
  %.not60 = icmp eq ptr %i.r, null
  br i1 %.not60, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i8 0, i64 %i.n, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.s, ptr noundef nonnull align 4 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = add nsw i32 %3, -56
  %i.w = load ptr, ptr %1, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.u, i32 noundef %i.v, ptr noundef nonnull %i.t, i32 noundef %i.l, ptr noundef nonnull %i.a) #15, !call_target !100 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.r) #15, !call_target !41
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.r, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.t, ptr %i.ae, align 8, !tbaa !67
  %i.af = zext nneg i32 %i.k to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !65
  %i.ai = shl nuw nsw i32 %i.k, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !75
  %i.am = mul nuw nsw i32 %i.k, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !64
  store ptr %i.r, ptr %4, align 8, !tbaa !144
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.z, %bb.f ], [ 1073741824, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.a
  %.3 = phi i32 [ -2147483644, %bb.d ], [ -2147483640, %bb.a ], [ -2147483646, %bb.c ], [ -2147483647, %bb.b ], [ %.0, %bb.h ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_Z27dtTileCacheHeaderSwapEndianPhi(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 5 uses
  %2 = trunc i32 %i.a to i8
  %3 = lshr i32 %i.a, 24
  %4 = trunc nuw nsw i32 %3 to i8
  %5 = lshr i32 %i.a, 8
  %6 = trunc i32 %5 to i8
  %7 = lshr i32 %i.a, 16
  %8 = trunc i32 %7 to i8
  switch i32 %i.a, label %.thread [
    i32 1146375250, label %bb.b
    i32 1380734020, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %.not19 = icmp eq i32 %i.c, 1
  br i1 %.not19, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not21 = icmp eq i32 %i.e, 16777216
  br i1 %.not21, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in.in = phi i32 [ 16777216, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.f = trunc i32 %.in.in to i8
  %.in = lshr i32 %.in.in, 24
  %i.g = trunc nuw nsw i32 %.in to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %4, ptr %0, align 4, !tbaa !66
  store i8 %2, ptr %9, align 1, !tbaa !66
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %8, ptr %10, align 1, !tbaa !66
  store i8 %6, ptr %11, align 2, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.g, ptr %i.h, align 4, !tbaa !66
  store i8 %i.f, ptr %i.i, align 1, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 0, ptr %i.j, align 1, !tbaa !66
  store i8 0, ptr %i.k, align 2, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load <16 x i8>, ptr %i.l, align 4, !tbaa !66
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.n, ptr %i.l, align 4, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load <16 x i8>, ptr %i.o, align 4, !tbaa !66
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.q, ptr %i.o, align 4, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load <8 x i8>, ptr %i.r, align 4, !tbaa !66
  %i.t = shufflevector <8 x i8> %i.s, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6>
  store <8 x i8> %i.t, ptr %i.r, align 4, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN16dtTileCacheAlloc5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr noundef ptr @_ZN16dtTileCacheAlloc5allocEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_Z7dtAllocm11dtAllocHint(i64 noundef %1, i32 noundef 1) #15
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN16dtTileCacheAlloc4freeEPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_Z6dtFreePv(ptr noundef %1) #15
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZL8diagonaliiiPKhPKt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [2 x i8], ptr %4, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2, !tbaa !77
  %i.d = and i16 %i.c, 32767
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %i.f ; 2 uses
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %4, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !77
  %i.k = and i16 %i.j, 32767
  %i.l = zext nneg i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.m ; 3 uses
  %i.o = add nsw i32 %0, 1                        ; 2 uses
  %i.p = icmp slt i32 %i.o, %2
  %i.q = select i1 %i.p, i32 %i.o, i32 0
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %4, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !77
  %i.u = and i16 %i.t, 32767
  %i.v = zext nneg i16 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.w ; 2 uses
  %i.y = icmp sgt i32 %0, 0
  %.v.i.i = select i1 %i.y, i32 %0, i32 %2
  %i.z = sext i32 %.v.i.i to i64
  %i.aa = getelementptr [2 x i8], ptr %4, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !77
  %i.ad = and i16 %i.ac, 32767
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.g, align 1, !tbaa !66   ; 12 uses
  %i.ai = zext i8 %i.ah to i32                    ; 14 uses
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !66
  %i.ak = zext i8 %i.aj to i32                    ; 4 uses
  %i.al = sub nsw i32 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !66
  %i.ao = zext i8 %i.an to i32                    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !66
  %i.ar = zext i8 %i.aq to i32                    ; 3 uses
  %i.as = sub nsw i32 %i.ao, %i.ar
  %i.at = mul nsw i32 %i.as, %i.al
  %i.au = load i8, ptr %i.x, align 1, !tbaa !66
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = sub nsw i32 %i.av, %i.ak
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66  ; 11 uses
  %i.az = zext i8 %i.ay to i32                    ; 14 uses
  %.neg.i.i.i = sub nsw i32 %i.ar, %i.az          ; 2 uses
  %.neg8.i.i.i = mul nsw i32 %.neg.i.i.i, %i.aw
  %i.ba = add nsw i32 %.neg8.i.i.i, %i.at
  %i.bb = icmp slt i32 %i.ba, 1
  %i.bc = load i8, ptr %i.n, align 1, !tbaa !66   ; 12 uses
  %i.bd = zext i8 %i.bc to i32                    ; 8 uses
  %i.be = sub nsw i32 %i.bd, %i.ai                ; 4 uses
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bf = mul nsw i32 %i.be, %.neg.i.i.i
  %i.bg = sub nsw i32 %i.ak, %i.ai
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !66  ; 2 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %.neg.i.i29.i = sub nsw i32 %i.az, %i.bj
  %.neg8.i.i30.i = mul nsw i32 %.neg.i.i29.i, %i.bg
  %i.bk = add nsw i32 %.neg8.i.i30.i, %i.bf
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.split, label %_ZL10diagonalieiiiPKhPKt.exit

.split:                                           ; preds = %bb.b
  %i.bm = sub nsw i32 %i.ai, %i.bd
  %i.bn = sub nsw i32 %i.ao, %i.bj
  %i.bo = mul nsw i32 %i.bn, %i.bm
  %i.bp = sub nsw i32 %i.av, %i.bd
  %.neg.i.i31.i = sub nsw i32 %i.bj, %i.az
  %.neg8.i.i32.i = mul nsw i32 %.neg.i.i31.i, %i.bp
  %i.bq = add nsw i32 %.neg8.i.i32.i, %i.bo
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %_ZL6inConeiiiPKhPKt.exit.thread, label %_ZL10diagonalieiiiPKhPKt.exit

bb.c:                                             ; preds = %bb.a
  %i.bs = sub nsw i32 %i.ao, %i.az
  %i.bt = mul nsw i32 %i.be, %i.bs
  %i.bu = sub nsw i32 %i.av, %i.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !66  ; 3 uses
  %i.bx = zext i8 %i.bw to i32                    ; 3 uses
  %.neg.i.i33.i = sub nsw i32 %i.az, %i.bx
  %.neg8.i.i34.i = mul nsw i32 %.neg.i.i33.i, %i.bu
  %i.by = add nsw i32 %.neg8.i.i34.i, %i.bt
  %i.bz = icmp slt i32 %i.by, 1
  br i1 %i.bz, label %_ZL6inConeiiiPKhPKt.exit, label %_ZL6inConeiiiPKhPKt.exit.thread

_ZL6inConeiiiPKhPKt.exit:                         ; preds = %bb.c
  %i.ca = sub nsw i32 %i.ai, %i.bd
  %i.cb = sub nsw i32 %i.ar, %i.bx
  %i.cc = mul nsw i32 %i.cb, %i.ca
  %i.cd = sub nsw i32 %i.ak, %i.bd
  %.neg.i.i35.i = sub nsw i32 %i.bx, %i.az
  %.neg8.i.i36.i = mul nsw i32 %.neg.i.i35.i, %i.cd
  %i.ce = add nsw i32 %.neg8.i.i36.i, %i.cc
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %_ZL6inConeiiiPKhPKt.exit.thread, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL6inConeiiiPKhPKt.exit.thread:                  ; preds = %bb.c, %.split, %_ZL6inConeiiiPKhPKt.exit
  %.val54.pre.i = phi i8 [ %i.bw, %bb.c ], [ %i.bi, %.split ], [ %i.bw, %_ZL6inConeiiiPKhPKt.exit ] ; 11 uses
  %.not88.i = icmp slt i32 %2, 1
  br i1 %.not88.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL6inConeiiiPKhPKt.exit.thread
  %i.cg = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ch = zext i32 %1 to i64
  %i.ci = zext i32 %0 to i64
  %.neg.i.i.i.i = sub nsw i32 %i.ai, %i.bd        ; 5 uses
  %.not.i.i.i = icmp eq i8 %i.ah, %i.bc           ; 2 uses
  %i.cj = zext i8 %.val54.pre.i to i32            ; 3 uses
  %.neg.i.i.i.i.i = sub nsw i32 %i.az, %i.cj      ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread82.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread82.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next.i, %i.cg
  %i.cl = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.cm = select i1 %i.ck, i32 %i.cl, i32 0       ; 3 uses
  %i.cn = icmp eq i64 %indvars.iv.i, %i.ci
  %i.co = icmp eq i32 %i.cm, %0
  %or.cond.i = or i1 %i.cn, %i.co
  %i.cp = icmp eq i64 %indvars.iv.i, %i.ch
  %or.cond49.i = or i1 %i.cp, %or.cond.i
  %i.cq = icmp eq i32 %i.cm, %1
  %or.cond50.i = or i1 %i.cq, %or.cond49.i
  br i1 %or.cond50.i, label %.thread82.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !77
  %i.ct = and i16 %i.cs, 32767
  %i.cu = zext nneg i16 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 %i.cv ; 4 uses
  %i.cx = zext nneg i32 %i.cm to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cx
end_hunk_0
begin_hunk_1_@_ZL8diagonaliiiPKhPKt:bb.a

_ZL7betweenPKhS0_S0_.exit.i.i:                    ; preds = %bb.l
  %.not30.i.i.i = icmp uge i8 %i.ay, %.val56.i
  %i.fd = icmp uge i8 %.val56.i, %.val54.pre.i
  %spec.select10.i.i.i = and i1 %.not30.i.i.i, %i.fd
  br i1 %spec.select10.i.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28

_ZL7betweenPKhS0_S0_.exit.thread13.i.i:           ; preds = %_ZL13intersectPropPKhS0_S0_S0_.exit.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  %i.fe = getelementptr i8, ptr %i.dd, i64 2
  %.val39.i.i = load i8, ptr %i.fe, align 1, !tbaa !66 ; 4 uses
  %i.ff = zext i8 %.val39.i.i to i32              ; 4 uses
  %i.fg = sub nsw i32 %i.ff, %i.az
  %.neg3.i.i52.i.i = mul nsw i32 %i.fg, %.neg.i.i.i.i
  %i.fh = zext i8 %i.dn to i32                    ; 4 uses
  %i.fi = sub nsw i32 %i.fh, %i.ai
  %.neg8.i.i.i54.i.i = mul nsw i32 %.neg.i.i.i.i.i, %i.fi
  %i.fj = icmp eq i32 %.neg8.i.i.i54.i.i, %.neg3.i.i52.i.i
  br i1 %i.fj, label %bb.m, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28:  ; preds = %_ZL7betweenPKhS0_S0_.exit.i.i
  %i.fk = getelementptr i8, ptr %i.dd, i64 2
  %.val39.i.i29 = load i8, ptr %i.fk, align 1, !tbaa !66 ; 3 uses
  %i.fl = zext i8 %.val39.i.i29 to i32            ; 3 uses
  %i.fm = sub nsw i32 %i.fl, %i.az
  %.neg3.i.i52.i.i30 = mul nsw i32 %i.fm, %.neg.i.i.i.i
  %i.fn = zext i8 %i.dn to i32                    ; 3 uses
  %i.fo = sub nsw i32 %i.fn, %i.ai
  %.neg8.i.i.i54.i.i31 = mul nsw i32 %.neg.i.i.i.i.i, %i.fo
  %i.fp = icmp eq i32 %.neg8.i.i.i54.i.i31, %.neg3.i.i52.i.i30
  br i1 %i.fp, label %.thread32, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread:    ; preds = %.split.i.i
  %i.fq = getelementptr i8, ptr %i.dd, i64 2
  %.val39.i.i21 = load i8, ptr %i.fq, align 1, !tbaa !66 ; 3 uses
  %i.fr = zext i8 %.val39.i.i21 to i32            ; 3 uses
  %i.fs = sub nsw i32 %i.fr, %i.az
  %.neg3.i.i52.i.i22 = mul nsw i32 %i.fs, %.neg.i.i.i.i
  %i.ft = zext i8 %i.dn to i32                    ; 3 uses
  %i.fu = sub nsw i32 %i.ft, %i.ai
  %.neg8.i.i.i54.i.i23 = mul nsw i32 %.neg.i.i.i.i.i, %i.fu
  %i.fv = icmp eq i32 %.neg8.i.i.i54.i.i23, %.neg3.i.i52.i.i22
  br i1 %i.fv, label %.thread, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

bb.m:                                             ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i
  br i1 %.not.i.i.i, label %.thread32, label %.thread

.thread:                                          ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread, %bb.m
  %.val39.i.i2527 = phi i8 [ %.val39.i.i, %bb.m ], [ %.val39.i.i21, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ]
  %i.fw = phi i32 [ %i.ff, %bb.m ], [ %i.fr, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ]
  %i.fx = phi i32 [ %i.fh, %bb.m ], [ %i.ft, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ]
  %.not31.i57.i.i = icmp ugt i8 %i.ah, %i.dn
  %.not32.i58.i.i = icmp ugt i8 %i.dn, %i.bc
  %or.cond.i59.i.i = or i1 %.not31.i57.i.i, %.not32.i58.i.i
  br i1 %or.cond.i59.i.i, label %.split18.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

.split18.i.i:                                     ; preds = %.thread
  %.not33.i60.i.i = icmp uge i8 %i.ah, %i.dn
  %i.fy = icmp uge i8 %i.dn, %i.bc
  %spec.select.i61.i.i = and i1 %.not33.i60.i.i, %i.fy
  br i1 %spec.select.i61.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

.thread32:                                        ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28, %bb.m
  %.val39.i.i2534 = phi i8 [ %.val39.i.i, %bb.m ], [ %.val39.i.i29, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ] ; 5 uses
  %i.fz = phi i32 [ %i.ff, %bb.m ], [ %i.fl, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %i.ga = phi i32 [ %i.fh, %bb.m ], [ %i.fn, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %.not28.i62.i.i = icmp ugt i8 %i.ay, %.val39.i.i2534
  %.not29.i63.i.i = icmp ugt i8 %.val39.i.i2534, %.val54.pre.i
  %or.cond9.i64.i.i = or i1 %.not28.i62.i.i, %.not29.i63.i.i
  br i1 %or.cond9.i64.i.i, label %_ZL7betweenPKhS0_S0_.exit67.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL7betweenPKhS0_S0_.exit67.i.i:                  ; preds = %.thread32
  %.not30.i65.i.i = icmp uge i8 %i.ay, %.val39.i.i2534
  %i.gb = icmp uge i8 %.val39.i.i2534, %.val54.pre.i
  %spec.select10.i66.i.i = and i1 %.not30.i65.i.i, %i.gb
  br i1 %spec.select10.i66.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

_ZL7betweenPKhS0_S0_.exit67.thread16.i.i:         ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread, %_ZL7betweenPKhS0_S0_.exit67.i.i, %.split18.i.i, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i
  %i.gc = phi i32 [ %i.ft, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ], [ %i.ga, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ %i.fx, %.split18.i.i ], [ %i.fh, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i ], [ %i.fn, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %i.gd = phi i32 [ %i.fr, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ], [ %i.fz, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ %i.fw, %.split18.i.i ], [ %i.ff, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i ], [ %i.fl, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %.val39.i.i24 = phi i8 [ %.val39.i.i21, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ], [ %.val39.i.i2534, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ %.val39.i.i2527, %.split18.i.i ], [ %.val39.i.i, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i ], [ %.val39.i.i29, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ] ; 4 uses
  %.neg.i.i68.i.i = sub nsw i32 %i.dz, %i.gc      ; 2 uses
  %i.ge = sub nsw i32 %i.az, %i.dx
  %.neg3.i.i69.i.i = mul nsw i32 %i.ge, %.neg.i.i68.i.i
  %i.gf = sub nsw i32 %i.ai, %i.dz
  %.neg.i.i.i70.i.i = sub nsw i32 %i.dx, %i.gd    ; 2 uses
  %.neg8.i.i.i71.i.i = mul nsw i32 %.neg.i.i.i70.i.i, %i.gf
  %i.gg = icmp eq i32 %.neg8.i.i.i71.i.i, %.neg3.i.i69.i.i
  br i1 %i.gg, label %bb.n, label %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i

bb.n:                                             ; preds = %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i
  %.not.i73.i.i = icmp eq i8 %i.de, %i.dn
  br i1 %.not.i73.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not31.i74.i.i = icmp ugt i8 %i.de, %i.ah
  %.not32.i75.i.i = icmp ugt i8 %i.ah, %i.dn
  %or.cond.i76.i.i = or i1 %.not31.i74.i.i, %.not32.i75.i.i
  br i1 %or.cond.i76.i.i, label %.split22.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

.split22.i.i:                                     ; preds = %bb.o
  %.not33.i77.i.i = icmp uge i8 %i.de, %i.ah
  %i.gh = icmp uge i8 %i.ah, %i.dn
  %spec.select.i78.i.i = and i1 %.not33.i77.i.i, %i.gh
  br i1 %spec.select.i78.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i

bb.p:                                             ; preds = %bb.n
  %.not28.i79.i.i = icmp ugt i8 %.val56.i, %i.ay
  %.not29.i80.i.i = icmp ugt i8 %i.ay, %.val39.i.i24
  %or.cond9.i81.i.i = or i1 %.not28.i79.i.i, %.not29.i80.i.i
  br i1 %or.cond9.i81.i.i, label %_ZL7betweenPKhS0_S0_.exit84.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL7betweenPKhS0_S0_.exit84.i.i:                  ; preds = %bb.p
  %.not30.i82.i.i = icmp uge i8 %.val56.i, %i.ay
  %i.gi = icmp uge i8 %i.ay, %.val39.i.i24
  %spec.select10.i83.i.i = and i1 %.not30.i82.i.i, %i.gi
  br i1 %spec.select10.i83.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i

_ZL7betweenPKhS0_S0_.exit84.thread20.i.i:         ; preds = %_ZL7betweenPKhS0_S0_.exit84.i.i, %.split22.i.i, %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i
  %i.gj = sub nsw i32 %i.cj, %i.dx
  %.neg3.i.i86.i.i = mul nsw i32 %i.gj, %.neg.i.i68.i.i
  %i.gk = sub nsw i32 %i.bd, %i.dz
  %.neg8.i.i.i88.i.i = mul nsw i32 %.neg.i.i.i70.i.i, %i.gk
  %i.gl = icmp eq i32 %.neg8.i.i.i88.i.i, %.neg3.i.i86.i.i
  br i1 %i.gl, label %bb.q, label %.thread82.i

bb.q:                                             ; preds = %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i
  %.not.i90.i.i = icmp eq i8 %i.de, %i.dn
  br i1 %.not.i90.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not31.i91.i.i = icmp ugt i8 %i.de, %i.bc
  %.not32.i92.i.i = icmp ugt i8 %i.bc, %i.dn
  %or.cond.i93.i.i = or i1 %.not31.i91.i.i, %.not32.i92.i.i
  br i1 %or.cond.i93.i.i, label %.split.i, label %_ZL10diagonalieiiiPKhPKt.exit

.split.i:                                         ; preds = %bb.r
  %.not33.i94.i.i = icmp uge i8 %i.de, %i.bc
  %i.gm = icmp uge i8 %i.bc, %i.dn
  %spec.select.i95.i.i = and i1 %.not33.i94.i.i, %i.gm
  %cond.fr6068.i = freeze i1 %spec.select.i95.i.i
  br i1 %cond.fr6068.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %.thread82.i

bb.s:                                             ; preds = %bb.q
  %.not28.i96.i.i = icmp ugt i8 %.val56.i, %.val54.pre.i
  %.not29.i97.i.i = icmp ugt i8 %.val54.pre.i, %.val39.i.i24
  %or.cond9.i98.i.i = or i1 %.not28.i96.i.i, %.not29.i97.i.i
  br i1 %or.cond9.i98.i.i, label %_ZL9intersectPKhS0_S0_S0_.exit.i, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL9intersectPKhS0_S0_S0_.exit.i:                 ; preds = %bb.s
  %.not30.i99.i.i = icmp uge i8 %.val56.i, %.val54.pre.i
  %i.gn = icmp uge i8 %.val54.pre.i, %.val39.i.i24
  %spec.select10.i100.i.i = and i1 %.not30.i99.i.i, %i.gn
  %cond.fr60.i = freeze i1 %spec.select10.i100.i.i
  br i1 %cond.fr60.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %.thread82.i

.thread82.i:                                      ; preds = %_ZL9intersectPKhS0_S0_S0_.exit.i, %.split.i, %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i, %_ZL6vequalPKhS0_.exit59.i, %_ZL6vequalPKhS0_.exit58.i, %_ZL6vequalPKhS0_.exit57.i, %_ZL6vequalPKhS0_.exit.i, %bb.d
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cg
  br i1 %exitcond.not.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %bb.d

_ZL10diagonalieiiiPKhPKt.exit:                    ; preds = %.thread82.i, %_ZL9intersectPKhS0_S0_S0_.exit.i, %bb.s, %.split.i, %bb.r, %_ZL7betweenPKhS0_S0_.exit84.i.i, %bb.p, %.split22.i.i, %bb.o, %_ZL7betweenPKhS0_S0_.exit67.i.i, %.thread32, %.split18.i.i, %.thread, %_ZL7betweenPKhS0_S0_.exit.i.i, %bb.l, %.split.i.i, %bb.k, %_ZL13intersectPropPKhS0_S0_S0_.exit.i.i, %bb.b, %_ZL6inConeiiiPKhPKt.exit.thread, %.split, %_ZL6inConeiiiPKhPKt.exit
  %i.go = phi i1 [ false, %_ZL6inConeiiiPKhPKt.exit ], [ false, %.split ], [ false, %bb.b ], [ true, %_ZL6inConeiiiPKhPKt.exit.thread ], [ false, %_ZL7betweenPKhS0_S0_.exit.i.i ], [ false, %_ZL13intersectPropPKhS0_S0_S0_.exit.i.i ], [ false, %.split22.i.i ], [ false, %_ZL7betweenPKhS0_S0_.exit84.i.i ], [ false, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ false, %bb.s ], [ false, %.split.i.i ], [ false, %bb.l ], [ false, %.split18.i.i ], [ false, %.thread32 ], [ false, %bb.r ], [ false, %bb.k ], [ false, %.thread ], [ false, %bb.o ], [ false, %bb.p ], [ false, %.split.i ], [ false, %_ZL9intersectPKhS0_S0_S0_.exit.i ], [ true, %.thread82.i ]
  ret i1 %i.go
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtTileCacheAlloc", file: !19, line: 79, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !42, vtableHolder: !0)
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtTileCacheCompressor", file: !19, line: 96, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !101, vtableHolder: !5)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"vtable pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !DIFile(filename: "DetourTileCache/Include/DetourTileCacheBuilder.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "f3fbf7322de4d5643648d135af2c65f3")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!22 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 18, baseType: !23)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!26 = !{!20, !21, !25}
!27 = !DISubroutineType(types: !26)
!28 = !DISubprogram(name: "alloc", linkageName: "_ZN16dtTileCacheAlloc5allocEm", scope: !0, file: !19, line: 85, type: !27, scopeLine: 85, containingType: !0, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !{!29}
!31 = !DISubroutineType(types: !30)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !31, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$dtTileCacheAlloc", scope: !19, file: !19, baseType: !33, size: 64, flags: DIFlagArtificial)
!35 = !{null, !21}
!36 = !DISubroutineType(types: !35)
!37 = !DISubprogram(name: "~dtTileCacheAlloc", linkageName: "_ZN16dtTileCacheAllocD4Ev", scope: !0, file: !19, line: 81, type: !36, scopeLine: 81, containingType: !0, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!38 = !DISubprogram(name: "reset", linkageName: "_ZN16dtTileCacheAlloc5resetEv", scope: !0, file: !19, line: 83, type: !36, scopeLine: 83, containingType: !0, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!39 = !{null, !21, !20}
!40 = !DISubroutineType(types: !39)
!41 = !DISubprogram(name: "free", linkageName: "_ZN16dtTileCacheAlloc4freeEPv", scope: !0, file: !19, line: 90, type: !40, scopeLine: 90, containingType: !0, virtualIndex: 4, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!42 = !{!34, !37, !38, !28, !41}
!43 = !{!"any pointer", !13, i64 0}
!44 = !{!"p1 _ZTS18dtTileCacheContour", !43, i64 0}
!45 = !{!"_ZTS21dtTileCacheContourSet", !14, i64 0, !44, i64 8}
!46 = !{!45, !14, i64 0}
!47 = !{!45, !44, i64 8}
!48 = !{!"p1 omnipotent char", !43, i64 0}
!49 = !{!"_ZTS18dtTileCacheContour", !14, i64 0, !48, i64 8, !13, i64 16, !13, i64 17}
!50 = !{!49, !48, i64 8}
!51 = !{!"p1 short", !43, i64 0}
!52 = !{!"_ZTS19dtTileCachePolyMesh", !14, i64 0, !14, i64 4, !14, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !48, i64 40}
!53 = !{!52, !51, i64 16}
!54 = !{!52, !51, i64 24}
!55 = !{!52, !51, i64 32}
!56 = !{!52, !48, i64 40}
!57 = !{!"p1 _ZTS22dtTileCacheLayerHeader", !43, i64 0}
!58 = !{!"_ZTS16dtTileCacheLayer", !57, i64 0, !13, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40}
!59 = !{!58, !57, i64 0}
!60 = !{!"short", !13, i64 0}
!61 = !{!"_ZTS22dtTileCacheLayerHeader", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !13, i64 20, !13, i64 32, !60, i64 44, !60, i64 46, !13, i64 48, !13, i64 49, !13, i64 50, !13, i64 51, !13, i64 52, !13, i64 53}
!62 = !{!61, !13, i64 48}
!63 = !{!61, !13, i64 49}
!64 = !{!58, !48, i64 40}
!65 = !{!58, !48, i64 24}
!66 = !{!13, !13, i64 0}
!67 = !{!58, !48, i64 16}
!68 = !{!"llvm.loop.peeled.count", i32 1}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!58, !13, i64 8}
!73 = !{!49, !14, i64 0}
!74 = !{!49, !13, i64 17}
!75 = !{!58, !48, i64 32}
!76 = !{!14, !14, i64 0}
!77 = !{!60, !60, i64 0}
!78 = !{!"float", !13, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!82 = !{!29, !80, !81}
!83 = !DISubroutineType(types: !82)
!84 = !DISubprogram(name: "maxCompressedSize", linkageName: "_ZN21dtTileCacheCompressor17maxCompressedSizeEi", scope: !5, file: !19, line: 100, type: !83, scopeLine: 100, containingType: !5, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$dtTileCacheCompressor", scope: !19, file: !19, baseType: !33, size: 64, flags: DIFlagArtificial)
!86 = !{null, !80}
!87 = !DISubroutineType(types: !86)
!88 = !DISubprogram(name: "~dtTileCacheCompressor", linkageName: "_ZN21dtTileCacheCompressorD4Ev", scope: !5, file: !19, line: 98, type: !87, scopeLine: 98, containingType: !5, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!89 = !DIFile(filename: "Detour/Include/DetourStatus.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "cea993215ed2cba071c3caa8d47c63ca")
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "dtStatus", file: !89, line: 22, baseType: !90)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!97 = !{!91, !80, !94, !81, !95, !81, !96}
!98 = !DISubroutineType(types: !97)
!99 = !DISubprogram(name: "compress", linkageName: "_ZN21dtTileCacheCompressor8compressEPKhiPhiPi", scope: !5, file: !19, line: 101, type: !98, scopeLine: 101, containingType: !5, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!100 = !DISubprogram(name: "decompress", linkageName: "_ZN21dtTileCacheCompressor10decompressEPKhiPhiPi", scope: !5, file: !19, line: 103, type: !98, scopeLine: 103, containingType: !5, virtualIndex: 4, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!101 = !{!85, !88, !84, !99, !100}
!102 = distinct !{null}
!103 = distinct !{!103, !68}
!104 = distinct !{null}
!105 = distinct !{!105, !69}
!106 = distinct !{!106, !69}
!107 = distinct !{!107, !69}
!108 = distinct !{!108, !70, !71}
!109 = distinct !{!109, !70, !71}
!110 = distinct !{!110, !71, !70}
!111 = distinct !{!111, !69}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = !{!"_ZTS16dtLayerSweepSpan", !60, i64 0, !13, i64 2, !13, i64 3}
!115 = !{!114, !13, i64 3}
!116 = !{!114, !60, i64 0}
!117 = !{!114, !13, i64 2}
!118 = !{!"_ZTS21dtLayerMonotoneRegion", !14, i64 0, !13, i64 4, !13, i64 20, !13, i64 21, !13, i64 22}
!119 = !{!118, !13, i64 21}
!120 = !{!118, !14, i64 0}
!121 = !{!118, !13, i64 22}
!122 = !{!118, !13, i64 20}
!123 = !{!"branch_weights", i32 8, i32 8}
!124 = distinct !{!124, !68}
!125 = distinct !{!125, !69}
!126 = distinct !{!126, !68}
!127 = !{!49, !13, i64 16}
!128 = distinct !{!128, !70, !71}
!129 = distinct !{!129, !70, !71}
!130 = distinct !{!130, !71, !70}
!131 = distinct !{!131, !71, !70}
!132 = distinct !{!132, !70, !71}
!133 = distinct !{!133, !71, !70}
!134 = distinct !{!134, !71, !70}
!135 = distinct !{!135, !71, !70}
!136 = !{!52, !14, i64 0}
!137 = !{!52, !14, i64 4}
!138 = !{!52, !14, i64 8}
!139 = !{!"branch_weights", i32 4, i32 12}
!140 = distinct !{null}
!141 = distinct !{null}
!142 = !{!48, !48, i64 0}
!143 = !{!"p1 _ZTS16dtTileCacheLayer", !43, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!61, !14, i64 0}
!146 = !{!61, !14, i64 4}
end_hunk_1
