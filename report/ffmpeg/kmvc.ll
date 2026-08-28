Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/kmvc?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@decode_frame:bb.a

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.fn, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit205.us.i

bytestream2_get_byte.exit205.us.i:                ; preds = %bb.ae, %bb.ad, %.preheader260.us.i
  %.sroa.28.7.us.i = phi i32 [ %.sroa.28.6279.us.i, %.preheader260.us.i ], [ 0, %bb.ae ], [ %i.fv, %bb.ad ] ; 3 uses
  %.sroa.0.7.us.i = phi i32 [ %i.fl, %.preheader260.us.i ], [ 7, %bb.ae ], [ 7, %bb.ad ] ; 4 uses
  br i1 %.not189.us.i, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bytestream2_get_byte.exit205.us.i
  %i.fw = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = icmp slt i64 %i.ga, 1
  br i1 %i.gb, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  store ptr %i.gc, ptr %i.c, align 8, !tbaa !55
  %i.gd = load i8, ptr %i.fx, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit197.us.i

bb.ah:                                            ; preds = %bb.af
  store ptr %i.fw, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit197.us.i

bytestream2_get_byte.exit197.us.i:                ; preds = %bb.ah, %bb.ag
  %.0.i196.us.i = phi i8 [ 0, %bb.ah ], [ %i.gd, %bb.ag ]
  %i.ge = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.gf = mul nuw nsw i32 %i.fi, 320              ; 3 uses
  %i.gg = add nuw nsw i32 %i.fg, %i.gf
  %..i225.us.i = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 63999)
  %i.gh = zext nneg i32 %..i225.us.i to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gh
  store i8 %.0.i196.us.i, ptr %i.gi, align 1, !tbaa !45
  %i.gj = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.gk = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp slt i64 %i.gn, 1
  br i1 %i.go, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bytestream2_get_byte.exit197.us.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store ptr %i.gp, ptr %i.c, align 8, !tbaa !55
  %i.gq = load i8, ptr %i.gk, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit195.us.i

bb.aj:                                            ; preds = %bytestream2_get_byte.exit197.us.i
  store ptr %i.gj, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit195.us.i

bytestream2_get_byte.exit195.us.i:                ; preds = %bb.aj, %bb.ai
  %.0.i194.us.i = phi i8 [ 0, %bb.aj ], [ %i.gq, %bb.ai ]
  %i.gr = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.gs = or disjoint i32 %i.fg, 1                ; 2 uses
  %i.gt = add nuw nsw i32 %i.gs, %i.gf
  %..i223.us.i = tail call i32 @llvm.umin.i32(i32 %i.gt, i32 63999)
  %i.gu = zext nneg i32 %..i223.us.i to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gu
  store i8 %.0.i194.us.i, ptr %i.gv, align 1, !tbaa !45
  %i.gw = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp slt i64 %i.ha, 1
  br i1 %i.hb, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bytestream2_get_byte.exit195.us.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store ptr %i.hc, ptr %i.c, align 8, !tbaa !55
  %i.hd = load i8, ptr %i.gx, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit193.us.i

bb.al:                                            ; preds = %bytestream2_get_byte.exit195.us.i
  store ptr %i.gw, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit193.us.i

bytestream2_get_byte.exit193.us.i:                ; preds = %bb.al, %bb.ak
  %.0.i192.us.i = phi i8 [ 0, %bb.al ], [ %i.hd, %bb.ak ]
  %i.he = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.hf = add nuw i32 %i.gf, 320                  ; 2 uses
  %i.hg = add nsw i32 %i.hf, %i.fg
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 0)
  %i.hi = tail call i32 @llvm.umin.i32(i32 %i.hh, i32 63999)
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hj
  store i8 %.0.i192.us.i, ptr %i.hk, align 1, !tbaa !45
  %i.hl = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.hm = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = icmp slt i64 %i.hp, 1
  br i1 %i.hq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bytestream2_get_byte.exit193.us.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  store ptr %i.hr, ptr %i.c, align 8, !tbaa !55
  %i.hs = load i8, ptr %i.hm, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit.us.i

bb.an:                                            ; preds = %bytestream2_get_byte.exit193.us.i
  store ptr %i.hl, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit.us.i

bytestream2_get_byte.exit.us.i:                   ; preds = %bb.an, %bb.am
  %.0.i.us.i = phi i8 [ 0, %bb.an ], [ %i.hs, %bb.am ]
  %i.ht = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.hu = add nsw i32 %i.gs, %i.hf
  %i.hv = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 0)
  br label %bb.az

bb.ao:                                            ; preds = %bytestream2_get_byte.exit205.us.i
  %i.hw = shl nuw i32 1, %.sroa.0.7.us.i
  %i.hx = and i32 %i.hw, %.sroa.28.7.us.i
  %.not190.us.i = icmp eq i32 %i.hx, 0
  %i.hy = icmp eq i32 %.sroa.0.7.us.i, 0
  %.pre144 = load ptr, ptr %i.m, align 8, !tbaa !54 ; 6 uses
  %.pre145 = load ptr, ptr %i.c, align 8, !tbaa !52 ; 4 uses
  br i1 %i.hy, label %bb.ap, label %.bytestream2_get_byte.exit203.us.i_crit_edge

.bytestream2_get_byte.exit203.us.i_crit_edge:     ; preds = %bb.ao
  %i.hz = add nsw i32 %.sroa.0.7.us.i, -1
  %.pre154 = ptrtoint ptr %.pre144 to i64
  br label %bytestream2_get_byte.exit203.us.i

bb.ap:                                            ; preds = %bb.ao
  %i.ia = ptrtoint ptr %.pre144 to i64            ; 3 uses
  %i.ib = ptrtoint ptr %.pre145 to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = icmp slt i64 %i.ic, 1
  br i1 %i.id, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ie = getelementptr inbounds nuw i8, ptr %.pre145, i64 1 ; 2 uses
  store ptr %i.ie, ptr %i.c, align 8, !tbaa !55
  %i.if = load i8, ptr %.pre145, align 1, !tbaa !45
  %i.ig = zext i8 %i.if to i32
  br label %bytestream2_get_byte.exit203.us.i

