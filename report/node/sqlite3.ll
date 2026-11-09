Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12434
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 429
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@balance:bb.a
  %i.vb = shl nuw nsw i64 %i.va, 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 1
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !2967
  %i.ve = zext i8 %i.vd to i64
  %i.vf = or disjoint i64 %i.vb, %i.ve
  %i.vg = and i64 %i.vf, %i.ut
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.vg
  br label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.by, %bb.bx
  %.0528.i = phi ptr [ %i.uq, %bb.bx ], [ %i.vh, %bb.by ] ; 2 uses
  %i.vi = load i32, ptr %.0528.i, align 1
  %i.vj = call i32 @llvm.bswap.i32(i32 %i.vi)
  %i.vk = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  %i.vl = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.vm = getelementptr inbounds nuw i8, ptr %i.jd, i64 120 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.jd, i64 26
  %i.vo = getelementptr inbounds nuw i8, ptr %i.jd, i64 96
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tr, i64 56 ; 2 uses
  %i.vr = zext nneg i32 %.0499.i to i64           ; 4 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cl, %.lr.ph.i86
  %indvars.iv.i = phi i64 [ %i.vr, %.lr.ph.i86 ], [ %indvars.iv.next.i, %bb.cl ] ; 5 uses
  %.0495754.i = phi i32 [ 0, %.lr.ph.i86 ], [ %i.wi, %bb.cl ]
  %i.vs = phi i32 [ %i.vj, %.lr.ph.i86 ], [ %i.zi, %bb.cl ] ; 2 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.vu = call fastcc i32 @getAndInitPage(ptr noundef %i.tr, i32 noundef %i.vs, ptr noundef nonnull %i.vt, i32 noundef 0), !inline_history !8064 ; 3 uses
  store i32 %i.vu, ptr %i.a, align 4, !tbaa !2802
  %.not572.i = icmp eq i32 %i.vu, 0
  br i1 %.not572.i, label %bb.ca, label %.thread.i87

.thread.i87:                                      ; preds = %bb.cl, %bb.bz
  %i.vv = phi i32 [ %i.vu, %bb.bz ], [ %i.zh, %bb.cl ]
  %.1500.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.bz ], [ %indvars.iv.next.i, %bb.cl ]
  %i.vw = shl i64 %.1500.lcssa.ph.in.i, 32
  %sext.i = add i64 %i.vw, 4294967296
  %i.vx = ashr exact i64 %sext.i, 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.vx, i1 false)
  br label %.thread705.i

bb.ca:                                            ; preds = %bb.bz
  %i.vy = load ptr, ptr %i.vt, align 8, !tbaa !3978 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 20
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !3958
  %i.wb = icmp slt i32 %i.wa, 0
  br i1 %i.wb, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.wc = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.vy), !inline_history !8064 ; 3 uses
  store i32 %i.wc, ptr %i.a, align 4, !tbaa !2802
  %.not573.i = icmp eq i32 %i.wc, 0
  br i1 %.not573.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wd = shl nsw i64 %indvars.iv.i, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.wd, i1 false)
  br label %.thread705.i

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wf = load i16, ptr %i.we, align 8, !tbaa !3968
  %i.wg = zext i16 %i.wf to i32
  %i.wh = add nuw nsw i32 %.0495754.i, 4
  %i.wi = add nuw nsw i32 %i.wh, %i.wg            ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 8 uses
  %i.wj = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.wj, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wk = load i8, ptr %i.ts, align 4, !tbaa !3967 ; 2 uses
  %.not574.i = icmp eq i8 %i.wk, 0
  br i1 %.not574.i, label %._crit_edge1072.i, label %bb.cf

