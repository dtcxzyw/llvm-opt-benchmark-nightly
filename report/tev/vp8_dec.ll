Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/vp8_dec?download=true
inline.NumInlined: 53
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ParseSegmentHeader:bb.a
.preheader.1:                                     ; preds = %.preheader.preheader, %bb.r
  %i.ay = phi i8 [ %i.ax, %bb.r ], [ -1, %.preheader.preheader ]
  store i8 %i.ay, ptr %2, align 1, !tbaa !35
  %i.az = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not32.1 = icmp eq i32 %i.az, 0
  br i1 %.not32.1, label %.preheader.2, label %bb.s

bb.s:                                             ; preds = %.preheader.1
  %i.ba = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 8) #13
  %i.bb = trunc i32 %i.ba to i8
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.s, %.preheader.1
  %i.bc = phi i8 [ %i.bb, %bb.s ], [ -1, %.preheader.1 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !35
  %i.be = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not32.2 = icmp eq i32 %i.be, 0
  br i1 %.not32.2, label %.loopexit.loopexit, label %bb.t

bb.t:                                             ; preds = %.preheader.2
  %i.bf = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 8) #13
  %i.bg = trunc i32 %i.bf to i8
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.t, %.preheader.2
  %i.bh = phi i8 [ %i.bg, %bb.t ], [ -1, %.preheader.2 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !35
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.bj, align 4, !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit36, %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !66
  %.not31 = icmp eq i32 %i.bl, 0
  %i.bm = zext i1 %.not31 to i32
  ret i32 %i.bm
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ParseFilterHeader(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) initializes((84, 100), (2920, 2924)) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.b = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  store i32 %i.b, ptr %i.a, align 4, !tbaa !67
  %i.c = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !68
  %i.e = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 3) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.e, ptr %i.f, align 4, !tbaa !69
  %i.g = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.g, ptr %i.h, align 4, !tbaa !70
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %.loopexit, label %.preheader31

