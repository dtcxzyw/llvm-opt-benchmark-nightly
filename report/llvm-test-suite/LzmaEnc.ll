inline.NumInlined: 105
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 77
begin_hunk_0_@LzmaEncProps_Normalize:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %spec.store.select, 6
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = shl nsw i32 %spec.store.select, 1
  %i.h = add nsw i32 %i.g, 14
  %i.i = shl nuw nsw i32 1, %i.h
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %spec.store.select, 6
  %i.k = select i1 %i.j, i32 33554432, i32 67108864
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  store i32 %i.l, ptr %i.c, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 3, ptr %i.m, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.p, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.s, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = icmp sgt i32 %spec.store.select, 4
  %i.z = zext i1 %i.y to i32                      ; 2 uses
  store i32 %i.z, ptr %i.v, align 4, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = phi i32 [ %i.z, %bb.m ], [ %i.w, %bb.l ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp slt i32 %spec.store.select, 7
  %i.af = select i1 %i.ae, i32 32, i32 64         ; 2 uses
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = phi i32 [ %i.af, %bb.o ], [ %i.ac, %bb.n ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !19 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp ne i32 %i.aa, 0
  %i.al = zext i1 %i.ak to i32                    ; 2 uses
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = phi i32 [ %i.al, %bb.q ], [ %i.ai, %bb.p ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !20
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 4, ptr %i.an, align 4, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = lshr i32 %i.ag, 1
  %i.au = add nuw nsw i32 %i.at, 16
  %.not = icmp eq i32 %i.am, 0
  %i.av = zext i1 %.not to i32
  %i.aw = lshr i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.aq, align 4, !tbaa !10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not33 = icmp eq i32 %i.am, 0
  %.not34 = icmp eq i32 %i.aa, 0
  %i.ba = select i1 %.not33, i1 true, i1 %.not34
  %i.bb = select i1 %i.ba, i32 1, i32 2
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 1, 0) i32 @LzmaEncProps_GetDictSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %i.a = icmp slt i32 %.sroa.0.0.copyload, 0
  %spec.store.select.i = select i1 %i.a, i32 5, i32 %.sroa.0.0.copyload ; 3 uses
  %i.b = icmp eq i32 %.sroa.5.0.copyload, 0
  br i1 %i.b, label %bb.b, label %LzmaEncProps_Normalize.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %spec.store.select.i, 6
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = shl nsw i32 %spec.store.select.i, 1
  %i.e = add nsw i32 %i.d, 14
  %i.f = shl nuw nsw i32 1, %i.e
  br label %LzmaEncProps_Normalize.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %spec.store.select.i, 6
  %i.h = select i1 %i.g, i32 33554432, i32 67108864
  br label %LzmaEncProps_Normalize.exit

LzmaEncProps_Normalize.exit:                      ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  ret i32 %.sroa.5.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @LzmaEnc_FastPosInit(ptr nofree noundef writeonly captures(none) initializes((0, 256)) %0) local_unnamed_addr #4 {
vector.ph:
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %0, align 1, !tbaa !21
  %scevgep28 = getelementptr i8, ptr %0, i64 4
  store i16 1028, ptr %scevgep28, align 1
  %scevgep27 = getelementptr i8, ptr %0, i64 6
  store i16 1285, ptr %scevgep27, align 1
  %scevgep26 = getelementptr i8, ptr %0, i64 8
  store i32 101058054, ptr %scevgep26, align 1
  %scevgep25 = getelementptr i8, ptr %0, i64 12
  store i32 117901063, ptr %scevgep25, align 1
  %scevgep24 = getelementptr i8, ptr %0, i64 16
  store i64 578721382704613384, ptr %scevgep24, align 1
  %scevgep23 = getelementptr i8, ptr %0, i64 24
  store i64 651061555542690057, ptr %scevgep23, align 1
  %scevgep22 = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %scevgep22, i8 10, i64 16, i1 false), !tbaa !21
  %scevgep21 = getelementptr i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %scevgep21, i8 11, i64 16, i1 false), !tbaa !21
  %scevgep20 = getelementptr i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %scevgep20, i8 12, i64 32, i1 false), !tbaa !21
  %scevgep19 = getelementptr i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %scevgep19, i8 13, i64 32, i1 false), !tbaa !21
  %scevgep18 = getelementptr i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %scevgep18, i8 14, i64 64, i1 false), !tbaa !21
  %scevgep = getelementptr i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %scevgep, i8 15, i64 64, i1 false), !tbaa !21
  %i.a = getelementptr i8, ptr %0, i64 256
  %i.b = getelementptr i8, ptr %0, i64 272
  store <16 x i8> splat (i8 16), ptr %i.a, align 1, !tbaa !21
  store <16 x i8> splat (i8 16), ptr %i.b, align 1, !tbaa !21
  %i.c = getelementptr i8, ptr %0, i64 288
  %i.d = getelementptr i8, ptr %0, i64 304
  store <16 x i8> splat (i8 16), ptr %i.c, align 1, !tbaa !21
  store <16 x i8> splat (i8 16), ptr %i.d, align 1, !tbaa !21
  %i.e = getelementptr i8, ptr %0, i64 320
  %i.f = getelementptr i8, ptr %0, i64 336
  store <16 x i8> splat (i8 16), ptr %i.e, align 1, !tbaa !21
  store <16 x i8> splat (i8 16), ptr %i.f, align 1, !tbaa !21
  %i.g = getelementptr i8, ptr %0, i64 352
  %i.h = getelementptr i8, ptr %0, i64 368
  store <16 x i8> splat (i8 16), ptr %i.g, align 1, !tbaa !21
  store <16 x i8> splat (i8 16), ptr %i.h, align 1, !tbaa !21
  %i.i = getelementptr i8, ptr %0, i64 384
  %i.j = getelementptr i8, ptr %0, i64 400
  store <16 x i8> splat (i8 17), ptr %i.i, align 1, !tbaa !21
  store <16 x i8> splat (i8 17), ptr %i.j, align 1, !tbaa !21
  %i.k = getelementptr i8, ptr %0, i64 416
  %i.l = getelementptr i8, ptr %0, i64 432
  store <16 x i8> splat (i8 17), ptr %i.k, align 1, !tbaa !21
  store <16 x i8> splat (i8 17), ptr %i.l, align 1, !tbaa !21
  %i.m = getelementptr i8, ptr %0, i64 448
  %i.n = getelementptr i8, ptr %0, i64 464
  store <16 x i8> splat (i8 17), ptr %i.m, align 1, !tbaa !21
  store <16 x i8> splat (i8 17), ptr %i.n, align 1, !tbaa !21
  %i.o = getelementptr i8, ptr %0, i64 480
  %i.p = getelementptr i8, ptr %0, i64 496
  store <16 x i8> splat (i8 17), ptr %i.o, align 1, !tbaa !21
  store <16 x i8> splat (i8 17), ptr %i.p, align 1, !tbaa !21
  %i.q = getelementptr i8, ptr %0, i64 512
  %i.r = getelementptr i8, ptr %0, i64 528
  store <16 x i8> splat (i8 18), ptr %i.q, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.r, align 1, !tbaa !21
  %i.s = getelementptr i8, ptr %0, i64 544
  %i.t = getelementptr i8, ptr %0, i64 560
  store <16 x i8> splat (i8 18), ptr %i.s, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.t, align 1, !tbaa !21
  %i.u = getelementptr i8, ptr %0, i64 576
  %i.v = getelementptr i8, ptr %0, i64 592
  store <16 x i8> splat (i8 18), ptr %i.u, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.v, align 1, !tbaa !21
  %i.w = getelementptr i8, ptr %0, i64 608
  %i.x = getelementptr i8, ptr %0, i64 624
  store <16 x i8> splat (i8 18), ptr %i.w, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.x, align 1, !tbaa !21
  %i.y = getelementptr i8, ptr %0, i64 640
  %i.z = getelementptr i8, ptr %0, i64 656
  store <16 x i8> splat (i8 18), ptr %i.y, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.z, align 1, !tbaa !21
  %i.aa = getelementptr i8, ptr %0, i64 672
  %i.ab = getelementptr i8, ptr %0, i64 688
  store <16 x i8> splat (i8 18), ptr %i.aa, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr i8, ptr %0, i64 704
  %i.ad = getelementptr i8, ptr %0, i64 720
  store <16 x i8> splat (i8 18), ptr %i.ac, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.ad, align 1, !tbaa !21
  %i.ae = getelementptr i8, ptr %0, i64 736
  %i.af = getelementptr i8, ptr %0, i64 752
  store <16 x i8> splat (i8 18), ptr %i.ae, align 1, !tbaa !21
  store <16 x i8> splat (i8 18), ptr %i.af, align 1, !tbaa !21
  %i.ag = getelementptr i8, ptr %0, i64 768
  %i.ah = getelementptr i8, ptr %0, i64 784
  store <16 x i8> splat (i8 19), ptr %i.ag, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.ah, align 1, !tbaa !21
  %i.ai = getelementptr i8, ptr %0, i64 800
  %i.aj = getelementptr i8, ptr %0, i64 816
  store <16 x i8> splat (i8 19), ptr %i.ai, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr i8, ptr %0, i64 832
  %i.al = getelementptr i8, ptr %0, i64 848
  store <16 x i8> splat (i8 19), ptr %i.ak, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.al, align 1, !tbaa !21
  %i.am = getelementptr i8, ptr %0, i64 864
  %i.an = getelementptr i8, ptr %0, i64 880
  store <16 x i8> splat (i8 19), ptr %i.am, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.an, align 1, !tbaa !21
  %i.ao = getelementptr i8, ptr %0, i64 896
  %i.ap = getelementptr i8, ptr %0, i64 912
  store <16 x i8> splat (i8 19), ptr %i.ao, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.ap, align 1, !tbaa !21
  %i.aq = getelementptr i8, ptr %0, i64 928
  %i.ar = getelementptr i8, ptr %0, i64 944
  store <16 x i8> splat (i8 19), ptr %i.aq, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.ar, align 1, !tbaa !21
  %i.as = getelementptr i8, ptr %0, i64 960
  %i.at = getelementptr i8, ptr %0, i64 976
  store <16 x i8> splat (i8 19), ptr %i.as, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.at, align 1, !tbaa !21
  %i.au = getelementptr i8, ptr %0, i64 992
  %i.av = getelementptr i8, ptr %0, i64 1008
  store <16 x i8> splat (i8 19), ptr %i.au, align 1, !tbaa !21
  store <16 x i8> splat (i8 19), ptr %i.av, align 1, !tbaa !21
  %i.aw = getelementptr i8, ptr %0, i64 1024
  %i.ax = getelementptr i8, ptr %0, i64 1040
  store <16 x i8> splat (i8 20), ptr %i.aw, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.ax, align 1, !tbaa !21
  %i.ay = getelementptr i8, ptr %0, i64 1056
  %i.az = getelementptr i8, ptr %0, i64 1072
  store <16 x i8> splat (i8 20), ptr %i.ay, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.az, align 1, !tbaa !21
  %i.ba = getelementptr i8, ptr %0, i64 1088
  %i.bb = getelementptr i8, ptr %0, i64 1104
  store <16 x i8> splat (i8 20), ptr %i.ba, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bb, align 1, !tbaa !21
  %i.bc = getelementptr i8, ptr %0, i64 1120
  %i.bd = getelementptr i8, ptr %0, i64 1136
  store <16 x i8> splat (i8 20), ptr %i.bc, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bd, align 1, !tbaa !21
  %i.be = getelementptr i8, ptr %0, i64 1152
  %i.bf = getelementptr i8, ptr %0, i64 1168
  store <16 x i8> splat (i8 20), ptr %i.be, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bf, align 1, !tbaa !21
  %i.bg = getelementptr i8, ptr %0, i64 1184
  %i.bh = getelementptr i8, ptr %0, i64 1200
  store <16 x i8> splat (i8 20), ptr %i.bg, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bh, align 1, !tbaa !21
  %i.bi = getelementptr i8, ptr %0, i64 1216
  %i.bj = getelementptr i8, ptr %0, i64 1232
  store <16 x i8> splat (i8 20), ptr %i.bi, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bj, align 1, !tbaa !21
  %i.bk = getelementptr i8, ptr %0, i64 1248
  %i.bl = getelementptr i8, ptr %0, i64 1264
  store <16 x i8> splat (i8 20), ptr %i.bk, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bl, align 1, !tbaa !21
  %i.bm = getelementptr i8, ptr %0, i64 1280
  %i.bn = getelementptr i8, ptr %0, i64 1296
  store <16 x i8> splat (i8 20), ptr %i.bm, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bn, align 1, !tbaa !21
  %i.bo = getelementptr i8, ptr %0, i64 1312
  %i.bp = getelementptr i8, ptr %0, i64 1328
  store <16 x i8> splat (i8 20), ptr %i.bo, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bp, align 1, !tbaa !21
  %i.bq = getelementptr i8, ptr %0, i64 1344
  %i.br = getelementptr i8, ptr %0, i64 1360
  store <16 x i8> splat (i8 20), ptr %i.bq, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.br, align 1, !tbaa !21
  %i.bs = getelementptr i8, ptr %0, i64 1376
  %i.bt = getelementptr i8, ptr %0, i64 1392
  store <16 x i8> splat (i8 20), ptr %i.bs, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bt, align 1, !tbaa !21
  %i.bu = getelementptr i8, ptr %0, i64 1408
  %i.bv = getelementptr i8, ptr %0, i64 1424
  store <16 x i8> splat (i8 20), ptr %i.bu, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bv, align 1, !tbaa !21
  %i.bw = getelementptr i8, ptr %0, i64 1440
  %i.bx = getelementptr i8, ptr %0, i64 1456
  store <16 x i8> splat (i8 20), ptr %i.bw, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bx, align 1, !tbaa !21
  %i.by = getelementptr i8, ptr %0, i64 1472
  %i.bz = getelementptr i8, ptr %0, i64 1488
  store <16 x i8> splat (i8 20), ptr %i.by, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.bz, align 1, !tbaa !21
  %i.ca = getelementptr i8, ptr %0, i64 1504
  %i.cb = getelementptr i8, ptr %0, i64 1520
  store <16 x i8> splat (i8 20), ptr %i.ca, align 1, !tbaa !21
  store <16 x i8> splat (i8 20), ptr %i.cb, align 1, !tbaa !21
  %i.cc = getelementptr i8, ptr %0, i64 1536
  %i.cd = getelementptr i8, ptr %0, i64 1552
  store <16 x i8> splat (i8 21), ptr %i.cc, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cd, align 1, !tbaa !21
  %i.ce = getelementptr i8, ptr %0, i64 1568
  %i.cf = getelementptr i8, ptr %0, i64 1584
  store <16 x i8> splat (i8 21), ptr %i.ce, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cf, align 1, !tbaa !21
  %i.cg = getelementptr i8, ptr %0, i64 1600
  %i.ch = getelementptr i8, ptr %0, i64 1616
  store <16 x i8> splat (i8 21), ptr %i.cg, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.ch, align 1, !tbaa !21
  %i.ci = getelementptr i8, ptr %0, i64 1632
  %i.cj = getelementptr i8, ptr %0, i64 1648
  store <16 x i8> splat (i8 21), ptr %i.ci, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cj, align 1, !tbaa !21
  %i.ck = getelementptr i8, ptr %0, i64 1664
  %i.cl = getelementptr i8, ptr %0, i64 1680
  store <16 x i8> splat (i8 21), ptr %i.ck, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cl, align 1, !tbaa !21
  %i.cm = getelementptr i8, ptr %0, i64 1696
  %i.cn = getelementptr i8, ptr %0, i64 1712
  store <16 x i8> splat (i8 21), ptr %i.cm, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cn, align 1, !tbaa !21
  %i.co = getelementptr i8, ptr %0, i64 1728
  %i.cp = getelementptr i8, ptr %0, i64 1744
  store <16 x i8> splat (i8 21), ptr %i.co, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cp, align 1, !tbaa !21
  %i.cq = getelementptr i8, ptr %0, i64 1760
  %i.cr = getelementptr i8, ptr %0, i64 1776
  store <16 x i8> splat (i8 21), ptr %i.cq, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cr, align 1, !tbaa !21
  %i.cs = getelementptr i8, ptr %0, i64 1792
  %i.ct = getelementptr i8, ptr %0, i64 1808
  store <16 x i8> splat (i8 21), ptr %i.cs, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.ct, align 1, !tbaa !21
  %i.cu = getelementptr i8, ptr %0, i64 1824
  %i.cv = getelementptr i8, ptr %0, i64 1840
  store <16 x i8> splat (i8 21), ptr %i.cu, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cv, align 1, !tbaa !21
  %i.cw = getelementptr i8, ptr %0, i64 1856
  %i.cx = getelementptr i8, ptr %0, i64 1872
  store <16 x i8> splat (i8 21), ptr %i.cw, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cx, align 1, !tbaa !21
  %i.cy = getelementptr i8, ptr %0, i64 1888
  %i.cz = getelementptr i8, ptr %0, i64 1904
  store <16 x i8> splat (i8 21), ptr %i.cy, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.cz, align 1, !tbaa !21
  %i.da = getelementptr i8, ptr %0, i64 1920
  %i.db = getelementptr i8, ptr %0, i64 1936
  store <16 x i8> splat (i8 21), ptr %i.da, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.db, align 1, !tbaa !21
  %i.dc = getelementptr i8, ptr %0, i64 1952
  %i.dd = getelementptr i8, ptr %0, i64 1968
  store <16 x i8> splat (i8 21), ptr %i.dc, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.dd, align 1, !tbaa !21
  %i.de = getelementptr i8, ptr %0, i64 1984
  %i.df = getelementptr i8, ptr %0, i64 2000
  store <16 x i8> splat (i8 21), ptr %i.de, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.df, align 1, !tbaa !21
  %i.dg = getelementptr i8, ptr %0, i64 2016
  %i.dh = getelementptr i8, ptr %0, i64 2032
  store <16 x i8> splat (i8 21), ptr %i.dg, align 1, !tbaa !21
  store <16 x i8> splat (i8 21), ptr %i.dh, align 1, !tbaa !21
  %i.di = getelementptr i8, ptr %0, i64 2048
  %i.dj = getelementptr i8, ptr %0, i64 2064
  store <16 x i8> splat (i8 22), ptr %i.di, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dj, align 1, !tbaa !21
  %i.dk = getelementptr i8, ptr %0, i64 2080
  %i.dl = getelementptr i8, ptr %0, i64 2096
  store <16 x i8> splat (i8 22), ptr %i.dk, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dl, align 1, !tbaa !21
  %i.dm = getelementptr i8, ptr %0, i64 2112
  %i.dn = getelementptr i8, ptr %0, i64 2128
  store <16 x i8> splat (i8 22), ptr %i.dm, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dn, align 1, !tbaa !21
  %i.do = getelementptr i8, ptr %0, i64 2144
  %i.dp = getelementptr i8, ptr %0, i64 2160
  store <16 x i8> splat (i8 22), ptr %i.do, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dp, align 1, !tbaa !21
  %i.dq = getelementptr i8, ptr %0, i64 2176
  %i.dr = getelementptr i8, ptr %0, i64 2192
  store <16 x i8> splat (i8 22), ptr %i.dq, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dr, align 1, !tbaa !21
  %i.ds = getelementptr i8, ptr %0, i64 2208
  %i.dt = getelementptr i8, ptr %0, i64 2224
  store <16 x i8> splat (i8 22), ptr %i.ds, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dt, align 1, !tbaa !21
  %i.du = getelementptr i8, ptr %0, i64 2240
  %i.dv = getelementptr i8, ptr %0, i64 2256
  store <16 x i8> splat (i8 22), ptr %i.du, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dv, align 1, !tbaa !21
  %i.dw = getelementptr i8, ptr %0, i64 2272
  %i.dx = getelementptr i8, ptr %0, i64 2288
  store <16 x i8> splat (i8 22), ptr %i.dw, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dx, align 1, !tbaa !21
  %i.dy = getelementptr i8, ptr %0, i64 2304
  %i.dz = getelementptr i8, ptr %0, i64 2320
  store <16 x i8> splat (i8 22), ptr %i.dy, align 1, !tbaa !21
  store <16 x i8> splat (i8 22), ptr %i.dz, align 1, !tbaa !21
  %i.ea = getelementptr i8, ptr %0, i64 2336
  %i.eb = getelementptr i8, ptr %0, i64 2352
end_hunk_0
