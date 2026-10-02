Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/blowfish?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BF_cbc_encrypt:bb.a
  %.5122 = phi ptr [ %i.hw, %bb.r ], [ %i.hn, %bb.o ]
  %i.hx = trunc i32 %i.hk to i8
  %i.hy = getelementptr inbounds i8, ptr %.5122, i64 -1 ; 2 uses
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.6123 = phi ptr [ %i.hy, %bb.s ], [ %i.hn, %bb.o ]
  %i.hz = lshr i32 %i.hk, 8
  %i.ia = trunc i32 %i.hz to i8
  %i.ib = getelementptr inbounds i8, ptr %.6123, i64 -1 ; 2 uses
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %.7124 = phi ptr [ %i.ib, %bb.t ], [ %i.hn, %bb.o ]
  %i.ic = lshr i32 %i.hk, 16
  %i.id = trunc i32 %i.ic to i8
  %i.ie = getelementptr inbounds i8, ptr %.7124, i64 -1 ; 2 uses
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.u
  %.8125 = phi ptr [ %i.ie, %bb.u ], [ %i.hn, %bb.o ]
  %i.if = lshr i32 %i.hk, 24
  %i.ig = trunc nuw i32 %i.if to i8
  %i.ih = getelementptr inbounds i8, ptr %.8125, i64 -1
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !9
  store i32 %i.gq, ptr %i.e, align 4, !tbaa !8
  store i32 %i.hh, ptr %i.f, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge160
  %i.ii = phi i32 [ %i.hh, %bb.v ], [ %i.fx, %._crit_edge160 ] ; 4 uses
  %i.ij = phi i32 [ %i.gq, %bb.v ], [ %i.fy, %._crit_edge160 ] ; 4 uses
  %i.ik = lshr i32 %i.ij, 24
  %i.il = trunc nuw i32 %i.ik to i8
  store i8 %i.il, ptr %4, align 1, !tbaa !9
  %i.im = lshr i32 %i.ij, 16
  %i.in = trunc i32 %i.im to i8
  store i8 %i.in, ptr %i.h, align 1, !tbaa !9
  %i.io = lshr i32 %i.ij, 8
  %i.ip = trunc i32 %i.io to i8
  store i8 %i.ip, ptr %i.l, align 1, !tbaa !9
  %i.iq = trunc i32 %i.ij to i8
  store i8 %i.iq, ptr %i.q, align 1, !tbaa !9
  %i.ir = lshr i32 %i.ii, 24
  %i.is = trunc nuw i32 %i.ir to i8
  store i8 %i.is, ptr %i.v, align 1, !tbaa !9
  %i.it = lshr i32 %i.ii, 16
  %i.iu = trunc i32 %i.it to i8
  store i8 %i.iu, ptr %i.w, align 1, !tbaa !9
  %i.iv = lshr i32 %i.ii, 8
  %i.iw = trunc i32 %i.iv to i8
  store i8 %i.iw, ptr %i.x, align 1, !tbaa !9
  %i.ix = trunc i32 %i.ii to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.l
  %.sink = phi i8 [ %i.ix, %bb.w ], [ %.pre-phi209, %bb.l ]
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 %.sink, ptr %i.iy, align 1, !tbaa !9
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.f, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.g, i64 noundef 8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @BF_set_key(ptr noundef initializes((0, 4168)) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4168) %0, ptr noundef nonnull align 4 dereferenceable(4168) @bf_init, i64 4168, i1 false)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %1, i64 72)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %spec.store.select ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.058 = phi ptr [ %2, %bb.a ], [ %.4, %bb.b ]   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.058, i64 1 ; 2 uses
  %i.d = load i8, ptr %.058, align 1, !tbaa !9
  %i.e = zext i8 %i.d to i32
  %.not = icmp ult ptr %i.c, %i.b
  %spec.select = select i1 %.not, ptr %i.c, ptr %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !9
  %i.h = zext i8 %i.g to i32
  %.not54 = icmp ult ptr %i.f, %i.b
  %.2 = select i1 %.not54, ptr %i.f, ptr %2       ; 2 uses
  %i.i = shl nuw nsw i32 %i.e, 16
  %i.j = shl nuw nsw i32 %i.h, 8
  %i.k = or disjoint i32 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.m = load i8, ptr %.2, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n
  %.not55 = icmp ult ptr %i.l, %i.b
  %.3 = select i1 %.not55, ptr %i.l, ptr %2       ; 2 uses
  %i.p = shl nuw i32 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.r = load i8, ptr %.3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s
  %.not56 = icmp ult ptr %i.q, %i.b
  %.4 = select i1 %.not56, ptr %i.q, ptr %2
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = xor i32 %i.t, %i.v
  store i32 %i.w, ptr %i.u, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.y = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.y, ptr %0, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.aa, ptr %i.z, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.ac, ptr %i.ab, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.ae, ptr %i.ad, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.ai, ptr %i.ah, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.ak, ptr %i.aj, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.am, ptr %i.al, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.ao, ptr %i.an, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv65 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next66, %bb.d ] ; 3 uses
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv65
  %i.ar = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.ar, ptr %i.aq, align 4, !tbaa !8
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 2
  %i.as = icmp samesign ult i64 %indvars.iv65, 1022
  br i1 %i.as, label %bb.d, label %bb.e, !llvm.loop !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @BF_cfb64_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = load i32, ptr %5, align 4, !tbaa !8
  %i.c = and i32 %i.b, 7                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %6, 0
  %.not107115 = icmp eq i64 %2, 0                 ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader109

