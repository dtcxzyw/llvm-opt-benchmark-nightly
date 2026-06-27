inline.NumInlined: 12
inline.NumDeleted: 11
begin_hunk_0_@CompressAlphaJob:bb.a
  %i.hw = zext <4 x i1> %i.hu to <4 x i32>
  %i.hx = zext <4 x i1> %i.hv to <4 x i32>
  %i.hy = add <4 x i32> %i.hq, %i.hw
  %i.hz = add <4 x i32> %i.hr, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %wide.load.20 = load <4 x i8>, ptr %i.ia, align 16, !tbaa !53
  %wide.load30.20 = load <4 x i8>, ptr %i.ib, align 4, !tbaa !53
  %i.ic = icmp ne <4 x i8> %wide.load.20, zeroinitializer
  %i.id = icmp ne <4 x i8> %wide.load30.20, zeroinitializer
  %i.ie = zext <4 x i1> %i.ic to <4 x i32>
  %i.if = zext <4 x i1> %i.id to <4 x i32>
  %i.ig = add <4 x i32> %i.hy, %i.ie
  %i.ih = add <4 x i32> %i.hz, %i.if
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %wide.load.21 = load <4 x i8>, ptr %i.ii, align 8, !tbaa !53
  %wide.load30.21 = load <4 x i8>, ptr %i.ij, align 4, !tbaa !53
  %i.ik = icmp ne <4 x i8> %wide.load.21, zeroinitializer
  %i.il = icmp ne <4 x i8> %wide.load30.21, zeroinitializer
  %i.im = zext <4 x i1> %i.ik to <4 x i32>
  %i.in = zext <4 x i1> %i.il to <4 x i32>
  %i.io = add <4 x i32> %i.ig, %i.im
  %i.ip = add <4 x i32> %i.ih, %i.in
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %wide.load.22 = load <4 x i8>, ptr %i.iq, align 16, !tbaa !53
  %wide.load30.22 = load <4 x i8>, ptr %i.ir, align 4, !tbaa !53
  %i.is = icmp ne <4 x i8> %wide.load.22, zeroinitializer
  %i.it = icmp ne <4 x i8> %wide.load30.22, zeroinitializer
  %i.iu = zext <4 x i1> %i.is to <4 x i32>
  %i.iv = zext <4 x i1> %i.it to <4 x i32>
  %i.iw = add <4 x i32> %i.io, %i.iu
  %i.ix = add <4 x i32> %i.ip, %i.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %wide.load.23 = load <4 x i8>, ptr %i.iy, align 8, !tbaa !53
  %wide.load30.23 = load <4 x i8>, ptr %i.iz, align 4, !tbaa !53
  %i.ja = icmp ne <4 x i8> %wide.load.23, zeroinitializer
  %i.jb = icmp ne <4 x i8> %wide.load30.23, zeroinitializer
  %i.jc = zext <4 x i1> %i.ja to <4 x i32>
  %i.jd = zext <4 x i1> %i.jb to <4 x i32>
  %i.je = add <4 x i32> %i.iw, %i.jc
  %i.jf = add <4 x i32> %i.ix, %i.jd
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %wide.load.24 = load <4 x i8>, ptr %i.jg, align 16, !tbaa !53
  %wide.load30.24 = load <4 x i8>, ptr %i.jh, align 4, !tbaa !53
  %i.ji = icmp ne <4 x i8> %wide.load.24, zeroinitializer
  %i.jj = icmp ne <4 x i8> %wide.load30.24, zeroinitializer
  %i.jk = zext <4 x i1> %i.ji to <4 x i32>
  %i.jl = zext <4 x i1> %i.jj to <4 x i32>
  %i.jm = add <4 x i32> %i.je, %i.jk
  %i.jn = add <4 x i32> %i.jf, %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %wide.load.25 = load <4 x i8>, ptr %i.jo, align 8, !tbaa !53
  %wide.load30.25 = load <4 x i8>, ptr %i.jp, align 4, !tbaa !53
  %i.jq = icmp ne <4 x i8> %wide.load.25, zeroinitializer
  %i.jr = icmp ne <4 x i8> %wide.load30.25, zeroinitializer
  %i.js = zext <4 x i1> %i.jq to <4 x i32>
  %i.jt = zext <4 x i1> %i.jr to <4 x i32>
  %i.ju = add <4 x i32> %i.jm, %i.js
  %i.jv = add <4 x i32> %i.jn, %i.jt
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %wide.load.26 = load <4 x i8>, ptr %i.jw, align 16, !tbaa !53
  %wide.load30.26 = load <4 x i8>, ptr %i.jx, align 4, !tbaa !53
  %i.jy = icmp ne <4 x i8> %wide.load.26, zeroinitializer
  %i.jz = icmp ne <4 x i8> %wide.load30.26, zeroinitializer
  %i.ka = zext <4 x i1> %i.jy to <4 x i32>
  %i.kb = zext <4 x i1> %i.jz to <4 x i32>
  %i.kc = add <4 x i32> %i.ju, %i.ka
  %i.kd = add <4 x i32> %i.jv, %i.kb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %wide.load.27 = load <4 x i8>, ptr %i.ke, align 8, !tbaa !53
  %wide.load30.27 = load <4 x i8>, ptr %i.kf, align 4, !tbaa !53
  %i.kg = icmp ne <4 x i8> %wide.load.27, zeroinitializer
  %i.kh = icmp ne <4 x i8> %wide.load30.27, zeroinitializer
  %i.ki = zext <4 x i1> %i.kg to <4 x i32>
  %i.kj = zext <4 x i1> %i.kh to <4 x i32>
  %i.kk = add <4 x i32> %i.kc, %i.ki
  %i.kl = add <4 x i32> %i.kd, %i.kj
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %wide.load.28 = load <4 x i8>, ptr %i.km, align 16, !tbaa !53
  %wide.load30.28 = load <4 x i8>, ptr %i.kn, align 4, !tbaa !53
  %i.ko = icmp ne <4 x i8> %wide.load.28, zeroinitializer
  %i.kp = icmp ne <4 x i8> %wide.load30.28, zeroinitializer
  %i.kq = zext <4 x i1> %i.ko to <4 x i32>
  %i.kr = zext <4 x i1> %i.kp to <4 x i32>
  %i.ks = add <4 x i32> %i.kk, %i.kq
  %i.kt = add <4 x i32> %i.kl, %i.kr
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %wide.load.29 = load <4 x i8>, ptr %i.ku, align 8, !tbaa !53
  %wide.load30.29 = load <4 x i8>, ptr %i.kv, align 4, !tbaa !53
  %i.kw = icmp ne <4 x i8> %wide.load.29, zeroinitializer
  %i.kx = icmp ne <4 x i8> %wide.load30.29, zeroinitializer
  %i.ky = zext <4 x i1> %i.kw to <4 x i32>
  %i.kz = zext <4 x i1> %i.kx to <4 x i32>
  %i.la = add <4 x i32> %i.ks, %i.ky
  %i.lb = add <4 x i32> %i.kt, %i.kz
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %wide.load.30 = load <4 x i8>, ptr %i.lc, align 16, !tbaa !53
  %wide.load30.30 = load <4 x i8>, ptr %i.ld, align 4, !tbaa !53
  %i.le = icmp ne <4 x i8> %wide.load.30, zeroinitializer
  %i.lf = icmp ne <4 x i8> %wide.load30.30, zeroinitializer
  %i.lg = zext <4 x i1> %i.le to <4 x i32>
  %i.lh = zext <4 x i1> %i.lf to <4 x i32>
  %i.li = add <4 x i32> %i.la, %i.lg
  %i.lj = add <4 x i32> %i.lb, %i.lh
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %wide.load.31 = load <4 x i8>, ptr %i.lk, align 8, !tbaa !53
  %wide.load30.31 = load <4 x i8>, ptr %i.ll, align 4, !tbaa !53
  %i.lm = icmp ne <4 x i8> %wide.load.31, zeroinitializer
  %i.ln = icmp ne <4 x i8> %wide.load30.31, zeroinitializer
  %i.lo = zext <4 x i1> %i.lm to <4 x i32>
  %i.lp = zext <4 x i1> %i.ln to <4 x i32>
  %i.lq = add <4 x i32> %i.li, %i.lo
  %i.lr = add <4 x i32> %i.lj, %i.lp
  %bin.rdx = add <4 x i32> %i.lr, %i.lq
  %i.ls = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.lt = icmp samesign ult i32 %i.ls, 17
  br i1 %i.lt, label %GetFilterMap.exit.i.i, label %bb.n

