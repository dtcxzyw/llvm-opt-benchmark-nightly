Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_pblendw_xmm:bb.a
  %.in.7 = load i16, ptr %.in.in.7, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %.in.7, ptr %i.s, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_dpps_xmm(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 16
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 21 uses
  %i.c = and i32 %4, 32
  %.not53 = icmp eq i32 %i.c, 0                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = and i32 %4, 64
  %.not54 = icmp eq i32 %i.f, 0                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = and i32 %4, 128
  %.not55 = icmp eq i32 %i.i, 0                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not53, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.l = load i32, ptr %i.d, align 4
  %i.m = load i32, ptr %i.e, align 4
  %i.n = tail call i32 @float32_mul(i32 noundef %i.l, i32 noundef %i.m, ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us
  %.050.us = phi i32 [ %i.n, %bb.b ], [ 0, %.split.us ]
  %i.o = tail call i32 @float32_add(i32 noundef 0, i32 noundef %.050.us, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.g, align 4
  %i.q = load i32, ptr %i.h, align 4
  %i.r = tail call i32 @float32_mul(i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull %i.b) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.152.us = phi i32 [ %i.r, %bb.d ], [ 0, %bb.c ]
  br i1 %.not55, label %.split62.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.j, align 4
  %i.t = load i32, ptr %i.k, align 4
  %i.u = tail call i32 @float32_mul(i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull %i.b) #26
  br label %.split62.us

.split62.us:                                      ; preds = %bb.f, %bb.e
  %.1.us = phi i32 [ %i.u, %bb.f ], [ 0, %bb.e ]
  %i.v = tail call i32 @float32_add(i32 noundef %.152.us, i32 noundef %.1.us, ptr noundef nonnull %i.b) #26
  %i.w = tail call i32 @float32_add(i32 noundef %i.o, i32 noundef %i.v, ptr noundef nonnull %i.b) #26
  br label %.split62

.split:                                           ; preds = %bb.a
  %i.x = load i32, ptr %2, align 4
  %i.y = load i32, ptr %3, align 4
  %i.z = tail call i32 @float32_mul(i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull %i.b) #26 ; 2 uses
  br i1 %.not53, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split
  %i.aa = tail call i32 @float32_add(i32 noundef %i.z, i32 noundef 0, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.split.us
  %i.ab = load i32, ptr %i.g, align 4
  %i.ac = load i32, ptr %i.h, align 4
  %i.ad = tail call i32 @float32_mul(i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull %i.b) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.split.us
  %.152.us65 = phi i32 [ %i.ad, %bb.g ], [ 0, %.split.split.us ]
  br i1 %.not55, label %.split62.split.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.j, align 4
  %i.af = load i32, ptr %i.k, align 4
  %i.ag = tail call i32 @float32_mul(i32 noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull %i.b) #26
  br label %.split62.split.us

.split62.split.us:                                ; preds = %bb.i, %bb.h
  %.1.us66 = phi i32 [ %i.ag, %bb.i ], [ 0, %bb.h ]
  %i.ah = tail call i32 @float32_add(i32 noundef %.152.us65, i32 noundef %.1.us66, ptr noundef nonnull %i.b) #26
  %i.ai = tail call i32 @float32_add(i32 noundef %i.aa, i32 noundef %i.ah, ptr noundef nonnull %i.b) #26
  br label %.split62

.split.split:                                     ; preds = %.split
  %i.aj = load i32, ptr %i.d, align 4
  %i.ak = load i32, ptr %i.e, align 4
  %i.al = tail call i32 @float32_mul(i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.b) #26
  %i.am = tail call i32 @float32_add(i32 noundef %i.z, i32 noundef %i.al, ptr noundef nonnull %i.b) #26 ; 2 uses
  br i1 %.not54, label %.split.split.split.us, label %.split.split.split

.split.split.split.us:                            ; preds = %.split.split
  br i1 %.not55, label %.split62.split.split.us, label %bb.j

bb.j:                                             ; preds = %.split.split.split.us
  %i.an = load i32, ptr %i.j, align 4
  %i.ao = load i32, ptr %i.k, align 4
  %i.ap = tail call i32 @float32_mul(i32 noundef %i.an, i32 noundef %i.ao, ptr noundef nonnull %i.b) #26
  br label %.split62.split.split.us

.split62.split.split.us:                          ; preds = %bb.j, %.split.split.split.us
  %.1.us69 = phi i32 [ %i.ap, %bb.j ], [ 0, %.split.split.split.us ]
  %i.aq = tail call i32 @float32_add(i32 noundef 0, i32 noundef %.1.us69, ptr noundef nonnull %i.b) #26
  %i.ar = tail call i32 @float32_add(i32 noundef %i.am, i32 noundef %i.aq, ptr noundef nonnull %i.b) #26
  br label %.split62

.split.split.split:                               ; preds = %.split.split
  %i.as = load i32, ptr %i.g, align 4
  %i.at = load i32, ptr %i.h, align 4
  %i.au = tail call i32 @float32_mul(i32 noundef %i.as, i32 noundef %i.at, ptr noundef nonnull %i.b) #26
  br i1 %.not55, label %.split62.split.split, label %bb.k

bb.k:                                             ; preds = %.split.split.split
  %i.av = load i32, ptr %i.j, align 4
  %i.aw = load i32, ptr %i.k, align 4
  %i.ax = tail call i32 @float32_mul(i32 noundef %i.av, i32 noundef %i.aw, ptr noundef nonnull %i.b) #26
  br label %.split62.split.split

.split62.split.split:                             ; preds = %.split.split.split, %bb.k
  %.1 = phi i32 [ %i.ax, %bb.k ], [ 0, %.split.split.split ]
  %i.ay = tail call i32 @float32_add(i32 noundef %i.au, i32 noundef %.1, ptr noundef nonnull %i.b) #26
  %i.az = tail call i32 @float32_add(i32 noundef %i.am, i32 noundef %i.ay, ptr noundef nonnull %i.b) #26
  br label %.split62

.split62:                                         ; preds = %.split62.split.us, %.split62.split.split.us, %.split62.split.split, %.split62.us
  %.sink73 = phi i32 [ %i.ai, %.split62.split.us ], [ %i.ar, %.split62.split.split.us ], [ %i.az, %.split62.split.split ], [ %i.w, %.split62.us ]
  %i.ba = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bc = and <4 x i32> %i.bb, <i32 1, i32 2, i32 4, i32 8>
  %i.bd = icmp eq <4 x i32> %i.bc, zeroinitializer
  %i.be = insertelement <4 x i32> poison, i32 %.sink73, i64 0
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bg = select <4 x i1> %i.bd, <4 x i32> zeroinitializer, <4 x i32> %i.bf
  store <4 x i32> %i.bg, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_dppd_xmm(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = load i64, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.e = tail call i64 @float64_mul(i64 noundef %i.b, i64 noundef %i.c, ptr noundef nonnull %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = and i32 %4, 32
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.l = tail call i64 @float64_mul(i64 noundef %i.h, i64 noundef %i.j, ptr noundef nonnull %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.n = tail call i64 @float64_add(i64 noundef %.016, i64 noundef %.0, ptr noundef nonnull %i.m) #26 ; 2 uses
  %i.o = and i32 %4, 1
  %.not18 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not18, i64 0, i64 %i.n
  store i64 %i.p, ptr %1, align 8
  %i.q = and i32 %4, 2
  %.not19 = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not19, i64 0, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.r, ptr %i.s, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_mpsadbw_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, 12
  %i.c = and i32 %4, 4                            ; 4 uses
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = zext nneg i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = zext nneg i32 %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %5 = load <4 x i8>, ptr %i.e, align 1
  %6 = zext <4 x i8> %5 to <4 x i16>              ; 4 uses
  %i.q = load <8 x i8>, ptr %i.g, align 1
  %i.r = load <8 x i8>, ptr %i.j, align 1
  %i.s = load <8 x i8>, ptr %i.m, align 1
  %i.t = load <8 x i8>, ptr %i.p, align 1
  %i.u = zext <8 x i8> %i.q to <8 x i16>
  %i.v = zext <8 x i8> %i.r to <8 x i16>
  %i.w = zext <8 x i8> %i.s to <8 x i16>
  %i.x = zext <8 x i8> %i.t to <8 x i16>
  %i.y = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.z = sub nsw <8 x i16> %i.u, %i.y
  %i.aa = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.z, i1 true)
  %i.ab = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ac = sub nsw <8 x i16> %i.v, %i.ab
  %i.ad = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ac, i1 true)
  %i.ae = add nuw nsw <8 x i16> %i.ad, %i.aa
  %i.af = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ag = sub nsw <8 x i16> %i.w, %i.af
  %i.ah = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ag, i1 true)
  %i.ai = add nuw nsw <8 x i16> %i.ah, %i.ae
  %i.aj = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ak = sub nsw <8 x i16> %i.x, %i.aj
  %i.al = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ak, i1 true)
  %i.am = add nuw nsw <8 x i16> %i.al, %i.ai
  store <8 x i16> %i.am, ptr %1, align 2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpestri_xmm(ptr nofree noundef captures(none) initializes((8, 16), (280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = trunc i32 %3 to i8
  %.not.i = icmp ult i32 %3, 256                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32
  %.012.i = select i1 %.not.i, i64 %i.d, i64 %i.c ; 3 uses
  %i.e = and i32 %3, 1                            ; 2 uses
  %.not14.i = icmp eq i32 %i.e, 0                 ; 2 uses
  %..neg.i = select i1 %.not14.i, i64 -16, i64 -8 ; 2 uses
  %..i = select i1 %.not14.i, i64 16, i64 8       ; 3 uses
  %i.f = icmp sgt i64 %.012.i, %..i
  %i.g = icmp slt i64 %.012.i, %..neg.i
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = trunc nuw nsw i64 %..i to i32            ; 2 uses
  %i.i = trunc nsw i64 %.012.i to i32
  %.0.i.i = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.i, i1 true)
  %.013.i = select i1 %or.cond.i, i32 %i.h, i32 %.0.i.i
  %i.j = load i64, ptr %0, align 8                ; 2 uses
  %sext.i16 = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i16, 32
  %.012.i17 = select i1 %.not.i, i64 %i.k, i64 %i.j ; 3 uses
  %i.l = icmp sgt i64 %.012.i17, %..i
  %i.m = icmp slt i64 %.012.i17, %..neg.i
  %or.cond.i21 = or i1 %i.l, %i.m
  %i.n = trunc nsw i64 %.012.i17 to i32
  %.0.i.i22 = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.n, i1 true)
  %.013.i23 = select i1 %or.cond.i21, i32 %i.h, i32 %.0.i.i22
  %i.o = tail call fastcc i32 @pcmpxstrx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.a, i32 noundef %.013.i, i32 noundef %.013.i23) ; 3 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %3, 64
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.o, i1 true)
  %i.r = xor i32 %i.q, 31
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.o, i1 true)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = lshr exact i32 16, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.sink25 = phi i32 [ %i.t, %bb.e ], [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  %i.u = zext nneg i32 %.sink25 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @pcmpxstrx(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, i32 15, i32 7           ; 6 uses
  %i.d = add i32 %4, -1                           ; 11 uses
  %i.e = add i32 %5, -1                           ; 12 uses
  %i.f = icmp slt i32 %i.d, %i.c
  %i.g = select i1 %i.f, i64 64, i64 0
  %i.h = icmp slt i32 %i.e, %i.c
  %i.i = select i1 %i.h, i64 128, i64 0
  %i.j = or disjoint i64 %i.g, %i.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.l, align 8
  %i.m = lshr i32 %i.a, 2
  %i.n = and i32 %i.m, 3
  switch i32 %i.n, label %default.unreachable363 [
    i32 0, label %.preheader
    i32 1, label %.preheader181
    i32 2, label %bb.v
    i32 3, label %bb.ab
  ]

.preheader181:                                    ; preds = %bb.a
  %i.o = icmp sgt i32 %i.d, -1
  br i1 %i.o, label %.lr.ph244, label %.loopexit

.lr.ph244:                                        ; preds = %.preheader181
  %i.p = and i8 %3, 3                             ; 3 uses
  %i.q = or i32 %5, 1                             ; 2 uses
  %.1129235 = add i32 %i.q, -2                    ; 2 uses
  %i.r = icmp sgt i32 %.1129235, -1
  br i1 %i.r, label %.lr.ph244.split.us, label %.loopexit

.lr.ph244.split.us:                               ; preds = %.lr.ph244
  %i.s = zext nneg i32 %.1129235 to i64
  %i.t = zext nneg i32 %i.d to i64
  br label %.lr.ph244.split.us.split.split.us

.lr.ph244.split.us.split.split.us:                ; preds = %.lr.ph244.split.us, %._crit_edge240.us.us
  %indvars.iv342 = phi i64 [ %i.t, %.lr.ph244.split.us ], [ %indvars.iv.next343, %._crit_edge240.us.us ] ; 6 uses
  %.2243.us.us = phi i32 [ 0, %.lr.ph244.split.us ], [ %i.bk, %._crit_edge240.us.us ]
  %i.u = shl i32 %.2243.us.us, 1
  switch i8 %i.p, label %.lr.ph244.split.us.split.split.us.unreachabledefault [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.c
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv342
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i32
  br label %pcmp_val.exit143.us.us

bb.c:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv342
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  br label %pcmp_val.exit143.us.us

bb.d:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv342
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  br label %pcmp_val.exit143.us.us

bb.e:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv342
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  br label %pcmp_val.exit143.us.us

pcmp_val.exit143.us.us:                           ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i141.us.us = phi i32 [ %i.ag, %bb.e ], [ %i.ad, %bb.d ], [ %i.aa, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %pcmp_val.exit143.us.us, %bb.p
  %indvars.iv339 = phi i64 [ %i.s, %pcmp_val.exit143.us.us ], [ %indvars.iv.next340, %bb.p ] ; 7 uses
  %.3237.us.us = phi i32 [ %i.u, %pcmp_val.exit143.us.us ], [ %i.bk, %bb.p ] ; 2 uses
  %.1129.in236.us.us = phi i32 [ %i.q, %pcmp_val.exit143.us.us ], [ %i.bm, %bb.p ]
  switch i8 %i.p, label %.unreachabledefault [
    i8 0, label %bb.j
    i8 1, label %bb.i
    i8 2, label %bb.h
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv339
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = sext i16 %i.ai to i32
  br label %pcmp_val.exit146.us.us

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv339
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = sext i8 %i.al to i32
  br label %pcmp_val.exit146.us.us

bb.i:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv339
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32
  br label %pcmp_val.exit146.us.us

bb.j:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@helper_vpsrlvd_xmm:bb.a

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.z, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i32 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ab, ptr %i.ac, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsravd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = load i32, ptr %3, align 4
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.b, i32 31)
  %i.c = ashr i32 %i.a, %spec.select
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %spec.select.1 = tail call i32 @llvm.umin.i32(i32 %i.g, i32 31)
  %i.h = ashr i32 %i.e, %spec.select.1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %spec.select.2 = tail call i32 @llvm.umin.i32(i32 %i.m, i32 31)
  %i.n = ashr i32 %i.k, %spec.select.2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %spec.select.3 = tail call i32 @llvm.umin.i32(i32 %i.s, i32 31)
  %i.t = ashr i32 %i.q, %spec.select.3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.t, ptr %i.u, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsllvd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 2 uses
  %i.b = icmp ult i32 %i.a, 32
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4
  %i.d = shl i32 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i32 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ult i32 %i.g, 32
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = shl i32 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp ult i32 %i.o, 32
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = shl i32 %i.r, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp ult i32 %i.w, 32
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = shl i32 %i.z, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i32 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ab, ptr %i.ac, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsrlvq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = lshr i64 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsravq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = load i64, ptr %3, align 8
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.b, i64 63)
  %i.c = ashr i64 %i.a, %spec.select
  store i64 %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %spec.select.1 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 63)
  %i.h = ashr i64 %i.e, %spec.select.1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsllvq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, 64
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = shl i64 %i.c, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vtestps_xmm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load <2 x i32>, ptr %2, align 4            ; 2 uses
  %4 = load <2 x i32>, ptr %1, align 4            ; 2 uses
  %5 = xor <2 x i32> %4, <i32 -1, i32 0>
  %6 = and <2 x i32> %3, %5
  %7 = xor <2 x i32> %4, <i32 0, i32 -1>
  %8 = and <2 x i32> %3, %7
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %10 = or <2 x i32> %9, %6
  %11 = load <2 x i32>, ptr %i.b, align 4         ; 2 uses
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = xor <2 x i32> %12, <i32 -1, i32 0>
  %14 = load <2 x i32>, ptr %i.a, align 4         ; 2 uses
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> zeroinitializer
  %16 = and <2 x i32> %15, %13
  %17 = or <2 x i32> %16, %10
  %18 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %19 = xor <2 x i32> %18, <i32 -1, i32 0>
  %20 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %21 = and <2 x i32> %20, %19
  %22 = or <2 x i32> %21, %17                     ; 2 uses
  %23 = extractelement <2 x i32> %22, i64 1
  %.not.inv = icmp slt i32 %23, 0
  %24 = select i1 %.not.inv, i64 0, i64 64
  %25 = extractelement <2 x i32> %22, i64 0
  %.not = icmp sgt i32 %25, -1
  %i.c = zext i1 %.not to i64
  %i.d = or disjoint i64 %24, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vtestpd_xmm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load <2 x i64>, ptr %2, align 8          ; 2 uses
  %i.b = load <2 x i64>, ptr %1, align 8          ; 2 uses
  %i.c = xor <2 x i64> %i.b, <i64 -1, i64 0>
  %i.d = and <2 x i64> %i.a, %i.c
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.f = xor <2 x i64> %i.b, <i64 0, i64 -1>
  %i.g = and <2 x i64> %i.a, %i.f
  %i.h = or <2 x i64> %i.g, %i.e                  ; 2 uses
  %i.i = extractelement <2 x i64> %i.h, i64 0
  %.not.inv = icmp slt i64 %i.i, 0
  %i.j = select i1 %.not.inv, i64 0, i64 64
  %i.k = extractelement <2 x i64> %i.h, i64 1
  %.not17 = icmp sgt i64 %i.k, -1
  %i.l = zext i1 %.not17 to i64
  %i.m = or disjoint i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.o, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vpmaskmovd_st_xmm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %3, i32 noundef %i.b, i32 noundef 66, i64 noundef %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %.not.1 = icmp sgt i32 %i.f, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %3, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.k = ptrtoint ptr %i.j to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.g, i32 noundef %i.i, i32 noundef 66, i64 noundef %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %.not.2 = icmp sgt i32 %i.m, -1
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %3, 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.r = ptrtoint ptr %i.q to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.n, i32 noundef %i.p, i32 noundef 66, i64 noundef %i.r) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %.not.3 = icmp sgt i32 %i.t, -1
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %3, 12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.y = ptrtoint ptr %i.x to i64
  tail call void @cpu_stl_mmu(ptr noundef %0, i64 noundef %i.u, i32 noundef %i.w, i32 noundef 66, i64 noundef %i.y) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vpmaskmovq_st_xmm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp sgt i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64
  tail call void @cpu_stq_mmu(ptr noundef %0, i64 noundef %3, i64 noundef %i.b, i32 noundef 98, i64 noundef %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.1 = icmp sgt i64 %i.f, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %3, 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.k = ptrtoint ptr %i.j to i64
  tail call void @cpu_stq_mmu(ptr noundef %0, i64 noundef %i.g, i64 noundef %i.i, i32 noundef 98, i64 noundef %i.k) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpmaskmovd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %.not.1 = icmp sgt i32 %i.e, -1
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i32 [ %i.g, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %.not.2 = icmp sgt i32 %i.k, -1
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %.not.3 = icmp sgt i32 %i.q, -1
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i32, ptr %i.r, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = phi i32 [ %i.s, %bb.h ], [ 0, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.t, ptr %i.u, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpmaskmovq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %.not = icmp sgt i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
end_hunk_1
begin_hunk_2_@helper_pblendvb_ymm:bb.a
  %.in.in.20 = getelementptr inbounds nuw i8, ptr %..20, i64 20
  %.in.20 = load i8, ptr %.in.in.20, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %.in.20, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.bk = load i8, ptr %i.bj, align 1
  %.not9.21 = icmp slt i8 %i.bk, 0
  %..21 = select i1 %.not9.21, ptr %3, ptr %2
  %.in.in.21 = getelementptr inbounds nuw i8, ptr %..21, i64 21
  %.in.21 = load i8, ptr %.in.in.21, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %.in.21, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.bn = load i8, ptr %i.bm, align 1
  %.not9.22 = icmp slt i8 %i.bn, 0
  %..22 = select i1 %.not9.22, ptr %3, ptr %2
  %.in.in.22 = getelementptr inbounds nuw i8, ptr %..22, i64 22
  %.in.22 = load i8, ptr %.in.in.22, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %.in.22, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 23
  %i.bq = load i8, ptr %i.bp, align 1
  %.not9.23 = icmp slt i8 %i.bq, 0
  %..23 = select i1 %.not9.23, ptr %3, ptr %2
  %.in.in.23 = getelementptr inbounds nuw i8, ptr %..23, i64 23
  %.in.23 = load i8, ptr %.in.in.23, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %.in.23, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bt = load i8, ptr %i.bs, align 1
  %.not9.24 = icmp slt i8 %i.bt, 0
  %..24 = select i1 %.not9.24, ptr %3, ptr %2
  %.in.in.24 = getelementptr inbounds nuw i8, ptr %..24, i64 24
  %.in.24 = load i8, ptr %.in.in.24, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %.in.24, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.bw = load i8, ptr %i.bv, align 1
  %.not9.25 = icmp slt i8 %i.bw, 0
  %..25 = select i1 %.not9.25, ptr %3, ptr %2
  %.in.in.25 = getelementptr inbounds nuw i8, ptr %..25, i64 25
  %.in.25 = load i8, ptr %.in.in.25, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %.in.25, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.bz = load i8, ptr %i.by, align 1
  %.not9.26 = icmp slt i8 %i.bz, 0
  %..26 = select i1 %.not9.26, ptr %3, ptr %2
  %.in.in.26 = getelementptr inbounds nuw i8, ptr %..26, i64 26
  %.in.26 = load i8, ptr %.in.in.26, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %.in.26, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 27
  %i.cc = load i8, ptr %i.cb, align 1
  %.not9.27 = icmp slt i8 %i.cc, 0
  %..27 = select i1 %.not9.27, ptr %3, ptr %2
  %.in.in.27 = getelementptr inbounds nuw i8, ptr %..27, i64 27
  %.in.27 = load i8, ptr %.in.in.27, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %.in.27, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.cf = load i8, ptr %i.ce, align 1
  %.not9.28 = icmp slt i8 %i.cf, 0
  %..28 = select i1 %.not9.28, ptr %3, ptr %2
  %.in.in.28 = getelementptr inbounds nuw i8, ptr %..28, i64 28
  %.in.28 = load i8, ptr %.in.in.28, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %.in.28, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 29
  %i.ci = load i8, ptr %i.ch, align 1
  %.not9.29 = icmp slt i8 %i.ci, 0
  %..29 = select i1 %.not9.29, ptr %3, ptr %2
  %.in.in.29 = getelementptr inbounds nuw i8, ptr %..29, i64 29
  %.in.29 = load i8, ptr %.in.in.29, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %.in.29, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.cl = load i8, ptr %i.ck, align 1
  %.not9.30 = icmp slt i8 %i.cl, 0
  %..30 = select i1 %.not9.30, ptr %3, ptr %2
  %.in.in.30 = getelementptr inbounds nuw i8, ptr %..30, i64 30
  %.in.30 = load i8, ptr %.in.in.30, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %.in.30, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 31
  %i.co = load i8, ptr %i.cn, align 1
  %.not9.31 = icmp slt i8 %i.co, 0
  %..31 = select i1 %.not9.31, ptr %3, ptr %2
  %.in.in.31 = getelementptr inbounds nuw i8, ptr %..31, i64 31
  %.in.31 = load i8, ptr %.in.in.31, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %.in.31, ptr %i.cp, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_blendvps_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %.not9 = icmp slt i32 %i.a, 0
  %. = select i1 %.not9, ptr %3, ptr %2
  %i.b = load i32, ptr %., align 4
  store i32 %i.b, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not9.1 = icmp slt i32 %i.d, 0
  %..1 = select i1 %.not9.1, ptr %3, ptr %2
  %.in.1 = getelementptr inbounds nuw i8, ptr %..1, i64 4
  %i.e = load i32, ptr %.in.1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %.not9.2 = icmp slt i32 %i.h, 0
  %..2 = select i1 %.not9.2, ptr %3, ptr %2
  %.in.2 = getelementptr inbounds nuw i8, ptr %..2, i64 8
  %i.i = load i32, ptr %.in.2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %.not9.3 = icmp slt i32 %i.l, 0
  %..3 = select i1 %.not9.3, ptr %3, ptr %2
  %.in.3 = getelementptr inbounds nuw i8, ptr %..3, i64 12
  %i.m = load i32, ptr %.in.3, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %i.o, align 4
  %.not9.4 = icmp slt i32 %i.p, 0
  %..4 = select i1 %.not9.4, ptr %3, ptr %2
  %.in.4 = getelementptr inbounds nuw i8, ptr %..4, i64 16
  %i.q = load i32, ptr %.in.4, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %.not9.5 = icmp slt i32 %i.t, 0
  %..5 = select i1 %.not9.5, ptr %3, ptr %2
  %.in.5 = getelementptr inbounds nuw i8, ptr %..5, i64 20
  %i.u = load i32, ptr %.in.5, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = load i32, ptr %i.w, align 4
  %.not9.6 = icmp slt i32 %i.x, 0
  %..6 = select i1 %.not9.6, ptr %3, ptr %2
  %.in.6 = getelementptr inbounds nuw i8, ptr %..6, i64 24
  %i.y = load i32, ptr %.in.6, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %.not9.7 = icmp slt i32 %i.ab, 0
  %..7 = select i1 %.not9.7, ptr %3, ptr %2
  %.in.7 = getelementptr inbounds nuw i8, ptr %..7, i64 28
  %i.ac = load i32, ptr %.in.7, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ac, ptr %i.ad, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_blendvpd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %.not9 = icmp slt i64 %i.a, 0
  %. = select i1 %.not9, ptr %3, ptr %2
  %i.b = load i64, ptr %., align 8
  store i64 %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not9.1 = icmp slt i64 %i.d, 0
  %..1 = select i1 %.not9.1, ptr %3, ptr %2
  %.in.1 = getelementptr inbounds nuw i8, ptr %..1, i64 8
  %i.e = load i64, ptr %.in.1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %.not9.2 = icmp slt i64 %i.h, 0
  %..2 = select i1 %.not9.2, ptr %3, ptr %2
  %.in.2 = getelementptr inbounds nuw i8, ptr %..2, i64 16
  %i.i = load i64, ptr %.in.2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %.not9.3 = icmp slt i64 %i.l, 0
  %..3 = select i1 %.not9.3, ptr %3, ptr %2
  %.in.3 = getelementptr inbounds nuw i8, ptr %..3, i64 24
  %i.m = load i64, ptr %.in.3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_ptest_ymm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load <2 x i64>, ptr %2, align 8            ; 2 uses
  %4 = load <2 x i64>, ptr %1, align 8            ; 2 uses
  %5 = xor <2 x i64> %4, <i64 -1, i64 0>
  %6 = and <2 x i64> %3, %5
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %8 = xor <2 x i64> %4, <i64 0, i64 -1>
  %9 = and <2 x i64> %3, %8
  %10 = or <2 x i64> %7, %9
  %11 = load <2 x i64>, ptr %i.b, align 8         ; 2 uses
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> zeroinitializer
  %13 = xor <2 x i64> %12, <i64 0, i64 -1>
  %14 = load <2 x i64>, ptr %i.a, align 8         ; 2 uses
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = and <2 x i64> %15, %13
  %17 = or <2 x i64> %16, %10
  %18 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %19 = xor <2 x i64> %18, <i64 0, i64 -1>
  %20 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %21 = and <2 x i64> %20, %19
  %22 = or <2 x i64> %21, %17
  %23 = icmp eq <2 x i64> %22, zeroinitializer    ; 2 uses
  %24 = extractelement <2 x i1> %23, i64 0
  %i.c = select i1 %24, i64 64, i64 0
  %25 = extractelement <2 x i1> %23, i64 1
  %i.d = zext i1 %25 to i64
  %i.e = or disjoint i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <8 x i8>, ptr %i.e, align 1
  %i.h = sext <8 x i8> %i.g to <8 x i16>
  store <8 x i16> %i.h, ptr %i.f, align 2
  %i.i = load <8 x i8>, ptr %2, align 1
  %i.j = sext <8 x i8> %i.i to <8 x i16>
  store <8 x i16> %i.j, ptr %1, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.m, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.q, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.t = load i8, ptr %i.s, align 1
  %i.u = sext i8 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = sext i8 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = sext i8 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sext i8 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = sext i8 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = sext i8 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = sext i8 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = sext i8 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = load i8, ptr %2, align 1
  %i.bt = sext i8 %i.bs to i16
  store i16 %i.bt, ptr %1, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.b = load i8, ptr %i.a, align 1
  %i.c = sext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = sext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1
  %i.s = sext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i8, ptr %2, align 1
  %i.ad = sext i8 %i.ac to i32
  store i32 %i.ad, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = sext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load i8, ptr %2, align 1
  %i.n = sext i8 %i.m to i64
  store i64 %i.n, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i16, ptr %i.i, align 2
  %i.k = sext i16 %i.j to i32
end_hunk_2
begin_hunk_3_@helper_pblendw_ymm:bb.a
  %.in.in.2 = getelementptr inbounds nuw i8, ptr %.in.in.v.2, i64 4
  %.in.2 = load i16, ptr %.in.in.2, align 2
  store i16 %.in.2, ptr %i.e, align 2
  %i.n = extractelement <8 x i1> %i.j, i64 4
  %.in.in.v.3 = select i1 %i.n, ptr %2, ptr %3    ; 2 uses
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %.in.in.v.3, i64 6
  %.in.3 = load i16, ptr %.in.in.3, align 2
  store i16 %.in.3, ptr %i.f, align 2
  %i.o = extractelement <8 x i1> %i.j, i64 3
  %.in.in.v.4 = select i1 %i.o, ptr %2, ptr %3    ; 2 uses
  %.in.in.4 = getelementptr inbounds nuw i8, ptr %.in.in.v.4, i64 8
  %.in.4 = load i16, ptr %.in.in.4, align 2
  store i16 %.in.4, ptr %i.g, align 2
  %i.p = extractelement <8 x i1> %i.j, i64 2
  %.in.in.v.5 = select i1 %i.p, ptr %2, ptr %3    ; 2 uses
  %.in.in.5 = getelementptr inbounds nuw i8, ptr %.in.in.v.5, i64 10
  %.in.5 = load i16, ptr %.in.in.5, align 2
  store i16 %.in.5, ptr %i.h, align 2
  %i.q = extractelement <8 x i1> %i.j, i64 1
  %.in.in.v.6 = select i1 %i.q, ptr %2, ptr %3    ; 2 uses
  %.in.in.6 = getelementptr inbounds nuw i8, ptr %.in.in.v.6, i64 12
  %.in.6 = load i16, ptr %.in.in.6, align 2
  store i16 %.in.6, ptr %i.i, align 2
  %i.r = extractelement <8 x i1> %i.j, i64 0
  %.in.in.v.7 = select i1 %i.r, ptr %2, ptr %3    ; 2 uses
  %.in.in.7 = getelementptr inbounds nuw i8, ptr %.in.in.v.7, i64 14
  %.in.7 = load i16, ptr %.in.in.7, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %.in.7, ptr %i.s, align 2
  %.in.in.8 = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 16
  %.in.8 = load i16, ptr %.in.in.8, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %.in.8, ptr %i.t, align 2
  %.in.in.9 = getelementptr inbounds nuw i8, ptr %.in.in.v.1, i64 18
  %.in.9 = load i16, ptr %.in.in.9, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %.in.9, ptr %i.u, align 2
  %.in.in.10 = getelementptr inbounds nuw i8, ptr %.in.in.v.2, i64 20
  %.in.10 = load i16, ptr %.in.in.10, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %.in.10, ptr %i.v, align 2
  %.in.in.11 = getelementptr inbounds nuw i8, ptr %.in.in.v.3, i64 22
  %.in.11 = load i16, ptr %.in.in.11, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %.in.11, ptr %i.w, align 2
  %.in.in.12 = getelementptr inbounds nuw i8, ptr %.in.in.v.4, i64 24
  %.in.12 = load i16, ptr %.in.in.12, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %.in.12, ptr %i.x, align 2
  %.in.in.13 = getelementptr inbounds nuw i8, ptr %.in.in.v.5, i64 26
  %.in.13 = load i16, ptr %.in.in.13, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %.in.13, ptr %i.y, align 2
  %.in.in.14 = getelementptr inbounds nuw i8, ptr %.in.in.v.6, i64 28
  %.in.14 = load i16, ptr %.in.in.14, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %.in.14, ptr %i.z, align 2
  %.in.in.15 = getelementptr inbounds nuw i8, ptr %.in.in.v.7, i64 30
  %.in.15 = load i16, ptr %.in.in.15, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %.in.15, ptr %i.aa, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_dpps_ymm(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 16
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 14 uses
  %i.c = and i32 %4, 32
  %.not53 = icmp eq i32 %i.c, 0                   ; 2 uses
  %i.d = and i32 %4, 64
  %.not54 = icmp eq i32 %i.d, 0                   ; 2 uses
  %i.e = and i32 %4, 128
  %.not55 = icmp eq i32 %i.e, 0                   ; 2 uses
  %i.f = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.h = and <4 x i32> %i.g, <i32 1, i32 2, i32 4, i32 8>
  %i.i = icmp eq <4 x i32> %i.h, zeroinitializer  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %2, align 4
  %i.k = load i32, ptr %3, align 4
  %i.l = tail call i32 @float32_mul(i32 noundef %i.j, i32 noundef %i.k, ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.051 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @float32_mul(i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.b) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.050 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = tail call i32 @float32_add(i32 noundef %.051, i32 noundef %.050, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call i32 @float32_mul(i32 noundef %i.t, i32 noundef %i.v, ptr noundef nonnull %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.152 = phi i32 [ %i.w, %bb.f ], [ 0, %bb.e ]
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = tail call i32 @float32_mul(i32 noundef %i.y, i32 noundef %i.aa, ptr noundef nonnull %i.b) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %i.ac = tail call i32 @float32_add(i32 noundef %.152, i32 noundef %.1, ptr noundef nonnull %i.b) #26
  %i.ad = tail call i32 @float32_add(i32 noundef %i.r, i32 noundef %i.ac, ptr noundef nonnull %i.b) #26
  %i.ae = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = select <4 x i1> %i.i, <4 x i32> zeroinitializer, <4 x i32> %i.af
  store <4 x i32> %i.ag, ptr %1, align 4
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i32 @float32_mul(i32 noundef %i.ai, i32 noundef %i.ak, ptr noundef nonnull %i.b) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.051.1 = phi i32 [ %i.al, %bb.j ], [ 0, %bb.i ]
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @float32_mul(i32 noundef %i.an, i32 noundef %i.ap, ptr noundef nonnull %i.b) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.050.1 = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.k ]
  %i.ar = tail call i32 @float32_add(i32 noundef %.051.1, i32 noundef %.050.1, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call i32 @float32_mul(i32 noundef %i.at, i32 noundef %i.av, ptr noundef nonnull %i.b) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.152.1 = phi i32 [ %i.aw, %bb.n ], [ 0, %bb.m ]
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call i32 @float32_mul(i32 noundef %i.ay, i32 noundef %i.ba, ptr noundef nonnull %i.b) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %i.bb, %bb.p ], [ 0, %bb.o ]
  %i.bc = tail call i32 @float32_add(i32 noundef %.152.1, i32 noundef %.1.1, ptr noundef nonnull %i.b) #26
  %i.bd = tail call i32 @float32_add(i32 noundef %i.ar, i32 noundef %i.bc, ptr noundef nonnull %i.b) #26
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bh = select <4 x i1> %i.i, <4 x i32> zeroinitializer, <4 x i32> %i.bg
  store <4 x i32> %i.bh, ptr %i.be, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_mpsadbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #16 {
.preheader.preheader:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, 12
  %i.c = and i32 %4, 4                            ; 4 uses
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = zext nneg i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = zext nneg i32 %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %5 = load <4 x i8>, ptr %i.e, align 1
  %6 = zext <4 x i8> %5 to <4 x i16>              ; 4 uses
  %i.q = load <8 x i8>, ptr %i.g, align 1
  %i.r = load <8 x i8>, ptr %i.j, align 1
  %i.s = load <8 x i8>, ptr %i.m, align 1
  %i.t = load <8 x i8>, ptr %i.p, align 1
  %i.u = zext <8 x i8> %i.q to <8 x i16>
  %i.v = zext <8 x i8> %i.r to <8 x i16>
  %i.w = zext <8 x i8> %i.s to <8 x i16>
  %i.x = zext <8 x i8> %i.t to <8 x i16>
  %i.y = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.z = sub nsw <8 x i16> %i.u, %i.y
  %i.aa = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.z, i1 true)
  %i.ab = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ac = sub nsw <8 x i16> %i.v, %i.ab
  %i.ad = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ac, i1 true)
  %i.ae = add nuw nsw <8 x i16> %i.ad, %i.aa
  %i.af = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ag = sub nsw <8 x i16> %i.w, %i.af
  %i.ah = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ag, i1 true)
  %i.ai = add nuw nsw <8 x i16> %i.ah, %i.ae
  %i.aj = shufflevector <4 x i16> %6, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ak = sub nsw <8 x i16> %i.x, %i.aj
  %i.al = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ak, i1 true)
  %i.am = add nuw nsw <8 x i16> %i.al, %i.ai
  store <8 x i16> %i.am, ptr %1, align 2
  %i.an = lshr i32 %4, 3                          ; 2 uses
  %i.ao = shl nuw nsw i32 %i.an, 2
  %i.ap = and i32 %i.ao, 12
  %i.aq = and i32 %i.an, 4
  %i.ar = or disjoint i32 %i.aq, 16               ; 4 uses
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.ax = zext nneg i32 %i.ar to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = zext nneg i32 %i.ar to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = zext nneg i32 %i.ar to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = load <4 x i8>, ptr %i.au, align 1
  %8 = zext <4 x i8> %7 to <4 x i16>              ; 4 uses
  %i.bh = load <8 x i8>, ptr %i.aw, align 1
  %i.bi = load <8 x i8>, ptr %i.az, align 1
  %i.bj = load <8 x i8>, ptr %i.bc, align 1
  %i.bk = load <8 x i8>, ptr %i.bf, align 1
  %i.bl = zext <8 x i8> %i.bh to <8 x i16>
  %i.bm = zext <8 x i8> %i.bi to <8 x i16>
  %i.bn = zext <8 x i8> %i.bj to <8 x i16>
  %i.bo = zext <8 x i8> %i.bk to <8 x i16>
  %i.bp = shufflevector <4 x i16> %8, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.bq = sub nsw <8 x i16> %i.bl, %i.bp
  %i.br = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bq, i1 true)
  %i.bs = shufflevector <4 x i16> %8, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bt = sub nsw <8 x i16> %i.bm, %i.bs
  %i.bu = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bt, i1 true)
  %i.bv = add nuw nsw <8 x i16> %i.bu, %i.br
  %i.bw = shufflevector <4 x i16> %8, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.bx = sub nsw <8 x i16> %i.bn, %i.bw
  %i.by = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bx, i1 true)
  %i.bz = add nuw nsw <8 x i16> %i.by, %i.bv
  %i.ca = shufflevector <4 x i16> %8, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.cb = sub nsw <8 x i16> %i.bo, %i.ca
  %i.cc = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cb, i1 true)
  %i.cd = add nuw nsw <8 x i16> %i.cc, %i.bz
  store <8 x i16> %i.cd, ptr %i.bg, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_pclmulqdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 1
  %i.b = lshr i32 %4, 4
  %.lobit = and i32 %i.b, 1
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %i.d = zext nneg i32 %.lobit to i64             ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr @cpuinfo, align 4
  %i.j = and i32 %i.i, 524288
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.f, i64 noundef %i.h)
  br label %clmul_64.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i128 @clmul_64_gen(i64 noundef %i.f, i64 noundef %i.h) #26
  br label %clmul_64.exit

