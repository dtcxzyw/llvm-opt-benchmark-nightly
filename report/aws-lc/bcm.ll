Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 165
loop-unroll.NumUnrolled: 552
begin_hunk_0_@ecp_nistz256_get_affine:bb.a
  br i1 %i.f, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi19 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !80
  %wide.load20 = load <2 x i64>, ptr %i.h, align 8, !tbaa !80
  %i.i = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.j = or <2 x i64> %wide.load20, %vec.phi19    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !2671

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.p, %.lr.ph.i.i ]
  %.not.i = icmp eq i64 %.lcssa, 0
  %i.m = zext i1 %.not.i to i32
  br label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80
  %i.p = or i64 %i.o, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !2672

ec_GFp_simple_is_at_infinity.exit:                ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.06.lcssa.i.i = phi i32 [ 1, %bb.a ], [ %i.m, %._crit_edge.loopexit.i.i ]
  %i.q = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.06.lcssa.i.i) #47, !srcloc !120
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.76, i32 noundef 456) #46
  br label %bb.h

bb.c:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #46
  call void @bignum_montinv_p256(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #46
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %3, ptr noundef nonnull %i.r, ptr noundef nonnull %i.c) #46
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %i.b) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ecp_nistz256_add(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32), (72, 104), (144, 176)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.P256_POINT, align 8         ; 8 uses
  %5 = alloca %struct.P256_POINT, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @ecp_nistz256_point_add(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ecp_nistz256_dbl(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32), (72, 104), (144, 176)) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.P256_POINT, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @ecp_nistz256_point_double(ptr noundef nonnull %3, ptr noundef nonnull %3) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ecp_nistz256_point_mul(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32), (72, 104), (144, 176)) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [12 x i64], align 16              ; 7 uses
  %i.b = alloca [12 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.h = and i32 %i.g, 524544
  %.not.i = icmp eq i32 %i.h, 524544
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @p256_montjscalarmul_alt(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.a) #46
  br label %p256_montjscalarmul_selector.exit

bb.c:                                             ; preds = %bb.a
  call void @p256_montjscalarmul(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.a) #46
  br label %p256_montjscalarmul_selector.exit

p256_montjscalarmul_selector.exit:                ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ecp_nistz256_point_mul_base(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca [33 x i8], align 16               ; 6 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 0, %i.e
  %i.g = and i64 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 0, %i.i
  %i.k = and i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 0, ptr %i.m, align 16, !tbaa !76
  %i.n = load i8, ptr %i.c, align 16, !tbaa !76
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = and i64 %i.p, 254                        ; 3 uses
  %i.r = lshr i64 %i.q, 7                         ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %i.t = xor i64 %i.q, 255
  %i.u = and i64 %i.t, %i.s
  %i.v = icmp eq i64 %i.r, 0
  %i.w = select i1 %i.v, i64 %i.q, i64 0
  %i.x = or i64 %i.w, %i.u                        ; 3 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = sub nuw nsw i64 %i.x, %i.y
  %i.aa = and i64 %i.s, 1                         ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.z to i32
  call void @ecp_nistz256_select_w7(ptr noundef nonnull %i.h, ptr noundef nonnull @ecp_nistz256_precomputed, i32 noundef %i.ab) #46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 7 uses
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #46
  %3 = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %4 = load <2 x i64>, ptr %i.ac, align 16, !tbaa !80
  %5 = load <2 x i64>, ptr %i.ad, align 16, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %6 = sub nsw i64 0, %i.aa
  %7 = add nsw i64 %i.aa, -1
  %i.ah = insertelement <2 x i64> poison, i64 %6, i64 0
  %8 = shufflevector <2 x i64> %i.ah, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = and <2 x i64> %4, %8
  %i.ai = insertelement <2 x i64> poison, i64 %7, i64 0
  %10 = shufflevector <2 x i64> %i.ai, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = and <2 x i64> %10, %5
  %12 = xor <2 x i64> %11, %9
  store <2 x i64> %12, ptr %i.ad, align 16, !tbaa !80
  %13 = load <2 x i64>, ptr %i.ae, align 16, !tbaa !80
  %14 = and <2 x i64> %13, %8
  %15 = load <2 x i64>, ptr %i.af, align 16, !tbaa !80
  %16 = and <2 x i64> %15, %10
  %17 = xor <2 x i64> %16, %14
  store <2 x i64> %17, ptr %i.af, align 16, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.ak = icmp ne i64 %i.x, 0                     ; 4 uses
  %.neg = sext i1 %i.ak to i64
  %i.al = zext i1 %i.ak to i64
  store i64 %i.al, ptr %i.ac, align 16, !tbaa !80
  %i.am = select i1 %i.ak, i64 -4294967296, i64 0
  store i64 %i.am, ptr %3, align 8, !tbaa !80
  store i64 %.neg, ptr %i.ae, align 16, !tbaa !80
  %i.an = select i1 %i.ak, i64 4294967294, i64 0
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !80
  %i.ao = ptrtoint ptr %i.d to i64
  %i.ap = sub i64 0, %i.ao
  %i.aq = and i64 %i.ap, 16
  %18 = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.aj, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.03334 = phi i64 [ 7, %bb.a ], [ %i.bc, %bb.c ] ; 2 uses
  %i.au = add nsw i64 %.03334, -1                 ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = zext i16 %i.ax to i64
  %i.az = and i64 %i.au, 7
  %i.ba = lshr i64 %i.ay, %i.az
  %i.bb = and i64 %i.ba, 255                      ; 3 uses
  %i.bc = add nuw nsw i64 %.03334, 7
  %i.bd = lshr i64 %i.bb, 7                       ; 2 uses
  %i.be = sub nsw i64 0, %i.bd                    ; 2 uses
  %i.bf = xor i64 %i.bb, 255
  %i.bg = and i64 %i.bf, %i.be
  %i.bh = icmp eq i64 %i.bd, 0
  %i.bi = select i1 %i.bh, i64 %i.bb, i64 0
  %i.bj = or i64 %i.bi, %i.bg                     ; 2 uses
  %i.bk = lshr i64 %i.bj, 1
  %i.bl = sub nuw nsw i64 %i.bj, %i.bk
  %i.bm = and i64 %i.be, 1                        ; 2 uses
  %i.bn = getelementptr inbounds nuw [4096 x i8], ptr @ecp_nistz256_precomputed, i64 %indvars.iv
  %i.bo = trunc nuw nsw i64 %i.bl to i32
  call void @ecp_nistz256_select_w7(ptr noundef nonnull %i.h, ptr noundef nonnull %i.bn, i32 noundef %i.bo) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @ecp_nistz256_neg(ptr noundef nonnull %18, ptr noundef nonnull %i.ad) #46
  %19 = load <2 x i64>, ptr %18, align 16, !tbaa !80
  %20 = load <2 x i64>, ptr %i.ad, align 16, !tbaa !80
  %21 = sub nsw i64 0, %i.bm
  %22 = add nsw i64 %i.bm, -1
  %i.bp = insertelement <2 x i64> poison, i64 %21, i64 0
  %23 = shufflevector <2 x i64> %i.bp, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = and <2 x i64> %19, %23
  %i.bq = insertelement <2 x i64> poison, i64 %22, i64 0
  %25 = shufflevector <2 x i64> %i.bq, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %26 = and <2 x i64> %25, %20
  %27 = xor <2 x i64> %26, %24
  store <2 x i64> %27, ptr %i.ad, align 16, !tbaa !80
  %28 = load <2 x i64>, ptr %i.ar, align 16, !tbaa !80
  %29 = and <2 x i64> %28, %23
  %30 = load <2 x i64>, ptr %i.af, align 16, !tbaa !80
  %31 = and <2 x i64> %30, %25
  %32 = xor <2 x i64> %31, %29
  store <2 x i64> %32, ptr %i.af, align 16, !tbaa !80
  call void @ecp_nistz256_point_add_affine(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef nonnull %i.h) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 37
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !2673
}

; Function Attrs: nounwind uwtable
define internal void @ecp_nistz256_points_mul_public(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca [1600 x i8], align 16             ; 4 uses
  %i.b = alloca [33 x i8], align 16               ; 7 uses
  %i.c = alloca [4 x i64], align 16               ; 7 uses
  %i.d = alloca [128 x i8], align 16              ; 4 uses
  %i.e = alloca [128 x i8], align 16              ; 4 uses
  %i.f = alloca [33 x i8], align 16               ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 0, %i.i
  %i.k = and i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %i.m, align 16, !tbaa !76
  %i.n = load i8, ptr %i.f, align 16, !tbaa !76
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = and i64 %i.p, 254                        ; 3 uses
  %i.r = lshr i64 %i.q, 7                         ; 2 uses
  %i.s = sub nsw i64 0, %i.r                      ; 2 uses
  %i.t = xor i64 %i.q, 255
  %i.u = and i64 %i.t, %i.s
  %i.v = icmp eq i64 %i.r, 0
  %i.w = select i1 %i.v, i64 %i.q, i64 0
  %i.x = or i64 %i.w, %i.u                        ; 3 uses
  %i.y = and i64 %i.s, 1
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = lshr i64 %i.x, 1
  %i.aa = sub nuw nsw i64 %i.x, %i.z
  %i.ab = getelementptr [64 x i8], ptr @ecp_nistz256_precomputed, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 64 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ae = getelementptr i8, ptr %i.ab, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ad, ptr noundef nonnull readonly align 32 dereferenceable(32) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.af, ptr noundef nonnull align 16 dereferenceable(32) @ONE, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, i8 0, i64 96, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not39 = icmp eq i64 %i.y, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ag) #46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = ptrtoint ptr %i.g to i64
  %i.ai = sub i64 0, %i.ah
  %i.aj = and i64 %i.ai, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #46
  %i.am = ptrtoint ptr %i.h to i64
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %i.an, 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ao ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.aq = ptrtoint ptr %i.a to i64
  %i.ar = sub i64 0, %i.aq
  %i.as = and i64 %i.ar, 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.au, align 16, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.av, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ax, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ay, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 3 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.az, ptr noundef nonnull %i.at) #46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 192 ; 2 uses
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.az, ptr noundef nonnull %i.at) #46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 288 ; 3 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.az) #46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 480 ; 3 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba) #46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 672 ; 3 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bb) #46
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 1056 ; 2 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bc) #46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 384 ; 2 uses
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.at) #46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 576 ; 2 uses
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.at) #46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 768
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.at) #46
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 1152
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.be, ptr noundef nonnull %i.at) #46
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 1248 ; 2 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bg) #46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 864 ; 2 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf) #46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 1344
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.at) #46
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 960
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.at) #46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 1440
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bd) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.bo = ptrtoint ptr %i.d to i64
  %i.bp = sub i64 0, %i.bo
  %i.bq = and i64 %i.bp, 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bq ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !76
  %i.bu = lshr i8 %i.bt, 6
  %i.bv = zext nneg i8 %i.bu to i32               ; 2 uses
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = sub nuw nsw i32 %i.bv, %i.bw
  call void @ecp_nistz256_select_w5(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.at, i32 noundef %i.bx) #46
  %5 = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 6 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 4 uses
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.01.i = phi i64 [ 250, %bb.g ], [ %i.cu, %bb.h ] ; 3 uses
  %i.bz = add nsw i64 %.01.i, -1                  ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 1
  %i.cd = zext i16 %i.cc to i64
  %i.ce = and i64 %i.bz, 7
  %i.cf = lshr i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, 63                       ; 3 uses
  %i.ch = lshr i64 %i.cg, 5                       ; 2 uses
  %i.ci = sub nsw i64 0, %i.ch                    ; 2 uses
  %i.cj = xor i64 %i.cg, 63
  %i.ck = and i64 %i.cj, %i.ci
  %i.cl = icmp eq i64 %i.ch, 0
  %i.cm = select i1 %i.cl, i64 %i.cg, i64 0
  %i.cn = or i64 %i.cm, %i.ck                     ; 2 uses
  %i.co = lshr i64 %i.cn, 1
  %i.cp = sub nuw nsw i64 %i.cn, %i.co
  %i.cq = and i64 %i.ci, 1                        ; 2 uses
  %i.cr = trunc nuw nsw i64 %i.cp to i32
  call void @ecp_nistz256_select_w5(ptr noundef nonnull %i.br, ptr noundef nonnull %i.at, i32 noundef %i.cr) #46
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.c, ptr noundef nonnull %5) #46
  %7 = load <2 x i64>, ptr %i.c, align 16, !tbaa !80
  %8 = load <2 x i64>, ptr %5, align 16, !tbaa !80
  %9 = sub nsw i64 0, %i.cq
  %10 = add nsw i64 %i.cq, -1
  %i.cs = insertelement <2 x i64> poison, i64 %9, i64 0
  %11 = shufflevector <2 x i64> %i.cs, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = and <2 x i64> %7, %11
  %i.ct = insertelement <2 x i64> poison, i64 %10, i64 0
  %13 = shufflevector <2 x i64> %i.ct, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = and <2 x i64> %13, %8
  %15 = xor <2 x i64> %14, %12
  store <2 x i64> %15, ptr %5, align 16, !tbaa !80
  %16 = load <2 x i64>, ptr %6, align 16, !tbaa !80
  %17 = and <2 x i64> %16, %11
  %18 = load <2 x i64>, ptr %i.by, align 16, !tbaa !80
  %19 = and <2 x i64> %18, %13
  %20 = xor <2 x i64> %19, %17
  store <2 x i64> %20, ptr %i.by, align 16, !tbaa !80
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.br) #46
  %i.cu = add nsw i64 %.01.i, -5
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) #46
  %i.cv = icmp samesign ugt i64 %.01.i, 9
  br i1 %i.cv, label %bb.h, label %ecp_nistz256_windowed_mul.exit, !llvm.loop !2674