bb.ar:                                            ; preds = %bb.ap
  store ptr %.pre144, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit203.us.i

bytestream2_get_byte.exit203.us.i:                ; preds = %.bytestream2_get_byte.exit203.us.i_crit_edge, %bb.ar, %bb.aq
  %.pre-phi155 = phi i64 [ %.pre154, %.bytestream2_get_byte.exit203.us.i_crit_edge ], [ %i.ia, %bb.ar ], [ %i.ia, %bb.aq ]
  %i.ih = phi ptr [ %.pre145, %.bytestream2_get_byte.exit203.us.i_crit_edge ], [ %.pre144, %bb.ar ], [ %i.ie, %bb.aq ] ; 5 uses
  %.sroa.28.8.us.i = phi i32 [ %.sroa.28.7.us.i, %.bytestream2_get_byte.exit203.us.i_crit_edge ], [ 0, %bb.ar ], [ %i.ig, %bb.aq ] ; 2 uses
  %.sroa.0.8.us.i = phi i32 [ %i.hz, %.bytestream2_get_byte.exit203.us.i_crit_edge ], [ 7, %bb.ar ], [ 7, %bb.aq ] ; 2 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = sub i64 %.pre-phi155, %i.ii
  %i.ik = icmp slt i64 %i.ij, 1                   ; 2 uses
  br i1 %.not190.us.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bytestream2_get_byte.exit203.us.i
  br i1 %i.ik, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.il, ptr %i.c, align 8, !tbaa !55
  %i.im = load i8, ptr %i.ih, align 1, !tbaa !45
  %i.in = zext i8 %i.im to i32
  br label %bytestream2_get_byte.exit199.us.i

bb.au:                                            ; preds = %bb.as
  store ptr %.pre144, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit199.us.i

bytestream2_get_byte.exit199.us.i:                ; preds = %bb.au, %bb.at
  %.0.i198.us.i = phi i32 [ 0, %bb.au ], [ %i.in, %bb.at ] ; 2 uses
  %i.io = and i32 %.0.i198.us.i, 15               ; 2 uses
  %i.ip = lshr i32 %.0.i198.us.i, 4               ; 2 uses
  %i.iq = sub nsw i32 %i.fg, %i.io                ; 2 uses
  %i.ir = sub nsw i32 %i.fi, %i.ip
  %i.is = mul nsw i32 %i.ir, 320                  ; 2 uses
  %i.it = add nsw i32 %i.is, %i.iq                ; 2 uses
  %or.cond191.us.i = icmp ugt i32 %i.it, 63678
  br i1 %or.cond191.us.i, label %.loopexit266.sink.split.i, label %bb.av

bb.av:                                            ; preds = %bytestream2_get_byte.exit199.us.i
  %i.iu = load ptr, ptr %i.db, align 8, !tbaa !35 ; 2 uses
  %i.iv = zext nneg i32 %i.it to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !45
  %i.iy = mul nuw nsw i32 %i.fi, 320              ; 2 uses
  %i.iz = add nuw nsw i32 %i.fg, %i.iy
  %..i239.us.i = tail call i32 @llvm.umin.i32(i32 %i.iz, i32 63999)
  %i.ja = zext nneg i32 %..i239.us.i to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ja
  store i8 %i.ix, ptr %i.jb, align 1, !tbaa !45
  %i.jc = load ptr, ptr %i.db, align 8, !tbaa !35 ; 2 uses
  %i.jd = or disjoint i32 %i.fg, 1                ; 3 uses
  %i.je = sub nsw i32 %i.jd, %i.io                ; 2 uses
  %i.jf = add nsw i32 %i.is, %i.je
  %4 = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 63999)
  %i.jg = zext nneg i32 %5 to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !45
  %i.jj = add nuw nsw i32 %i.jd, %i.iy
  %..i235.us.i = tail call i32 @llvm.umin.i32(i32 %i.jj, i32 63999)
  %i.jk = zext nneg i32 %..i235.us.i to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jk
  store i8 %i.ji, ptr %i.jl, align 1, !tbaa !45
  %i.jm = load ptr, ptr %i.db, align 8, !tbaa !35 ; 2 uses
  %i.jn = or disjoint i32 %i.fi, 1                ; 2 uses
  %i.jo = sub nsw i32 %i.jn, %i.ip
  %i.jp = mul nsw i32 %i.jo, 320                  ; 2 uses
  %i.jq = add nsw i32 %i.jp, %i.iq
  %6 = tail call i32 @llvm.smax.i32(i32 %i.jq, i32 0)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 63999)
  %i.jr = zext nneg i32 %7 to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !45
  %i.ju = mul nuw nsw i32 %i.jn, 320              ; 2 uses
  %i.jv = add nuw nsw i32 %i.ju, %i.fg
  %..i231.us.i = tail call i32 @llvm.umin.i32(i32 %i.jv, i32 63999)
  %i.jw = zext nneg i32 %..i231.us.i to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jw
  store i8 %i.jt, ptr %i.jx, align 1, !tbaa !45
  %i.jy = load ptr, ptr %i.db, align 8, !tbaa !35 ; 2 uses
  %i.jz = add nsw i32 %i.jp, %i.je
  %8 = tail call i32 @llvm.smax.i32(i32 %i.jz, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 63999)
  %i.ka = zext nneg i32 %9 to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !45
  %i.kd = add nuw nsw i32 %i.jd, %i.ju
  br label %bb.az

bb.aw:                                            ; preds = %bytestream2_get_byte.exit203.us.i
  br i1 %i.ik, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.ke, ptr %i.c, align 8, !tbaa !55
  %i.kf = load i8, ptr %i.ih, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit201.us.i

bb.ay:                                            ; preds = %bb.aw
  store ptr %.pre144, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit201.us.i