._crit_edge1072.i:                                ; preds = %bb.ce
  %i.wl = trunc i64 %indvars.iv.next.i to i32
  %.pre1081.i = add i32 %.1536.i, %i.wl
  br label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.wm = load i16, ptr %i.vk, align 4, !tbaa !3015
  %i.wn = zext i16 %i.wm to i32
  %i.wo = trunc i64 %indvars.iv.next.i to i32
  %i.wp = add i32 %.1536.i, %i.wo                 ; 2 uses
  %i.wq = icmp eq i32 %i.wp, %i.wn
  br i1 %i.wq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.wr = load ptr, ptr %i.vl, align 8, !tbaa !2973 ; 3 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  store ptr %i.wr, ptr %i.ws, align 8, !tbaa !2973
  %i.wt = load i32, ptr %i.wr, align 1
  %i.wu = call i32 @llvm.bswap.i32(i32 %i.wt)
  %i.wv = load ptr, ptr %i.vm, align 8, !tbaa !3962
  %i.ww = call zeroext i16 %i.wv(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.wr) #58, !inline_history !8064
  %i.wx = zext i16 %i.ww to i32
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !2802
  store i8 0, ptr %i.ts, align 4, !tbaa !3967
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cf, %._crit_edge1072.i
  %.pre-phi1082.i = phi i32 [ %.pre1081.i, %._crit_edge1072.i ], [ %i.wp, %bb.cf ] ; 2 uses
  %i.wz = load ptr, ptr %i.uk, align 8, !tbaa !3235
  %i.xa = load i16, ptr %i.vn, align 2, !tbaa !3353
  %i.xb = zext i16 %i.xa to i64
  %i.xc = load ptr, ptr %i.vo, align 8, !tbaa !3354
  %i.xd = zext i8 %i.wk to i32
  %i.xe = sub nsw i32 %.pre-phi1082.i, %i.xd
  %i.xf = shl nsw i32 %i.xe, 1
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds i8, ptr %i.xc, i64 %i.xg ; 2 uses
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !2967
  %i.xj = zext i8 %i.xi to i64
  %i.xk = shl nuw nsw i64 %i.xj, 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !2967
  %i.xn = zext i8 %i.xm to i64
  %i.xo = or disjoint i64 %i.xk, %i.xn
  %i.xp = and i64 %i.xo, %i.xb
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.xp ; 8 uses
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i ; 2 uses
  store ptr %i.xq, ptr %i.xr, align 8, !tbaa !2973
  %i.xs = load i8, ptr %i.xq, align 1, !tbaa !2967
  %i.xt = zext i8 %i.xs to i32
  %i.xu = shl nuw i32 %i.xt, 24
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 1
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !2967
  %i.xx = zext i8 %i.xw to i32
  %i.xy = shl nuw nsw i32 %i.xx, 16
  %i.xz = or disjoint i32 %i.xy, %i.xu
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xq, i64 2
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !2967
  %i.yc = zext i8 %i.yb to i32
  %i.yd = shl nuw nsw i32 %i.yc, 8
  %i.ye = or disjoint i32 %i.xz, %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xq, i64 3
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !2967
  %i.yh = zext i8 %i.yg to i32
  %i.yi = or disjoint i32 %i.ye, %i.yh
  %i.yj = load ptr, ptr %i.vm, align 8, !tbaa !3962
  %i.yk = call zeroext i16 %i.yj(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.xq) #58, !inline_history !8064 ; 2 uses
  %i.yl = zext i16 %i.yk to i32                   ; 3 uses
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.yl, ptr %i.ym, align 4, !tbaa !2802
  %i.yn = load i16, ptr %i.vp, align 8, !tbaa !3278
  %i.yo = and i16 %i.yn, 12
  %.not575.i = icmp eq i16 %i.yo, 0
  br i1 %.not575.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yp = ptrtoint ptr %i.xq to i64               ; 2 uses
  %i.yq = trunc i64 %i.yp to i32
  %i.yr = load ptr, ptr %i.uk, align 8, !tbaa !3235
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = trunc i64 %i.ys to i32
  %i.yu = sub nsw i32 %i.yq, %i.yt                ; 2 uses
  %i.yv = add nsw i32 %i.yu, %i.yl
  %i.yw = load i32, ptr %i.vq, align 8, !tbaa !3303
  %.not576.i = icmp sgt i32 %i.yv, %i.yw
  br i1 %.not576.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.yx = sext i32 %i.yu to i64
  %i.yy = getelementptr inbounds i8, ptr %i.tm, i64 %i.yx
  %i.yz = zext i16 %i.yk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yy, ptr nonnull align 1 %i.xq, i64 %i.yz, i1 false)
  %i.za = load ptr, ptr %i.uk, align 8, !tbaa !3235
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = sub i64 %i.yp, %i.zb
  %i.zd = getelementptr inbounds i8, ptr %i.tm, i64 %i.zc
  store ptr %i.zd, ptr %i.xr, align 8, !tbaa !2973
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.ze = load i8, ptr %i.ts, align 4, !tbaa !3967
  %i.zf = zext i8 %i.ze to i32
  %i.zg = sub nsw i32 %.pre-phi1082.i, %i.zf
  call fastcc void @dropCell(ptr noundef nonnull %i.jd, i32 noundef %i.zg, i32 noundef %i.yl, ptr noundef %i.a), !inline_history !8064
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !2802
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %i.zh = phi i32 [ %.pre.i, %bb.ck ], [ 0, %bb.cg ] ; 2 uses
  %i.zi = phi i32 [ %i.yi, %bb.ck ], [ %i.wu, %bb.cg ]
  %i.zj = icmp eq i32 %i.zh, 0
  br i1 %i.zj, label %bb.bz, label %.thread.i87