ecp_nistz256_windowed_mul.exit:                   ; preds = %bb.h
  %i.cw = load i8, ptr %i.b, align 16, !tbaa !76
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 1
  %i.cz = and i64 %i.cy, 62                       ; 3 uses
  %i.da = lshr i64 %i.cz, 5                       ; 2 uses
  %i.db = sub nsw i64 0, %i.da                    ; 2 uses
  %i.dc = xor i64 %i.cz, 63
  %i.dd = and i64 %i.dc, %i.db
  %i.de = icmp eq i64 %i.da, 0
  %i.df = select i1 %i.de, i64 %i.cz, i64 0
  %i.dg = or i64 %i.df, %i.dd                     ; 2 uses
  %i.dh = lshr i64 %i.dg, 1
  %i.di = sub nuw nsw i64 %i.dg, %i.dh
  %i.dj = and i64 %i.db, 1                        ; 2 uses
  %i.dk = trunc nuw nsw i64 %i.di to i32
  call void @ecp_nistz256_select_w5(ptr noundef nonnull %i.br, ptr noundef nonnull %i.at, i32 noundef %i.dk) #46
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.c, ptr noundef nonnull %5) #46
  %21 = load <2 x i64>, ptr %i.c, align 16, !tbaa !80
  %22 = load <2 x i64>, ptr %5, align 16, !tbaa !80
  %23 = sub nsw i64 0, %i.dj
  %24 = add nsw i64 %i.dj, -1
  %i.dl = insertelement <2 x i64> poison, i64 %23, i64 0
  %25 = shufflevector <2 x i64> %i.dl, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %26 = and <2 x i64> %21, %25
  %i.dm = insertelement <2 x i64> poison, i64 %24, i64 0
  %27 = shufflevector <2 x i64> %i.dm, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %28 = and <2 x i64> %27, %22
  %29 = xor <2 x i64> %28, %26
  store <2 x i64> %29, ptr %5, align 16, !tbaa !80
  %30 = load <2 x i64>, ptr %6, align 16, !tbaa !80
  %31 = and <2 x i64> %30, %25
  %32 = load <2 x i64>, ptr %i.by, align 16, !tbaa !80
  %33 = and <2 x i64> %32, %27
  %34 = xor <2 x i64> %33, %31
  store <2 x i64> %34, ptr %i.by, align 16, !tbaa !80
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.br) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ap) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dn, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dp, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.dq, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  ret void

