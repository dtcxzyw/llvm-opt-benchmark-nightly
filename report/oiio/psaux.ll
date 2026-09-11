Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/psaux?download=true
inline.NumInlined: 440
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cf2_hintmap_build:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !11
  %.not3.i.i.i142 = icmp eq i32 %i.ht, 0
  br i1 %.not3.i.i.i142, label %bb.be, label %cf2_arrstack_getPointer.exit.i143

bb.be:                                            ; preds = %bb.bd
  store i32 130, ptr %i.hs, align 4, !tbaa !11
  br label %cf2_arrstack_getPointer.exit.i143

cf2_arrstack_getPointer.exit.i143:                ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.0.i.i144 = phi i64 [ %.198210, %bb.bb ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.be ]
  %i.hu = load ptr, ptr %i.go, align 8, !tbaa !393 ; 2 uses
  %i.hv = load i64, ptr %i.gp, align 8, !tbaa !334 ; 2 uses
  %i.hw = mul i64 %i.hv, %.0.i.i144
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hw ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !396 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !395 ; 2 uses
  %i.ic = sub i32 %i.hz, %i.ib                    ; 2 uses
  switch i32 %i.ic, label %bb.bg [
    i32 -1376256, label %bb.bh
    i32 -1310720, label %bb.bf
  ]

bb.bf:                                            ; preds = %cf2_arrstack_getPointer.exit.i143
  store i32 0, ptr %13, align 8, !tbaa !414
  store i32 %4, ptr %i.gq, align 8, !tbaa !415
  store i32 %i.hq, ptr %i.gr, align 8, !tbaa !416
  store i64 %.198210, ptr %i.gs, align 8, !tbaa !730
  br label %bb.bj

bb.bg:                                            ; preds = %cf2_arrstack_getPointer.exit.i143
  %i.id = icmp slt i32 %i.ic, 0
  %.92.i148 = select i1 %i.id, i32 %i.hz, i32 %i.ib
  br label %bb.bh

bb.bh:                                            ; preds = %cf2_arrstack_getPointer.exit.i143, %bb.bg
  %.sink.i145 = phi i32 [ 4, %bb.bg ], [ 1, %cf2_arrstack_getPointer.exit.i143 ] ; 2 uses
  %i.ie = phi i32 [ %.92.i148, %bb.bg ], [ %i.hz, %cf2_arrstack_getPointer.exit.i143 ]
  store i32 %.sink.i145, ptr %13, align 8, !tbaa !414
  %i.if = add i32 %i.ie, %4                       ; 2 uses
  store i32 %i.if, ptr %i.gq, align 8, !tbaa !415
  store i32 %i.hq, ptr %i.gr, align 8, !tbaa !416
  store i64 %.198210, ptr %i.gs, align 8, !tbaa !730
  %i.ig = load i8, ptr %i.hx, align 4, !tbaa !397
  %.not58.i146 = icmp eq i8 %i.ig, 0
  br i1 %.not58.i146, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !11
  store i32 %i.ii, ptr %i.gt, align 4, !tbaa !417
  %i.ij = or disjoint i32 %.sink.i145, 16
  store i32 %i.ij, ptr %13, align 8, !tbaa !414
  br label %cf2_hint_init.exit149

bb.bj:                                            ; preds = %bb.bh, %bb.bf
  %i.ik = phi i32 [ %i.if, %bb.bh ], [ %4, %bb.bf ]
  %i.il = sext i32 %i.ik to i64
  %i.im = sext i32 %i.hq to i64
  %i.in = mul nsw i64 %i.il, %i.im                ; 2 uses
  %i.io = ashr i64 %i.in, 63
  %i.ip = add nsw i64 %i.in, 32768
  %i.iq = add nsw i64 %i.ip, %i.io
  %i.ir = lshr i64 %i.iq, 16
  %i.is = trunc i64 %i.ir to i32
  store i32 %i.is, ptr %i.gt, align 4, !tbaa !417
  br label %cf2_hint_init.exit149

cf2_hint_init.exit149:                            ; preds = %bb.bi, %bb.bj
  %i.it = load i32, ptr %i.gm, align 4, !tbaa !352 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  br i1 %.not.i.i140, label %cf2_arrstack_getPointer.exit.i153, label %bb.bk

