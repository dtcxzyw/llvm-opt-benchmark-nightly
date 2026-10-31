Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10220
inline.NumDeleted: 1303
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 375
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@balance:bb.a
  %i.vw = zext i8 %i.vv to i64
  %i.vx = or disjoint i64 %i.vt, %i.vw
  %i.vy = and i64 %i.vx, %i.vl
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vy
  br label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.by, %bb.bx
  %.0528.i = phi ptr [ %i.vi, %bb.bx ], [ %i.vz, %bb.by ] ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0528.i, i64 1
  %i.wb = getelementptr inbounds nuw i8, ptr %.0528.i, i64 2
  %i.wc = getelementptr inbounds nuw i8, ptr %.0528.i, i64 3
  %i.wd = load i32, ptr %.0528.i, align 1
  %i.we = call i32 @llvm.bswap.i32(i32 %i.wd)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  %i.wg = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.wh = getelementptr inbounds nuw i8, ptr %i.jm, i64 120 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.jm, i64 26
  %i.wj = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %i.wk = getelementptr inbounds nuw i8, ptr %i.uj, i64 40
  %i.wl = getelementptr inbounds nuw i8, ptr %i.uj, i64 56 ; 2 uses
  %i.wm = zext nneg i32 %.0499.i to i64           ; 4 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cl, %.lr.ph.i86
  %indvars.iv.i = phi i64 [ %i.wm, %.lr.ph.i86 ], [ %indvars.iv.next.i, %bb.cl ] ; 5 uses
  %.0495754.i = phi i32 [ 0, %.lr.ph.i86 ], [ %i.xd, %bb.cl ]
  %i.wn = phi i32 [ %i.we, %.lr.ph.i86 ], [ %i.aad, %bb.cl ] ; 2 uses
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.wp = call fastcc i32 @getAndInitPage(ptr noundef %i.uj, i32 noundef %i.wn, ptr noundef nonnull %i.wo, i32 noundef 0), !inline_history !4283 ; 3 uses
  store i32 %i.wp, ptr %i.a, align 4, !tbaa !568
  %.not572.i = icmp eq i32 %i.wp, 0
  br i1 %.not572.i, label %bb.ca, label %.thread.i87

.thread.i87:                                      ; preds = %bb.cl, %bb.bz
  %i.wq = phi i32 [ %i.wp, %bb.bz ], [ %i.aac, %bb.cl ]
  %.1500.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.bz ], [ %indvars.iv.next.i, %bb.cl ]
  %i.wr = shl i64 %.1500.lcssa.ph.in.i, 32
  %sext.i = add i64 %i.wr, 4294967296
  %i.ws = ashr exact i64 %sext.i, 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.ws, i1 false)
  br label %.thread705.i

bb.ca:                                            ; preds = %bb.bz
  %i.wt = load ptr, ptr %i.wo, align 8, !tbaa !1512 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 20
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !1489
  %i.ww = icmp slt i32 %i.wv, 0
  br i1 %i.ww, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.wx = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.wt), !inline_history !4283 ; 3 uses
  store i32 %i.wx, ptr %i.a, align 4, !tbaa !568
  %.not573.i = icmp eq i32 %i.wx, 0
  br i1 %.not573.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wy = shl nsw i64 %indvars.iv.i, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.wy, i1 false)
  br label %.thread705.i

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.xa = load i16, ptr %i.wz, align 8, !tbaa !1499
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add nuw nsw i32 %.0495754.i, 4
  %i.xd = add nuw nsw i32 %i.xc, %i.xb            ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 8 uses
  %i.xe = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.xe, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.xf = load i8, ptr %i.uk, align 4, !tbaa !1498 ; 2 uses
  %.not574.i = icmp eq i8 %i.xf, 0
  br i1 %.not574.i, label %._crit_edge1072.i, label %bb.cf

