begin_hunk_0_@crypto_128_unwrap_raw:bb.a
  %i.ao = icmp ugt i64 %.145.us.1, 255
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.us
  %i.ap = load i8, ptr %i.k, align 2, !tbaa !9
  %i.aq = lshr i64 %.145.us.1, 8
  %i.ar = trunc i64 %i.aq to i8
  %i.as = xor i8 %i.ap, %i.ar
  store i8 %i.as, ptr %i.k, align 2, !tbaa !9
  %i.at = load i8, ptr %i.l, align 1, !tbaa !9
  %i.au = lshr i64 %.145.us.1, 16
  %i.av = trunc i64 %i.au to i8
  %i.aw = xor i8 %i.at, %i.av
  store i8 %i.aw, ptr %i.l, align 1, !tbaa !9
  %i.ax = load i8, ptr %i.m, align 4, !tbaa !9
  %i.ay = lshr i64 %.145.us.1, 24
  %i.az = trunc i64 %i.ay to i8
  %i.ba = xor i8 %i.ax, %i.az
  store i8 %i.ba, ptr %i.m, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.us
  %i.bb = load i64, ptr %.04046.us.1, align 1
  store i64 %i.bb, ptr %i.n, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.bc = load i64, ptr %i.n, align 8
  store i64 %i.bc, ptr %.04046.us.1, align 1
  %i.bd = add nuw nsw i64 %.03944.us.1, 8         ; 2 uses
  %i.be = add i64 %.145.us.1, -1                  ; 2 uses
  %i.bf = icmp ult i64 %i.bd, %i.b
  br i1 %i.bf, label %._crit_edge.us, label %._crit_edge.us.1, !llvm.loop !12

._crit_edge.us.1:                                 ; preds = %bb.g, %bb.i
  %.pn.2 = phi ptr [ %.04046.us.2, %bb.i ], [ %i.i, %bb.g ]
  %.145.us.2 = phi i64 [ %i.bz, %bb.i ], [ %i.be, %bb.g ] ; 6 uses
  %.03944.us.2 = phi i64 [ %i.by, %bb.i ], [ 0, %bb.g ]
  %.04046.us.2 = getelementptr inbounds i8, ptr %.pn.2, i64 -8 ; 3 uses
  %i.bg = trunc i64 %.145.us.2 to i8
  %i.bh = load i8, ptr %i.j, align 1, !tbaa !9
  %i.bi = xor i8 %i.bh, %i.bg
  store i8 %i.bi, ptr %i.j, align 1, !tbaa !9
  %i.bj = icmp ugt i64 %.145.us.2, 255
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.us.1
  %i.bk = load i8, ptr %i.k, align 2, !tbaa !9
  %i.bl = lshr i64 %.145.us.2, 8
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = xor i8 %i.bk, %i.bm
  store i8 %i.bn, ptr %i.k, align 2, !tbaa !9
  %i.bo = load i8, ptr %i.l, align 1, !tbaa !9
  %i.bp = lshr i64 %.145.us.2, 16
  %i.bq = trunc i64 %i.bp to i8
  %i.br = xor i8 %i.bo, %i.bq
  store i8 %i.br, ptr %i.l, align 1, !tbaa !9
  %i.bs = load i8, ptr %i.m, align 4, !tbaa !9
  %i.bt = lshr i64 %.145.us.2, 24
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = xor i8 %i.bs, %i.bu
  store i8 %i.bv, ptr %i.m, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.us.1
  %i.bw = load i64, ptr %.04046.us.2, align 1
  store i64 %i.bw, ptr %i.n, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.bx = load i64, ptr %i.n, align 8
  store i64 %i.bx, ptr %.04046.us.2, align 1
  %i.by = add nuw nsw i64 %.03944.us.2, 8         ; 2 uses
  %i.bz = add i64 %.145.us.2, -1                  ; 2 uses
  %i.ca = icmp ult i64 %i.by, %i.b
  br i1 %i.ca, label %._crit_edge.us.1, label %._crit_edge.us.2, !llvm.loop !12