bb.bk:                                            ; preds = %cf2_hint_init.exit149
  %i.iu = load ptr, ptr %i.gn, align 8, !tbaa !333 ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i151, label %cf2_arrstack_getPointer.exit.i153, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !11
  %.not3.i.i.i152 = icmp eq i32 %i.iv, 0
  br i1 %.not3.i.i.i152, label %bb.bm, label %cf2_arrstack_getPointer.exit.i153

bb.bm:                                            ; preds = %bb.bl
  store i32 130, ptr %i.iu, align 4, !tbaa !11
  br label %cf2_arrstack_getPointer.exit.i153

cf2_arrstack_getPointer.exit.i153:                ; preds = %bb.bm, %bb.bl, %bb.bk, %cf2_hint_init.exit149
  %.0.i.i154 = phi i64 [ %.198210, %cf2_hint_init.exit149 ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %bb.bm ]
  %i.iw = mul i64 %.0.i.i154, %i.hv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.iw ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !396 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !395 ; 3 uses
  %i.jc = sub i32 %i.iz, %i.jb                    ; 2 uses
  switch i32 %i.jc, label %bb.bo [
    i32 -1376256, label %bb.bn
    i32 -1310720, label %.thread75.i155
  ]

bb.bn:                                            ; preds = %cf2_arrstack_getPointer.exit.i153
  store i32 0, ptr %14, align 8, !tbaa !414
  store i32 %4, ptr %i.gu, align 8, !tbaa !415
  store i32 %i.it, ptr %i.gv, align 8, !tbaa !416
  store i64 %.198210, ptr %i.gw, align 8, !tbaa !730
  br label %bb.bq

bb.bo:                                            ; preds = %cf2_arrstack_getPointer.exit.i153
  %i.jd = icmp slt i32 %i.jc, 0
  %..i158 = select i1 %i.jd, i32 %i.jb, i32 %i.iz
  br label %.thread75.i155

.thread75.i155:                                   ; preds = %cf2_arrstack_getPointer.exit.i153, %bb.bo
  %.sink87.i156 = phi i32 [ 8, %bb.bo ], [ 2, %cf2_arrstack_getPointer.exit.i153 ] ; 2 uses
  %i.je = phi i32 [ %..i158, %bb.bo ], [ %i.jb, %cf2_arrstack_getPointer.exit.i153 ]
  store i32 %.sink87.i156, ptr %14, align 8, !tbaa !414
  %i.jf = load i32, ptr %i.gx, align 8, !tbaa !241
  %i.jg = shl nsw i32 %i.jf, 1
  %i.jh = add i32 %i.je, %4
  %i.ji = add i32 %i.jh, %i.jg                    ; 2 uses
  store i32 %i.ji, ptr %i.gu, align 8, !tbaa !415
  store i32 %i.it, ptr %i.gv, align 8, !tbaa !416
  store i64 %.198210, ptr %i.gw, align 8, !tbaa !730
  %i.jj = load i8, ptr %i.ix, align 4, !tbaa !397
  %.not5878.i157 = icmp eq i8 %i.jj, 0
  br i1 %.not5878.i157, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.thread75.i155
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !11
  store i32 %i.jl, ptr %i.gy, align 4, !tbaa !417
  %i.jm = or disjoint i32 %.sink87.i156, 16
  store i32 %i.jm, ptr %14, align 8, !tbaa !414
  br label %cf2_hint_init.exit160

bb.bq:                                            ; preds = %.thread75.i155, %bb.bn
  %i.jn = phi i32 [ %i.ji, %.thread75.i155 ], [ %4, %bb.bn ]
  %i.jo = sext i32 %i.jn to i64
  %i.jp = sext i32 %i.it to i64
  %i.jq = mul nsw i64 %i.jo, %i.jp                ; 2 uses
  %i.jr = ashr i64 %i.jq, 63
  %i.js = add nsw i64 %i.jq, 32768
  %i.jt = add nsw i64 %i.js, %i.jr
  %i.ju = lshr i64 %i.jt, 16
  %i.jv = trunc i64 %i.ju to i32
  store i32 %i.jv, ptr %i.gy, align 4, !tbaa !417
  br label %cf2_hint_init.exit160