._crit_edge1072.i:                                ; preds = %bb.ce
  %i.xg = trunc i64 %indvars.iv.next.i to i32
  %.pre1081.i = add i32 %.1536.i, %i.xg
  br label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.xh = load i16, ptr %i.wf, align 4, !tbaa !781
  %i.xi = zext i16 %i.xh to i32
  %i.xj = trunc i64 %indvars.iv.next.i to i32
  %i.xk = add i32 %.1536.i, %i.xj                 ; 2 uses
  %i.xl = icmp eq i32 %i.xk, %i.xi
  br i1 %i.xl, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.xm = load ptr, ptr %i.wg, align 8, !tbaa !739 ; 3 uses
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !739
  %i.xo = load i32, ptr %i.xm, align 1
  %i.xp = call i32 @llvm.bswap.i32(i32 %i.xo)
  %i.xq = load ptr, ptr %i.wh, align 8, !tbaa !1493
  %i.xr = call zeroext i16 %i.xq(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.xm) #57, !inline_history !4283
  %i.xs = zext i16 %i.xr to i32
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !568
  store i8 0, ptr %i.uk, align 4, !tbaa !1498
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cf, %._crit_edge1072.i
  %.pre-phi1082.i = phi i32 [ %.pre1081.i, %._crit_edge1072.i ], [ %i.xk, %bb.cf ] ; 2 uses
  %i.xu = load ptr, ptr %i.vc, align 8, !tbaa !987
  %i.xv = load i16, ptr %i.wi, align 2, !tbaa !1115
  %i.xw = zext i16 %i.xv to i64
  %i.xx = load ptr, ptr %i.wj, align 8, !tbaa !1116
  %i.xy = zext i8 %i.xf to i32
  %i.xz = sub nsw i32 %.pre-phi1082.i, %i.xy
  %i.ya = shl nsw i32 %i.xz, 1
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds i8, ptr %i.xx, i64 %i.yb ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !731
  %i.ye = zext i8 %i.yd to i64
  %i.yf = shl nuw nsw i64 %i.ye, 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !731
  %i.yi = zext i8 %i.yh to i64
  %i.yj = or disjoint i64 %i.yf, %i.yi
  %i.yk = and i64 %i.yj, %i.xw
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.yk ; 8 uses
  %i.ym = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i ; 2 uses
  store ptr %i.yl, ptr %i.ym, align 8, !tbaa !739
  %i.yn = load i8, ptr %i.yl, align 1, !tbaa !731
  %i.yo = zext i8 %i.yn to i32
  %i.yp = shl nuw i32 %i.yo, 24
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !731
  %i.ys = zext i8 %i.yr to i32
  %i.yt = shl nuw nsw i32 %i.ys, 16
  %i.yu = or disjoint i32 %i.yt, %i.yp
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yl, i64 2
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !731
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = or disjoint i32 %i.yu, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yl, i64 3
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !731
  %i.zc = zext i8 %i.zb to i32
  %i.zd = or disjoint i32 %i.yz, %i.zc
  %i.ze = load ptr, ptr %i.wh, align 8, !tbaa !1493
  %i.zf = call zeroext i16 %i.ze(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.yl) #57, !inline_history !4283 ; 2 uses
  %i.zg = zext i16 %i.zf to i32                   ; 3 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !568
  %i.zi = load i16, ptr %i.wk, align 8, !tbaa !1034
  %i.zj = and i16 %i.zi, 12
  %.not575.i = icmp eq i16 %i.zj, 0
  br i1 %.not575.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.zk = ptrtoint ptr %i.yl to i64               ; 2 uses
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = load ptr, ptr %i.vc, align 8, !tbaa !987
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = trunc i64 %i.zn to i32
  %i.zp = sub nsw i32 %i.zl, %i.zo                ; 2 uses
  %i.zq = add nsw i32 %i.zp, %i.zg
  %i.zr = load i32, ptr %i.wl, align 8, !tbaa !1059
  %.not576.i = icmp sgt i32 %i.zq, %i.zr
  br i1 %.not576.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.zs = sext i32 %i.zp to i64
  %i.zt = getelementptr inbounds i8, ptr %i.ue, i64 %i.zs
  %i.zu = zext i16 %i.zf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zt, ptr nonnull align 1 %i.yl, i64 %i.zu, i1 false)
  %i.zv = load ptr, ptr %i.vc, align 8, !tbaa !987
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = sub i64 %i.zk, %i.zw
  %i.zy = getelementptr inbounds i8, ptr %i.ue, i64 %i.zx
  store ptr %i.zy, ptr %i.ym, align 8, !tbaa !739
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.zz = load i8, ptr %i.uk, align 4, !tbaa !1498
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = sub nsw i32 %.pre-phi1082.i, %i.aaa
  call fastcc void @dropCell(ptr noundef nonnull %i.jm, i32 noundef %i.aab, i32 noundef %i.zg, ptr noundef %i.a), !inline_history !4283
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !568
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %i.aac = phi i32 [ %.pre.i, %bb.ck ], [ 0, %bb.cg ] ; 2 uses
  %i.aad = phi i32 [ %i.zd, %bb.ck ], [ %i.xp, %bb.cg ]
  %i.aae = icmp eq i32 %i.aac, 0
  br i1 %i.aae, label %bb.bz, label %.thread.i87

