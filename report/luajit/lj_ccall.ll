Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_ccall?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lj_ccall_func:bb.a

.split.i:                                         ; preds = %bb.z
  %i.di = and i32 %i.da, 67108864
  %.not210.i = icmp eq i32 %i.di, 0
  %i.dj = add nuw nsw i32 %i.de, 7                ; 3 uses
  %i.dk = lshr i32 %i.dj, 3                       ; 3 uses
  br i1 %.not210.i, label %.thread295.i, label %.split._crit_edge.i

bb.aa:                                            ; preds = %ctype_raw.exit.i
  %i.dl = and i32 %i.da, -134217728
  %i.dm = icmp eq i32 %i.dl, 939524096
  br i1 %i.dm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.de, label %.loopexit.i [
    i32 16, label %.thread239.i
    i32 8, label %.thread239.i
  ]

bb.ac:                                            ; preds = %bb.aa
  %i.dn = icmp eq i32 %i.df, 1
  br i1 %i.dn, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.ck, align 4, !tbaa !28
  store i32 0, ptr %i.e, align 4, !tbaa !28
  %i.do = call fastcc i32 @ccall_classify_struct(ptr noundef nonnull %i.k, ptr noundef nonnull %.0.i.i, ptr noundef %i.e, i32 noundef 0)
  %.not208.i = icmp eq i32 %i.do, 0
  br i1 %.not208.i, label %bb.ae, label %.thread243.i

.thread243.i:                                     ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %i.dp = add i32 %i.de, 7                        ; 2 uses
  %i.dq = lshr i32 %i.dp, 3
  %.pre277.i = load i32, ptr %.0.i.i, align 8, !tbaa !25
  br label %bb.av

bb.ae:                                            ; preds = %bb.ad
  %i.dr = trunc i32 %.0180261.i to i8
  store i8 %i.dr, ptr %i.cl, align 4, !tbaa !59
  %i.ds = trunc nuw i32 %.3188260.i to i8
  store i8 %i.ds, ptr %i.cm, align 2, !tbaa !60
  %i.dt = trunc nuw i32 %.0174266.i to i8
  store i8 %i.dt, ptr %i.cn, align 1, !tbaa !61
  %.val.i = load i32, ptr %i.e, align 4           ; 2 uses
  %.val217.i = load i32, ptr %i.ck, align 4       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.du = shl i32 %.0179262.i, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @lj_cconv_ct_tv(ptr noundef nonnull %i.k, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %.0159268.i, i32 noundef %i.du) #6
  %i.dv = load i8, ptr %i.cm, align 2, !tbaa !60  ; 3 uses
  %i.dw = zext i8 %i.dv to i32                    ; 4 uses
  %i.dx = load i8, ptr %i.cn, align 1, !tbaa !61  ; 3 uses
  %i.dy = zext i8 %i.dx to i32                    ; 4 uses
  %i.dz = and i32 %.val.i, 1
  %.not.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = icmp ugt i8 %i.dv, 5
  br i1 %i.ea, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = load i64, ptr %i.c, align 16, !tbaa !56
  %i.ec = add nuw nsw i32 %i.dw, 1
  %i.ed = zext nneg i8 %i.dv to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ed
  store i64 %i.eb, ptr %i.ee, align 8, !tbaa !56
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.ef = and i32 %.val.i, 2
  %.not26.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not26.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = icmp ugt i8 %i.dx, 7
  br i1 %i.eg, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i64, ptr %i.c, align 16, !tbaa !56
  %i.ei = add nuw nsw i32 %i.dy, 1
  %i.ej = zext nneg i8 %i.dx to i64
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ej
  store i64 %i.eh, ptr %i.ek, align 16, !tbaa !10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %.124.i.i.i = phi i32 [ %i.ec, %bb.ag ], [ %i.dw, %bb.aj ], [ %i.dw, %bb.ah ] ; 5 uses
  %.1.i.i.i = phi i32 [ %i.dy, %bb.ag ], [ %i.ei, %bb.aj ], [ %i.dy, %bb.ah ] ; 5 uses
  %i.el = and i32 %.val217.i, 1
  %.not.1.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.1.i.i.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = icmp samesign ugt i32 %.124.i.i.i, 5
  br i1 %i.em, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = load i64, ptr %i.co, align 8, !tbaa !56
  %i.eo = add nuw nsw i32 %.124.i.i.i, 1
  %i.ep = zext nneg i32 %.124.i.i.i to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ep
  store i64 %i.en, ptr %i.eq, align 8, !tbaa !56
  br label %ccall_struct_reg.exit.i.i