bytestream2_get_byte.exit201.us.i:                ; preds = %bb.ay, %bb.ax
  %.0.i200.us.i = phi i8 [ 0, %bb.ay ], [ %i.kf, %bb.ax ] ; 4 uses
  %i.kg = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.kh = mul nuw nsw i32 %i.fi, 320              ; 3 uses
  %i.ki = add nuw nsw i32 %i.fg, %i.kh
  %..i249.us.i = tail call i32 @llvm.umin.i32(i32 %i.ki, i32 63999)
  %i.kj = zext nneg i32 %..i249.us.i to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kj
  store i8 %.0.i200.us.i, ptr %i.kk, align 1, !tbaa !45
  %i.kl = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.km = or disjoint i32 %i.fg, 1                ; 2 uses
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %..i247.us.i = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 63999)
  %i.ko = zext nneg i32 %..i247.us.i to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ko
  store i8 %.0.i200.us.i, ptr %i.kp, align 1, !tbaa !45
  %i.kq = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.kr = add nuw i32 %i.kh, 320                  ; 2 uses
  %i.ks = add nsw i32 %i.kr, %i.fg
  %i.kt = tail call i32 @llvm.smax.i32(i32 %i.ks, i32 0)
  %i.ku = tail call i32 @llvm.umin.i32(i32 %i.kt, i32 63999)
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kv
  store i8 %.0.i200.us.i, ptr %i.kw, align 1, !tbaa !45
  %i.kx = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.ky = add nsw i32 %i.km, %i.kr
  %i.kz = tail call i32 @llvm.smax.i32(i32 %i.ky, i32 0)
  br label %bb.az

bb.az:                                            ; preds = %bytestream2_get_byte.exit201.us.i, %bb.av, %bytestream2_get_byte.exit.us.i
  %.sink190 = phi i32 [ %i.kz, %bytestream2_get_byte.exit201.us.i ], [ %i.kd, %bb.av ], [ %i.hv, %bytestream2_get_byte.exit.us.i ]
  %.sink315.i = phi ptr [ %i.kx, %bytestream2_get_byte.exit201.us.i ], [ %i.jy, %bb.av ], [ %i.ht, %bytestream2_get_byte.exit.us.i ]
  %.0.i200.us.sink.i = phi i8 [ %.0.i200.us.i, %bytestream2_get_byte.exit201.us.i ], [ %i.kc, %bb.av ], [ %.0.i.us.i, %bytestream2_get_byte.exit.us.i ]
  %.sroa.28.9.us.i = phi i32 [ %.sroa.28.8.us.i, %bytestream2_get_byte.exit201.us.i ], [ %.sroa.28.8.us.i, %bb.av ], [ %.sroa.28.7.us.i, %bytestream2_get_byte.exit.us.i ] ; 2 uses
  %.sroa.0.9.us.i = phi i32 [ %.sroa.0.8.us.i, %bytestream2_get_byte.exit201.us.i ], [ %.sroa.0.8.us.i, %bb.av ], [ %.sroa.0.7.us.i, %bytestream2_get_byte.exit.us.i ] ; 2 uses
  %i.la = tail call i32 @llvm.umin.i32(i32 %.sink190, i32 63999)
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %.sink315.i, i64 %i.lb
  store i8 %.0.i200.us.sink.i, ptr %i.lc, align 1, !tbaa !45
  %i.ld = add nuw nsw i32 %.2281.us.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ld, 4
  br i1 %exitcond.not.i, label %.loopexit.us.i, label %.preheader260.us.i, !llvm.loop !64

bb.ba:                                            ; preds = %bytestream2_get_byte.exit213.us.i
  %i.le = shl nuw i32 1, %.sroa.0.4.us.i
  %i.lf = and i32 %i.le, %.sroa.28.4.us.i
  %.not188.us.i = icmp eq i32 %i.lf, 0
  %i.lg = icmp eq i32 %.sroa.0.4.us.i, 0
  %.pre146 = load ptr, ptr %i.m, align 8, !tbaa !54 ; 6 uses
  %.pre147 = load ptr, ptr %i.c, align 8, !tbaa !52 ; 4 uses
  br i1 %i.lg, label %bb.bb, label %.bytestream2_get_byte.exit211.us.i_crit_edge

.bytestream2_get_byte.exit211.us.i_crit_edge:     ; preds = %bb.ba
  %i.lh = add nsw i32 %.sroa.0.4.us.i, -1
  %.pre152 = ptrtoint ptr %.pre146 to i64
  br label %bytestream2_get_byte.exit211.us.i

bb.bb:                                            ; preds = %bb.ba
  %i.li = ptrtoint ptr %.pre146 to i64            ; 3 uses
  %i.lj = ptrtoint ptr %.pre147 to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = icmp slt i64 %i.lk, 1
  br i1 %i.ll, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre147, i64 1 ; 2 uses
  store ptr %i.lm, ptr %i.c, align 8, !tbaa !55
  %i.ln = load i8, ptr %.pre147, align 1, !tbaa !45
  %i.lo = zext i8 %i.ln to i32
  br label %bytestream2_get_byte.exit211.us.i

bb.bd:                                            ; preds = %bb.bb
  store ptr %.pre146, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit211.us.i

bytestream2_get_byte.exit211.us.i:                ; preds = %.bytestream2_get_byte.exit211.us.i_crit_edge, %bb.bd, %bb.bc
  %.pre-phi153 = phi i64 [ %.pre152, %.bytestream2_get_byte.exit211.us.i_crit_edge ], [ %i.li, %bb.bd ], [ %i.li, %bb.bc ]
  %i.lp = phi ptr [ %.pre147, %.bytestream2_get_byte.exit211.us.i_crit_edge ], [ %.pre146, %bb.bd ], [ %i.lm, %bb.bc ] ; 5 uses
  %.sroa.28.5.us.i = phi i32 [ %.sroa.28.4.us.i, %.bytestream2_get_byte.exit211.us.i_crit_edge ], [ 0, %bb.bd ], [ %i.lo, %bb.bc ] ; 2 uses
  %.sroa.0.5.us.i = phi i32 [ %i.lh, %.bytestream2_get_byte.exit211.us.i_crit_edge ], [ 7, %bb.bd ], [ 7, %bb.bc ] ; 2 uses
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = sub i64 %.pre-phi153, %i.lq
  %i.ls = icmp slt i64 %i.lr, 1                   ; 2 uses
  br i1 %.not188.us.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bytestream2_get_byte.exit211.us.i
  br i1 %i.ls, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  store ptr %i.lt, ptr %i.c, align 8, !tbaa !55
  %i.lu = load i8, ptr %i.lp, align 1, !tbaa !45
  %i.lv = zext i8 %i.lu to i32
  br label %bytestream2_get_byte.exit207.us.i