bb.cm:                                            ; preds = %bb.cd
  store i32 %i.wn, ptr %i.h, align 4
  %i.aaf = add nuw nsw i32 %i.xd, 3
  %i.aag = and i32 %i.aaf, 2147483644
  %i.aah = zext nneg i32 %i.aag to i64            ; 3 uses
  %i.aai = mul nuw nsw i64 %i.aah, 10
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.uj, i64 52 ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !655
  %i.aal = zext i32 %i.aak to i64
  %i.aam = add nuw nsw i64 %i.aai, %i.aal
  %i.aan = call fastcc ptr @sqlite3Malloc(i64 noundef %i.aam), !inline_history !4284 ; 15 uses
  %6 = ptrtoaddr ptr %i.aan to i64
  store ptr %i.aan, ptr %i.ap, align 8, !tbaa !1857
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %sqlite3DbFree.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.aah ; 14 uses
  store ptr %i.aap, ptr %i.aq, align 8, !tbaa !1858
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.aap, i64 %i.aah ; 2 uses
  %i.aar = load ptr, ptr %i.b, align 16, !tbaa !1512 ; 4 uses
  store ptr %i.aar, ptr %i.ar, align 8, !tbaa !1856
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = load i8, ptr %i.aas, align 8, !tbaa !1114 ; 3 uses
  %i.aau = zext i8 %i.aat to i16
  %i.aav = shl nuw nsw i16 %i.aau, 2              ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aar, i64 2
  %i.aax = load i8, ptr %i.aaw, align 2, !tbaa !1492 ; 2 uses
  %i.aay = zext i8 %i.aax to i32                  ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aar, i64 80 ; 2 uses
  %i.aba = icmp ne i8 %i.aax, 0                   ; 7 uses
  %i.abb = zext nneg i16 %i.aav to i64
  %wide.trip.count940.i = zext nneg i32 %i.uy to i64 ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cy, %bb.cn
  %indvars.iv936.i = phi i64 [ 0, %bb.cn ], [ %indvars.iv.next937.i, %bb.cy ] ; 6 uses
  %.0530782.i = phi i32 [ 0, %bb.cn ], [ %.4534.ph.i, %bb.cy ] ; 3 uses
  %.promoted769776781.i = phi i32 [ 0, %bb.cn ], [ %.promoted769777.i, %bb.cy ] ; 2 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv936.i
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !1512 ; 9 uses
  %i.abe = ptrtoaddr ptr %i.abd to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 24 ; 2 uses
  %i.abg = load i16, ptr %i.abf, align 8, !tbaa !1499 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 80 ; 2 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !987 ; 7 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abd, i64 26
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !1115 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abd, i64 18 ; 2 uses
  %i.abm = load i16, ptr %i.abl, align 2, !tbaa !1496
  %i.abn = zext i16 %i.abm to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abn ; 4 uses
  %i.abp = load i8, ptr %i.abi, align 1, !tbaa !731
  %i.abq = load ptr, ptr %i.aaz, align 8, !tbaa !987
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !731
  %.not620.i = icmp eq i8 %i.abp, %i.abr
  br i1 %.not620.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81666, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4285
  br label %.thread705.i