clmul_64.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi i128 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  store i128 %.0.i, ptr %1, align 16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr @cpuinfo, align 4
  %i.t = and i32 %i.s, 524288
  %.not.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %clmul_64.exit
  %i.u = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.o, i64 noundef %i.r)
  br label %clmul_64.exit.1

bb.e:                                             ; preds = %clmul_64.exit
  %i.v = tail call i128 @clmul_64_gen(i64 noundef %i.o, i64 noundef %i.r) #26
  br label %clmul_64.exit.1

clmul_64.exit.1:                                  ; preds = %bb.e, %bb.d
  %.0.i.1 = phi i128 [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i128 %.0.i.1, ptr %i.w, align 16
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdec_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_IMC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_IMC_AK.exit

aesdec_ISB_ISR_IMC_AK.exit:                       ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %aesdec_ISB_ISR_IMC_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesdec_ISB_ISR_IMC_AK.exit.1

bb.e:                                             ; preds = %aesdec_ISB_ISR_IMC_AK.exit
  tail call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesdec_ISB_ISR_IMC_AK.exit.1

aesdec_ISB_ISR_IMC_AK.exit.1:                     ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdeclast_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_AK.exit

aesdec_ISB_ISR_AK.exit:                           ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %aesdec_ISB_ISR_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesdec_ISB_ISR_AK.exit.1

bb.e:                                             ; preds = %aesdec_ISB_ISR_AK.exit
  tail call void @aesdec_ISB_ISR_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesdec_ISB_ISR_AK.exit.1

aesdec_ISB_ISR_AK.exit.1:                         ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesenc_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesenc_SB_SR_MC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesenc_SB_SR_MC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesenc_SB_SR_MC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesenc_SB_SR_MC_AK.exit

aesenc_SB_SR_MC_AK.exit:                          ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %aesenc_SB_SR_MC_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesenc_SB_SR_MC_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesenc_SB_SR_MC_AK.exit.1

bb.e:                                             ; preds = %aesenc_SB_SR_MC_AK.exit
  tail call void @aesenc_SB_SR_MC_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesenc_SB_SR_MC_AK.exit.1

end_hunk_3