._crit_edge.us.2:                                 ; preds = %bb.i, %bb.k
  %.pn.3 = phi ptr [ %.04046.us.3, %bb.k ], [ %i.i, %bb.i ]
  %.145.us.3 = phi i64 [ %i.cu, %bb.k ], [ %i.bz, %bb.i ] ; 6 uses
  %.03944.us.3 = phi i64 [ %i.ct, %bb.k ], [ 0, %bb.i ]
  %.04046.us.3 = getelementptr inbounds i8, ptr %.pn.3, i64 -8 ; 3 uses
  %i.cb = trunc i64 %.145.us.3 to i8
  %i.cc = load i8, ptr %i.j, align 1, !tbaa !9
  %i.cd = xor i8 %i.cc, %i.cb
  store i8 %i.cd, ptr %i.j, align 1, !tbaa !9
  %i.ce = icmp ugt i64 %.145.us.3, 255
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.us.2
  %i.cf = load i8, ptr %i.k, align 2, !tbaa !9
  %i.cg = lshr i64 %.145.us.3, 8
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = xor i8 %i.cf, %i.ch
  store i8 %i.ci, ptr %i.k, align 2, !tbaa !9
  %i.cj = load i8, ptr %i.l, align 1, !tbaa !9
  %i.ck = lshr i64 %.145.us.3, 16
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = xor i8 %i.cj, %i.cl
  store i8 %i.cm, ptr %i.l, align 1, !tbaa !9
  %i.cn = load i8, ptr %i.m, align 4, !tbaa !9
  %i.co = lshr i64 %.145.us.3, 24
  %i.cp = trunc i64 %i.co to i8
  %i.cq = xor i8 %i.cn, %i.cp
  store i8 %i.cq, ptr %i.m, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.us.2
  %i.cr = load i64, ptr %.04046.us.3, align 1
  store i64 %i.cr, ptr %i.n, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.cs = load i64, ptr %i.n, align 8
  store i64 %i.cs, ptr %.04046.us.3, align 1
  %i.ct = add nuw nsw i64 %.03944.us.3, 8         ; 2 uses
  %i.cu = add i64 %.145.us.3, -1                  ; 2 uses
  %i.cv = icmp ult i64 %i.ct, %i.b
  br i1 %i.cv, label %._crit_edge.us.2, label %._crit_edge.us.3, !llvm.loop !12

._crit_edge.us.3:                                 ; preds = %bb.k, %bb.m
  %.pn.4 = phi ptr [ %.04046.us.4, %bb.m ], [ %i.i, %bb.k ]
  %.145.us.4 = phi i64 [ %i.dp, %bb.m ], [ %i.cu, %bb.k ] ; 6 uses
  %.03944.us.4 = phi i64 [ %i.do, %bb.m ], [ 0, %bb.k ]
  %.04046.us.4 = getelementptr inbounds i8, ptr %.pn.4, i64 -8 ; 3 uses
  %i.cw = trunc i64 %.145.us.4 to i8
  %i.cx = load i8, ptr %i.j, align 1, !tbaa !9
  %i.cy = xor i8 %i.cx, %i.cw
  store i8 %i.cy, ptr %i.j, align 1, !tbaa !9
  %i.cz = icmp ugt i64 %.145.us.4, 255
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.us.3
  %i.da = load i8, ptr %i.k, align 2, !tbaa !9
  %i.db = lshr i64 %.145.us.4, 8
  %i.dc = trunc i64 %i.db to i8
  %i.dd = xor i8 %i.da, %i.dc
  store i8 %i.dd, ptr %i.k, align 2, !tbaa !9
  %i.de = load i8, ptr %i.l, align 1, !tbaa !9
  %i.df = lshr i64 %.145.us.4, 16
  %i.dg = trunc i64 %i.df to i8
  %i.dh = xor i8 %i.de, %i.dg
  store i8 %i.dh, ptr %i.l, align 1, !tbaa !9
  %i.di = load i8, ptr %i.m, align 4, !tbaa !9
  %i.dj = lshr i64 %.145.us.4, 24
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = xor i8 %i.di, %i.dk
  store i8 %i.dl, ptr %i.m, align 4, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.us.3
  %i.dm = load i64, ptr %.04046.us.4, align 1
  store i64 %i.dm, ptr %i.n, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.dn = load i64, ptr %i.n, align 8
  store i64 %i.dn, ptr %.04046.us.4, align 1
  %i.do = add nuw nsw i64 %.03944.us.4, 8         ; 2 uses
  %i.dp = add i64 %.145.us.4, -1                  ; 2 uses
  %i.dq = icmp ult i64 %i.do, %i.b
  br i1 %i.dq, label %._crit_edge.us.3, label %._crit_edge.us.4, !llvm.loop !12

._crit_edge.us.4:                                 ; preds = %bb.m, %bb.o
  %.pn.5 = phi ptr [ %.04046.us.5, %bb.o ], [ %i.i, %bb.m ]
  %.145.us.5 = phi i64 [ %i.ek, %bb.o ], [ %i.dp, %bb.m ] ; 6 uses
  %.03944.us.5 = phi i64 [ %i.ej, %bb.o ], [ 0, %bb.m ]
  %.04046.us.5 = getelementptr inbounds i8, ptr %.pn.5, i64 -8 ; 3 uses
  %i.dr = trunc i64 %.145.us.5 to i8
  %i.ds = load i8, ptr %i.j, align 1, !tbaa !9
  %i.dt = xor i8 %i.ds, %i.dr
  store i8 %i.dt, ptr %i.j, align 1, !tbaa !9
  %i.du = icmp ugt i64 %.145.us.5, 255
  br i1 %i.du, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.us.4
  %i.dv = load i8, ptr %i.k, align 2, !tbaa !9
  %i.dw = lshr i64 %.145.us.5, 8
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = xor i8 %i.dv, %i.dx
  store i8 %i.dy, ptr %i.k, align 2, !tbaa !9
  %i.dz = load i8, ptr %i.l, align 1, !tbaa !9
  %i.ea = lshr i64 %.145.us.5, 16
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = xor i8 %i.dz, %i.eb
  store i8 %i.ec, ptr %i.l, align 1, !tbaa !9
  %i.ed = load i8, ptr %i.m, align 4, !tbaa !9
  %i.ee = lshr i64 %.145.us.5, 24
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = xor i8 %i.ed, %i.ef
  store i8 %i.eg, ptr %i.m, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.us.4
  %i.eh = load i64, ptr %.04046.us.5, align 1
  store i64 %i.eh, ptr %i.n, align 8
  call void %5(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %0) #5
  %i.ei = load i64, ptr %i.n, align 8
  store i64 %i.ei, ptr %.04046.us.5, align 1
  %i.ej = add nuw nsw i64 %.03944.us.5, 8         ; 2 uses
  %i.ek = add i64 %.145.us.5, -1
  %i.el = icmp ult i64 %i.ej, %i.b
  br i1 %i.el, label %._crit_edge.us.4, label %._crit_edge.us.5, !llvm.loop !12