bb.n:                                             ; preds = %vector.body.preheader
  %i.lu = call i32 @WebPEstimateBestFilter(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.r) #6
  br label %GetFilterMap.exit.i.i

GetFilterMap.exit.thread60.i.i:                   ; preds = %.critedge.i
  store i64 4294967295, ptr %2, align 8, !tbaa !50
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.lw = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.lv, i64 noundef 0) #6 ; 0 uses
  br label %bb.o

GetFilterMap.exit.i.i:                            ; preds = %bb.n, %vector.body.preheader
  %i.lx = phi i32 [ %i.lu, %bb.n ], [ 0, %vector.body.preheader ]
  %i.ly = shl nuw i32 1, %i.lx
  %i.lz = icmp samesign ugt i32 %i.ls, 192
  %or.cond.i.i.i = or i1 %i.av, %i.lz
  %i.ma = zext i1 %or.cond.i.i.i to i32
  %spec.select.i.i.i = or i32 %i.ly, %i.ma        ; 2 uses
  store i64 4294967295, ptr %2, align 8, !tbaa !50
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.mc = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.mb, i64 noundef 0) #6 ; 0 uses
  %.not.i.i = icmp eq i32 %spec.select.i.i.i, 1
  br i1 %.not.i.i, label %bb.x, label %bb.o