.preheader31:                                     ; preds = %bb.b
  %i.j = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader31
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.l = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  store i32 %i.l, ptr %i.k, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %.preheader31, %bb.c
  %i.m = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not30.1 = icmp eq i32 %i.m, 0
  br i1 %.not30.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.n, ptr %i.o, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not30.2 = icmp eq i32 %i.p, 0
  br i1 %.not30.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %i.q, ptr %i.r, align 4, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not30.3 = icmp eq i32 %i.s, 0
  br i1 %.not30.3, label %.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.t, ptr %i.u, align 4, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %i.v = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not29 = icmp eq i32 %i.v, 0
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.x = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  store i32 %i.x, ptr %i.w, align 4, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %i.y = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not29.1 = icmp eq i32 %i.y, 0
  br i1 %.not29.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not29.2 = icmp eq i32 %i.ab, 0
  br i1 %.not29.2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = tail call i32 @VP8GetValue(ptr noundef nonnull %0, i32 noundef 1) #13
  %.not29.3 = icmp eq i32 %i.ae, 0
  br i1 %.not29.3, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = tail call i32 @VP8GetSignedValue(ptr noundef nonnull %0, i32 noundef 6) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.p, %bb.b, %bb.a
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !68
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !67
  %.not27 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not27, i32 2, i32 1
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  %i.al = phi i32 [ %i.ak, %bb.q ], [ 0, %.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2920
  store i32 %i.al, ptr %i.am, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !66
  %.not28 = icmp eq i32 %i.ao, 0
  %i.ap = zext i1 %.not28 to i32
  ret i32 %i.ap
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @ParsePartitions(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = tail call i32 @VP8GetValue(ptr noundef nonnull %i.a, i32 noundef 2) #13 ; 2 uses
  %notmask = shl nsw i32 -1, %i.c
  %i.d = xor i32 %notmask, -1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 %i.d, ptr %i.e, align 8, !tbaa !29
  %i.f = zext nneg i32 %i.d to i64                ; 3 uses
  %i.g = mul nuw nsw i64 %i.f, 3                  ; 3 uses
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.j = sub nuw i64 %2, %i.g                     ; 2 uses
  %.not53 = icmp eq i32 %i.c, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.03951 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %.04050 = phi i64 [ %i.j, %.lr.ph ], [ %i.u, %bb.c ] ; 2 uses
  %.04149 = phi ptr [ %i.i, %.lr.ph ], [ %i.t, %bb.c ] ; 2 uses
  %.04248 = phi ptr [ %1, %.lr.ph ], [ %i.v, %bb.c ] ; 3 uses
  %i.l = load i16, ptr %.04248, align 1
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.04248, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = or disjoint i64 %i.q, %i.m
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %.04050) ; 3 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %.03951
  tail call void @VP8InitBitReader(ptr noundef nonnull %i.s, ptr noundef %.04149, i64 noundef %spec.select) #13
  %i.t = getelementptr inbounds nuw i8, ptr %.04149, i64 %spec.select ; 2 uses
  %i.u = sub nuw i64 %.04050, %spec.select        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04248, i64 3
  %i.w = add nuw nsw i64 %.03951, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.041.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %.040.lcssa = phi i64 [ %i.j, %bb.b ], [ %i.u, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.f
  tail call void @VP8InitBitReader(ptr noundef nonnull %i.y, ptr noundef %.041.lcssa, i64 noundef %.040.lcssa) #13
  %i.z = icmp ult ptr %.041.lcssa, %i.b
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !74
  %.not = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not, i32 7, i32 5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a, %bb.d
  %.043 = phi i32 [ %i.ac, %bb.d ], [ 7, %bb.a ], [ 0, %._crit_edge ]
  ret i32 %.043
}

declare void @VP8ParseQuant(ptr noundef) local_unnamed_addr #5

declare void @VP8ParseProba(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8DecodeMB(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -2 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds [800 x i8], ptr %i.j, i64 %i.g ; 29 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.m = load i32, ptr %i.l, align 8, !tbaa !78
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 797
  %i.o = load i8, ptr %i.n, align 1, !tbaa !79
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.j

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 798
  %i.t = load i8, ptr %i.s, align 2, !tbaa !81
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %i.k, i8 0, i64 768, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 768
  %i.x = load i8, ptr %i.w, align 4, !tbaa !82
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !83
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds i8, ptr %i.c, i64 -1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !83
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ad, %i.aa
  %i.af = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = call i32 %i.af(ptr noundef %1, ptr noundef nonnull %i.ag, i32 noundef %i.ae, ptr noundef nonnull %i.ah, i32 noundef 0, ptr noundef nonnull %i.a) #13, !inline_history !85 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i8                     ; 2 uses
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !83
  store i8 %i.ak, ptr %i.y, align 1, !tbaa !83
  %i.al = icmp sgt i32 %i.ai, 1
  br i1 %i.al, label %bb.d, label %.loopexit.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.am = load ptr, ptr @VP8TransformWHT, align 8, !tbaa !30
  call void %i.am(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k) #13, !inline_history !85
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.c
  %i.an = load i16, ptr %i.a, align 16, !tbaa !86
  %i.ao = sext i16 %i.an to i32
  %i.ap = add nsw i32 %i.ao, 3
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = trunc i32 %i.aq to i16                  ; 16 uses
  store i16 %i.ar, ptr %i.k, align 4, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i16 %i.ar, ptr %i.as, align 4, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i16 %i.ar, ptr %i.at, align 4, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store i16 %i.ar, ptr %i.au, align 4, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i16 %i.ar, ptr %i.av, align 4, !tbaa !86
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store i16 %i.ar, ptr %i.aw, align 4, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store i16 %i.ar, ptr %i.ax, align 4, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  store i16 %i.ar, ptr %i.ay, align 4, !tbaa !86
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store i16 %i.ar, ptr %i.az, align 4, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  store i16 %i.ar, ptr %i.ba, align 4, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  store i16 %i.ar, ptr %i.bb, align 4, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store i16 %i.ar, ptr %i.bc, align 4, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  store i16 %i.ar, ptr %i.bd, align 4, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  store i16 %i.ar, ptr %i.be, align 4, !tbaa !86
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  store i16 %i.ar, ptr %i.bf, align 4, !tbaa !86
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  store i16 %i.ar, ptr %i.bg, align 4, !tbaa !86
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2664
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit.i
  %.0111.i = phi i32 [ 0, %bb.e ], [ 1, %.loopexit.i ] ; 8 uses
  %.0.i = phi ptr [ %i.bh, %bb.e ], [ %i.q, %.loopexit.i ] ; 4 uses
  %i.bi = load i8, ptr %i.h, align 1, !tbaa !87
  %i.bj = load i8, ptr %i.d, align 1, !tbaa !87
  %i.bk = and i8 %i.bj, 15
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = zext i8 %i.bi to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0115142.i = phi i32 [ 0, %bb.f ], [ %i.eg, %bb.g ]
  %.0120141.i = phi i32 [ 0, %bb.f ], [ %i.ef, %bb.g ]
  %.0121140.i = phi i32 [ %i.bl, %bb.f ], [ %i.ed, %bb.g ] ; 2 uses
  %.0123139.i = phi i32 [ %i.bm, %bb.f ], [ %i.eb, %bb.g ] ; 2 uses
  %.0125138.i = phi ptr [ %i.k, %bb.f ], [ %i.dy, %bb.g ] ; 13 uses
  %i.bn = and i32 %.0121140.i, 1
  %i.bo = and i32 %.0123139.i, 1
  %i.bp = add nuw nsw i32 %i.bo, %i.bn
  %i.bq = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !30
  %i.br = call i32 %i.bq(ptr noundef %1, ptr noundef nonnull %.0.i, i32 noundef %i.bp, ptr noundef nonnull %i.v, i32 noundef %.0111.i, ptr noundef nonnull %.0125138.i) #13, !inline_history !85 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, %.0111.i            ; 2 uses
  %i.bt = zext i1 %i.bs to i32
  %i.bu = lshr i32 %.0123139.i, 1                 ; 2 uses
  %i.bv = select i1 %i.bs, i32 128, i32 0
  %i.bw = or disjoint i32 %i.bv, %i.bu
  %i.bx = load i16, ptr %.0125138.i, align 2, !tbaa !86
  %.not177.i = icmp eq i16 %i.bx, 0
  %i.by = icmp sgt i32 %i.br, 3
  %.inv.i.i = icmp slt i32 %i.br, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.0125138.i, i64 32 ; 2 uses
  %i.ca = and i32 %i.bu, 1
  %i.cb = add nuw nsw i32 %i.ca, %i.bt
  %i.cc = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !30
  %i.cd = call i32 %i.cc(ptr noundef %1, ptr noundef nonnull %.0.i, i32 noundef %i.cb, ptr noundef nonnull %i.v, i32 noundef %.0111.i, ptr noundef nonnull %i.bz) #13, !inline_history !85 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, %.0111.i            ; 2 uses
  %i.cf = zext i1 %i.ce to i32
  %i.cg = lshr i32 %i.bw, 1                       ; 2 uses
  %i.ch = select i1 %i.ce, i32 128, i32 0
  %i.ci = or disjoint i32 %i.ch, %i.cg
  %i.cj = load i16, ptr %i.bz, align 2, !tbaa !86
  %i.ck = icmp ne i16 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = select i1 %.not177.i, i32 0, i32 4
  %i.cn = select i1 %.inv.i.i, i32 %i.cm, i32 8
  %i.co = select i1 %i.by, i32 12, i32 %i.cn
  %i.cp = icmp sgt i32 %i.cd, 3
  %.inv.i.1.i = icmp slt i32 %i.cd, 2
  %i.cq = select i1 %.inv.i.1.i, i32 %i.cl, i32 2
  %i.cr = select i1 %i.cp, i32 3, i32 %i.cq
  %i.cs = or disjoint i32 %i.cr, %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %.0125138.i, i64 64 ; 2 uses
  %i.cu = and i32 %i.cg, 1
  %i.cv = add nuw nsw i32 %i.cu, %i.cf
  %i.cw = load volatile ptr, ptr @GetCoeffs, align 8, !tbaa !30
  %i.cx = call i32 %i.cw(ptr noundef %1, ptr noundef nonnull %.0.i, i32 noundef %i.cv, ptr noundef nonnull %i.v, i32 noundef %.0111.i, ptr noundef nonnull %i.ct) #13, !inline_history !85 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, %.0111.i            ; 2 uses
  %i.cz = zext i1 %i.cy to i32
  %i.da = lshr i32 %i.ci, 1                       ; 2 uses
  %i.db = select i1 %i.cy, i32 128, i32 0
  %i.dc = or i32 %i.db, %i.da
  %i.dd = load i16, ptr %i.ct, align 2, !tbaa !86
end_hunk_0
begin_hunk_1_@GetLargeValue:bb.a
  %i.jx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i72, i1 true)
  %i.jy = xor i32 %i.jx, 24                       ; 2 uses
  %i.jz = shl i32 %.0.i72, %i.jy
  %i.ka = sub nsw i32 %i.jj, %i.jy                ; 4 uses
  store i32 %i.ka, ptr %i.f, align 4, !tbaa !108, !alias.scope !225
  %i.kb = add i32 %i.jz, -1                       ; 3 uses
  store i32 %i.kb, ptr %i.d, align 8, !tbaa !104, !alias.scope !225
  %i.kc = zext i1 %i.jp to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 9
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !35
  %i.kg = zext i8 %i.kf to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.kh = icmp slt i32 %i.ka, 0
  br i1 %i.kh, label %bb.bb, label %VP8LoadNewBytes.exit.i76

bb.bb:                                            ; preds = %VP8GetBit.exit75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !112, !alias.scope !238 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !114, !alias.scope !238
  %i.km = icmp ult ptr %i.kj, %i.kl
  br i1 %i.km, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.0.copyload.i.i79 = load i64, ptr %i.kj, align 1, !noalias !238
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 7
  store ptr %i.kn, ptr %i.ki, align 8, !tbaa !112, !alias.scope !238
  %i.ko = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i79)
  %i.kp = tail call i64 @llvm.fshl.i64(i64 %i.jw, i64 %i.ko, i64 56) ; 2 uses
  store i64 %i.kp, ptr %0, align 8, !tbaa !115, !alias.scope !238
  %i.kq = add nsw i32 %i.ka, 56
  br label %VP8LoadNewBytes.exit.i76

bb.bd:                                            ; preds = %bb.bb
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #13
  %.pre.i78 = load i32, ptr %i.f, align 4, !tbaa !108, !alias.scope !232
  %.pre99 = load i64, ptr %0, align 8, !tbaa !115, !alias.scope !232
  br label %VP8LoadNewBytes.exit.i76

VP8LoadNewBytes.exit.i76:                         ; preds = %bb.bd, %bb.bc, %VP8GetBit.exit75
  %i.kr = phi i64 [ %.pre99, %bb.bd ], [ %i.kp, %bb.bc ], [ %i.jw, %VP8GetBit.exit75 ] ; 3 uses
  %i.ks = phi i32 [ %.pre.i78, %bb.bd ], [ %i.kq, %bb.bc ], [ %i.ka, %VP8GetBit.exit75 ] ; 2 uses
  %i.kt = mul i32 %i.kb, %i.kg
  %i.ku = lshr i32 %i.kt, 8                       ; 4 uses
  %i.kv = zext i32 %i.ks to i64                   ; 2 uses
  %i.kw = lshr i64 %i.kr, %i.kv
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = icmp ult i32 %i.ku, %i.kx               ; 2 uses
  br i1 %i.ky, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %VP8LoadNewBytes.exit.i76
  %i.kz = sub i32 %i.kb, %i.ku
  %i.la = add nuw nsw i32 %i.ku, 1
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = shl i64 %i.lb, %i.kv
  %i.ld = sub i64 %i.kr, %i.lc                    ; 2 uses
  store i64 %i.ld, ptr %0, align 8, !tbaa !115, !alias.scope !232
  br label %VP8GetBit.exit80

bb.bf:                                            ; preds = %VP8LoadNewBytes.exit.i76
  %i.le = add nuw nsw i32 %i.ku, 1
  br label %VP8GetBit.exit80

VP8GetBit.exit80:                                 ; preds = %bb.be, %bb.bf
  %i.lf = phi i64 [ %i.ld, %bb.be ], [ %i.kr, %bb.bf ]
  %.0.i77 = phi i32 [ %i.kz, %bb.be ], [ %i.le, %bb.bf ] ; 2 uses
  %i.lg = zext i1 %i.ky to i32
  %i.lh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i77, i1 true)
  %i.li = xor i32 %i.lh, 24                       ; 2 uses
  %i.lj = shl i32 %.0.i77, %i.li
  %i.lk = sub nsw i32 %i.ks, %i.li                ; 2 uses
  store i32 %i.lk, ptr %i.f, align 4, !tbaa !108, !alias.scope !232
  %i.ll = add i32 %i.lj, -1                       ; 2 uses
  store i32 %i.ll, ptr %i.d, align 8, !tbaa !104, !alias.scope !232
  %i.lm = select i1 %i.jp, i32 2, i32 0
  %i.ln = or disjoint i32 %i.lm, %i.lg            ; 2 uses
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr @kCat3456, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !239 ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !35  ; 2 uses
  %.not3589 = icmp eq i8 %i.lr, 0
  br i1 %.not3589, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %VP8GetBit.exit80
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph, %VP8GetBit.exit85
  %i.lu = phi i64 [ %i.lf, %.lr.ph ], [ %i.mv, %VP8GetBit.exit85 ] ; 2 uses
  %i.lv = phi i32 [ %i.lk, %.lr.ph ], [ %i.na, %VP8GetBit.exit85 ] ; 3 uses
  %i.lw = phi i32 [ %i.ll, %.lr.ph ], [ %i.nb, %VP8GetBit.exit85 ] ; 2 uses
  %i.lx = phi i8 [ %i.lr, %.lr.ph ], [ %i.ne, %VP8GetBit.exit85 ]
  %.091 = phi ptr [ %i.lq, %.lr.ph ], [ %i.nd, %VP8GetBit.exit85 ]
  %.03090 = phi i32 [ 0, %.lr.ph ], [ %i.nc, %VP8GetBit.exit85 ]
  %i.ly = zext i8 %i.lx to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.lz = icmp slt i32 %i.lv, 0
  br i1 %i.lz, label %bb.bh, label %VP8LoadNewBytes.exit.i81

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ma = load ptr, ptr %i.ls, align 8, !tbaa !112, !alias.scope !246 ; 3 uses
  %i.mb = load ptr, ptr %i.lt, align 8, !tbaa !114, !alias.scope !246
  %i.mc = icmp ult ptr %i.ma, %i.mb
  br i1 %i.mc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.0.copyload.i.i84 = load i64, ptr %i.ma, align 1, !noalias !246
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 7
  store ptr %i.md, ptr %i.ls, align 8, !tbaa !112, !alias.scope !246
  %i.me = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i84)
  %i.mf = tail call i64 @llvm.fshl.i64(i64 %i.lu, i64 %i.me, i64 56) ; 2 uses
  store i64 %i.mf, ptr %0, align 8, !tbaa !115, !alias.scope !246
  %i.mg = add nsw i32 %i.lv, 56
  br label %VP8LoadNewBytes.exit.i81

