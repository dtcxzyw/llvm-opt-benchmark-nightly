Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem_poly?download=true
inline.NumInlined: 49
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mlkem_get_noise:bb.a
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %.peel.begin
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.h = tail call fastcc i32 @mlkem_get_noise_eta1_c(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull %5, i8 noundef zeroext 3) ; 2 uses
  %i.i = load i8, ptr %i.b, align 1, !tbaa !13
  %i.j = add i8 %i.i, 1
  store i8 %i.j, ptr %i.b, align 1, !tbaa !13
  %i.k = icmp eq i32 %i.h, 0
  %i.l = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.thread

.preheader.i.preheader:                           ; preds = %bb.c
  %i.m = tail call fastcc i32 @mlkem_get_noise_eta1_c(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, i8 noundef zeroext 3) ; 2 uses
  %i.n = load i8, ptr %i.b, align 1, !tbaa !13
  %i.o = add i8 %i.n, 1
  store i8 %i.o, ptr %i.b, align 1, !tbaa !13
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %mlkem_get_noise_c.exit.loopexit.loopexit, label %mlkem_get_noise_c.exit

.thread:                                          ; preds = %.peel.begin, %bb.c
  %.lcssa3242 = phi i32 [ %i.h, %bb.c ], [ %i.c, %.peel.begin ]
  store i8 4, ptr %i.b, align 1, !tbaa !13
  br label %mlkem_get_noise_c.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call fastcc i32 @mlkem_get_noise_c(ptr noundef %0, i32 noundef 2, ptr noundef %2, i32 noundef 3, ptr noundef %3, i32 noundef 2, ptr noundef nonnull %4, ptr noundef %5)
  br label %mlkem_get_noise_c.exit

bb.e:                                             ; preds = %bb.a
  %i.r = tail call fastcc i32 @mlkem_get_noise_c(ptr noundef %0, i32 noundef 3, ptr noundef %2, i32 noundef 2, ptr noundef %3, i32 noundef 2, ptr noundef %4, ptr noundef %5)
  br label %mlkem_get_noise_c.exit

bb.f:                                             ; preds = %bb.a
  %i.s = tail call fastcc i32 @mlkem_get_noise_c(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef 2, ptr noundef %3, i32 noundef 2, ptr noundef %4, ptr noundef %5)
  br label %mlkem_get_noise_c.exit

mlkem_get_noise_c.exit.loopexit.loopexit:         ; preds = %.preheader.i.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.u = tail call fastcc i32 @mlkem_get_noise_eta1_c(ptr noundef %0, ptr noundef nonnull %i.t, ptr noundef nonnull %5, i8 noundef zeroext 3)
  %i.v = load i8, ptr %i.b, align 1, !tbaa !13
  %i.w = add i8 %i.v, 1
  store i8 %i.w, ptr %i.b, align 1, !tbaa !13
  br label %mlkem_get_noise_c.exit

mlkem_get_noise_c.exit:                           ; preds = %.preheader.i.preheader, %mlkem_get_noise_c.exit.loopexit.loopexit, %.thread, %bb.a, %bb.e, %bb.f, %bb.d
  %.0 = phi i32 [ -192, %bb.a ], [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %.lcssa3242, %.thread ], [ %i.m, %.preheader.i.preheader ], [ %i.u, %mlkem_get_noise_c.exit.loopexit.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mlkem_get_noise_c(ptr noundef %0, i32 noundef range(i32 2, 5) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 2, 4) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef range(i32 2, 4) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr noundef initializes((32, 33)) %7) unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store i8 0, ptr %i.b, align 1, !tbaa !13
  %i.c = trunc nuw nsw i32 %3 to i8
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.f = tail call fastcc i32 @mlkem_get_noise_eta1_c(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %7, i8 noundef zeroext %i.c) ; 2 uses
  %i.g = load i8, ptr %i.b, align 1, !tbaa !13
  %i.h = add i8 %i.g, 1
  store i8 %i.h, ptr %i.b, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = icmp eq i32 %i.f, 0                      ; 2 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.d
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !63

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ne ptr %4, null
  %or.cond = and i1 %i.l, %i.i
  br i1 %or.cond, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.m = trunc nuw nsw i32 %5 to i8
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv42 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next43, %bb.d ] ; 2 uses
  %.idx48 = shl nuw nsw i64 %indvars.iv42, 9
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %.idx48
  %i.o = tail call fastcc i32 @mlkem_get_noise_eta1_c(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %7, i8 noundef zeroext %i.m) ; 2 uses
  %i.p = load i8, ptr %i.b, align 1, !tbaa !13
  %i.q = add i8 %i.p, 1
  store i8 %i.q, ptr %i.b, align 1, !tbaa !13
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.r = icmp eq i32 %i.o, 0
  %i.s = icmp samesign ult i64 %indvars.iv.next43, %i.d
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %bb.d, label %.loopexit, !llvm.loop !64