bb.bg:                                            ; preds = %bb.be
  store ptr %.pre146, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit207.us.i

bytestream2_get_byte.exit207.us.i:                ; preds = %bb.bg, %bb.bf
  %.0.i206.us.i = phi i32 [ 0, %bb.bg ], [ %i.lv, %bb.bf ] ; 2 uses
  %i.lw = and i32 %.0.i206.us.i, 15               ; 2 uses
  %i.lx = lshr i32 %.0.i206.us.i, 4               ; 2 uses
  %i.ly = sub nsw i32 %i.en, %i.lw
  %i.lz = sub nsw i32 %i.eq, %i.lx
  %i.ma = mul nsw i32 %i.lz, 320
  %i.mb = add nsw i32 %i.ly, %i.ma
  %or.cond.us.i = icmp ugt i32 %i.mb, 63036
  br i1 %or.cond.us.i, label %.loopexit266.sink.split.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bytestream2_get_byte.exit207.us.i, %.preheader.us.i
  %.1282.us.i = phi i32 [ %i.mu, %.preheader.us.i ], [ 0, %bytestream2_get_byte.exit207.us.i ] ; 3 uses
  %i.mc = load ptr, ptr %i.db, align 8, !tbaa !35 ; 2 uses
  %i.md = and i32 %.1282.us.i, 3
  %i.me = or disjoint i32 %i.md, %i.en            ; 2 uses
  %i.mf = sub nsw i32 %i.me, %i.lw
  %i.mg = lshr i32 %.1282.us.i, 2
  %i.mh = or disjoint i32 %i.mg, %i.eq            ; 2 uses
  %i.mi = sub nsw i32 %i.mh, %i.lx
  %i.mj = mul nsw i32 %i.mi, 320
  %i.mk = add nsw i32 %i.mf, %i.mj
  %i.ml = tail call i32 @llvm.smax.i32(i32 %i.mk, i32 0)
  %i.mm = tail call i32 @llvm.umin.i32(i32 %i.ml, i32 63999)
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !45
  %i.mq = mul nuw nsw i32 %i.mh, 320
  %i.mr = add nuw nsw i32 %i.mq, %i.me
  %..i251.us.i = tail call i32 @llvm.umin.i32(i32 %i.mr, i32 63999)
  %i.ms = zext nneg i32 %..i251.us.i to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.ms
  store i8 %i.mp, ptr %i.mt, align 1, !tbaa !45
  %i.mu = add nuw nsw i32 %.1282.us.i, 1          ; 2 uses
  %exitcond303.not.i = icmp eq i32 %i.mu, 16
  br i1 %exitcond303.not.i, label %.loopexit.us.i, label %.preheader.us.i, !llvm.loop !65

bb.bh:                                            ; preds = %bytestream2_get_byte.exit211.us.i
  br i1 %i.ls, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  store ptr %i.mv, ptr %i.c, align 8, !tbaa !55
  %i.mw = load i8, ptr %i.lp, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit209.us.i

bb.bj:                                            ; preds = %bb.bh
  store ptr %.pre146, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit209.us.i

bytestream2_get_byte.exit209.us.i:                ; preds = %bb.bj, %bb.bi
  %.0.i208.us.i = phi i8 [ 0, %bb.bj ], [ %i.mw, %bb.bi ] ; 16 uses
  %i.mx = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.my = mul nuw nsw i32 %i.eq, 320              ; 7 uses
  %i.mz = add nuw nsw i32 %i.my, %i.en
  %..i255.us.i = tail call i32 @llvm.umin.i32(i32 %i.mz, i32 63999)
  %i.na = zext nneg i32 %..i255.us.i to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.na
  store i8 %.0.i208.us.i, ptr %i.nb, align 1, !tbaa !45
  %i.nc = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.nd = or disjoint i32 %i.en, 1                ; 4 uses
  %i.ne = add nuw nsw i32 %i.nd, %i.my
  %..i255.us.1.i = tail call i32 @llvm.umin.i32(i32 %i.ne, i32 63999)
  %i.nf = zext nneg i32 %..i255.us.1.i to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nf
  store i8 %.0.i208.us.i, ptr %i.ng, align 1, !tbaa !45
  %i.nh = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.ni = or disjoint i32 %i.en, 2                ; 4 uses
  %i.nj = add nuw nsw i32 %i.ni, %i.my
  %..i255.us.2.i = tail call i32 @llvm.umin.i32(i32 %i.nj, i32 63999)
  %i.nk = zext nneg i32 %..i255.us.2.i to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nk
  store i8 %.0.i208.us.i, ptr %i.nl, align 1, !tbaa !45
  %i.nm = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.nn = or disjoint i32 %i.en, 3                ; 4 uses
  %i.no = add nuw nsw i32 %i.nn, %i.my
  %..i255.us.3.i = tail call i32 @llvm.umin.i32(i32 %i.no, i32 63999)
  %i.np = zext nneg i32 %..i255.us.3.i to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.np
  store i8 %.0.i208.us.i, ptr %i.nq, align 1, !tbaa !45
  %i.nr = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.ns = add nuw i32 %i.my, 320                  ; 4 uses
  %i.nt = add nuw nsw i32 %i.ns, %i.en
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  store ptr %i.te, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit230.us.i

bytestream2_get_byte.exit230.us.i:                ; preds = %bb.cb, %bb.ca, %.preheader289.us.i
  %.sroa.33.8.us.i = phi i32 [ %.sroa.33.7312.us.i, %.preheader289.us.i ], [ 0, %bb.cb ], [ %i.tm, %bb.ca ] ; 3 uses
  %.sroa.0.8.us.i93 = phi i32 [ %i.tc, %.preheader289.us.i ], [ 7, %bb.cb ], [ 7, %bb.ca ] ; 4 uses
  br i1 %.not214.us.i, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %bytestream2_get_byte.exit230.us.i
  %i.tn = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.to = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = icmp slt i64 %i.tr, 1
  br i1 %i.ts, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  store ptr %i.tt, ptr %i.c, align 8, !tbaa !55
  %i.tu = load i8, ptr %i.to, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit222.us.i