bb.bj:                                            ; preds = %bb.bh
  tail call void @VP8LoadFinalBytes(ptr noundef nonnull %0) #13
  %.pre.i83 = load i32, ptr %i.f, align 4, !tbaa !108, !alias.scope !240
  %.pre100 = load i64, ptr %0, align 8, !tbaa !115, !alias.scope !240
  br label %VP8LoadNewBytes.exit.i81

VP8LoadNewBytes.exit.i81:                         ; preds = %bb.bj, %bb.bi, %bb.bg
  %i.mh = phi i64 [ %.pre100, %bb.bj ], [ %i.mf, %bb.bi ], [ %i.lu, %bb.bg ] ; 3 uses
  %i.mi = phi i32 [ %.pre.i83, %bb.bj ], [ %i.mg, %bb.bi ], [ %i.lv, %bb.bg ] ; 2 uses
  %i.mj = mul i32 %i.lw, %i.ly
  %i.mk = lshr i32 %i.mj, 8                       ; 4 uses
  %i.ml = zext i32 %i.mi to i64                   ; 2 uses
  %i.mm = lshr i64 %i.mh, %i.ml
  %i.mn = trunc i64 %i.mm to i32
  %i.mo = icmp ult i32 %i.mk, %i.mn               ; 2 uses
  br i1 %i.mo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %VP8LoadNewBytes.exit.i81
  %i.mp = sub i32 %i.lw, %i.mk
  %i.mq = add nuw nsw i32 %i.mk, 1
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = shl i64 %i.mr, %i.ml
  %i.mt = sub i64 %i.mh, %i.ms                    ; 2 uses
  store i64 %i.mt, ptr %0, align 8, !tbaa !115, !alias.scope !240
  br label %VP8GetBit.exit85