bb.cm:                                            ; preds = %bb.cd
  store i32 %i.vs, ptr %i.h, align 4
  %i.zk = add nuw nsw i32 %i.wi, 3
  %i.zl = and i32 %i.zk, 2147483644
  %i.zm = zext nneg i32 %i.zl to i64              ; 3 uses
  %i.zn = mul nuw nsw i64 %i.zm, 10
  %i.zo = getelementptr inbounds nuw i8, ptr %i.tr, i64 52 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !2891
  %i.zq = zext i32 %i.zp to i64
  %i.zr = add nuw nsw i64 %i.zn, %i.zq
  %i.zs = call fastcc ptr @sqlite3Malloc(i64 noundef %i.zr), !inline_history !8065 ; 15 uses
  %6 = ptrtoaddr ptr %i.zs to i64
  store ptr %i.zs, ptr %i.ap, align 8, !tbaa !4299
  %i.zt = icmp eq ptr %i.zs, null
  br i1 %i.zt, label %sqlite3DbFree.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.zm ; 14 uses
  store ptr %i.zu, ptr %i.aq, align 8, !tbaa !4300
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %i.zu, i64 %i.zm ; 2 uses
  %i.zw = load ptr, ptr %i.b, align 16, !tbaa !3978 ; 4 uses
  store ptr %i.zw, ptr %i.ar, align 8, !tbaa !4298
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.zy = load i8, ptr %i.zx, align 8, !tbaa !3352 ; 3 uses
  %i.zz = zext i8 %i.zy to i16
  %i.aaa = shl nuw nsw i16 %i.zz, 2               ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 2
  %i.aac = load i8, ptr %i.aab, align 2, !tbaa !3961 ; 2 uses
  %i.aad = zext i8 %i.aac to i32                  ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zw, i64 80 ; 2 uses
  %i.aaf = icmp ne i8 %i.aac, 0                   ; 7 uses
  %i.aag = zext nneg i16 %i.aaa to i64
  %wide.trip.count940.i = zext nneg i32 %i.ug to i64 ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cy, %bb.cn
  %indvars.iv936.i = phi i64 [ 0, %bb.cn ], [ %indvars.iv.next937.i, %bb.cy ] ; 6 uses
  %.0530782.i = phi i32 [ 0, %bb.cn ], [ %.4534.ph.i, %bb.cy ] ; 3 uses
  %.promoted769776781.i = phi i32 [ 0, %bb.cn ], [ %.promoted769777.i, %bb.cy ] ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv936.i
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !3978 ; 9 uses
  %i.aaj = ptrtoaddr ptr %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 24 ; 2 uses
  %i.aal = load i16, ptr %i.aak, align 8, !tbaa !3968 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 80 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !3235 ; 7 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aai, i64 26
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !3353 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aai, i64 18 ; 2 uses
  %i.aar = load i16, ptr %i.aaq, align 2, !tbaa !3965
  %i.aas = zext i16 %i.aar to i64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aas ; 4 uses
  %i.aau = load i8, ptr %i.aan, align 1, !tbaa !2967
  %i.aav = load ptr, ptr %i.aae, align 8, !tbaa !3235
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !2967
  %.not620.i = icmp eq i8 %i.aau, %i.aaw
  br i1 %.not620.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 81021, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !8064
  br label %.thread705.i