bb.ce:                                            ; preds = %bb.cc
  store ptr %i.tn, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit222.us.i

bytestream2_get_byte.exit222.us.i:                ; preds = %bb.ce, %bb.cd
  %.0.i221.us.i = phi i8 [ 0, %bb.ce ], [ %i.tu, %bb.cd ]
  %i.tv = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.tw = mul nuw nsw i32 %i.sz, 320              ; 3 uses
  %i.tx = add nuw nsw i32 %i.sx, %i.tw
  %..i252.us.i = tail call i32 @llvm.umin.i32(i32 %i.tx, i32 63999)
  %i.ty = zext nneg i32 %..i252.us.i to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.ty
  store i8 %.0.i221.us.i, ptr %i.tz, align 1, !tbaa !45
  %i.ua = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.ub = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.uc = ptrtoint ptr %i.ua to i64
  %i.ud = ptrtoint ptr %i.ub to i64
  %i.ue = sub i64 %i.uc, %i.ud
  %i.uf = icmp slt i64 %i.ue, 1
  br i1 %i.uf, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bytestream2_get_byte.exit222.us.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store ptr %i.ug, ptr %i.c, align 8, !tbaa !55
  %i.uh = load i8, ptr %i.ub, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit220.us.i

bb.cg:                                            ; preds = %bytestream2_get_byte.exit222.us.i
  store ptr %i.ua, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit220.us.i

bytestream2_get_byte.exit220.us.i:                ; preds = %bb.cg, %bb.cf
  %.0.i219.us.i = phi i8 [ 0, %bb.cg ], [ %i.uh, %bb.cf ]
  %i.ui = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.uj = or disjoint i32 %i.sx, 1                ; 2 uses
  %i.uk = add nuw nsw i32 %i.uj, %i.tw
  %..i250.us.i = tail call i32 @llvm.umin.i32(i32 %i.uk, i32 63999)
  %i.ul = zext nneg i32 %..i250.us.i to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.ul
  store i8 %.0.i219.us.i, ptr %i.um, align 1, !tbaa !45
  %i.un = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.uo = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.up = ptrtoint ptr %i.un to i64
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = sub i64 %i.up, %i.uq
  %i.us = icmp slt i64 %i.ur, 1
  br i1 %i.us, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bytestream2_get_byte.exit220.us.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 1
  store ptr %i.ut, ptr %i.c, align 8, !tbaa !55
  %i.uu = load i8, ptr %i.uo, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit218.us.i

bb.ci:                                            ; preds = %bytestream2_get_byte.exit220.us.i
  store ptr %i.un, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit218.us.i

bytestream2_get_byte.exit218.us.i:                ; preds = %bb.ci, %bb.ch
  %.0.i217.us.i = phi i8 [ 0, %bb.ci ], [ %i.uu, %bb.ch ]
  %i.uv = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.uw = add nuw i32 %i.tw, 320                  ; 2 uses
  %i.ux = add nsw i32 %i.uw, %i.sx
  %i.uy = tail call i32 @llvm.smax.i32(i32 %i.ux, i32 0)
  %i.uz = tail call i32 @llvm.umin.i32(i32 %i.uy, i32 63999)
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.va
  store i8 %.0.i217.us.i, ptr %i.vb, align 1, !tbaa !45
  %i.vc = load ptr, ptr %i.m, align 8, !tbaa !54  ; 2 uses
  %i.vd = load ptr, ptr %i.c, align 8, !tbaa !52  ; 3 uses
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = icmp slt i64 %i.vg, 1
  br i1 %i.vh, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bytestream2_get_byte.exit218.us.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vd, i64 1
  store ptr %i.vi, ptr %i.c, align 8, !tbaa !55
  %i.vj = load i8, ptr %i.vd, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit.us.i94

bb.ck:                                            ; preds = %bytestream2_get_byte.exit218.us.i
  store ptr %i.vc, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit.us.i94

bytestream2_get_byte.exit.us.i94:                 ; preds = %bb.ck, %bb.cj
  %.0.i.us.i95 = phi i8 [ 0, %bb.ck ], [ %i.vj, %bb.cj ]
  %i.vk = add nsw i32 %i.uj, %i.uw
  %i.vl = tail call i32 @llvm.smax.i32(i32 %i.vk, i32 0)
  br label %bb.cw

bb.cl:                                            ; preds = %bytestream2_get_byte.exit230.us.i
  %i.vm = shl nuw i32 1, %.sroa.0.8.us.i93
  %i.vn = and i32 %i.vm, %.sroa.33.8.us.i
  %.not215.us.i = icmp eq i32 %i.vn, 0
  %i.vo = icmp eq i32 %.sroa.0.8.us.i93, 0
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !54  ; 6 uses
  %.pre141 = load ptr, ptr %i.c, align 8, !tbaa !52 ; 4 uses
  br i1 %i.vo, label %bb.cm, label %.bytestream2_get_byte.exit228.us.i_crit_edge

.bytestream2_get_byte.exit228.us.i_crit_edge:     ; preds = %bb.cl
  %i.vp = add nsw i32 %.sroa.0.8.us.i93, -1
  %.pre158 = ptrtoint ptr %.pre to i64
  br label %bytestream2_get_byte.exit228.us.i

bb.cm:                                            ; preds = %bb.cl
  %i.vq = ptrtoint ptr %.pre to i64               ; 3 uses
  %i.vr = ptrtoint ptr %.pre141 to i64
  %i.vs = sub i64 %i.vq, %i.vr
  %i.vt = icmp slt i64 %i.vs, 1
  br i1 %i.vt, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vu = getelementptr inbounds nuw i8, ptr %.pre141, i64 1 ; 2 uses
  store ptr %i.vu, ptr %i.c, align 8, !tbaa !55
  %i.vv = load i8, ptr %.pre141, align 1, !tbaa !45
  %i.vw = zext i8 %i.vv to i32
  br label %bytestream2_get_byte.exit228.us.i

bb.co:                                            ; preds = %bb.cm
  store ptr %.pre, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit228.us.i