._crit_edge.us.5:                                 ; preds = %bb.o
  %.pre = load i64, ptr %i.a, align 16
  br label %.split50.us

.split50.us:                                      ; preds = %bb.b, %._crit_edge.us.5
  %i.em = phi i64 [ %.pre, %._crit_edge.us.5 ], [ %i.g, %bb.b ]
  store i64 %i.em, ptr %1, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %.split50.us
  %.041 = phi i64 [ %i.b, %.split50.us ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.041
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @CRYPTO_128_wrap_pad(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  %i.b = add i64 %4, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = sub i64 %i.c, %4                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = add i64 %4, -2147483648
  %or.cond = icmp ult i64 %i.e, -2147483647
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i32 [ %i.f, %bb.c ], [ -1504093786, %bb.b ]
  store i32 %storemerge, ptr %i.a, align 8
  %i.g = lshr i64 %4, 24
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.h, ptr %i.i, align 4, !tbaa !9
  %i.j = lshr i64 %4, 16
  %i.k = trunc i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.k, ptr %i.l, align 1, !tbaa !9
  %i.m = lshr i64 %4, 8
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.n, ptr %i.o, align 2, !tbaa !9
  %i.p = trunc i64 %4 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.p, ptr %i.q, align 1, !tbaa !9
  %i.r = icmp eq i64 %i.c, 8
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %3, i64 %4, i1 false)
  %i.t = load i64, ptr %i.a, align 8
  store i64 %i.t, ptr %2, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.d, i1 false)
  tail call void %5(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %0) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %4, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %4
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.d, i1 false)
  %i.w = call i64 @CRYPTO_128_wrap(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %2, i64 noundef %i.c, ptr noundef %5)
  %sext = shl nuw i64 %i.w, 32
  %i.x = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.037 = phi i64 [ 0, %bb.a ], [ 16, %bb.e ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @CRYPTO_128_unwrap_pad(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = and i64 %4, -8
  %i.d = add i64 %i.c, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = icmp ult i64 %4, 16
  %i.f = and i64 %4, -2147483641
  %i.g = icmp ne i64 %i.f, 0
  %or.cond3 = or i1 %i.e, %i.g
  br i1 %or.cond3, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %4, 16
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void %5(ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef %0) #5
  %i.i = load i64, ptr %i.b, align 16
  store i64 %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %2, align 1
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = add nsw i64 %4, -8                       ; 2 uses
  %i.m = call fastcc i64 @crypto_128_unwrap_raw(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5)
  %.not = icmp eq i64 %i.l, %i.m
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @OPENSSL_cleanse(ptr noundef %2, i64 noundef %4) #5
  br label %bb.m

bb.f:                                             ; preds = %bb.d, %bb.c
  %.042 = phi i64 [ 8, %bb.c ], [ %i.l, %bb.d ]
  %.not47 = icmp eq ptr %1, null
  br i1 %.not47, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull @default_aiv, i64 noundef 4) #5
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %bb.i, label %bb.h

.critedge:                                        ; preds = %bb.f
  %i.o = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef 4) #5
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g
  call void @OPENSSL_cleanse(ptr noundef %2, i64 noundef %4) #5
  br label %bb.m

bb.i:                                             ; preds = %bb.g, %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = zext i32 %i.r to i64                     ; 5 uses
  %i.t = add nsw i64 %4, -16
  %.not50 = icmp samesign uge i64 %i.t, %i.s
  %i.u = icmp ult i64 %i.d, %i.s
  %or.cond = or i1 %.not50, %i.u
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @OPENSSL_cleanse(ptr noundef %2, i64 noundef %4) #5
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.v = sub nsw i64 %.042, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.x = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull @CRYPTO_128_unwrap_pad.zeros, i64 noundef %i.v) #5
  %.not51 = icmp eq i32 %i.x, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef %4) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.a, %bb.l, %bb.j, %bb.h, %bb.e
  %.0 = phi i64 [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.a ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