bb.cq:                                            ; preds = %bb.co
  %i.aax = zext i16 %i.aal to i64
  %i.aay = sext i32 %.promoted769776781.i to i64  ; 4 uses
  %i.aaz = getelementptr inbounds [2 x i8], ptr %i.zu, i64 %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aai, i64 12 ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 4, !tbaa !3967
  %i.abc = zext i8 %i.abb to i64
  %i.abd = add nuw nsw i64 %i.abc, %i.aax
  %i.abe = shl nuw nsw i64 %i.abd, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aaz, i8 0, i64 %i.abe, i1 false)
  %i.abf = load i8, ptr %i.aba, align 4, !tbaa !3967 ; 3 uses
  %.not621.i = icmp eq i8 %i.abf, 0
  br i1 %.not621.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aai, i64 28
  %i.abh = load i16, ptr %i.abg, align 4, !tbaa !3015 ; 5 uses
  %i.abi = zext i16 %i.abh to i32                 ; 2 uses
  %i.abj = icmp ult i16 %i.aal, %i.abh
  br i1 %i.abj, label %bb.cs, label %.preheader729.i

.preheader729.i:                                  ; preds = %bb.cr
  %.not874.i = icmp eq i16 %i.abh, 0
  br i1 %.not874.i, label %.preheader727.i, label %.lr.ph763.i

.lr.ph763.i:                                      ; preds = %.preheader729.i
  %i.abk = zext i16 %i.aap to i64                 ; 3 uses
  %xtraiter = and i32 %i.abi, 1
  %i.abl = icmp eq i16 %i.abh, 1
  br i1 %i.abl, label %.epil.preheader, label %.lr.ph763.i.new

.lr.ph763.i.new:                                  ; preds = %.lr.ph763.i
  %unroll_iter = and i32 %i.abi, 65534
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 81045, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !8064
  br label %.thread705.i