bb.bl:                                            ; preds = %VP8LoadNewBytes.exit.i81
  %i.mu = add nuw nsw i32 %i.mk, 1
  br label %VP8GetBit.exit85

VP8GetBit.exit85:                                 ; preds = %bb.bk, %bb.bl
  %i.mv = phi i64 [ %i.mt, %bb.bk ], [ %i.mh, %bb.bl ]
  %.0.i82 = phi i32 [ %i.mp, %bb.bk ], [ %i.mu, %bb.bl ] ; 2 uses
  %i.mw = zext i1 %i.mo to i32
  %i.mx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.i82, i1 true)
  %i.my = xor i32 %i.mx, 24                       ; 2 uses
  %i.mz = shl i32 %.0.i82, %i.my
  %i.na = sub nsw i32 %i.mi, %i.my                ; 2 uses
  store i32 %i.na, ptr %i.f, align 4, !tbaa !108, !alias.scope !240
  %i.nb = add i32 %i.mz, -1                       ; 2 uses
  store i32 %i.nb, ptr %i.d, align 8, !tbaa !104, !alias.scope !240
  %reass.add = shl i32 %.03090, 1
  %i.nc = or disjoint i32 %reass.add, %i.mw       ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.091, i64 1 ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !35  ; 2 uses
  %.not35 = icmp eq i8 %i.ne, 0
  br i1 %.not35, label %._crit_edge, label %bb.bg, !llvm.loop !247