bb.cq:                                            ; preds = %bb.co
  %i.abs = zext i16 %i.abg to i64
  %i.abt = sext i32 %.promoted769776781.i to i64  ; 4 uses
  %i.abu = getelementptr inbounds [2 x i8], ptr %i.aap, i64 %i.abt
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abd, i64 12 ; 2 uses
  %i.abw = load i8, ptr %i.abv, align 4, !tbaa !1498
  %i.abx = zext i8 %i.abw to i64
  %i.aby = add nuw nsw i64 %i.abx, %i.abs
  %i.abz = shl nuw nsw i64 %i.aby, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.abu, i8 0, i64 %i.abz, i1 false)
  %i.aca = load i8, ptr %i.abv, align 4, !tbaa !1498 ; 3 uses
  %.not621.i = icmp eq i8 %i.aca, 0
  br i1 %.not621.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abd, i64 28
  %i.acc = load i16, ptr %i.acb, align 4, !tbaa !781 ; 5 uses
  %i.acd = zext i16 %i.acc to i32                 ; 2 uses
  %i.ace = icmp ult i16 %i.abg, %i.acc
  br i1 %i.ace, label %bb.cs, label %.preheader729.i

.preheader729.i:                                  ; preds = %bb.cr
  %.not874.i = icmp eq i16 %i.acc, 0
  br i1 %.not874.i, label %.preheader727.i, label %.lr.ph763.i

.lr.ph763.i:                                      ; preds = %.preheader729.i
  %i.acf = zext i16 %i.abk to i64                 ; 3 uses
  %xtraiter = and i32 %i.acd, 1
  %i.acg = icmp eq i16 %i.acc, 1
  br i1 %i.acg, label %.epil.preheader, label %.lr.ph763.i.new

.lr.ph763.i.new:                                  ; preds = %.lr.ph763.i
  %unroll_iter = and i32 %i.acd, 65534
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81690, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4285
  br label %.thread705.i