bb.o:                                             ; preds = %GetFilterMap.exit.i.i, %GetFilterMap.exit.thread60.i.i
  %i.md = phi ptr [ %i.lv, %GetFilterMap.exit.thread60.i.i ], [ %i.mb, %GetFilterMap.exit.i.i ] ; 2 uses
  %.1.i63.i.i = phi i32 [ 15, %GetFilterMap.exit.thread60.i.i ], [ %spec.select.i.i.i, %GetFilterMap.exit.i.i ]
  %i.me = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef range(i64 -2147483648, 2147483648) %i.v) #6 ; 3 uses
  %.not54.i.i = icmp eq ptr %i.me, null
  br i1 %.not54.i.i, label %bb.ac, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.preheader.i.i
  %.04565.i.i = phi i32 [ %.1.i63.i.i, %.preheader.i.i ], [ %i.mm, %bb.v ] ; 2 uses
  %.04864.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.ml, %bb.v ] ; 2 uses
  %i.mg = and i32 %.04565.i.i, 1
  %.not52.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not52.i.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.mh = call fastcc i32 @EncodeAlphaInternal(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef range(i32 0, 2) %i.n, i32 noundef %.04864.i.i, i32 noundef range(i32 0, 2) %i.x, i32 noundef %i.e, ptr noundef nonnull %i.me, ptr noundef %3) ; 2 uses
  %.not53.i.i = icmp eq i32 %i.mh, 0
  br i1 %.not53.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mi = load i64, ptr %3, align 8, !tbaa !50
  %i.mj = load i64, ptr %2, align 8, !tbaa !50
  %i.mk = icmp ult i64 %i.mi, %i.mj
  br i1 %i.mk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @VP8BitWriterWipeOut(ptr noundef nonnull %i.md) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %2, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 248, i1 false), !tbaa.struct !59
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @VP8BitWriterWipeOut(ptr noundef nonnull %i.mf) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.147.i.i = phi i32 [ %i.mh, %bb.u ], [ 1, %bb.p ] ; 2 uses
  %i.ml = add nuw nsw i32 %.04864.i.i, 1
  %i.mm = lshr i32 %.04565.i.i, 1                 ; 2 uses
  %4 = trunc nuw i32 %.147.i.i to i1
  %i.mn = icmp ne i32 %i.mm, 0
  %i.mo = and i1 %i.mn, %4
  br i1 %i.mo, label %bb.p, label %bb.w, !llvm.loop !61