._crit_edge:                                      ; preds = %VP8GetBit.exit85, %VP8GetBit.exit80
  %.030.lcssa = phi i32 [ 0, %VP8GetBit.exit80 ], [ %i.nc, %VP8GetBit.exit85 ]
  %i.nf = shl nuw nsw i32 8, %i.ln
  %i.ng = or disjoint i32 %i.nf, 3
  %i.nh = add nsw i32 %i.ng, %.030.lcssa
  br label %bb.bm

bb.bm:                                            ; preds = %VP8GetBit.exit40, %._crit_edge, %VP8GetBit.exit70, %VP8GetBit.exit60, %VP8GetBit.exit45
  %.1 = phi i32 [ %i.nh, %._crit_edge ], [ %i.iv, %VP8GetBit.exit70 ], [ %i.gh, %VP8GetBit.exit60 ], [ %i.cs, %VP8GetBit.exit45 ], [ 2, %VP8GetBit.exit40 ]
  ret i32 %.1
}

declare void @VP8LoadFinalBytes(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare i32 @VP8ParseIntraModeRow(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @VP8ProcessRow(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"VP8Decoder", !5, i64 0, !5, i64 4, !10, i64 8, !12, i64 16, !5, i64 64, !14, i64 68, !15, i64 76, !17, i64 84, !18, i64 132, !19, i64 152, !5, i64 200, !5, i64 204, !5, i64 208, !20, i64 216, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !6, i64 440, !5, i64 824, !22, i64 828, !6, i64 1060, !23, i64 1192, !5, i64 2800, !6, i64 2804, !10, i64 2808, !6, i64 2816, !11, i64 2824, !11, i64 2832, !11, i64 2840, !10, i64 2848, !10, i64 2856, !10, i64 2864, !10, i64 2872, !5, i64 2880, !5, i64 2884, !11, i64 2888, !13, i64 2896, !5, i64 2904, !5, i64 2908, !11, i64 2912, !5, i64 2920, !6, i64 2924, !24, i64 2960, !10, i64 2968, !13, i64 2976, !5, i64 2984, !10, i64 2992, !10, i64 3000, !10, i64 3008, !5, i64 3016}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"VP8BitReader", !13, i64 0, !5, i64 8, !5, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!13 = !{!"long", !6, i64 0}
!14 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !5, i64 4}
!15 = !{!"", !16, i64 0, !16, i64 2, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!16 = !{!"short", !6, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16, !6, i64 32}
!18 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 16}
!19 = !{!"", !11, i64 0, !5, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !11, i64 24, !21, i64 32}
!21 = !{!"VP8Io", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !5, i64 48, !5, i64 52, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !13, i64 96, !10, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !10, i64 152}
!22 = !{!"", !5, i64 0, !5, i64 4, !6, i64 8, !5, i64 228}
!23 = !{!"", !6, i64 0, !6, i64 3, !6, i64 1064}
!24 = !{!"p1 _ZTS11ALPHDecoder", !11, i64 0}
!25 = !{!9, !10, i64 8}
!26 = !{!27, !11, i64 0}
!27 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!28 = !{!9, !5, i64 4}
!29 = !{!9, !5, i64 432}
!30 = !{!11, !11, i64 0}
!31 = distinct !{null, null}
!32 = !{!27, !11, i64 40}
!33 = !{ptr @VP8Clear}
!34 = !{!9, !11, i64 2888}
!35 = !{!6, !6, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!21, !10, i64 104}
!38 = !{!21, !13, i64 96}
!39 = !{!14, !6, i64 0}
!40 = !{!14, !6, i64 1}
!41 = !{!14, !6, i64 2}
!42 = !{!14, !5, i64 4}
!43 = !{!15, !16, i64 0}
!44 = !{!15, !6, i64 4}
!45 = !{!15, !16, i64 2}
!46 = !{!15, !6, i64 5}
!47 = !{!9, !5, i64 408}
!48 = !{!9, !5, i64 412}
!49 = !{!21, !5, i64 0}
!50 = !{!21, !5, i64 4}
!51 = !{!21, !5, i64 116}
!52 = !{!21, !5, i64 128}
!53 = !{!21, !5, i64 120}
!54 = !{!21, !5, i64 124}
!55 = !{!21, !5, i64 132}
!56 = !{!21, !5, i64 136}
!57 = !{!21, !5, i64 140}
!58 = !{!21, !5, i64 144}
!59 = !{!21, !5, i64 12}
!60 = !{!21, !5, i64 16}
!61 = !{!15, !6, i64 6}
!62 = !{!15, !6, i64 7}
!63 = !{!18, !5, i64 0}
!64 = !{!18, !5, i64 4}
!65 = !{!18, !5, i64 8}
!66 = !{!12, !5, i64 40}
!67 = !{!17, !5, i64 0}
!68 = !{!17, !5, i64 4}
!69 = !{!17, !5, i64 8}
!70 = !{!17, !5, i64 12}
!71 = !{!9, !5, i64 2920}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!9, !5, i64 64}
!75 = !{!9, !11, i64 2832}
!76 = !{!9, !5, i64 2904}
!77 = !{!9, !11, i64 2912}
!78 = !{!9, !5, i64 2800}
!79 = !{!80, !6, i64 797}
!80 = !{!"", !6, i64 0, !6, i64 768, !6, i64 769, !6, i64 785, !5, i64 788, !5, i64 792, !6, i64 796, !6, i64 797, !6, i64 798}
!81 = !{!80, !6, i64 798}
!82 = !{!80, !6, i64 768}
!83 = !{!84, !6, i64 1}
!84 = !{!"", !6, i64 0, !6, i64 1}
!85 = distinct !{null}
!86 = !{!16, !16, i64 0}
!87 = !{!84, !6, i64 0}
!88 = distinct !{!88, !73}
!89 = !{!80, !5, i64 788}
!90 = !{!80, !5, i64 792}
!91 = !{!92, !5, i64 28}
!92 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !5, i64 24, !5, i64 28}
!93 = !{!80, !6, i64 796}
!94 = !{!9, !11, i64 2840}
!95 = !{!96, !6, i64 2}
!96 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!97 = !{!9, !5, i64 2908}
!98 = !{!9, !5, i64 428}
!99 = distinct !{!99, !73}
!100 = distinct !{!100, !73}
!101 = !{!9, !5, i64 200}
!102 = !{!27, !11, i64 16}
!103 = distinct !{null}
!104 = !{!12, !5, i64 8}
!105 = !{!106}
!106 = distinct !{!106, !107, !"VP8GetBitAlt: argument 0"}
!107 = distinct !{!107, !"VP8GetBitAlt"}
!108 = !{!12, !5, i64 12}
!109 = !{!110}
!110 = distinct !{!110, !111, !"VP8LoadNewBytes: argument 0"}
!111 = distinct !{!111, !"VP8LoadNewBytes"}
!112 = !{!12, !10, i64 16}
!113 = !{!110, !106}
!114 = !{!12, !10, i64 32}
!115 = !{!12, !13, i64 0}
!116 = !{!117}
!117 = distinct !{!117, !118, !"VP8GetBitAlt: argument 0"}
!118 = distinct !{!118, !"VP8GetBitAlt"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"VP8LoadNewBytes: argument 0"}
!121 = distinct !{!121, !"VP8LoadNewBytes"}
!122 = !{!120, !117}
!123 = distinct !{!123, !73}
!124 = !{!125}
!125 = distinct !{!125, !126, !"VP8GetBitAlt: argument 0"}
!126 = distinct !{!126, !"VP8GetBitAlt"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"VP8LoadNewBytes: argument 0"}
!129 = distinct !{!129, !"VP8LoadNewBytes"}
!130 = !{!128, !125}
!131 = !{!132}
!132 = distinct !{!132, !133, !"VP8GetSigned: argument 0"}
!133 = distinct !{!133, !"VP8GetSigned"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"VP8LoadNewBytes: argument 0"}
!136 = distinct !{!136, !"VP8LoadNewBytes"}
!137 = !{!135, !132}
!138 = distinct !{!138, !73}
!139 = !{!140}
!140 = distinct !{!140, !141, !"VP8GetBit: argument 0"}
!141 = distinct !{!141, !"VP8GetBit"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"VP8LoadNewBytes: argument 0"}
!144 = distinct !{!144, !"VP8LoadNewBytes"}
!145 = !{!143, !140}
!146 = !{!147}
!147 = distinct !{!147, !148, !"VP8GetBit: argument 0"}
!148 = distinct !{!148, !"VP8GetBit"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"VP8LoadNewBytes: argument 0"}
!151 = distinct !{!151, !"VP8LoadNewBytes"}
!152 = !{!150, !147}
!153 = distinct !{!153, !73}
!154 = !{!155}
!155 = distinct !{!155, !156, !"VP8GetBit: argument 0"}
!156 = distinct !{!156, !"VP8GetBit"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"VP8LoadNewBytes: argument 0"}
!159 = distinct !{!159, !"VP8LoadNewBytes"}
!160 = !{!158, !155}
!161 = !{!162}
!162 = distinct !{!162, !163, !"VP8GetSigned: argument 0"}
!163 = distinct !{!163, !"VP8GetSigned"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"VP8LoadNewBytes: argument 0"}
!166 = distinct !{!166, !"VP8LoadNewBytes"}
!167 = !{!165, !162}
!168 = distinct !{!168, !73}
!169 = !{!170}
!170 = distinct !{!170, !171, !"VP8GetBit: argument 0"}
!171 = distinct !{!171, !"VP8GetBit"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"VP8LoadNewBytes: argument 0"}
!174 = distinct !{!174, !"VP8LoadNewBytes"}
!175 = !{!173, !170}
!176 = !{!177}
!177 = distinct !{!177, !178, !"VP8GetBit: argument 0"}
!178 = distinct !{!178, !"VP8GetBit"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"VP8LoadNewBytes: argument 0"}
end_hunk_1