bb.i:                                             ; preds = %bb.f, %bb.m
  %indvars.iv = phi i64 [ 1, %bb.f ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.04142 = phi i64 [ 7, %bb.f ], [ %i.dz, %bb.m ] ; 2 uses
  %i.dr = add nsw i64 %.04142, -1                 ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 1
  %i.dv = zext i16 %i.du to i64
  %i.dw = and i64 %i.dr, 7
  %i.dx = lshr i64 %i.dv, %i.dw
  %i.dy = and i64 %i.dx, 255                      ; 3 uses
  %i.dz = add nuw nsw i64 %.04142, 7
  %i.ea = lshr i64 %i.dy, 7                       ; 2 uses
  %i.eb = sub nsw i64 0, %i.ea                    ; 2 uses
  %i.ec = xor i64 %i.dy, 255
  %i.ed = and i64 %i.ec, %i.eb
  %i.ee = icmp eq i64 %i.ea, 0
  %i.ef = select i1 %i.ee, i64 %i.dy, i64 0
  %i.eg = or i64 %i.ef, %i.ed                     ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ei = lshr i64 %i.eg, 1
  %i.ej = sub nuw nsw i64 %i.eg, %i.ei
  %i.ek = and i64 %i.eb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #46
  %i.el = getelementptr inbounds nuw [4096 x i8], ptr @ecp_nistz256_precomputed, i64 %indvars.iv
  %i.em = getelementptr [64 x i8], ptr %i.el, i64 %i.ej
  %i.en = getelementptr i8, ptr %i.em, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef nonnull readonly align 64 dereferenceable(64) %i.en, i64 64, i1 false)
  %.not40 = icmp eq i64 %i.ek, 0
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.al, ptr noundef nonnull %i.al) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @ecp_nistz256_point_add_affine(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ak) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 37
  br i1 %exitcond.not, label %bb.g, label %bb.i, !llvm.loop !2675
}