bytestream2_get_byte.exit228.us.i:                ; preds = %.bytestream2_get_byte.exit228.us.i_crit_edge, %bb.co, %bb.cn
  %.pre-phi159 = phi i64 [ %.pre158, %.bytestream2_get_byte.exit228.us.i_crit_edge ], [ %i.vq, %bb.co ], [ %i.vq, %bb.cn ]
  %i.vx = phi ptr [ %.pre141, %.bytestream2_get_byte.exit228.us.i_crit_edge ], [ %.pre, %bb.co ], [ %i.vu, %bb.cn ] ; 5 uses
  %.sroa.33.9.us.i = phi i32 [ %.sroa.33.8.us.i, %.bytestream2_get_byte.exit228.us.i_crit_edge ], [ 0, %bb.co ], [ %i.vw, %bb.cn ] ; 2 uses
  %.sroa.0.9.us.i102 = phi i32 [ %i.vp, %.bytestream2_get_byte.exit228.us.i_crit_edge ], [ 7, %bb.co ], [ 7, %bb.cn ] ; 2 uses
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = sub i64 %.pre-phi159, %i.vy
  %i.wa = icmp slt i64 %i.vz, 1                   ; 2 uses
  br i1 %.not215.us.i, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bytestream2_get_byte.exit228.us.i
  br i1 %i.wa, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  store ptr %i.wb, ptr %i.c, align 8, !tbaa !55
  %i.wc = load i8, ptr %i.vx, align 1, !tbaa !45
  %i.wd = zext i8 %i.wc to i32
  br label %bytestream2_get_byte.exit224.us.i

bb.cr:                                            ; preds = %bb.cp
  store ptr %.pre, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit224.us.i

bytestream2_get_byte.exit224.us.i:                ; preds = %bb.cr, %bb.cq
  %.0.i223.us.i = phi i32 [ 0, %bb.cr ], [ %i.wd, %bb.cq ] ; 2 uses
  %i.we = and i32 %.0.i223.us.i, 15
  %i.wf = add nsw i32 %i.we, -8                   ; 2 uses
  %i.wg = lshr i32 %.0.i223.us.i, 4
  %i.wh = add nsw i32 %i.wg, -8                   ; 2 uses
  %i.wi = add nsw i32 %i.wf, %i.sx                ; 2 uses
  %i.wj = add nsw i32 %i.wh, %i.sz
  %i.wk = mul nsw i32 %i.wj, 320                  ; 2 uses
  %i.wl = add nsw i32 %i.wk, %i.wi                ; 2 uses
  %or.cond216.us.i = icmp ugt i32 %i.wl, 63678
  br i1 %or.cond216.us.i, label %.loopexit297.sink.split.i, label %bb.cs

bb.cs:                                            ; preds = %bytestream2_get_byte.exit224.us.i
  %i.wm = load ptr, ptr %i.ri, align 8, !tbaa !36
  %i.wn = zext nneg i32 %i.wl to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !45
  %i.wq = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.wr = mul nuw nsw i32 %i.sz, 320              ; 2 uses
  %i.ws = add nuw nsw i32 %i.sx, %i.wr
  %..i266.us.i = tail call i32 @llvm.umin.i32(i32 %i.ws, i32 63999)
  %i.wt = zext nneg i32 %..i266.us.i to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wt
  store i8 %i.wp, ptr %i.wu, align 1, !tbaa !45
  %i.wv = load ptr, ptr %i.ri, align 8, !tbaa !36
  %i.ww = or disjoint i32 %i.sx, 1                ; 3 uses
  %i.wx = add nsw i32 %i.wf, %i.ww                ; 2 uses
  %i.wy = add nsw i32 %i.wk, %i.wx
  %10 = tail call i32 @llvm.smax.i32(i32 %i.wy, i32 0)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 63999)
  %i.wz = zext nneg i32 %11 to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !45
  %i.xc = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.xd = add nuw nsw i32 %i.ww, %i.wr
  %..i262.us.i = tail call i32 @llvm.umin.i32(i32 %i.xd, i32 63999)
  %i.xe = zext nneg i32 %..i262.us.i to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xe
  store i8 %i.xb, ptr %i.xf, align 1, !tbaa !45
  %i.xg = load ptr, ptr %i.ri, align 8, !tbaa !36
  %i.xh = or disjoint i32 %i.sz, 1                ; 2 uses
  %i.xi = add nsw i32 %i.wh, %i.xh
  %i.xj = mul nsw i32 %i.xi, 320                  ; 2 uses
  %i.xk = add nsw i32 %i.xj, %i.wi
  %12 = tail call i32 @llvm.smax.i32(i32 %i.xk, i32 0)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 63999)
  %i.xl = zext nneg i32 %13 to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xl
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !45
  %i.xo = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.xp = mul nuw nsw i32 %i.xh, 320              ; 2 uses
  %i.xq = add nuw nsw i32 %i.xp, %i.sx
  %..i258.us.i = tail call i32 @llvm.umin.i32(i32 %i.xq, i32 63999)
  %i.xr = zext nneg i32 %..i258.us.i to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xr
  store i8 %i.xn, ptr %i.xs, align 1, !tbaa !45
  %i.xt = load ptr, ptr %i.ri, align 8, !tbaa !36
  %i.xu = add nsw i32 %i.xj, %i.wx
  %14 = tail call i32 @llvm.smax.i32(i32 %i.xu, i32 0)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 63999)
  %i.xv = zext nneg i32 %15 to i64
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xv
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !45
  %i.xy = add nuw nsw i32 %i.ww, %i.xp
  br label %bb.cw

bb.ct:                                            ; preds = %bytestream2_get_byte.exit228.us.i
  br i1 %i.wa, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xz = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  store ptr %i.xz, ptr %i.c, align 8, !tbaa !55
  %i.ya = load i8, ptr %i.vx, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit226.us.i

bb.cv:                                            ; preds = %bb.ct
  store ptr %.pre, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit226.us.i