.preheader727.i.loopexit.unr-lcssa:               ; preds = %bb.ct
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader727.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader727.i.loopexit.unr-lcssa, %.lr.ph763.i
  %indvars.iv915.i.epil.init = phi i64 [ %i.aay, %.lr.ph763.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ] ; 2 uses
  %.0515762.i.epil.init = phi ptr [ %i.aat, %.lr.ph763.i ], [ %i.adj, %.preheader727.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod484 = trunc i16 %i.abh to i1
  call void @llvm.assume(i1 %lcmp.mod484)
  %i.abm = load i8, ptr %.0515762.i.epil.init, align 1, !tbaa !2967
  %i.abn = zext i8 %i.abm to i64
  %i.abo = shl nuw nsw i64 %i.abn, 8
  %i.abp = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 1
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !2967
  %i.abr = zext i8 %i.abq to i64
  %i.abs = or disjoint i64 %i.abo, %i.abr
  %i.abt = and i64 %i.abs, %i.abk
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.abt
  %i.abv = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %indvars.iv915.i.epil.init
  store ptr %i.abu, ptr %i.abv, align 8, !tbaa !2973
  %i.abw = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 2
  %indvars.iv.next916.i.epil = add nsw i64 %indvars.iv915.i.epil.init, 1
  br label %.preheader727.i

.preheader727.i:                                  ; preds = %.epil.preheader, %.preheader727.i.loopexit.unr-lcssa, %.preheader729.i
  %.pre-phi.i = phi i64 [ %i.aay, %.preheader729.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ], [ %indvars.iv.next916.i.epil, %.epil.preheader ] ; 5 uses
  %.0515.lcssa.i = phi ptr [ %i.aat, %.preheader729.i ], [ %i.adj, %.preheader727.i.loopexit.unr-lcssa ], [ %i.abw, %.epil.preheader ]
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aai, i64 40 ; 6 uses
  %wide.trip.count.i = zext i8 %i.abf to i64      ; 5 uses
  %min.iters.check = icmp ult i8 %i.abf, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader727.i
  %i.aby = shl nsw i64 %.pre-phi.i, 3
  %7 = add i64 %i.aby, %6
  %i.abz = sub i64 %7, %i.aaj
  %i.aca = add i64 %i.abz, -41
  %diff.check = icmp ult i64 %i.aca, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 252        ; 4 uses
  %i.acb = add i64 %.pre-phi.i, %n.vec            ; 2 uses
  %i.acc = getelementptr [8 x i8], ptr %i.zs, i64 %.pre-phi.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %index ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %wide.load = load <2 x ptr>, ptr %i.acd, align 8, !tbaa !2973
  %wide.load422 = load <2 x ptr>, ptr %i.ace, align 8, !tbaa !2973
  %i.acf = getelementptr [8 x i8], ptr %i.acc, i64 %index ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  store <2 x ptr> %wide.load, ptr %i.acf, align 8, !tbaa !2973
  store <2 x ptr> %wide.load422, ptr %i.acg, align 8, !tbaa !2973
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ach = icmp eq i64 %index.next, %n.vec
  br i1 %i.ach, label %middle.block, label %vector.body, !llvm.loop !8066

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit728.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader727.i, %middle.block
  %indvars.iv921.i.ph = phi i64 [ %.pre-phi.i, %vector.memcheck ], [ %.pre-phi.i, %.preheader727.i ], [ %i.acb, %middle.block ] ; 2 uses
  %indvars.iv919.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader727.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter485 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  br i1 %lcmp.mod486.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv921.i.prol = phi i64 [ %indvars.iv.next922.i.prol, %scalar.ph.prol ], [ %indvars.iv921.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv919.i.prol = phi i64 [ %indvars.iv.next920.i.prol, %scalar.ph.prol ], [ %indvars.iv919.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv919.i.prol
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !2973
  %i.ack = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %indvars.iv921.i.prol
  store ptr %i.acj, ptr %i.ack, align 8, !tbaa !2973
  %indvars.iv.next922.i.prol = add nsw i64 %indvars.iv921.i.prol, 1 ; 3 uses
  %indvars.iv.next920.i.prol = add nuw nsw i64 %indvars.iv919.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter485
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !8067

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next922.i.lcssa438.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv921.i.unr = phi i64 [ %indvars.iv921.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv919.i.unr = phi i64 [ %indvars.iv919.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next920.i.prol, %scalar.ph.prol ]
  %i.acl = sub nsw i64 %indvars.iv919.i.ph, %wide.trip.count.i
  %i.acm = icmp ugt i64 %i.acl, -4
  br i1 %i.acm, label %.loopexit728.i, label %scalar.ph

bb.ct:                                            ; preds = %bb.ct, %.lr.ph763.i.new
  %indvars.iv915.i = phi i64 [ %i.aay, %.lr.ph763.i.new ], [ %indvars.iv.next916.i.1, %bb.ct ] ; 3 uses
  %.0515762.i = phi ptr [ %i.aat, %.lr.ph763.i.new ], [ %i.adj, %bb.ct ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph763.i.new ], [ %niter.next.1, %bb.ct ]
  %i.acn = load i8, ptr %.0515762.i, align 1, !tbaa !2967
  %i.aco = zext i8 %i.acn to i64
  %i.acp = shl nuw nsw i64 %i.aco, 8
  %i.acq = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 1
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !2967
  %i.acs = zext i8 %i.acr to i64
  %i.act = or disjoint i64 %i.acp, %i.acs
  %i.acu = and i64 %i.act, %i.abk
  %i.acv = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.acu
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %indvars.iv915.i
  store ptr %i.acv, ptr %i.acw, align 8, !tbaa !2973
  %i.acx = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 2
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !2967
  %i.acz = zext i8 %i.acy to i64
  %i.ada = shl nuw nsw i64 %i.acz, 8
  %i.adb = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 3
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !2967
  %i.add = zext i8 %i.adc to i64
  %i.ade = or disjoint i64 %i.ada, %i.add
  %i.adf = and i64 %i.ade, %i.abk
  %i.adg = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.adf
  %i.adh = getelementptr [8 x i8], ptr %i.zs, i64 %indvars.iv915.i
  %i.adi = getelementptr i8, ptr %i.adh, i64 8
  store ptr %i.adg, ptr %i.adi, align 8, !tbaa !2973
  %i.adj = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 4 ; 3 uses
  %indvars.iv.next916.i.1 = add nsw i64 %indvars.iv915.i, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader727.i.loopexit.unr-lcssa, label %bb.ct, !llvm.loop !8068

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv921.i = phi i64 [ %indvars.iv.next922.i.3, %scalar.ph ], [ %indvars.iv921.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv919.i = phi i64 [ %indvars.iv.next920.i.3, %scalar.ph ], [ %indvars.iv919.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv919.i
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !2973
  %i.adm = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %indvars.iv921.i
  store ptr %i.adl, ptr %i.adm, align 8, !tbaa !2973
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv919.i
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !2973
  %i.adq = getelementptr [8 x i8], ptr %i.zs, i64 %indvars.iv921.i
  %i.adr = getelementptr i8, ptr %i.adq, i64 8
  store ptr %i.adp, ptr %i.adr, align 8, !tbaa !2973
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv919.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !2973
  %i.adv = getelementptr [8 x i8], ptr %i.zs, i64 %indvars.iv921.i
  %i.adw = getelementptr i8, ptr %i.adv, i64 16
  store ptr %i.adu, ptr %i.adw, align 8, !tbaa !2973
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv919.i
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 24
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !2973
  %i.aea = getelementptr [8 x i8], ptr %i.zs, i64 %indvars.iv921.i
  %i.aeb = getelementptr i8, ptr %i.aea, i64 24
  store ptr %i.adz, ptr %i.aeb, align 8, !tbaa !2973
  %indvars.iv.next922.i.3 = add nsw i64 %indvars.iv921.i, 4 ; 2 uses
  %indvars.iv.next920.i.3 = add nuw nsw i64 %indvars.iv919.i, 4 ; 2 uses
  %exitcond927.not.i.3 = icmp eq i64 %indvars.iv.next920.i.3, %wide.trip.count.i
  br i1 %exitcond927.not.i.3, label %.loopexit728.i, label %scalar.ph, !llvm.loop !8069

.loopexit728.i:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next922.i.lcssa = phi i64 [ %i.acb, %middle.block ], [ %indvars.iv.next922.i.lcssa438.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next922.i.3, %scalar.ph ]
  %i.aec = trunc nsw i64 %indvars.iv.next922.i.lcssa to i32 ; 2 uses
  store i32 %i.aec, ptr %2, align 8, !tbaa !8104
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit728.i, %bb.cq
  %.promoted769779.i = phi i32 [ %.promoted769776781.i, %bb.cq ], [ %i.aec, %.loopexit728.i ] ; 2 uses
  %.1516.i = phi ptr [ %i.aat, %bb.cq ], [ %.0515.lcssa.i, %.loopexit728.i ] ; 2 uses
  %i.aed = load i16, ptr %i.aaq, align 2, !tbaa !3965
  %i.aee = zext i16 %i.aed to i64
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aee
  %i.aeg = load i16, ptr %i.aak, align 8, !tbaa !3968
  %i.aeh = zext i16 %i.aeg to i64
  %i.aei = shl nuw nsw i64 %i.aeh, 1
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aei ; 2 uses
  %i.aek = icmp ult ptr %.1516.i, %i.aej
  br i1 %i.aek, label %.lr.ph771.i, label %._crit_edge.i

.lr.ph771.i:                                      ; preds = %bb.cu
  %i.ael = zext i16 %i.aap to i64
  %i.aem = sext i32 %.promoted769779.i to i64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph771.i
  %indvars.iv928.i = phi i64 [ %i.aem, %.lr.ph771.i ], [ %indvars.iv.next929.i, %bb.cv ] ; 2 uses
  %.2517770.i = phi ptr [ %.1516.i, %.lr.ph771.i ], [ %i.aex, %bb.cv ] ; 3 uses
  %i.aen = load i8, ptr %.2517770.i, align 1, !tbaa !2967
  %i.aeo = zext i8 %i.aen to i64
  %i.aep = shl nuw nsw i64 %i.aeo, 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %.2517770.i, i64 1
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !2967
  %i.aes = zext i8 %i.aer to i64
  %i.aet = or disjoint i64 %i.aep, %i.aes
  %i.aeu = and i64 %i.aet, %i.ael
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aeu
  %i.aew = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %indvars.iv928.i
  store ptr %i.aev, ptr %i.aew, align 8, !tbaa !2973
  %i.aex = getelementptr inbounds nuw i8, ptr %.2517770.i, i64 2 ; 2 uses
  %indvars.iv.next929.i = add nsw i64 %indvars.iv928.i, 1 ; 2 uses
  %i.aey = trunc nsw i64 %indvars.iv.next929.i to i32 ; 2 uses
  store i32 %i.aey, ptr %2, align 8, !tbaa !8104
  %i.aez = icmp ult ptr %i.aex, %i.aej
  br i1 %i.aez, label %bb.cv, label %._crit_edge.i, !llvm.loop !8070

._crit_edge.i:                                    ; preds = %bb.cv, %bb.cu
  %.promoted769778.i = phi i32 [ %.promoted769779.i, %bb.cu ], [ %i.aey, %bb.cv ] ; 4 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv936.i
  store i32 %.promoted769778.i, ptr %i.afa, align 4, !tbaa !2802
  %i.afb = icmp samesign uge i64 %indvars.iv936.i, %i.vr
  %or.cond.i = select i1 %i.afb, i1 true, i1 %i.aaf
  br i1 %or.cond.i, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv936.i
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !2802 ; 2 uses
  %i.afe = trunc i32 %i.afd to i16
  %i.aff = sext i32 %.promoted769778.i to i64     ; 2 uses
  %i.afg = getelementptr inbounds [2 x i8], ptr %i.zu, i64 %i.aff ; 5 uses
  store i16 %i.afe, ptr %i.afg, align 2, !tbaa !3015
  %i.afh = sext i32 %.0530782.i to i64
  %i.afi = getelementptr inbounds i8, ptr %i.zv, i64 %i.afh ; 2 uses
  %i.afj = and i32 %i.afd, 65535                  ; 2 uses
  %i.afk = add i32 %i.afj, %.0530782.i            ; 3 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv936.i
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !2973
  %i.afn = zext nneg i32 %i.afj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afi, ptr align 1 %i.afm, i64 %i.afn, i1 false)
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afi, i64 %i.aag ; 2 uses
  %i.afp = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %i.aff
  store ptr %i.afo, ptr %i.afp, align 8, !tbaa !2973
  %i.afq = load i16, ptr %i.afg, align 2, !tbaa !3015
  %i.afr = sub i16 %i.afq, %i.aaa                 ; 2 uses
  store i16 %i.afr, ptr %i.afg, align 2, !tbaa !3015
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.aft = load i8, ptr %i.afs, align 8, !tbaa !3352
  %.not622.i = icmp eq i8 %i.aft, 0
  br i1 %.not622.i, label %bb.cx, label %.preheader726.i

.preheader726.i:                                  ; preds = %bb.cw
end_hunk_0