bb.an:                                            ; preds = %bb.ak
  %i.er = and i32 %.val217.i, 2
  %.not26.1.i.i.i = icmp eq i32 %i.er, 0
  br i1 %.not26.1.i.i.i, label %ccall_struct_reg.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = icmp samesign ugt i32 %.1.i.i.i, 7
  br i1 %i.es, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = load i64, ptr %i.co, align 8, !tbaa !56
  %i.eu = add nuw nsw i32 %.1.i.i.i, 1
  %i.ev = zext nneg i32 %.1.i.i.i to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ev
  store i64 %i.et, ptr %i.ew, align 16, !tbaa !10
  br label %ccall_struct_reg.exit.i.i

ccall_struct_reg.exit.i.i:                        ; preds = %bb.ap, %bb.an, %bb.am
  %.124.1.i.i.i = phi i32 [ %i.eo, %bb.am ], [ %.124.i.i.i, %bb.ap ], [ %.124.i.i.i, %bb.an ] ; 2 uses
  %.1.1.i.i.i = phi i32 [ %.1.i.i.i, %bb.am ], [ %i.eu, %bb.ap ], [ %.1.i.i.i, %bb.an ] ; 2 uses
  %i.ex = trunc nuw i32 %.124.1.i.i.i to i8
  store i8 %i.ex, ptr %i.cm, align 2, !tbaa !60
  %i.ey = trunc nuw i32 %.1.1.i.i.i to i8
  store i8 %i.ey, ptr %i.cn, align 1, !tbaa !61
  %.pre276.i = load i8, ptr %i.cl, align 4, !tbaa !59
  br label %.thread228.i

bb.aq:                                            ; preds = %bb.ao, %bb.al, %bb.ai, %bb.af
  %i.ez = load i8, ptr %i.cl, align 4, !tbaa !59
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  %.not26.i.i = icmp eq i32 %.val217.i, 0
  %i.fb = select i1 %.not26.i.i, i32 8, i32 16    ; 3 uses
  %i.fc = add nuw nsw i32 %i.fb, %i.fa
  %i.fd = icmp samesign ult i32 %i.fc, 249
  br i1 %i.fd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fe = load i32, ptr %.0.i.i, align 8, !tbaa !25
  %i.ff = lshr i32 %i.fe, 16
  %i.fg = and i32 %i.ff, 15
  %notmask.i.i = shl nsw i32 -1, %i.fg            ; 3 uses
  %i.fh = xor i32 %notmask.i.i, -1
  %i.fi = icmp samesign ult i32 %notmask.i.i, -8
  %i.fj = add nuw nsw i32 %i.fh, %i.fa
  %i.fk = and i32 %i.fj, %notmask.i.i
  %.023.i.i = select i1 %i.fi, i32 %i.fk, i32 %i.fa ; 2 uses
  %i.fl = add nuw nsw i32 %.023.i.i, %i.fb
  %i.fm = trunc i32 %i.fl to i8                   ; 2 uses
  store i8 %i.fm, ptr %i.cl, align 4, !tbaa !59
  %i.fn = zext nneg i32 %.023.i.i to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.fn
  %i.fp = zext nneg i32 %i.fb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %i.fp, i1 false)
  br label %.thread228.i