bytestream2_get_byte.exit226.us.i:                ; preds = %bb.cv, %bb.cu
  %.0.i225.us.i = phi i8 [ 0, %bb.cv ], [ %i.ya, %bb.cu ] ; 4 uses
  %i.yb = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.yc = mul nuw nsw i32 %i.sz, 320              ; 3 uses
  %i.yd = add nuw nsw i32 %i.sx, %i.yc
  %..i276.us.i = tail call i32 @llvm.umin.i32(i32 %i.yd, i32 63999)
  %i.ye = zext nneg i32 %..i276.us.i to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.ye
  store i8 %.0.i225.us.i, ptr %i.yf, align 1, !tbaa !45
  %i.yg = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.yh = or disjoint i32 %i.sx, 1                ; 2 uses
  %i.yi = add nuw nsw i32 %i.yh, %i.yc
  %..i274.us.i = tail call i32 @llvm.umin.i32(i32 %i.yi, i32 63999)
  %i.yj = zext nneg i32 %..i274.us.i to i64
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yj
  store i8 %.0.i225.us.i, ptr %i.yk, align 1, !tbaa !45
  %i.yl = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.ym = add nuw i32 %i.yc, 320                  ; 2 uses
  %i.yn = add nsw i32 %i.ym, %i.sx
  %i.yo = tail call i32 @llvm.smax.i32(i32 %i.yn, i32 0)
  %i.yp = tail call i32 @llvm.umin.i32(i32 %i.yo, i32 63999)
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.yq
  store i8 %.0.i225.us.i, ptr %i.yr, align 1, !tbaa !45
  %i.ys = add nsw i32 %i.yh, %i.ym
  %i.yt = tail call i32 @llvm.smax.i32(i32 %i.ys, i32 0)
  br label %bb.cw

bb.cw:                                            ; preds = %bytestream2_get_byte.exit226.us.i, %bb.cs, %bytestream2_get_byte.exit.us.i94
  %.sink191 = phi i32 [ %i.yt, %bytestream2_get_byte.exit226.us.i ], [ %i.xy, %bb.cs ], [ %i.vl, %bytestream2_get_byte.exit.us.i94 ]
  %.0.i225.us.sink.i = phi i8 [ %.0.i225.us.i, %bytestream2_get_byte.exit226.us.i ], [ %i.xx, %bb.cs ], [ %.0.i.us.i95, %bytestream2_get_byte.exit.us.i94 ]
  %.sroa.33.10.us.i = phi i32 [ %.sroa.33.9.us.i, %bytestream2_get_byte.exit226.us.i ], [ %.sroa.33.9.us.i, %bb.cs ], [ %.sroa.33.8.us.i, %bytestream2_get_byte.exit.us.i94 ] ; 2 uses
  %.sroa.0.10.us.i97 = phi i32 [ %.sroa.0.9.us.i102, %bytestream2_get_byte.exit226.us.i ], [ %.sroa.0.9.us.i102, %bb.cs ], [ %.sroa.0.8.us.i93, %bytestream2_get_byte.exit.us.i94 ] ; 2 uses
  %i.yu = tail call i32 @llvm.umin.i32(i32 %.sink191, i32 63999)
  %.sink354.i = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %.sink354.i, i64 %i.yv
  store i8 %.0.i225.us.sink.i, ptr %i.yw, align 1, !tbaa !45
  %i.yx = add nuw nsw i32 %.2314.us.i, 1          ; 2 uses
  %exitcond.not.i98 = icmp eq i32 %i.yx, 4
  br i1 %exitcond.not.i98, label %.loopexit.us.i99, label %.preheader289.us.i, !llvm.loop !70

bb.cx:                                            ; preds = %bytestream2_get_byte.exit238.us.i
  %i.yy = shl nuw i32 1, %.sroa.0.5.us.i92
  %i.yz = and i32 %i.yy, %.sroa.33.5.us.i
  %.not213.us.i = icmp eq i32 %i.yz, 0
  %i.za = icmp eq i32 %.sroa.0.5.us.i92, 0
  %.pre142 = load ptr, ptr %i.m, align 8, !tbaa !54 ; 6 uses
  %.pre143 = load ptr, ptr %i.c, align 8, !tbaa !52 ; 4 uses
  br i1 %i.za, label %bb.cy, label %.bytestream2_get_byte.exit236.us.i_crit_edge

.bytestream2_get_byte.exit236.us.i_crit_edge:     ; preds = %bb.cx
  %i.zb = add nsw i32 %.sroa.0.5.us.i92, -1
  %.pre156 = ptrtoint ptr %.pre142 to i64
  br label %bytestream2_get_byte.exit236.us.i

bb.cy:                                            ; preds = %bb.cx
  %i.zc = ptrtoint ptr %.pre142 to i64            ; 3 uses
  %i.zd = ptrtoint ptr %.pre143 to i64
  %i.ze = sub i64 %i.zc, %i.zd
  %i.zf = icmp slt i64 %i.ze, 1
  br i1 %i.zf, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zg = getelementptr inbounds nuw i8, ptr %.pre143, i64 1 ; 2 uses
  store ptr %i.zg, ptr %i.c, align 8, !tbaa !55
  %i.zh = load i8, ptr %.pre143, align 1, !tbaa !45
  %i.zi = zext i8 %i.zh to i32
  br label %bytestream2_get_byte.exit236.us.i

bb.da:                                            ; preds = %bb.cy
  store ptr %.pre142, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit236.us.i

bytestream2_get_byte.exit236.us.i:                ; preds = %.bytestream2_get_byte.exit236.us.i_crit_edge, %bb.da, %bb.cz
  %.pre-phi157 = phi i64 [ %.pre156, %.bytestream2_get_byte.exit236.us.i_crit_edge ], [ %i.zc, %bb.da ], [ %i.zc, %bb.cz ]
  %i.zj = phi ptr [ %.pre143, %.bytestream2_get_byte.exit236.us.i_crit_edge ], [ %.pre142, %bb.da ], [ %i.zg, %bb.cz ] ; 5 uses
  %.sroa.33.6.us.i = phi i32 [ %.sroa.33.5.us.i, %.bytestream2_get_byte.exit236.us.i_crit_edge ], [ 0, %bb.da ], [ %i.zi, %bb.cz ] ; 2 uses
  %.sroa.0.6.us.i = phi i32 [ %i.zb, %.bytestream2_get_byte.exit236.us.i_crit_edge ], [ 7, %bb.da ], [ 7, %bb.cz ] ; 2 uses
  %i.zk = ptrtoint ptr %i.zj to i64
  %i.zl = sub i64 %.pre-phi157, %i.zk
  %i.zm = icmp slt i64 %i.zl, 1                   ; 2 uses
  br i1 %.not213.us.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bytestream2_get_byte.exit236.us.i
  br i1 %i.zm, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 1
  store ptr %i.zn, ptr %i.c, align 8, !tbaa !55
  %i.zo = load i8, ptr %i.zj, align 1, !tbaa !45
  %i.zp = zext i8 %i.zo to i32
  br label %bytestream2_get_byte.exit232.us.i