cf2_hint_init.exit160:                            ; preds = %bb.bp, %bb.bq
  call fastcc void @cf2_hintmap_insertHint(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.br

bb.br:                                            ; preds = %cf2_hint_init.exit160, %bb.ba
  %i.jw = and i64 %.198210, 7
  %i.jx = icmp eq i64 %i.jw, 7                    ; 2 uses
  %i.jy = lshr i32 %.2213, 1
  %i.jz = and i32 %i.jy, 127
  %.3103.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.jx to i64
  %.3103.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.2102209, i64 %.3103.idx.sroa.sel.idx.sroa.sel.idx
  %.3 = select i1 %i.jx, i32 128, i32 %i.jz
  %i.ka = add nuw i64 %.198210, 1                 ; 2 uses
  %exitcond235.not = icmp eq i64 %i.ka, %.val120
  br i1 %exitcond235.not, label %.loopexit184, label %bb.ba, !llvm.loop !724

.loopexit184:                                     ; preds = %bb.br, %bb.ay, %bb.az
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !350
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  store i64 0, ptr %i.kd, align 8, !tbaa !389
  %i.ke = load i32, ptr %i.af, align 8, !tbaa !412 ; 2 uses
  %.not173.i = icmp eq i32 %i.ke, 0
  br i1 %.not173.i, label %.loopexit, label %.lr.ph.i161

.loopexit184.thread:                              ; preds = %._crit_edge.thread
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !350
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  store i64 0, ptr %i.kh, align 8, !tbaa !389
  %i.ki = load i32, ptr %i.af, align 8, !tbaa !412 ; 2 uses
  %.not173.i275 = icmp eq i32 %i.ki, 0
  br i1 %.not173.i275, label %.loopexit, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %.loopexit184.thread, %.loopexit184
  %i.kj = phi i32 [ %i.ki, %.loopexit184.thread ], [ %i.ke, %.loopexit184 ]
  %i.kk = phi ptr [ %i.kf, %.loopexit184.thread ], [ %i.kb, %.loopexit184 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.cj, %.lr.ph.i161
  %i.kn = phi i32 [ %i.kj, %.lr.ph.i161 ], [ %i.nh, %bb.cj ]
  %.0132169.i = phi i64 [ 0, %.lr.ph.i161 ], [ %i.ng, %bb.cj ] ; 7 uses
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.kl, i64 %.0132169.i ; 8 uses
  %.val158.i = load i32, ptr %i.ko, align 8, !tbaa !414 ; 2 uses
  %i.kp = and i32 %.val158.i, 12
  %.not167.i = icmp eq i32 %i.kp, 0               ; 3 uses
  %i.kq = add nuw nsw i64 %.0132169.i, 1          ; 3 uses
  %15 = select i1 %.not167.i, i64 %.0132169.i, i64 %i.kq ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 20 ; 3 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !417 ; 4 uses
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %i.kl, i64 %15 ; 7 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 20 ; 3 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !417 ; 3 uses
  %i.kw = and i32 %.val158.i, 16
  %.not142.i = icmp eq i32 %i.kw, 0
  br i1 %.not142.i, label %bb.bt, label %bb.cd

bb.bt:                                            ; preds = %bb.bs
  %i.kx = and i32 %i.ks, 65535                    ; 3 uses
  %i.ky = and i32 %i.kv, 65535                    ; 3 uses
  %i.kz = icmp eq i32 %i.kx, 0
  %i.la = sub nuw nsw i32 65536, %i.kx
  %i.lb = icmp eq i32 %i.ky, 0
  %i.lc = sub nuw nsw i32 65536, %i.ky
  %i.ld = tail call i32 @llvm.umin.i32(i32 %i.la, i32 %i.lc)
  %i.le = select i1 %i.kz, i1 true, i1 %i.lb
  %i.lf = select i1 %i.le, i32 0, i32 %i.ld       ; 6 uses
  %i.lg = tail call i32 @llvm.umin.i32(i32 %i.kx, i32 %i.ky) ; 5 uses
  %i.lh = sub nsw i32 0, %i.lg                    ; 3 uses
  %i.li = add i32 %i.kn, -1
  %i.lj = zext i32 %i.li to i64
  %.not143.i = icmp samesign ult i64 %15, %i.lj
  br i1 %.not143.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kt, i64 52
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !417
  %i.lm = add i32 %i.kv, 32768
  %i.ln = add i32 %i.lm, %i.lf
  %.not144.i = icmp slt i32 %i.ll, %i.ln
  br i1 %.not144.i, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lo = icmp eq i64 %.0132169.i, 0
  br i1 %i.lo, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lp = getelementptr i8, ptr %i.ko, i64 -12
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !417
  %reass.sub146.i = add i32 %i.ks, -32768
  %i.lr = sub i32 %reass.sub146.i, %i.lg
  %.not147.i = icmp sgt i32 %i.lq, %i.lr
  br i1 %.not147.i, label %.thread.i168, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ls = icmp samesign ult i32 %i.lg, %i.lf
  %i.lt = select i1 %i.ls, i32 %i.lh, i32 %i.lf
  br label %.thread.i168

bb.by:                                            ; preds = %bb.bu
  %i.lu = icmp eq i64 %.0132169.i, 0
  br i1 %i.lu, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lv = getelementptr i8, ptr %i.ko, i64 -12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !417
  %reass.sub.i = add i32 %i.ks, -32768
  %i.lx = sub i32 %reass.sub.i, %i.lg
  %.not145.i = icmp sgt i32 %i.lw, %i.lx
  br i1 %.not145.i, label %.thread162.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.not168.i = icmp samesign ult i32 %i.lf, %i.lg
  br i1 %.not168.i, label %.thread162.i, label %.thread.i168

.thread162.i:                                     ; preds = %bb.ca, %bb.bz
  %.0131165.i = phi i32 [ %i.lh, %bb.ca ], [ 0, %bb.bz ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %.val155.i = load i32, ptr %i.ly, align 8, !tbaa !414
  %i.lz = and i32 %.val155.i, 16
  %.not149.i = icmp eq i32 %i.lz, 0
  br i1 %.not149.i, label %bb.cb, label %.thread.i168

bb.cb:                                            ; preds = %.thread162.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %15, ptr %6, align 8, !tbaa !734
  %i.ma = sub nsw i32 %i.lf, %.0131165.i
  store i32 %i.ma, ptr %i.km, align 8, !tbaa !735
  %i.mb = load ptr, ptr %i.kk, align 8, !tbaa !350
  call fastcc void @cf2_arrstack_push(ptr noundef %i.mb, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.thread.i168

.thread.i168:                                     ; preds = %bb.cb, %.thread162.i, %bb.ca, %bb.bx, %bb.bw
  %.0131161.i = phi i32 [ %i.lh, %bb.ca ], [ %.0131165.i, %bb.cb ], [ %.0131165.i, %.thread162.i ], [ %i.lf, %bb.bw ], [ %i.lt, %bb.bx ] ; 2 uses
  %i.mc = add i32 %.0131161.i, %i.ks
  store i32 %i.mc, ptr %i.kr, align 4, !tbaa !417
  br i1 %.not167.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread.i168
  %i.md = add i32 %.0131161.i, %i.kv
  store i32 %i.md, ptr %i.ku, align 4, !tbaa !417
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread.i168, %bb.bs
  %.not151.i = icmp eq i64 %.0132169.i, 0
  br i1 %.not151.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.me = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !415 ; 2 uses
  %i.mg = getelementptr i8, ptr %i.ko, i64 -16
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !415 ; 2 uses
  %.not152.i = icmp eq i32 %i.mf, %i.mh
  br i1 %.not152.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mi = load i32, ptr %i.kr, align 4, !tbaa !417
  %i.mj = getelementptr i8, ptr %i.ko, i64 -12
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !417
  %i.ml = sub i32 %i.mi, %i.mk
  %i.mm = sext i32 %i.ml to i64
  %i.mn = sub i32 %i.mf, %i.mh
  %i.mo = sext i32 %i.mn to i64
  %i.mp = tail call i64 @FT_DivFix(i64 noundef %i.mm, i64 noundef %i.mo) #19
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = getelementptr i8, ptr %i.ko, i64 -8
  store i32 %i.mq, ptr %i.mr, align 8, !tbaa !416
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  br i1 %.not167.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ms = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !415 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.kt, i64 -16
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !415 ; 2 uses
  %.not154.i = icmp eq i32 %i.mt, %i.mv
  br i1 %.not154.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mw = load i32, ptr %i.ku, align 4, !tbaa !417
  %i.mx = getelementptr i8, ptr %i.kt, i64 -12
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !417
  %i.mz = sub i32 %i.mw, %i.my
  %i.na = sext i32 %i.mz to i64
  %i.nb = sub i32 %i.mt, %i.mv
  %i.nc = sext i32 %i.nb to i64
  %i.nd = tail call i64 @FT_DivFix(i64 noundef %i.na, i64 noundef %i.nc) #19
  %i.ne = trunc i64 %i.nd to i32
  %i.nf = getelementptr i8, ptr %i.kt, i64 -8
  store i32 %i.ne, ptr %i.nf, align 8, !tbaa !416
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.1.i162 = phi i64 [ %.0132169.i, %bb.cg ], [ %i.kq, %bb.ci ], [ %i.kq, %bb.ch ]
  %i.ng = add i64 %.1.i162, 1                     ; 2 uses
  %i.nh = load i32, ptr %i.af, align 8, !tbaa !412 ; 4 uses
  %i.ni = zext i32 %i.nh to i64
  %i.nj = icmp ult i64 %i.ng, %i.ni
  br i1 %i.nj, label %bb.bs, label %._crit_edge.i163, !llvm.loop !725

._crit_edge.i163:                                 ; preds = %bb.cj
  %.pre.i164 = load ptr, ptr %i.kk, align 8, !tbaa !350 ; 3 uses
  %.phi.trans.insert.i165 = getelementptr i8, ptr %.pre.i164, i64 32
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i165, align 8, !tbaa !389 ; 2 uses
  %.not170.i = icmp eq i64 %.val.pre.i, 0
  br i1 %.not170.i, label %cf2_hintmap_adjustHints.exit, label %cf2_arrstack_getPointer.exit.lr.ph.i

cf2_arrstack_getPointer.exit.lr.ph.i:             ; preds = %._crit_edge.i163
  %i.nk = getelementptr inbounds nuw i8, ptr %.pre.i164, i64 48
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !393
  %i.nm = getelementptr inbounds nuw i8, ptr %.pre.i164, i64 16
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !334
  br label %cf2_arrstack_getPointer.exit.i166

cf2_arrstack_getPointer.exit.i166:                ; preds = %bb.cm, %cf2_arrstack_getPointer.exit.lr.ph.i
  %.2171.i = phi i64 [ %.val.pre.i, %cf2_arrstack_getPointer.exit.lr.ph.i ], [ %i.no, %bb.cm ]
  %i.no = add i64 %.2171.i, -1                    ; 3 uses
  %i.np = mul i64 %i.no, %i.nn
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.np ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !734
  %i.ns = getelementptr [32 x i8], ptr %i.kl, i64 %i.nr ; 4 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 52
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !417
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 20 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !417
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !735 ; 2 uses
  %i.nz = add i32 %i.ny, %i.nw                    ; 2 uses
  %i.oa = add i32 %i.nz, 32768
  %.not139.i = icmp slt i32 %i.nu, %i.oa
  br i1 %.not139.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %cf2_arrstack_getPointer.exit.i166
  store i32 %i.nz, ptr %i.nv, align 4, !tbaa !417
  %.val157.i = load i32, ptr %i.ns, align 8, !tbaa !414
  %i.ob = and i32 %.val157.i, 12
  %.not166.i = icmp eq i32 %i.ob, 0
  br i1 %.not166.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oc = getelementptr i8, ptr %i.ns, i64 -12    ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !417
  %i.oe = add i32 %i.od, %i.ny
  store i32 %i.oe, ptr %i.oc, align 4, !tbaa !417
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %cf2_arrstack_getPointer.exit.i166
  %.not.i167 = icmp eq i64 %i.no, 0
  br i1 %.not.i167, label %cf2_hintmap_adjustHints.exit, label %cf2_arrstack_getPointer.exit.i166, !llvm.loop !726

cf2_hintmap_adjustHints.exit:                     ; preds = %bb.cm, %._crit_edge.i163
  %.not219 = icmp eq i32 %i.nh, 0
  %or.cond291 = or i1 %.not, %.not219
  br i1 %or.cond291, label %.loopexit, label %.lr.ph216

.lr.ph216:                                        ; preds = %cf2_hintmap_adjustHints.exit
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph216, %bb.cs
  %i.oj = phi i32 [ %i.nh, %.lr.ph216 ], [ %i.oz, %bb.cs ]
  %.299215 = phi i64 [ 0, %.lr.ph216 ], [ %i.pa, %bb.cs ] ; 2 uses
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.of, i64 %.299215 ; 4 uses
  %.val126 = load i32, ptr %i.ok, align 8, !tbaa !414 ; 4 uses
  %i.ol = and i32 %.val126, 32
  %.not112 = icmp eq i32 %i.ol, 0
  br i1 %.not112, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !730 ; 2 uses
  %i.oo = load i64, ptr %i.ai, align 8, !tbaa !389
  %.not.i169 = icmp ult i64 %i.on, %i.oo
  br i1 %.not.i169, label %cf2_arrstack_getPointer.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.op = load ptr, ptr %i.og, align 8, !tbaa !333 ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.op, null
  br i1 %.not.i.i170, label %cf2_arrstack_getPointer.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !11
  %.not3.i.i = icmp eq i32 %i.oq, 0
  br i1 %.not3.i.i, label %bb.cr, label %cf2_arrstack_getPointer.exit

bb.cr:                                            ; preds = %bb.cq
  store i32 130, ptr %i.op, align 4, !tbaa !11
  %.val125.pre = load i32, ptr %i.ok, align 8, !tbaa !414
  br label %cf2_arrstack_getPointer.exit

cf2_arrstack_getPointer.exit:                     ; preds = %bb.co, %bb.cp, %bb.cq, %bb.cr
  %.val125 = phi i32 [ %.val126, %bb.co ], [ %.val126, %bb.cp ], [ %.val126, %bb.cq ], [ %.val125.pre, %bb.cr ]
  %.0.i = phi i64 [ %i.on, %bb.co ], [ 0, %bb.cp ], [ 0, %bb.cq ], [ 0, %bb.cr ]
  %i.or = load ptr, ptr %i.oh, align 8, !tbaa !393
  %i.os = load i64, ptr %i.oi, align 8, !tbaa !334
  %i.ot = mul i64 %i.os, %.0.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ot ; 2 uses
  %i.ov = and i32 %.val125, 10
  %.not182 = icmp eq i32 %i.ov, 0
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !417
  %. = select i1 %.not182, i64 12, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !11
  store i8 1, ptr %i.ou, align 4, !tbaa !397
  %.pre = load i32, ptr %i.af, align 8, !tbaa !412
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cn, %cf2_arrstack_getPointer.exit
  %i.oz = phi i32 [ %i.oj, %bb.cn ], [ %.pre, %cf2_arrstack_getPointer.exit ] ; 2 uses
  %i.pa = add nuw nsw i64 %.299215, 1             ; 2 uses
  %i.pb = zext i32 %i.oz to i64
  %i.pc = icmp samesign ult i64 %i.pa, %i.pb
  br i1 %i.pc, label %bb.cn, label %.loopexit, !llvm.loop !727

.loopexit:                                        ; preds = %bb.cs, %.loopexit184, %.loopexit184.thread, %cf2_hintmap_adjustHints.exit
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.pd, align 8, !tbaa !400
  %i.pe = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.pe, align 1, !tbaa !390
  br label %bb.ct

bb.ct:                                            ; preds = %cf2_hintmask_setAll.exit.thread, %bb.i, %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf2_arrstack_push(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !389  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !736
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !393
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %i.c, 1
  %i.h = add i64 %i.g, 16                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !334  ; 2 uses
  %i.k = mul i64 %i.j, %i.h                       ; 2 uses
  %i.l = udiv i64 9223372036854775807, %i.j
  %i.m = icmp ugt i64 %i.h, %i.l
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !332
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !737
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !393
  %i.s = call ptr @ft_mem_qrealloc(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.p, i64 noundef %i.k, ptr noundef %i.r, ptr noundef nonnull %i.a) #19 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !393
  %i.t = load i32, ptr %i.a, align 4, !tbaa !11
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.d, label %bb.h
end_hunk_0