bb.w:                                             ; preds = %bb.v
  call void @WebPSafeFree(ptr noundef nonnull %i.me) #6
  br label %bb.y

bb.x:                                             ; preds = %GetFilterMap.exit.i.i, %GetFilterMap.exit.thread.i.i
  %i.mp = phi ptr [ %i.at, %GetFilterMap.exit.thread.i.i ], [ %i.mb, %GetFilterMap.exit.i.i ]
  %i.mq = call fastcc i32 @EncodeAlphaInternal(ptr noundef nonnull %i.ac, i32 noundef %i.r, i32 noundef %i.t, i32 noundef range(i32 0, 2) %i.n, i32 noundef 0, i32 noundef range(i32 0, 2) %i.x, i32 noundef %i.e, ptr noundef null, ptr noundef %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.mr = phi ptr [ %i.md, %bb.w ], [ %i.mp, %bb.x ] ; 3 uses
  %.3.i.i = phi i32 [ %.147.i.i, %bb.w ], [ %i.mq, %bb.x ]
  %.not55.i.i = icmp eq i32 %.3.i.i, 0
  br i1 %.not55.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not56.i.i = icmp eq ptr %i.as, null
  br i1 %.not56.i.i, label %ApplyFiltersAndEncode.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.mt = getelementptr inbounds nuw i8, ptr %i.as, i64 148
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !62
  %i.mw = getelementptr inbounds nuw i8, ptr %i.as, i64 180
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !63
  %i.mx = load <4 x i32>, ptr %i.ms, align 4, !tbaa !3
  store <4 x i32> %i.mx, ptr %i.mt, align 4, !tbaa !3
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.mz = getelementptr inbounds nuw i8, ptr %i.as, i64 164
  %i.na = load <4 x i32>, ptr %i.my, align 4, !tbaa !3
  store <4 x i32> %i.na, ptr %i.mz, align 4, !tbaa !3
  br label %ApplyFiltersAndEncode.exit.i

bb.ab:                                            ; preds = %bb.y
  call void @VP8BitWriterWipeOut(ptr noundef nonnull %i.mr) #6
  br label %bb.ac

ApplyFiltersAndEncode.exit.i:                     ; preds = %bb.aa, %bb.z
  %i.nb = getelementptr i8, ptr %i.mr, i64 24
  %.val.i.i = load i64, ptr %i.nb, align 8, !tbaa !64
  %i.nc = getelementptr i8, ptr %i.mr, i64 16
  %.val57.i.i = load ptr, ptr %i.nc, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.nd = call i32 @WebPEncodingSetError(ptr noundef %i.p, i32 noundef 1) #6 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %ApplyFiltersAndEncode.exit.i
  %.017 = phi ptr [ null, %bb.ac ], [ %.val57.i.i, %ApplyFiltersAndEncode.exit.i ] ; 2 uses
  %.016 = phi i64 [ 0, %bb.ac ], [ %.val.i.i, %ApplyFiltersAndEncode.exit.i ] ; 3 uses
  %.1.i62.i = phi i32 [ 0, %bb.ac ], [ 1, %ApplyFiltersAndEncode.exit.i ] ; 2 uses
  %i.ne = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 3 uses
  %.not59.i = icmp eq ptr %i.ne, null
  br i1 %.not59.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nf = trunc i64 %.016 to i32
  %i.ng = load i32, ptr %i.ne, align 4, !tbaa !66
  %i.nh = add nsw i32 %i.ng, %i.nf
  store i32 %i.nh, ptr %i.ne, align 4, !tbaa !66
  %i.ni = load i64, ptr %i.b, align 8, !tbaa !46
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 23536
  store i64 %i.ni, ptr %i.nj, align 8, !tbaa !46
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.k
  %.118 = phi ptr [ null, %bb.k ], [ %.017, %bb.ad ], [ %.017, %bb.ae ]
  %.1 = phi i64 [ 0, %bb.k ], [ %.016, %bb.ad ], [ %.016, %bb.ae ]
  %.1.i = phi i32 [ 0, %bb.k ], [ %.1.i62.i, %bb.ad ], [ %.1.i62.i, %bb.ae ]
  call void @WebPSafeFree(ptr noundef nonnull %i.ac) #6
  br label %EncodeAlpha.exit

EncodeAlpha.exit:                                 ; preds = %bb.b, %bb.d, %bb.f, %bb.af
  %.219 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %.118, %bb.af ] ; 2 uses
  %.2 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %.1, %bb.af ] ; 2 uses
  %.0.i = phi i32 [ %i.y, %bb.b ], [ %i.z, %bb.d ], [ %i.ae, %bb.f ], [ %.1.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %EncodeAlpha.exit
  %.not13 = icmp ult i64 %.2, 4294967296
  br i1 %.not13, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @WebPSafeFree(ptr noundef %.219) #6
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.nk = trunc nuw i64 %.2 to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.nk, ptr %i.nl, align 8, !tbaa !28
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %.219, ptr %i.nm, align 8, !tbaa !27
  br label %bb.aj

bb.aj:                                            ; preds = %EncodeAlpha.exit, %bb.ai, %bb.ah
  %.0 = phi i32 [ 0, %bb.ah ], [ 1, %bb.ai ], [ 0, %EncodeAlpha.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncStartAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.g = tail call ptr @WebPGetWorkerInterface() #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f) #6
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = tail call i32 @WebPEncodingSetError(ptr noundef %i.l, i32 noundef 1) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = tail call ptr @WebPGetWorkerInterface() #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  tail call void %i.p(ptr noundef nonnull %i.f) #6
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = tail call i32 @CompressAlphaJob(ptr noundef nonnull %0, ptr poison)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.1 = phi i32 [ %i.m, %bb.d ], [ %i.q, %bb.f ], [ 1, %bb.e ], [ 1, %bb.a ]
  ret i32 %.1
}

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncFinishAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.g = tail call ptr @WebPGetWorkerInterface() #6
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f) #6
  %.not9.not = icmp eq i32 %i.j, 0
  br i1 %.not9.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !70
  %i.o = add nsw i32 %i.n, 20
  %i.p = tail call i32 @WebPReportProgress(ptr noundef %i.l, i32 noundef %i.o, ptr noundef nonnull %i.m) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @VP8EncDeleteAlpha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23632
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.e = tail call ptr @WebPGetWorkerInterface() #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.d) #6
  %i.i = tail call ptr @WebPGetWorkerInterface() #6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  tail call void %i.k(ptr noundef nonnull %i.d) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  tail call void @WebPSafeFree(ptr noundef %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  ret i32 %.0
}

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @WebPCopyPlane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @QuantizeLevels(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @VP8FiltersInit() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @EncodeAlphaInternal(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6, ptr noundef %7, ptr noundef nonnull %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.WebPConfig, align 4         ; 9 uses
  %10 = alloca %struct.WebPPicture, align 8       ; 13 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %11 = alloca %struct.VP8LBitWriter, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = mul nsw i32 %2, %1
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @WebPFilters, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.f(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %7) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.050 = phi ptr [ %7, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not58 = icmp eq i32 %3, 0
  br i1 %.not58, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i64 %i.c, 3
  %i.h = call i32 @VP8LBitWriterInit(ptr noundef nonnull %11, i64 noundef %i.g) #6
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.i = call i32 @WebPPictureInitInternal(ptr noundef nonnull %10, i32 noundef 528) #6
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %EncodeLossless.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 %1, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 %2, ptr %i.l, align 4, !tbaa !45
  store i32 1, ptr %10, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.j, ptr %i.m, align 8, !tbaa !49
  %i.n = call i32 @WebPPictureAlloc(ptr noundef nonnull %10) #6
  %.not15.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i, label %EncodeLossless.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @WebPDispatchAlphaToGreen, align 8, !tbaa !72
  %i.p = load i32, ptr %i.k, align 8, !tbaa !42
  %i.q = load i32, ptr %i.l, align 4, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !75
  call void %i.o(ptr noundef %.050, i32 noundef %1, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %i.s, i32 noundef %i.u) #6, !inline_history !76
  %i.v = call i32 @WebPConfigInitInternal(ptr noundef nonnull %9, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #6
  %.not16.i = icmp eq i32 %i.v, 0
  br i1 %.not16.i, label %EncodeLossless.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %9, align 4, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.w, align 4, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %6, ptr %i.x, align 4, !tbaa !36
  %12 = trunc nuw i32 %5 to i1
  %13 = icmp ne i32 %6, 6
  %or.cond.i.not = or i1 %13, %12
  %i.y = sitofp i32 %6 to float
  %i.z = fmul nnan float %i.y, 8.000000e+00
  %i.aa = select i1 %or.cond.i.not, float %i.z, float 1.000000e+02
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !79
  %i.ac = call i32 @VP8LEncodeStream(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #6
  call void @WebPPictureFree(ptr noundef nonnull %10) #6
  %.not17.i = icmp ne i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %.not18.i = icmp eq i32 %i.ae, 0
  %or.cond = select i1 %.not17.i, i1 %.not18.i, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %EncodeLossless.exit.thread

EncodeLossless.exit.thread:                       ; preds = %bb.g, %.critedge.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %i.af = call ptr @VP8LBitWriterFinish(ptr noundef nonnull %11) #6
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !80
  %.not61 = icmp eq i32 %i.ag, 0
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !84
  %i.ar = add nsw i32 %i.aq, 7
  %i.as = ashr i32 %i.ar, 3
  %i.at = sext i32 %i.as to i64
  %i.au = add nsw i64 %i.ao, %i.at                ; 2 uses
  %i.av = icmp ugt i64 %i.au, %i.c
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %bb.m

.critedge:                                        ; preds = %EncodeLossless.exit.thread, %bb.d
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i8 0, i64 48, i1 false)
  br label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.c, %bb.l
  %i.ax = phi ptr [ %.050, %bb.c ], [ %.050, %bb.l ], [ %i.af, %bb.k ]
  %.049758894 = phi i32 [ 0, %bb.c ], [ 0, %bb.l ], [ 1, %bb.k ]
  %i.ay = phi i1 [ true, %bb.c ], [ true, %bb.l ], [ false, %bb.k ]
  %i.az = phi i64 [ %i.c, %bb.c ], [ %i.c, %bb.l ], [ %i.au, %bb.k ] ; 2 uses
  %i.ba = shl i32 %4, 2
  %i.bb = or disjoint i32 %.049758894, %i.ba
  %i.bc = trunc i32 %i.bb to i8                   ; 2 uses
  %.not62 = icmp eq i32 %5, 0
  %i.bd = or i8 %i.bc, 16
  %storemerge = select i1 %.not62, i8 %i.bc, i8 %i.bd
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bf = add i64 %i.az, 1
  %i.bg = call i32 @VP8BitWriterInit(ptr noundef nonnull %i.be, i64 noundef %i.bf) #6
  %.not63.not = icmp eq i32 %i.bg, 0
  br i1 %.not63.not, label %.critedge68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.be, ptr noundef nonnull %i.a, i64 noundef 1) #6
  %.not97 = icmp eq i32 %i.bh, 0
  br i1 %.not97, label %.critedge68, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = call i32 @VP8BitWriterAppend(ptr noundef nonnull %i.be, ptr noundef %i.ax, i64 noundef %i.az) #6
  %i.bj = icmp ne i32 %i.bi, 0
  br label %.critedge68

.critedge68:                                      ; preds = %bb.m, %bb.o, %bb.n
  %i.bk = phi i1 [ false, %bb.n ], [ %i.bj, %bb.o ], [ false, %bb.m ]
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge68
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %11) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge68
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !85
  %.not66 = icmp eq i32 %i.bm, 0
  %i.bn = zext i1 %.not66 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = phi i32 [ 0, %bb.q ], [ %i.bn, %bb.r ]
  %i.bp = getelementptr i8, ptr %8, i64 32
  %.val = load i64, ptr %i.bp, align 8, !tbaa !64
  store i64 %.val, ptr %8, align 8, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge, %bb.j
  %.048 = phi i32 [ 0, %bb.j ], [ %i.bo, %bb.s ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.048
}

declare void @VP8BitWriterWipeOut(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @WebPEstimateBestFilter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @VP8BitWriterInit(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @VP8LBitWriterInit(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @VP8LBitWriterFinish(ptr noundef) local_unnamed_addr #1

declare void @VP8LBitWriterWipeOut(ptr noundef) local_unnamed_addr #1

declare i32 @VP8BitWriterAppend(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WebPPictureAlloc(ptr noundef) local_unnamed_addr #1

declare i32 @VP8LEncodeStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WebPPictureFree(ptr noundef) local_unnamed_addr #1

declare i32 @WebPPictureInitInternal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WebPConfigInitInternal(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"VP8Encoder", !9, i64 0, !11, i64 8, !12, i64 16, !13, i64 32, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !5, i64 112, !17, i64 496, !4, i64 536, !4, i64 540, !15, i64 544, !4, i64 552, !22, i64 560, !5, i64 608, !4, i64 3584, !4, i64 3588, !4, i64 3592, !4, i64 3596, !4, i64 3600, !4, i64 3604, !4, i64 3608, !4, i64 3612, !23, i64 3616, !5, i64 23512, !16, i64 23544, !4, i64 23552, !5, i64 23556, !5, i64 23604, !4, i64 23616, !4, i64 23620, !4, i64 23624, !4, i64 23628, !4, i64 23632, !4, i64 23636, !4, i64 23640, !10, i64 23648, !15, i64 23656, !24, i64 23664, !15, i64 23672, !15, i64 23680, !25, i64 23688, !15, i64 23696}
!9 = !{!"p1 _ZTS10WebPConfig", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS11WebPPicture", !10, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!14 = !{!"VP8BitWriter", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !15, i64 16, !16, i64 24, !16, i64 32, !4, i64 40}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"", !18, i64 0, !19, i64 8, !21, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!18 = !{!"p1 _ZTS9VP8Tokens", !10, i64 0}
!19 = !{!"p2 _ZTS9VP8Tokens", !20, i64 0}
!20 = !{!"any p2 pointer", !10, i64 0}
!21 = !{!"p1 short", !10, i64 0}
!22 = !{!"", !10, i64 0, !4, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40}
!23 = !{!"", !5, i64 0, !5, i64 3, !5, i64 4, !5, i64 1060, !5, i64 5284, !5, i64 18344, !4, i64 19880, !4, i64 19884, !4, i64 19888}
!24 = !{!"p1 int", !10, i64 0}
!25 = !{!"p1 double", !10, i64 0}
!26 = !{!8, !4, i64 540}
!27 = !{!8, !15, i64 544}
!28 = !{!8, !4, i64 552}
!29 = !{!8, !4, i64 23632}
!30 = !{!31, !10, i64 0}
end_hunk_0