bb.dd:                                            ; preds = %bb.db
  store ptr %.pre142, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit232.us.i

bytestream2_get_byte.exit232.us.i:                ; preds = %bb.dd, %bb.dc
  %.0.i231.us.i = phi i32 [ 0, %bb.dd ], [ %i.zp, %bb.dc ] ; 2 uses
  %i.zq = and i32 %.0.i231.us.i, 15
  %i.zr = add nsw i32 %i.zq, -8                   ; 2 uses
  %i.zs = lshr i32 %.0.i231.us.i, 4
  %i.zt = add nsw i32 %i.zs, -8                   ; 2 uses
  %i.zu = add nsw i32 %i.zr, %i.se
  %i.zv = add nsw i32 %i.zt, %i.sh
  %i.zw = mul nsw i32 %i.zv, 320
  %i.zx = add nsw i32 %i.zu, %i.zw
  %or.cond.us.i104 = icmp ugt i32 %i.zx, 63036
  br i1 %or.cond.us.i104, label %.loopexit297.sink.split.i, label %.preheader.us.i105

.preheader.us.i105:                               ; preds = %bytestream2_get_byte.exit232.us.i, %.preheader.us.i105
  %.1315.us.i = phi i32 [ %i.aar, %.preheader.us.i105 ], [ 0, %bytestream2_get_byte.exit232.us.i ] ; 3 uses
  %i.zy = load ptr, ptr %i.ri, align 8, !tbaa !36
  %i.zz = and i32 %.1315.us.i, 3
  %i.aaa = or disjoint i32 %i.zz, %i.se           ; 2 uses
  %i.aab = add nsw i32 %i.aaa, %i.zr
  %i.aac = lshr i32 %.1315.us.i, 2
  %i.aad = or disjoint i32 %i.aac, %i.sh          ; 2 uses
  %i.aae = add nsw i32 %i.aad, %i.zt
  %i.aaf = mul nsw i32 %i.aae, 320
  %i.aag = add nsw i32 %i.aab, %i.aaf
  %i.aah = tail call i32 @llvm.smax.i32(i32 %i.aag, i32 0)
  %i.aai = tail call i32 @llvm.umin.i32(i32 %i.aah, i32 63999)
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !45
  %i.aam = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.aan = mul nuw nsw i32 %i.aad, 320
  %i.aao = add nuw nsw i32 %i.aan, %i.aaa
  %..i278.us.i = tail call i32 @llvm.umin.i32(i32 %i.aao, i32 63999)
  %i.aap = zext nneg i32 %..i278.us.i to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aap
  store i8 %i.aal, ptr %i.aaq, align 1, !tbaa !45
  %i.aar = add nuw nsw i32 %.1315.us.i, 1         ; 2 uses
  %exitcond340.not.i = icmp eq i32 %i.aar, 16
  br i1 %exitcond340.not.i, label %.loopexit.us.i99, label %.preheader.us.i105, !llvm.loop !71

bb.de:                                            ; preds = %bytestream2_get_byte.exit236.us.i
  br i1 %i.zm, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zj, i64 1
  store ptr %i.aas, ptr %i.c, align 8, !tbaa !55
  %i.aat = load i8, ptr %i.zj, align 1, !tbaa !45
  br label %bytestream2_get_byte.exit234.us.i

bb.dg:                                            ; preds = %bb.de
  store ptr %.pre142, ptr %i.c, align 8, !tbaa !52
  br label %bytestream2_get_byte.exit234.us.i

bytestream2_get_byte.exit234.us.i:                ; preds = %bb.dg, %bb.df
  %.0.i233.us.i = phi i8 [ 0, %bb.dg ], [ %i.aat, %bb.df ] ; 16 uses
  %i.aau = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.aav = mul nuw nsw i32 %i.sh, 320             ; 7 uses
  %i.aaw = add nuw nsw i32 %i.aav, %i.se
  %..i282.us.i = tail call i32 @llvm.umin.i32(i32 %i.aaw, i32 63999)
  %i.aax = zext nneg i32 %..i282.us.i to i64
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aax
  store i8 %.0.i233.us.i, ptr %i.aay, align 1, !tbaa !45
  %i.aaz = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.aba = or disjoint i32 %i.se, 1               ; 4 uses
  %i.abb = add nuw nsw i32 %i.aba, %i.aav
  %..i282.us.1.i = tail call i32 @llvm.umin.i32(i32 %i.abb, i32 63999)
  %i.abc = zext nneg i32 %..i282.us.1.i to i64
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.abc
  store i8 %.0.i233.us.i, ptr %i.abd, align 1, !tbaa !45
  %i.abe = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.abf = or disjoint i32 %i.se, 2               ; 4 uses
  %i.abg = add nuw nsw i32 %i.abf, %i.aav
  %..i282.us.2.i = tail call i32 @llvm.umin.i32(i32 %i.abg, i32 63999)
  %i.abh = zext nneg i32 %..i282.us.2.i to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.abh
  store i8 %.0.i233.us.i, ptr %i.abi, align 1, !tbaa !45
  %i.abj = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.abk = or disjoint i32 %i.se, 3               ; 4 uses
  %i.abl = add nuw nsw i32 %i.abk, %i.aav
  %..i282.us.3.i = tail call i32 @llvm.umin.i32(i32 %i.abl, i32 63999)
  %i.abm = zext nneg i32 %..i282.us.3.i to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abm
  store i8 %.0.i233.us.i, ptr %i.abn, align 1, !tbaa !45
  %i.abo = load ptr, ptr %i.db, align 8, !tbaa !35
end_hunk_1