.preheader109:                                    ; preds = %bb.a
  br i1 %.not107115, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not107115, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ]
  %.0100114 = phi i32 [ %i.c, %.lr.ph ], [ %i.at, %bb.d ] ; 3 uses
  %.0103113 = phi ptr [ %0, %.lr.ph ], [ %i.al, %bb.d ] ; 2 uses
  %.0105112 = phi ptr [ %1, %.lr.ph ], [ %i.ar, %bb.d ] ; 2 uses
  %i.t = add i64 %.in, -1                         ; 2 uses
  %i.u = icmp eq i32 %.0100114, 0
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %7 = load i32, ptr %4, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr %i.a, align 4, !tbaa !8
  %9 = load i32, ptr %i.g, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  store i32 %10, ptr %i.k, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef %3)
  %i.v = load i32, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  store i8 %i.x, ptr %4, align 1, !tbaa !9
  %i.y = lshr i32 %i.v, 16
  %i.z = trunc i32 %i.y to i8
  store i8 %i.z, ptr %i.d, align 1, !tbaa !9
  %i.aa = lshr i32 %i.v, 8
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.e, align 1, !tbaa !9
  %i.ac = trunc i32 %i.v to i8
  store i8 %i.ac, ptr %i.f, align 1, !tbaa !9
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !8   ; 4 uses
  %i.ae = lshr i32 %i.ad, 24
  %i.af = trunc nuw i32 %i.ae to i8
  store i8 %i.af, ptr %i.g, align 1, !tbaa !9
  %i.ag = lshr i32 %i.ad, 16
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.h, align 1, !tbaa !9
  %i.ai = lshr i32 %i.ad, 8
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.i, align 1, !tbaa !9
  %i.ak = trunc i32 %i.ad to i8
  store i8 %i.ak, ptr %i.j, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.0103113, i64 1
  %i.am = load i8, ptr %.0103113, align 1, !tbaa !9
  %i.an = zext nneg i32 %.0100114 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = xor i8 %i.ap, %i.am                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0105112, i64 1
  store i8 %i.aq, ptr %.0105112, align 1, !tbaa !9
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !9
  %i.as = add nuw nsw i32 %.0100114, 1
  %i.at = and i32 %i.as, 7                        ; 2 uses
  %.not108 = icmp eq i64 %i.t, 0
  br i1 %.not108, label %.loopexit, label %bb.b, !llvm.loop !21