.preheader727.i.loopexit.unr-lcssa:               ; preds = %bb.ct
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader727.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader727.i.loopexit.unr-lcssa, %.lr.ph763.i
  %indvars.iv915.i.epil.init = phi i64 [ %i.abt, %.lr.ph763.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ] ; 2 uses
  %.0515762.i.epil.init = phi ptr [ %i.abo, %.lr.ph763.i ], [ %i.aee, %.preheader727.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod484 = trunc i16 %i.acc to i1
  call void @llvm.assume(i1 %lcmp.mod484)
  %i.ach = load i8, ptr %.0515762.i.epil.init, align 1, !tbaa !731
  %i.aci = zext i8 %i.ach to i64
  %i.acj = shl nuw nsw i64 %i.aci, 8
  %i.ack = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 1
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !731
  %i.acm = zext i8 %i.acl to i64
  %i.acn = or disjoint i64 %i.acj, %i.acm
  %i.aco = and i64 %i.acn, %i.acf
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.aco
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv915.i.epil.init
  store ptr %i.acp, ptr %i.acq, align 8, !tbaa !739
  %i.acr = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 2
  %indvars.iv.next916.i.epil = add nsw i64 %indvars.iv915.i.epil.init, 1
  br label %.preheader727.i

.preheader727.i:                                  ; preds = %.epil.preheader, %.preheader727.i.loopexit.unr-lcssa, %.preheader729.i
  %.pre-phi.i = phi i64 [ %i.abt, %.preheader729.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ], [ %indvars.iv.next916.i.epil, %.epil.preheader ] ; 5 uses
  %.0515.lcssa.i = phi ptr [ %i.abo, %.preheader729.i ], [ %i.aee, %.preheader727.i.loopexit.unr-lcssa ], [ %i.acr, %.epil.preheader ]
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abd, i64 40 ; 6 uses
  %wide.trip.count.i = zext i8 %i.aca to i64      ; 5 uses
  %min.iters.check = icmp ult i8 %i.aca, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader727.i
  %i.act = shl nsw i64 %.pre-phi.i, 3
  %i.acu = add i64 %i.act, %6
  %i.acv = sub i64 %i.acu, %i.abe
  %7 = add i64 %i.acv, -41
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 252        ; 4 uses
  %i.acw = add i64 %.pre-phi.i, %n.vec            ; 2 uses
  %i.acx = getelementptr [8 x i8], ptr %i.aan, i64 %.pre-phi.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %index ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %wide.load = load <2 x ptr>, ptr %i.acy, align 8, !tbaa !739
  %wide.load422 = load <2 x ptr>, ptr %i.acz, align 8, !tbaa !739
  %i.ada = getelementptr [8 x i8], ptr %i.acx, i64 %index ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  store <2 x ptr> %wide.load, ptr %i.ada, align 8, !tbaa !739
  store <2 x ptr> %wide.load422, ptr %i.adb, align 8, !tbaa !739
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.adc = icmp eq i64 %index.next, %n.vec
  br i1 %i.adc, label %middle.block, label %vector.body, !llvm.loop !4286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit728.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader727.i, %middle.block
  %indvars.iv921.i.ph = phi i64 [ %.pre-phi.i, %vector.memcheck ], [ %.pre-phi.i, %.preheader727.i ], [ %i.acw, %middle.block ] ; 2 uses
  %indvars.iv919.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader727.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter485 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  br i1 %lcmp.mod486.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv921.i.prol = phi i64 [ %indvars.iv.next922.i.prol, %scalar.ph.prol ], [ %indvars.iv921.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv919.i.prol = phi i64 [ %indvars.iv.next920.i.prol, %scalar.ph.prol ], [ %indvars.iv919.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %indvars.iv919.i.prol
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !739
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv921.i.prol
  store ptr %i.ade, ptr %i.adf, align 8, !tbaa !739
  %indvars.iv.next922.i.prol = add nsw i64 %indvars.iv921.i.prol, 1 ; 3 uses
  %indvars.iv.next920.i.prol = add nuw nsw i64 %indvars.iv919.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter485
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4287

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next922.i.lcssa438.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv921.i.unr = phi i64 [ %indvars.iv921.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv919.i.unr = phi i64 [ %indvars.iv919.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next920.i.prol, %scalar.ph.prol ]
  %i.adg = sub nsw i64 %indvars.iv919.i.ph, %wide.trip.count.i
  %i.adh = icmp ugt i64 %i.adg, -4
  br i1 %i.adh, label %.loopexit728.i, label %scalar.ph

bb.ct:                                            ; preds = %bb.ct, %.lr.ph763.i.new
  %indvars.iv915.i = phi i64 [ %i.abt, %.lr.ph763.i.new ], [ %indvars.iv.next916.i.1, %bb.ct ] ; 3 uses
  %.0515762.i = phi ptr [ %i.abo, %.lr.ph763.i.new ], [ %i.aee, %bb.ct ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph763.i.new ], [ %niter.next.1, %bb.ct ]
  %i.adi = load i8, ptr %.0515762.i, align 1, !tbaa !731
  %i.adj = zext i8 %i.adi to i64
  %i.adk = shl nuw nsw i64 %i.adj, 8
  %i.adl = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 1
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !731
  %i.adn = zext i8 %i.adm to i64
  %i.ado = or disjoint i64 %i.adk, %i.adn
  %i.adp = and i64 %i.ado, %i.acf
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.adp
  %i.adr = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv915.i
  store ptr %i.adq, ptr %i.adr, align 8, !tbaa !739
  %i.ads = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 2
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !731
  %i.adu = zext i8 %i.adt to i64
  %i.adv = shl nuw nsw i64 %i.adu, 8
  %i.adw = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 3
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !731
  %i.ady = zext i8 %i.adx to i64
  %i.adz = or disjoint i64 %i.adv, %i.ady
  %i.aea = and i64 %i.adz, %i.acf
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.aea
  %i.aec = getelementptr [8 x i8], ptr %i.aan, i64 %indvars.iv915.i
  %i.aed = getelementptr i8, ptr %i.aec, i64 8
  store ptr %i.aeb, ptr %i.aed, align 8, !tbaa !739
  %i.aee = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 4 ; 3 uses
  %indvars.iv.next916.i.1 = add nsw i64 %indvars.iv915.i, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader727.i.loopexit.unr-lcssa, label %bb.ct, !llvm.loop !4288

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv921.i = phi i64 [ %indvars.iv.next922.i.3, %scalar.ph ], [ %indvars.iv921.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv919.i = phi i64 [ %indvars.iv.next920.i.3, %scalar.ph ], [ %indvars.iv919.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %indvars.iv919.i
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !739
  %i.aeh = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv921.i
  store ptr %i.aeg, ptr %i.aeh, align 8, !tbaa !739
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %indvars.iv919.i
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !739
  %i.ael = getelementptr [8 x i8], ptr %i.aan, i64 %indvars.iv921.i
  %i.aem = getelementptr i8, ptr %i.ael, i64 8
  store ptr %i.aek, ptr %i.aem, align 8, !tbaa !739
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %indvars.iv919.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !739
  %i.aeq = getelementptr [8 x i8], ptr %i.aan, i64 %indvars.iv921.i
  %i.aer = getelementptr i8, ptr %i.aeq, i64 16
  store ptr %i.aep, ptr %i.aer, align 8, !tbaa !739
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %indvars.iv919.i
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 24
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !739
  %i.aev = getelementptr [8 x i8], ptr %i.aan, i64 %indvars.iv921.i
  %i.aew = getelementptr i8, ptr %i.aev, i64 24
  store ptr %i.aeu, ptr %i.aew, align 8, !tbaa !739
  %indvars.iv.next922.i.3 = add nsw i64 %indvars.iv921.i, 4 ; 2 uses
  %indvars.iv.next920.i.3 = add nuw nsw i64 %indvars.iv919.i, 4 ; 2 uses
  %exitcond927.not.i.3 = icmp eq i64 %indvars.iv.next920.i.3, %wide.trip.count.i
  br i1 %exitcond927.not.i.3, label %.loopexit728.i, label %scalar.ph, !llvm.loop !4289

.loopexit728.i:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next922.i.lcssa = phi i64 [ %i.acw, %middle.block ], [ %indvars.iv.next922.i.lcssa438.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next922.i.3, %scalar.ph ]
  %i.aex = trunc nsw i64 %indvars.iv.next922.i.lcssa to i32 ; 2 uses
  store i32 %i.aex, ptr %2, align 8, !tbaa !4325
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit728.i, %bb.cq
  %.promoted769779.i = phi i32 [ %.promoted769776781.i, %bb.cq ], [ %i.aex, %.loopexit728.i ] ; 2 uses
  %.1516.i = phi ptr [ %i.abo, %bb.cq ], [ %.0515.lcssa.i, %.loopexit728.i ] ; 2 uses
  %i.aey = load i16, ptr %i.abl, align 2, !tbaa !1496
  %i.aez = zext i16 %i.aey to i64
  %i.afa = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.aez
  %i.afb = load i16, ptr %i.abf, align 8, !tbaa !1499
  %i.afc = zext i16 %i.afb to i64
  %i.afd = shl nuw nsw i64 %i.afc, 1
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afa, i64 %i.afd ; 2 uses
  %i.aff = icmp ult ptr %.1516.i, %i.afe
  br i1 %i.aff, label %.lr.ph771.i, label %._crit_edge.i

.lr.ph771.i:                                      ; preds = %bb.cu
  %i.afg = zext i16 %i.abk to i64
  %i.afh = sext i32 %.promoted769779.i to i64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph771.i
  %indvars.iv928.i = phi i64 [ %i.afh, %.lr.ph771.i ], [ %indvars.iv.next929.i, %bb.cv ] ; 2 uses
  %.2517770.i = phi ptr [ %.1516.i, %.lr.ph771.i ], [ %i.afs, %bb.cv ] ; 3 uses
  %i.afi = load i8, ptr %.2517770.i, align 1, !tbaa !731
  %i.afj = zext i8 %i.afi to i64
  %i.afk = shl nuw nsw i64 %i.afj, 8
  %i.afl = getelementptr inbounds nuw i8, ptr %.2517770.i, i64 1
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !731
  %i.afn = zext i8 %i.afm to i64
  %i.afo = or disjoint i64 %i.afk, %i.afn
  %i.afp = and i64 %i.afo, %i.afg
  %i.afq = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.afp
  %i.afr = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv928.i
  store ptr %i.afq, ptr %i.afr, align 8, !tbaa !739
  %i.afs = getelementptr inbounds nuw i8, ptr %.2517770.i, i64 2 ; 2 uses
  %indvars.iv.next929.i = add nsw i64 %indvars.iv928.i, 1 ; 2 uses
  %i.aft = trunc nsw i64 %indvars.iv.next929.i to i32 ; 2 uses
  store i32 %i.aft, ptr %2, align 8, !tbaa !4325
  %i.afu = icmp ult ptr %i.afs, %i.afe
  br i1 %i.afu, label %bb.cv, label %._crit_edge.i, !llvm.loop !4290

._crit_edge.i:                                    ; preds = %bb.cv, %bb.cu
  %.promoted769778.i = phi i32 [ %.promoted769779.i, %bb.cu ], [ %i.aft, %bb.cv ] ; 4 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv936.i
  store i32 %.promoted769778.i, ptr %i.afv, align 4, !tbaa !568
  %i.afw = icmp samesign uge i64 %indvars.iv936.i, %i.wm
  %or.cond.i = select i1 %i.afw, i1 true, i1 %i.aba
  br i1 %or.cond.i, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv936.i
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !568 ; 2 uses
  %i.afz = trunc i32 %i.afy to i16
  %i.aga = sext i32 %.promoted769778.i to i64     ; 2 uses
  %i.agb = getelementptr inbounds [2 x i8], ptr %i.aap, i64 %i.aga ; 5 uses
  store i16 %i.afz, ptr %i.agb, align 2, !tbaa !781
  %i.agc = sext i32 %.0530782.i to i64
  %i.agd = getelementptr inbounds i8, ptr %i.aaq, i64 %i.agc ; 2 uses
  %i.age = and i32 %i.afy, 65535                  ; 2 uses
  %i.agf = add i32 %i.age, %.0530782.i            ; 3 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv936.i
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !739
  %i.agi = zext nneg i32 %i.age to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agd, ptr align 1 %i.agh, i64 %i.agi, i1 false)
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.abb ; 2 uses
  %i.agk = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %i.aga
  store ptr %i.agj, ptr %i.agk, align 8, !tbaa !739
  %i.agl = load i16, ptr %i.agb, align 2, !tbaa !781
  %i.agm = sub i16 %i.agl, %i.aav                 ; 2 uses
  store i16 %i.agm, ptr %i.agb, align 2, !tbaa !781
  %i.agn = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.ago = load i8, ptr %i.agn, align 8, !tbaa !1114
  %.not622.i = icmp eq i8 %i.ago, 0
  br i1 %.not622.i, label %bb.cx, label %.preheader726.i

.preheader726.i:                                  ; preds = %bb.cw
  %i.agp = icmp ult i16 %i.agm, 4
end_hunk_0