; Function Attrs: nounwind uwtable
define internal void @ecp_nistz256_inv0_mod_ord(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [15 x [4 x i64]], align 16        ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 1) #46
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #46
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 5 uses
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #46
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 3 uses
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, i64 noundef 1) #46
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #46
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 5 uses
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i64 noundef 1) #46
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, i64 noundef 1) #46
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.j, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) #46
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.k, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #46
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 5 uses
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i64 noundef 2) #46
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef nonnull %i.c) #46
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 5 uses
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef nonnull %i.m, ptr noundef nonnull %i.l, i64 noundef 8) #46
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.m, ptr noundef nonnull %i.m, ptr noundef nonnull %i.l) #46
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 416 ; 5 uses
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, i64 noundef 16) #46
  call void @ecp_nistz256_ord_mul_mont(ptr noundef nonnull %i.n, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m) #46
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef %1, ptr noundef nonnull %i.n, i64 noundef 64) #46
  call void @ecp_nistz256_ord_mul_mont(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %i.n) #46
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.011 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.c ]   ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @ecp_nistz256_inv0_mod_ord.kChain, i64 %.011 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !2678
  %i.q = zext i8 %i.p to i64
  call void @ecp_nistz256_ord_sqr_mont(ptr noundef %1, ptr noundef %1, i64 noundef %i.q) #46
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !2679
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t
  call void @ecp_nistz256_ord_mul_mont(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %i.u) #46
  %i.v = add nuw nsw i64 %.011, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, 27
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !2676
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ecp_nistz256_scalar_to_montgomery_inv_vartime(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73
  %i.b = and i32 %i.a, 268435456
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ec_simple_scalar_to_montgomery_inv_vartime(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297
  %i.f = tail call i32 @beeu_mod_inverse_vartime(ptr noundef %1, ptr noundef %2, ptr noundef %i.e) #46
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93
  %i.j = sext i32 %i.i to i64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !124
  tail call void @bn_mod_mul_montgomery_small(ptr noundef %1, ptr noundef %1, ptr noundef %i.k, i64 noundef %i.j, ptr noundef nonnull %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ %i.c, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ecp_nistz256_cmp_x_coordinate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 12 uses
  %i.b = alloca [4 x i64], align 16               ; 5 uses
  %i.c = alloca [4 x i64], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !277  ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit.thread

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi32 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8, !tbaa !80
  %wide.load33 = load <2 x i64>, ptr %i.i, align 8, !tbaa !80
  %i.j = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.k = or <2 x i64> %wide.load33, %vec.phi32    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !2680

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i.preheader
end_hunk_0