bb.e:                                             ; preds = %.lr.ph119, %bb.g
  %.in121 = phi i64 [ %2, %.lr.ph119 ], [ %i.au, %bb.g ]
  %.1101118 = phi i32 [ %i.c, %.lr.ph119 ], [ %i.bu, %bb.g ] ; 3 uses
  %.1104117 = phi ptr [ %0, %.lr.ph119 ], [ %i.bm, %bb.g ] ; 2 uses
  %.1106116 = phi ptr [ %1, %.lr.ph119 ], [ %i.bs, %bb.g ] ; 2 uses
  %i.au = add i64 %.in121, -1                     ; 2 uses
  %i.av = icmp eq i32 %.1101118, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %11 = load i32, ptr %4, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  store i32 %12, ptr %i.a, align 4, !tbaa !8
  %13 = load i32, ptr %i.o, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr %i.s, align 4, !tbaa !8
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef %3)
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !8   ; 4 uses
  %i.ax = lshr i32 %i.aw, 24
  %i.ay = trunc nuw i32 %i.ax to i8
  store i8 %i.ay, ptr %4, align 1, !tbaa !9
  %i.az = lshr i32 %i.aw, 16
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %i.l, align 1, !tbaa !9
  %i.bb = lshr i32 %i.aw, 8
  %i.bc = trunc i32 %i.bb to i8
  store i8 %i.bc, ptr %i.m, align 1, !tbaa !9
  %i.bd = trunc i32 %i.aw to i8
  store i8 %i.bd, ptr %i.n, align 1, !tbaa !9
  %i.be = load i32, ptr %i.s, align 4, !tbaa !8   ; 4 uses
  %i.bf = lshr i32 %i.be, 24
  %i.bg = trunc nuw i32 %i.bf to i8
  store i8 %i.bg, ptr %i.o, align 1, !tbaa !9
  %i.bh = lshr i32 %i.be, 16
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.p, align 1, !tbaa !9
  %i.bj = lshr i32 %i.be, 8
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.q, align 1, !tbaa !9
  %i.bl = trunc i32 %i.be to i8
  store i8 %i.bl, ptr %i.r, align 1, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.1104117, i64 1
  %i.bn = load i8, ptr %.1104117, align 1, !tbaa !9 ; 2 uses
  %i.bo = zext nneg i32 %.1101118 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !9
  %i.br = xor i8 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.1106116, i64 1
  store i8 %i.br, ptr %.1106116, align 1, !tbaa !9
  %i.bt = add nuw nsw i32 %.1101118, 1
  %i.bu = and i32 %i.bt, 7                        ; 2 uses
  %.not107 = icmp eq i64 %i.au, 0
  br i1 %.not107, label %.loopexit, label %bb.e, !llvm.loop !22