bb.e:                                             ; preds = %bb.c
  %.tr = trunc nuw nsw i32 %1 to i8
  %i.u = shl nuw nsw i8 %.tr, 1
  store i8 %i.u, ptr %i.b, align 1, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e
  %.2 = phi i32 [ %i.f, %bb.e ], [ %i.o, %bb.d ]  ; 2 uses
  %i.v = icmp eq i32 %.2, 0
  %i.w = icmp ne ptr %6, null
  %or.cond3 = and i1 %i.w, %i.v
  br i1 %or.cond3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.x = tail call i32 @wc_Shake256_Update(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 33) #8 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %mlkem_prf.exit.i, label %mlkem_get_noise_eta2_c.exit

mlkem_prf.exit.i:                                 ; preds = %bb.f
  %i.z = call i32 @wc_Shake256_Final(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 128) #8 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %mlkem_get_noise_eta2_c.exit

bb.g:                                             ; preds = %mlkem_prf.exit.i
  call fastcc void @mlkem_cbd_eta2(ptr noundef nonnull %6, ptr noundef %i.a)
  br label %mlkem_get_noise_eta2_c.exit

mlkem_get_noise_eta2_c.exit:                      ; preds = %bb.f, %mlkem_prf.exit.i, %bb.g
  %.0.i5.i = phi i32 [ %i.z, %mlkem_prf.exit.i ], [ 0, %bb.g ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.h:                                             ; preds = %mlkem_get_noise_eta2_c.exit, %.loopexit
  %.3 = phi i32 [ %.0.i5.i, %mlkem_get_noise_eta2_c.exit ], [ %.2, %.loopexit ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 1) i32 @mlkem_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %mlkem_cmp_c.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi3 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !13
  %wide.load4 = load <4 x i8>, ptr %i.c, align 1, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load5 = load <4 x i8>, ptr %i.d, align 1, !tbaa !13
  %wide.load6 = load <4 x i8>, ptr %i.e, align 1, !tbaa !13
  %i.f = xor <4 x i8> %wide.load5, %wide.load
  %i.g = xor <4 x i8> %wide.load6, %wide.load4
  %i.h = zext <4 x i8> %i.f to <4 x i32>
  %i.i = zext <4 x i8> %i.g to <4 x i32>
  %i.j = or <4 x i32> %vec.phi, %i.h              ; 2 uses
  %i.k = or <4 x i32> %vec.phi3, %i.i             ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.010.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.m, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.010.i = phi i32 [ %i.t, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = xor i8 %i.q, %i.o
  %i.s = zext i8 %i.r to i32
  %i.t = or i32 %.010.i, %i.s                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !66

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.m, %middle.block ], [ %i.t, %.lr.ph.i ]
  %3 = icmp ne i32 %.lcssa, 0
  %i.u = sext i1 %3 to i32
  br label %mlkem_cmp_c.exit

mlkem_cmp_c.exit:                                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_vec_compress_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %mlkem_vec_compress_10_c.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64         ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.a = shl nuw nsw i64 %indvars.iv.i, 8
  %i.b = and i64 %i.a, 4294967040
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.b
  tail call fastcc void @mlkem_csubq_c(ptr noundef %i.c)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !67

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.c
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %bb.c ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0113.i = phi ptr [ %i.ec, %bb.c ], [ %0, %.lr.ph.i ]
  %i.d = shl nuw nsw i64 %indvars.iv119.i, 8
  %i.e = and i64 %i.d, 4294967040
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %indvars.iv116.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next117.i, %bb.b ] ; 3 uses
  %.1111.i = phi ptr [ %.0113.i, %.preheader.i ], [ %i.ec, %bb.b ] ; 6 uses
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv116.i ; 16 uses
  %i.f = load i16, ptr %gep, align 2, !tbaa !10
  %i.g = sext i16 %i.f to i64
  %i.h = mul i64 %i.g, 5541226816974848
  %i.i = add i64 %i.h, 9009904931897344
  %i.j = lshr i64 %i.i, 54
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !10
  %i.n = sext i16 %i.m to i64
  %i.o = mul i64 %i.n, 5541226816974848
  %i.p = add i64 %i.o, 9009904931897344
  %i.q = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10
  %i.s = sext i16 %i.r to i64
  %i.t = mul i64 %i.s, 5541226816974848
  %i.u = add i64 %i.t, 9009904931897344
  %i.v = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.w = load i16, ptr %i.v, align 2, !tbaa !10
  %i.x = sext i16 %i.w to i64
  %i.y = mul i64 %i.x, 5541226816974848
  %i.z = add i64 %i.y, 9009904931897344
  %i.aa = lshr i64 %i.z, 54
  %i.ab = trunc nuw nsw i64 %i.aa to i32          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !10
  %i.ae = sext i16 %i.ad to i64
  %i.af = mul i64 %i.ae, 5541226816974848
  %i.ag = add i64 %i.af, 9009904931897344
  %i.ah = getelementptr inbounds nuw i8, ptr %gep, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !10
  %i.aj = sext i16 %i.ai to i64
  %i.ak = mul i64 %i.aj, 5541226816974848
  %i.al = add i64 %i.ak, 9009904931897344
  %i.am = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.an = load i16, ptr %i.am, align 2, !tbaa !10
  %i.ao = sext i16 %i.an to i64
  %i.ap = mul i64 %i.ao, 5541226816974848
  %i.aq = add i64 %i.ap, 9009904931897344
  %i.ar = lshr i64 %i.aq, 54
  %i.as = trunc nuw nsw i64 %i.ar to i32          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %gep, i64 14
  %i.au = load i16, ptr %i.at, align 2, !tbaa !10
  %i.av = sext i16 %i.au to i64
  %i.aw = mul i64 %i.av, 5541226816974848
  %i.ax = add i64 %i.aw, 9009904931897344
  %i.ay = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10
  %i.ba = sext i16 %i.az to i64
  %i.bb = mul i64 %i.ba, 5541226816974848
  %i.bc = add i64 %i.bb, 9009904931897344
  %i.bd = getelementptr inbounds nuw i8, ptr %gep, i64 18
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !10
  %i.bf = sext i16 %i.be to i64
  %i.bg = mul i64 %i.bf, 5541226816974848
  %i.bh = add i64 %i.bg, 9009904931897344
  %i.bi = lshr i64 %i.bh, 54
  %i.bj = trunc nuw nsw i64 %i.bi to i32          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %gep, i64 20
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !10
  %i.bm = sext i16 %i.bl to i64
  %i.bn = mul i64 %i.bm, 5541226816974848
  %i.bo = add i64 %i.bn, 9009904931897344
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 22
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !10
  %i.br = sext i16 %i.bq to i64
  %i.bs = mul i64 %i.br, 5541226816974848
  %i.bt = add i64 %i.bs, 9009904931897344
  %i.bu = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !10
  %i.bw = sext i16 %i.bv to i64
  %i.bx = mul i64 %i.bw, 5541226816974848
  %i.by = add i64 %i.bx, 9009904931897344
  %i.bz = lshr i64 %i.by, 54
  %i.ca = trunc nuw nsw i64 %i.bz to i32          ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %gep, i64 26
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !10
  %i.cd = sext i16 %i.cc to i64
  %i.ce = mul i64 %i.cd, 5541226816974848
  %i.cf = add i64 %i.ce, 9009904931897344
  %i.cg = getelementptr inbounds nuw i8, ptr %gep, i64 28
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !10
  %i.ci = sext i16 %i.ch to i64
  %i.cj = mul i64 %i.ci, 5541226816974848
  %i.ck = add i64 %i.cj, 9009904931897344
  %i.cl = getelementptr inbounds nuw i8, ptr %gep, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !10
  %i.cn = sext i16 %i.cm to i64
  %i.co = mul i64 %i.cn, 5541226816974848
  %i.cp = add i64 %i.co, 9009904931897344
  %sh.diff.i = lshr i64 %i.p, 44
  %tr.sh.diff.i = trunc nuw nsw i64 %sh.diff.i to i32
  %i.cq = and i32 %tr.sh.diff.i, 1047552
  %i.cr = or disjoint i32 %i.cq, %i.k
  %sh.diff88.i = lshr i64 %i.u, 34
  %tr.sh.diff89.i = trunc nuw nsw i64 %sh.diff88.i to i32
  %i.cs = and i32 %tr.sh.diff89.i, 1072693248
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = shl i32 %i.ab, 30
  %i.cv = or disjoint i32 %i.ct, %i.cu
  store i32 %i.cv, ptr %.1111.i, align 4, !tbaa !14
  %i.cw = lshr i32 %i.ab, 2
  %sh.diff90.i = lshr i64 %i.ag, 46
  %tr.sh.diff91.i = trunc nuw nsw i64 %sh.diff90.i to i32
  %i.cx = and i32 %tr.sh.diff91.i, 261888
  %i.cy = or disjoint i32 %i.cx, %i.cw
  %sh.diff92.i = lshr i64 %i.al, 36
  %tr.sh.diff93.i = trunc nuw nsw i64 %sh.diff92.i to i32
  %i.cz = and i32 %tr.sh.diff93.i, 268173312
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = shl i32 %i.as, 28
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.1111.i, i64 4
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !14
  %i.de = lshr i32 %i.as, 4
  %sh.diff94.i = lshr i64 %i.ax, 48
  %tr.sh.diff95.i = trunc nuw nsw i64 %sh.diff94.i to i32
  %i.df = and i32 %tr.sh.diff95.i, 65472
  %i.dg = or disjoint i32 %i.df, %i.de
  %sh.diff96.i = lshr i64 %i.bc, 38
  %tr.sh.diff97.i = trunc nuw nsw i64 %sh.diff96.i to i32
  %i.dh = and i32 %tr.sh.diff97.i, 67043328
  %i.di = or disjoint i32 %i.dg, %i.dh
  %i.dj = shl i32 %i.bj, 26
  %i.dk = or disjoint i32 %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.1111.i, i64 8
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !14
  %i.dm = lshr i32 %i.bj, 6
  %sh.diff98.i = lshr i64 %i.bo, 50
  %tr.sh.diff99.i = trunc nuw nsw i64 %sh.diff98.i to i32
  %i.dn = and i32 %tr.sh.diff99.i, 16368
  %i.do = or disjoint i32 %i.dn, %i.dm
  %sh.diff100.i = lshr i64 %i.bt, 40
  %tr.sh.diff101.i = trunc nuw nsw i64 %sh.diff100.i to i32
  %i.dp = and i32 %tr.sh.diff101.i, 16760832
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = shl i32 %i.ca, 24
  %i.ds = or disjoint i32 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %.1111.i, i64 12
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !14
  %i.du = lshr i32 %i.ca, 8
  %sh.diff102.i = lshr i64 %i.cf, 52
  %tr.sh.diff103.i = trunc nuw nsw i64 %sh.diff102.i to i32
  %i.dv = and i32 %tr.sh.diff103.i, 4092
  %i.dw = or disjoint i32 %i.dv, %i.du
  %sh.diff104.i = lshr i64 %i.ck, 42
  %tr.sh.diff105.i = trunc nuw nsw i64 %sh.diff104.i to i32
  %i.dx = and i32 %tr.sh.diff105.i, 4190208
  %i.dy = or disjoint i32 %i.dw, %i.dx
  %sh.diff106.i = lshr i64 %i.cp, 32
  %tr.sh.diff107.i = trunc nuw i64 %sh.diff106.i to i32
  %i.dz = and i32 %tr.sh.diff107.i, -4194304
  %i.ea = or disjoint i32 %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.1111.i, i64 16
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %.1111.i, i64 20 ; 2 uses
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 16
  %i.ed = icmp samesign ult i64 %indvars.iv116.i, 240
  br i1 %i.ed, label %bb.b, label %bb.c, !llvm.loop !68

bb.c:                                             ; preds = %bb.b
end_hunk_0