.thread228.i:                                     ; preds = %bb.ar, %ccall_struct_reg.exit.i.i
  %.pre-phi280.i = phi i32 [ %.1.1.i.i.i, %ccall_struct_reg.exit.i.i ], [ %i.dy, %bb.ar ]
  %.pre-phi.i = phi i32 [ %.124.1.i.i.i, %ccall_struct_reg.exit.i.i ], [ %i.dw, %bb.ar ]
  %i.fq = phi i8 [ %.pre276.i, %ccall_struct_reg.exit.i.i ], [ %i.fm, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.fr = zext i8 %i.fq to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %bb.bj

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.loopexit.i

.thread239.i:                                     ; preds = %bb.ab, %bb.ab
  %i.fs = add nuw nsw i32 %i.de, 7                ; 2 uses
  %i.ft = lshr i32 %i.fs, 3
  br label %.split._crit_edge.i

bb.at:                                            ; preds = %bb.ac
  %i.fu = and i32 %i.da, -201326592
  %i.fv = icmp eq i32 %i.fu, 872415232
  %i.fw = add i32 %i.de, 7                        ; 2 uses
  %i.fx = lshr i32 %i.fw, 3                       ; 2 uses
  br i1 %i.fv, label %.split._crit_edge.i, label %.thread295.i

.split._crit_edge.i:                              ; preds = %bb.at, %.thread239.i, %.split.i
  %.pre-phi282.i = phi i32 [ %i.fx, %bb.at ], [ 1, %.thread239.i ], [ %i.dk, %.split.i ]
  %i.fy = phi i32 [ %i.fx, %bb.at ], [ %i.ft, %.thread239.i ], [ %i.dk, %.split.i ] ; 2 uses
  %i.fz = phi i32 [ %i.fw, %bb.at ], [ %i.fs, %.thread239.i ], [ %i.dj, %.split.i ]
  %i.ga = phi i1 [ true, %bb.at ], [ false, %.thread239.i ], [ false, %.split.i ] ; 2 uses
  %i.gb = add nuw nsw i32 %.pre-phi282.i, %.0174266.i ; 2 uses
  %i.gc = icmp ult i32 %i.gb, 9
  %i.gd = zext nneg i32 %.0174266.i to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.gd
  br i1 %i.gc, label %bb.ax, label %bb.av

.thread295.i:                                     ; preds = %bb.at, %.split.i
  %i.gf = phi i32 [ %i.dj, %.split.i ], [ 15, %bb.at ]
  %i.gg = phi i32 [ %i.dk, %.split.i ], [ 1, %bb.at ] ; 3 uses
  %i.gh = add nuw nsw i32 %i.gg, %.3188260.i      ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 7
  br i1 %i.gi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread295.i
  %i.gj = zext nneg i32 %.3188260.i to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.gj
  br label %bb.ax

bb.av:                                            ; preds = %.thread295.i, %.split._crit_edge.i, %.thread243.i
  %i.gl = phi i32 [ %i.da, %.split._crit_edge.i ], [ %i.da, %.thread295.i ], [ %.pre277.i, %.thread243.i ]
  %i.gm = phi i32 [ %i.fy, %.split._crit_edge.i ], [ %i.gg, %.thread295.i ], [ %i.dq, %.thread243.i ]
  %i.gn = phi i32 [ %i.fz, %.split._crit_edge.i ], [ %i.gf, %.thread295.i ], [ %i.dp, %.thread243.i ]
  %i.go = phi i1 [ %i.ga, %.split._crit_edge.i ], [ false, %.thread295.i ], [ false, %.thread243.i ]
  %i.gp = lshr i32 %i.gl, 16
  %i.gq = and i32 %i.gp, 15
  %notmask.i = shl nsw i32 -1, %i.gq              ; 2 uses
  %i.gr = xor i32 %notmask.i, -1
  %i.gs = add nsw i32 %.0180261.i, %i.gr
  %i.gt = and i32 %i.gs, %notmask.i               ; 2 uses
  %i.gu = and i32 %i.gn, -8
  %i.gv = add i32 %i.gt, %i.gu                    ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, 248
  br i1 %i.gw, label %.loopexit.i, label %bb.aw

.loopexit.i:                                      ; preds = %bb.av, %bb.ab, %bb.z, %bb.as, %bb.i
  call void @lj_err_caller(ptr noundef %0, i32 noundef 3872) #7
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.gx = zext i32 %i.gt to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.gx
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %.split._crit_edge.i
  %i.gz = phi i32 [ %i.gm, %bb.aw ], [ %i.fy, %.split._crit_edge.i ], [ %i.gg, %bb.au ]
  %i.ha = phi i1 [ %i.go, %bb.aw ], [ %i.ga, %.split._crit_edge.i ], [ false, %bb.au ]
  %.6191.i = phi i32 [ %.3188260.i, %bb.aw ], [ %.3188260.i, %.split._crit_edge.i ], [ %i.gh, %bb.au ] ; 3 uses
  %.3183.i = phi i32 [ %i.gv, %bb.aw ], [ %.0180261.i, %.split._crit_edge.i ], [ %.0180261.i, %bb.au ] ; 3 uses
  %.5.i = phi i32 [ %.0174266.i, %bb.aw ], [ %i.gb, %.split._crit_edge.i ], [ %.0174266.i, %bb.au ] ; 5 uses
  %.2162.i = phi ptr [ %i.gy, %bb.aw ], [ %i.ge, %.split._crit_edge.i ], [ %i.gk, %bb.au ] ; 8 uses
  %i.hb = shl i32 %.0179262.i, 8
  call void @lj_cconv_ct_tv(ptr noundef nonnull %i.k, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %.2162.i, ptr noundef nonnull %.0159268.i, i32 noundef %i.hb) #6
  %i.hc = load i32, ptr %.0.i.i, align 8, !tbaa !25 ; 2 uses
  %i.hd = and i32 %i.hc, -201326592
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.hf = load i32, ptr %i.dd, align 4, !tbaa !26 ; 2 uses
  %i.hg = icmp ult i32 %i.hf, 4
  br i1 %i.hg, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.hh = and i32 %i.hc, 8388608
  %.not212.i = icmp eq i32 %i.hh, 0
  %i.hi = icmp eq i32 %i.hf, 1                    ; 2 uses
  br i1 %.not212.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.hi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hj = load i8, ptr %.2162.i, align 1, !tbaa !10
  %i.hk = zext i8 %i.hj to i32
  br label %.sink.split.i

bb.bc:                                            ; preds = %bb.ba
  %i.hl = load i16, ptr %.2162.i, align 2, !tbaa !62
  %i.hm = zext i16 %i.hl to i32
  br label %.sink.split.i

bb.bd:                                            ; preds = %bb.az
  br i1 %i.hi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hn = load i8, ptr %.2162.i, align 1, !tbaa !10
  %i.ho = sext i8 %i.hn to i32
  br label %.sink.split.i

bb.bf:                                            ; preds = %bb.bd
  %i.hp = load i16, ptr %.2162.i, align 2, !tbaa !62
  %i.hq = sext i16 %i.hp to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb
  %.sink300.i = phi i32 [ %i.hm, %bb.bc ], [ %i.hk, %bb.bb ], [ %i.ho, %bb.be ], [ %i.hq, %bb.bf ]
  store i32 %.sink300.i, ptr %.2162.i, align 4, !tbaa !28
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split.i, %bb.ay, %bb.ax
  %i.hr = icmp eq i32 %i.gz, 2
  %or.cond5.i = select i1 %i.ha, i1 %i.hr, i1 false
  br i1 %or.cond5.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hs = add nsw i32 %.5.i, -2
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ht
  %i.hv = icmp eq ptr %.2162.i, %i.hu
  br i1 %i.hv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hw = getelementptr inbounds nuw i8, ptr %.2162.i, i64 8 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !10
  %i.hy = add nsw i32 %.5.i, -1
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.hz
  store double %i.hx, ptr %i.ia, align 16, !tbaa !10
  store double 0.000000e+00, ptr %i.hw, align 8, !tbaa !10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %.thread228.i
  %.7.i = phi i32 [ %.6191.i, %bb.bi ], [ %.6191.i, %bb.bh ], [ %.6191.i, %bb.bg ], [ %.pre-phi.i, %.thread228.i ]
  %.4184.i = phi i32 [ %.3183.i, %bb.bi ], [ %.3183.i, %bb.bh ], [ %.3183.i, %bb.bg ], [ %i.fr, %.thread228.i ] ; 2 uses
  %.6.i = phi i32 [ %.5.i, %bb.bi ], [ %.5.i, %bb.bh ], [ %.5.i, %bb.bg ], [ %.pre-phi280.i, %.thread228.i ] ; 2 uses
  %i.ib = add i32 %.0179262.i, 1
  %.0159.i = getelementptr inbounds nuw i8, ptr %.0159268.i, i64 8 ; 2 uses
  %i.ic = icmp ult ptr %.0159.i, %i.ar
  br i1 %i.ic, label %bb.s, label %._crit_edge.loopexit.i, !llvm.loop !31

._crit_edge.loopexit.i:                           ; preds = %bb.bj
  %i.id = trunc nuw i32 %.6.i to i8
  %i.ie = trunc i32 %.4184.i to i8
  %i.if = add i8 %i.ie, 7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.thread.i
  %.0180.lcssa.i = phi i8 [ 7, %.thread.i ], [ %i.if, %._crit_edge.loopexit.i ] ; 2 uses
  %.0174.lcssa.i = phi i8 [ 0, %.thread.i ], [ %i.id, %._crit_edge.loopexit.i ]
  %.3168.lcssa.i = phi i32 [ %.0165.le.i, %.thread.i ], [ %.4169.i, %._crit_edge.loopexit.i ]
  %.not205.i = icmp eq i32 %.3168.lcssa.i, 0
  br i1 %.not205.i, label %ccall_set_args.exit, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i
  call void @lj_err_caller(ptr noundef %0, i32 noundef 3585) #7
  unreachable

ccall_set_args.exit:                              ; preds = %._crit_edge.i
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %.0174.lcssa.i, ptr %i.ig, align 1, !tbaa !61
  %i.ih = and i8 %.0180.lcssa.i, -8               ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.ih, ptr %i.ii, align 4, !tbaa !59
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ik = icmp ugt i8 %i.ih, 8
  %i.il = and i8 %.0180.lcssa.i, -16
  %i.im = or disjoint i8 %i.il, 8
  %narrow.i = select i1 %i.ik, i8 %i.im, i8 8
  %storemerge.i = zext i8 %narrow.i to i32
  store i32 %storemerge.i, ptr %i.ij, align 8, !tbaa !63
  %i.in = getelementptr inbounds nuw i8, ptr %i.k, i64 200 ; 2 uses
  store i32 -1, ptr %i.in, align 8, !tbaa !64
  call void @lj_vm_ffi_call(ptr noundef nonnull %2) #6
  %i.io = load i32, ptr %i.in, align 8, !tbaa !64
  %.not = icmp eq i32 %i.io, -1
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %ccall_set_args.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.ip = load ptr, ptr %2, align 16, !tbaa !53
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = lshr i64 %i.iq, 2
  store i64 %i.ir, ptr %3, align 8, !tbaa !10
  %i.is = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !65
  %i.iu = call ptr @lj_tab_set(ptr noundef %0, ptr noundef %i.it, ptr noundef nonnull %3) #6
  store i64 -281474976710657, ptr %i.iu, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %ccall_set_args.exit
  %i.iv = load ptr, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %i.iw = zext nneg i32 %i.ap to i64
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %i.iw
  %.pre.i36 = load i32, ptr %i.ix, align 8, !tbaa !25
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %i.iy = phi i32 [ %.pre.i36, %bb.bm ], [ %i.jc, %bb.bn ]
  %i.iz = and i32 %i.iy, 65535
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %i.ja ; 5 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !25 ; 5 uses
  %i.jd = icmp slt i32 %i.jc, -1879048192
  br i1 %i.jd, label %bb.bn, label %ctype_rawchild.exit.i37, !llvm.loop !0

ctype_rawchild.exit.i37:                          ; preds = %bb.bn
  %.mask.i38 = and i32 %i.jc, -268435456
  switch i32 %.mask.i38, label %bb.bv [
    i32 1073741824, label %._crit_edge
    i32 268435456, label %bb.bo
  ]

bb.bo:                                            ; preds = %ctype_rawchild.exit.i37
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !57
  %.not.i40 = icmp eq i8 %i.jf, 0
  br i1 %.not.i40, label %bb.bp, label %.lr.ph.preheader

bb.bp:                                            ; preds = %bb.bo
  %i.jg = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !10
  %i.jj = and i64 %i.ji, 140737488355327
  %i.jk = inttoptr i64 %i.jj to ptr
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.jm, align 4, !tbaa !28
  store i32 0, ptr %i.b, align 4, !tbaa !28
  %i.jn = call fastcc i32 @ccall_classify_struct(ptr noundef nonnull %i.k, ptr noundef nonnull %i.jb, ptr noundef %i.b, i32 noundef 0) ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.jq = load i32, ptr %i.b, align 4, !tbaa !28  ; 2 uses
  %i.jr = and i32 %i.jq, 1
  %.not.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i, label %bb.bq, label %.sink.split.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.js = and i32 %i.jq, 2
  %.not16.i.i = icmp eq i32 %i.js, 0
  br i1 %.not16.i.i, label %bb.br, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bq, %bb.bp
  %.sink.in.i.i = phi ptr [ %i.az, %bb.bp ], [ %i.as, %bb.bq ]
  %.115.ph.i.i = phi i64 [ 1, %bb.bp ], [ 0, %bb.bq ]
  %.1.ph.i.i = phi i64 [ 0, %bb.bp ], [ 1, %bb.bq ]
  %.sink.i.i = load i64, ptr %.sink.in.i.i, align 8, !tbaa !10
  store i64 %.sink.i.i, ptr %i.a, align 16, !tbaa !56
  br label %bb.br

bb.br:                                            ; preds = %.sink.split.i.i, %bb.bq
  %.115.i.i = phi i64 [ 0, %bb.bq ], [ %.115.ph.i.i, %.sink.split.i.i ]
  %.1.i.i = phi i64 [ 0, %bb.bq ], [ %.1.ph.i.i, %.sink.split.i.i ]
end_hunk_0