.loopexit:                                        ; preds = %bb.d, %bb.g, %.preheader109, %.preheader
  %.2102 = phi i32 [ %i.bu, %bb.g ], [ %i.c, %.preheader ], [ %i.c, %.preheader109 ], [ %i.at, %bb.d ]
  store i32 %.2102, ptr %5, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @BF_ofb64_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [8 x i8], align 1                 ; 13 uses
  %i.e = alloca [2 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.f = load i32, ptr %5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.h = load i8, ptr %4, align 1, !tbaa !9       ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw i32 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.g, align 1, !tbaa !9     ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 16
  %i.o = or disjoint i32 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.q = load i8, ptr %i.k, align 1, !tbaa !9     ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = or disjoint i32 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !tbaa !9     ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.z = load i8, ptr %i.u, align 1, !tbaa !9     ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw i32 %i.aa, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !9    ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = or disjoint i32 %i.af, %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !9   ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = or disjoint i32 %i.ak, %i.ag
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !9   ; 2 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 3 uses
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !8
  store i32 %i.x, ptr %i.e, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  store i8 %i.h, ptr %i.d, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store i8 %i.l, ptr %i.aq, align 1, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 2 uses
  store i8 %i.q, ptr %i.ar, align 1, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i8 %i.v, ptr %i.as, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 5 ; 2 uses
  store i8 %i.z, ptr %i.at, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  store i8 %i.ad, ptr %i.au, align 1, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 7 ; 2 uses
  store i8 %i.ai, ptr %i.av, align 1, !tbaa !9
  store i8 %i.am, ptr %i.aw, align 1, !tbaa !9
  %.04751 = and i32 %i.f, 7                       ; 2 uses
  %.not52 = icmp eq i64 %2, 0
  br i1 %.not52, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  store i32 0, ptr %i.c, align 4
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.ax = phi i32 [ %i.bt, %bb.c ], [ %i.ao, %bb.a ]
  %i.ay = phi i32 [ %i.bu, %bb.c ], [ %i.x, %bb.a ]
  %.in = phi i64 [ %i.ba, %bb.c ], [ %2, %bb.a ]
  %.04756 = phi i32 [ %.047, %bb.c ], [ %.04751, %bb.a ] ; 3 uses
  %.055 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.04854 = phi ptr [ %i.bw, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.04953 = phi ptr [ %i.cc, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.az = phi i32 [ %i.bv, %bb.c ], [ 0, %bb.a ]
  %i.ba = add i64 %.in, -1                        ; 2 uses
  %i.bb = icmp eq i32 %.04756, 0
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @BF_encrypt(ptr noundef nonnull %i.e, ptr noundef %3)
  %i.bc = load i32, ptr %i.e, align 4, !tbaa !8   ; 5 uses
  %i.bd = lshr i32 %i.bc, 24
  %i.be = trunc nuw i32 %i.bd to i8
  store i8 %i.be, ptr %i.d, align 1, !tbaa !9
  %i.bf = lshr i32 %i.bc, 16
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %i.aq, align 1, !tbaa !9
  %i.bh = lshr i32 %i.bc, 8
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.ar, align 1, !tbaa !9
  %i.bj = trunc i32 %i.bc to i8
  store i8 %i.bj, ptr %i.as, align 1, !tbaa !9
  %i.bk = load i32, ptr %i.ap, align 4, !tbaa !8  ; 6 uses
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  store i8 %i.bm, ptr %i.at, align 1, !tbaa !9
  %i.bn = lshr i32 %i.bk, 16
  %i.bo = trunc i32 %i.bn to i8
  store i8 %i.bo, ptr %i.au, align 1, !tbaa !9
  %i.bp = lshr i32 %i.bk, 8
  %i.bq = trunc i32 %i.bp to i8
  store i8 %i.bq, ptr %i.av, align 1, !tbaa !9
  %i.br = trunc i32 %i.bk to i8
  store i8 %i.br, ptr %i.aw, align 1, !tbaa !9
  %i.bs = add nsw i32 %.055, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.bt = phi i32 [ %i.bk, %bb.b ], [ %i.ax, %.lr.ph ] ; 6 uses
  %i.bu = phi i32 [ %i.bc, %bb.b ], [ %i.ay, %.lr.ph ] ; 6 uses
  %i.bv = phi i32 [ %i.bk, %bb.b ], [ %i.az, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.bs, %bb.b ], [ %.055, %.lr.ph ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.04854, i64 1
  %i.bx = load i8, ptr %.04854, align 1, !tbaa !9
  %i.by = zext nneg i32 %.04756 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = xor i8 %i.ca, %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %.04953, i64 1
  store i8 %i.cb, ptr %.04953, align 1, !tbaa !9
  %i.cd = add nuw nsw i32 %.04756, 1
  %.047 = and i32 %i.cd, 7                        ; 3 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.c
  %i.ce = icmp eq i32 %.1, 0
  store i32 %i.bv, ptr %i.c, align 4
  br i1 %i.ce, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !8
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !8
  %i.cf = lshr i32 %i.bu, 24
  %i.cg = trunc nuw i32 %i.cf to i8
  store i8 %i.cg, ptr %4, align 1, !tbaa !9
  %i.ch = lshr i32 %i.bu, 16
  %i.ci = trunc i32 %i.ch to i8
  store i8 %i.ci, ptr %i.g, align 1, !tbaa !9
  %i.cj = lshr i32 %i.bu, 8
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %i.k, align 1, !tbaa !9
  %i.cl = trunc i32 %i.bu to i8
  store i8 %i.cl, ptr %i.p, align 1, !tbaa !9
  %i.cm = lshr i32 %i.bt, 24
  %i.cn = trunc nuw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.u, align 1, !tbaa !9
  %i.co = lshr i32 %i.bt, 16
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.y, align 1, !tbaa !9
  %i.cq = lshr i32 %i.bt, 8
  %i.cr = trunc i32 %i.cq to i8
  store i8 %i.cr, ptr %i.ac, align 1, !tbaa !9
  %i.cs = trunc i32 %i.bt to i8
  store i8 %i.cs, ptr %i.ah, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread, %bb.d, %._crit_edge
  %.047.lcssa65 = phi i32 [ %.04751, %._crit_edge.thread ], [ %.047, %bb.d ], [ %.047, %._crit_edge ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 4) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 8) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 8) #8
  store i32 %.047.lcssa65, ptr %5, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_bf_ecb() local_unnamed_addr #5 {
bb.a:
  ret ptr @bf_ecb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_bf_cbc() local_unnamed_addr #5 {
bb.a:
  ret ptr @bf_cbc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_bf_cfb() local_unnamed_addr #5 {
bb.a:
  ret ptr @bf_cfb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_bf_cfb64() local_unnamed_addr #5 {
bb.a:
  ret ptr @bf_cfb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @EVP_bf_ofb() local_unnamed_addr #5 {
bb.a:
  ret ptr @bf_ofb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bf_init_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree readnone captures(none) %2, i32 %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = zext i32 %i.d to i64
  tail call void @BF_set_key(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %1)
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bf_ecb_cipher(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #6 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = icmp ugt i64 %3, 7
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %BF_ecb_encrypt.exit
  %.012 = phi i64 [ %3, %.lr.ph ], [ %i.ah, %BF_ecb_encrypt.exit ]
  %.0811 = phi ptr [ %2, %.lr.ph ], [ %i.af, %BF_ecb_encrypt.exit ] ; 3 uses
  %.0910 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %BF_ecb_encrypt.exit ] ; 9 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %4 = load i32, ptr %.0811, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  store i32 %5, ptr %i.a, align 4, !tbaa !8
  %6 = load i32, ptr %i.h, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  store i32 %7, ptr %i.f, align 4, !tbaa !8
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef %i.c)
  br label %BF_ecb_encrypt.exit

bb.d:                                             ; preds = %bb.b
  call void @BF_decrypt(ptr noundef nonnull %i.a, ptr noundef %i.c)
  br label %BF_ecb_encrypt.exit

BF_ecb_encrypt.exit:                              ; preds = %bb.c, %bb.d
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %i.j = lshr i32 %i.i, 24
  %i.k = trunc nuw i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0910, i64 1
  store i8 %i.k, ptr %.0910, align 1, !tbaa !9
  %i.m = lshr i32 %i.i, 16
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.0910, i64 2
  store i8 %i.n, ptr %i.l, align 1, !tbaa !9
  %i.p = lshr i32 %i.i, 8
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.0910, i64 3
  store i8 %i.q, ptr %i.o, align 1, !tbaa !9
  %i.s = trunc i32 %i.i to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.0910, i64 4
  store i8 %i.s, ptr %i.r, align 1, !tbaa !9
  %i.u = load i32, ptr %i.f, align 4, !tbaa !8    ; 4 uses
  %i.v = lshr i32 %i.u, 24
  %i.w = trunc nuw i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.0910, i64 5
  store i8 %i.w, ptr %i.t, align 1, !tbaa !9
  %i.y = lshr i32 %i.u, 16
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910, i64 6
  store i8 %i.z, ptr %i.x, align 1, !tbaa !9
  %i.ab = lshr i32 %i.u, 8
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910, i64 7
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !9
  %i.ae = trunc i32 %i.u to i8
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.af = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.ah = add i64 %.012, -8                       ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 7
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %BF_ecb_encrypt.exit, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @bf_cbc_cipher(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  tail call void @BF_cbc_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.b, ptr noundef nonnull %i.c, i32 noundef %i.e)
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bf_cfb_cipher(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  store i32 %i.e, ptr %i.a, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  call void @BF_cfb64_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef %i.h)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8
  store i32 %i.i, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @bf_ofb_cipher(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  store i32 %i.e, ptr %i.a, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @BF_ofb64_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr %i.a, align 4, !tbaa !8
  store i32 %i.g, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS13evp_cipher_st", !11, i64 0}
!13 = !{!"evp_cipher_ctx_st", !12, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !4, i64 36, !4, i64 52, !4, i64 68, !5, i64 100, !5, i64 104, !5, i64 108, !4, i64 112, !5, i64 144}
!14 = !{!13, !11, i64 16}
!15 = !{!13, !5, i64 28}
!16 = !{!13, !5, i64 104}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = !{!13, !5, i64 24}
!25 = distinct !{!25, !10}
end_hunk_0
