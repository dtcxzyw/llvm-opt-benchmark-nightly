Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@balance:bb.a
  %i.rh = zext i8 %i.rg to i64
  %i.ri = or disjoint i64 %i.re, %i.rh
  %i.rj = and i64 %i.ri, %i.qu
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.rj ; 4 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %.idx.i = phi i64 [ %.add.i, %bb.bh ], [ 0, %bb.bg ] ; 4 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx.i
  %.add.i = add nuw nsw i64 %.idx.i, 1            ; 3 uses
  %.ptr45.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.add.i
  store ptr %.ptr45.i, ptr %i.o, align 8, !tbaa !259
  %i.rl = load i8, ptr %.ptr.i, align 1, !tbaa !231
  %i.rm = icmp slt i8 %i.rl, 0
  %i.rn = icmp samesign ult i64 %.idx.i, 8
  %i.ro = select i1 %i.rm, i1 %i.rn, i1 false
  br i1 %i.ro, label %bb.bh, label %bb.bi, !llvm.loop !2830

bb.bi:                                            ; preds = %bb.bh
  %.ptr.i.le = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx.i
  %.ptr45.i.le = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.add.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.ptr.i.le, i64 10
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %i.rq = phi ptr [ %.ptr45.i.le, %bb.bi ], [ %i.rr, %bb.bj ] ; 2 uses
  %.0.i84 = phi ptr [ %i.ab, %bb.bi ], [ %i.rt, %bb.bj ] ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 1 ; 3 uses
  store ptr %i.rr, ptr %i.o, align 8, !tbaa !259
  %i.rs = load i8, ptr %i.rq, align 1, !tbaa !231 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0.i84, i64 1 ; 2 uses
  store i8 %i.rs, ptr %.0.i84, align 1, !tbaa !231
  %i.ru = icmp slt i8 %i.rs, 0
  %i.rv = icmp ult ptr %i.rr, %i.rp
  %i.rw = select i1 %i.ru, i1 %i.rv, i1 false
  br i1 %i.rw, label %bb.bj, label %bb.bk, !llvm.loop !2831

bb.bk:                                            ; preds = %bb.bj
  %i.rx = load i32, ptr %i.m, align 4, !tbaa !27  ; 2 uses
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.rz = load i16, ptr %i.lf, align 8, !tbaa !1613
  %i.sa = zext i16 %i.rz to i32
  %i.sb = ptrtoint ptr %i.rt to i64
  %i.sc = sub i64 %i.sb, %i.al
  %i.sd = trunc i64 %i.sc to i32
  %i.se = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !774
  %i.sg = call fastcc i32 @insertCell(ptr noundef nonnull %i.jm, i32 noundef %i.sa, ptr noundef nonnull %i.t, i32 noundef %i.sd, ptr noundef null, i32 noundef %i.sf), !inline_history !2821
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.sh = phi i32 [ %i.sg, %bb.bl ], [ %i.rx, %bb.bk ]
  %i.si = getelementptr inbounds nuw i8, ptr %i.jm, i64 80
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !667
  %i.sk = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !776
  %i.sm = zext i8 %i.sl to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sm ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sp = load i32, ptr %i.n, align 4, !tbaa !27  ; 4 uses
  %i.sq = lshr i32 %i.sp, 24
  %i.sr = trunc nuw i32 %i.sq to i8
  store i8 %i.sr, ptr %i.so, align 1, !tbaa !231
  %i.ss = lshr i32 %i.sp, 16
  %i.st = trunc i32 %i.ss to i8
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 9
  store i8 %i.st, ptr %i.su, align 1, !tbaa !231
  %i.sv = lshr i32 %i.sp, 8
  %i.sw = trunc i32 %i.sv to i8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sn, i64 10
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !231
  %i.sy = trunc i32 %i.sp to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sn, i64 11
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !231
  %i.ta = getelementptr i8, ptr %i.ls, i64 112
  %.val.i37.i = load ptr, ptr %i.ta, align 8, !tbaa !698 ; 7 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 52
  %i.tc = load i16, ptr %i.tb, align 4, !tbaa !530
  %i.td = and i16 %i.tc, 32
  %.not.i.i.i38.i = icmp eq i16 %i.td, 0
  br i1 %.not.i.i.i38.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.te = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 40
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !531 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 152 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !532
  %i.ti = add nsw i32 %i.th, -1
  store i32 %i.ti, ptr %i.tg, align 8, !tbaa !532
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 168 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !533
  %i.tl = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 32
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !534
  store ptr %.val.i37.i, ptr %i.tj, align 8, !tbaa !533
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tf, i64 72
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !535 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 48
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !536
  %i.tq = add i32 %i.tp, -1
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tf, i64 200
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !83
  %i.tu = mul nsw i64 %i.tt, %i.tr
  %i.tv = getelementptr inbounds nuw i8, ptr %.val.i37.i, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !527
  %i.tx = load ptr, ptr %i.tn, align 8, !tbaa !483
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 144
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !537
  %i.ua = call i32 %i.tz(ptr noundef nonnull %i.tn, i64 noundef %i.tu, ptr noundef %i.tw) #58, !inline_history !2827 ; 0 uses
  br label %releasePage.exit.thread.i

bb.bo:                                            ; preds = %bb.bm
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i37.i), !inline_history !2821
  br label %releasePage.exit.thread.i

releasePage.exit.thread.i:                        ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #58
  br label %balance_quick.exit

releasePage.exit.i:                               ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #58
  br label %balance_quick.exit

balance_quick.exit:                               ; preds = %bb.at, %bb.au, %releasePage.exit.thread.i, %releasePage.exit.i
  %.1.i = phi i32 [ 11, %bb.at ], [ %i.oe, %releasePage.exit.i ], [ %i.sh, %releasePage.exit.thread.i ], [ %i.ll, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #58
  br label %.thread113

bb.bp:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %.thread115
  %i.ub = load ptr, ptr %i.w, align 8, !tbaa !1013
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 52
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !135
  %i.ue = call fastcc ptr @pcache1Alloc(i32 noundef %i.ud) ; 6 uses
  %.not125 = icmp eq i8 %i.jd, 1
  %i.uf = load i8, ptr %i.am, align 1, !tbaa !2326
  %i.ug = and i8 %i.uf, 1                         ; 2 uses
  %i.uh = zext nneg i8 %i.ug to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.i, i8 0, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %2, i8 0, i64 100, i1 false)
  store i32 2147483647, ptr %i.ao, align 4, !tbaa !27
  %i.ui = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !775 ; 10 uses
  %.not.i85 = icmp eq ptr %i.ue, null
  br i1 %.not.i85, label %balance_nonroot.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.uk = getelementptr inbounds nuw i8, ptr %i.jm, i64 12 ; 4 uses
  %i.ul = load i8, ptr %i.uk, align 4, !tbaa !1612
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 2 uses
  %i.uo = load i16, ptr %i.un, align 8, !tbaa !1613
  %i.up = zext i16 %i.uo to i32                   ; 2 uses
  %i.uq = add nuw nsw i32 %i.up, %i.um            ; 3 uses
  %i.ur = icmp samesign ult i32 %i.uq, 2
  br i1 %i.ur, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.us = icmp eq i16 %i.jo, 0
  br i1 %i.us, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ut = icmp eq i32 %i.uq, %i.jp
  br i1 %i.ut, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.uu = add nsw i32 %i.jp, -2
  %i.uv = add nuw nsw i32 %i.uu, %i.uh
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.uw = add nsw i32 %i.jp, -1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.br
  %.0535.i = phi i32 [ %i.uw, %bb.bu ], [ %i.uv, %bb.bt ], [ 0, %bb.br ]
  %i.ux = sub nuw nsw i32 2, %i.uh
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %.1536.i = phi i32 [ %.0535.i, %bb.bv ], [ 0, %bb.bq ] ; 5 uses
  %.0499.i = phi i32 [ %i.ux, %bb.bv ], [ %i.uq, %bb.bq ] ; 6 uses
  %i.uy = add nuw nsw i32 %.0499.i, 1             ; 5 uses
  %i.uz = sub nsw i32 %.1536.i, %i.um
  %i.va = add nsw i32 %i.uz, %.0499.i             ; 2 uses
  %i.vb = icmp eq i32 %i.va, %i.up
  %i.vc = getelementptr inbounds nuw i8, ptr %i.jm, i64 80 ; 4 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !667 ; 2 uses
  br i1 %i.vb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ve = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !776
  %i.vg = zext i8 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  br label %.lr.ph.i86

bb.by:                                            ; preds = %bb.bw
  %i.vj = getelementptr inbounds nuw i8, ptr %i.jm, i64 26
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !859
  %i.vl = zext i16 %i.vk to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !860
  %i.vo = shl nsw i32 %i.va, 1
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds i8, ptr %i.vn, i64 %i.vp ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !231
  %i.vs = zext i8 %i.vr to i64
  %i.vt = shl nuw nsw i64 %i.vs, 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !231
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
  %i.wp = call fastcc i32 @getAndInitPage(ptr noundef %i.uj, i32 noundef %i.wn, ptr noundef nonnull %i.wo, i32 noundef 0), !inline_history !2832 ; 3 uses
  store i32 %i.wp, ptr %i.a, align 4, !tbaa !27
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
  %i.wt = load ptr, ptr %i.wo, align 8, !tbaa !1653 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 20
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !1603
  %i.ww = icmp slt i32 %i.wv, 0
  br i1 %i.ww, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.wx = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.wt), !inline_history !2832 ; 3 uses
  store i32 %i.wx, ptr %i.a, align 4, !tbaa !27
  %.not573.i = icmp eq i32 %i.wx, 0
  br i1 %.not573.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wy = shl nsw i64 %indvars.iv.i, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.wy, i1 false)
  br label %.thread705.i

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.xa = load i16, ptr %i.wz, align 8, !tbaa !1613
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add nuw nsw i32 %.0495754.i, 4
  %i.xd = add nuw nsw i32 %i.xc, %i.xb            ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 8 uses
  %i.xe = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.xe, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.xf = load i8, ptr %i.uk, align 4, !tbaa !1612 ; 2 uses
  %.not574.i = icmp eq i8 %i.xf, 0
  br i1 %.not574.i, label %._crit_edge1064.i.a, label %bb.cf

._crit_edge1064.i.a:                              ; preds = %bb.ce
  %i.xg = trunc i64 %indvars.iv.next.i to i32
  %.pre1073.i = add i32 %.1536.i, %i.xg
  br label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.xh = load i16, ptr %i.wf, align 4, !tbaa !338
  %i.xi = zext i16 %i.xh to i32
  %i.xj = trunc i64 %indvars.iv.next.i to i32
  %i.xk = add i32 %.1536.i, %i.xj                 ; 2 uses
  %i.xl = icmp eq i32 %i.xk, %i.xi
  br i1 %i.xl, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.xm = load ptr, ptr %i.wg, align 8, !tbaa !259 ; 3 uses
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !259
  %i.xo = load i32, ptr %i.xm, align 1
  %i.xp = call i32 @llvm.bswap.i32(i32 %i.xo)
  %i.xq = load ptr, ptr %i.wh, align 8, !tbaa !1607
  %i.xr = call zeroext i16 %i.xq(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.xm) #58, !inline_history !2832
  %i.xs = zext i16 %i.xr to i32
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !27
  store i8 0, ptr %i.uk, align 4, !tbaa !1612
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cf, %._crit_edge1064.i.a
  %.pre-phi1074.i = phi i32 [ %.pre1073.i, %._crit_edge1064.i.a ], [ %i.xk, %bb.cf ] ; 2 uses
  %i.xu = load ptr, ptr %i.vc, align 8, !tbaa !667
  %i.xv = load i16, ptr %i.wi, align 2, !tbaa !859
  %i.xw = zext i16 %i.xv to i64
  %i.xx = load ptr, ptr %i.wj, align 8, !tbaa !860
  %i.xy = zext i8 %i.xf to i32
  %i.xz = sub nsw i32 %.pre-phi1074.i, %i.xy
  %i.ya = shl nsw i32 %i.xz, 1
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds i8, ptr %i.xx, i64 %i.yb ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !231
  %i.ye = zext i8 %i.yd to i64
  %i.yf = shl nuw nsw i64 %i.ye, 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !231
  %i.yi = zext i8 %i.yh to i64
  %i.yj = or disjoint i64 %i.yf, %i.yi
  %i.yk = and i64 %i.yj, %i.xw
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.yk ; 8 uses
  %i.ym = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next.i ; 2 uses
  store ptr %i.yl, ptr %i.ym, align 8, !tbaa !259
  %i.yn = load i8, ptr %i.yl, align 1, !tbaa !231
  %i.yo = zext i8 %i.yn to i32
  %i.yp = shl nuw i32 %i.yo, 24
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !231
  %i.ys = zext i8 %i.yr to i32
  %i.yt = shl nuw nsw i32 %i.ys, 16
  %i.yu = or disjoint i32 %i.yt, %i.yp
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yl, i64 2
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !231
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = or disjoint i32 %i.yu, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yl, i64 3
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !231
  %i.zc = zext i8 %i.zb to i32
  %i.zd = or disjoint i32 %i.yz, %i.zc
  %i.ze = load ptr, ptr %i.wh, align 8, !tbaa !1607
  %i.zf = call zeroext i16 %i.ze(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.yl) #58, !inline_history !2832 ; 2 uses
  %i.zg = zext i16 %i.zf to i32                   ; 3 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !27
  %i.zi = load i16, ptr %i.wk, align 8, !tbaa !729
  %i.zj = and i16 %i.zi, 12
  %.not575.i = icmp eq i16 %i.zj, 0
  br i1 %.not575.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.zk = ptrtoint ptr %i.yl to i64               ; 2 uses
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = load ptr, ptr %i.vc, align 8, !tbaa !667
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = trunc i64 %i.zn to i32
  %i.zp = sub nsw i32 %i.zl, %i.zo                ; 2 uses
  %i.zq = add nsw i32 %i.zp, %i.zg
  %i.zr = load i32, ptr %i.wl, align 8, !tbaa !761
  %.not576.i = icmp sgt i32 %i.zq, %i.zr
  br i1 %.not576.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.zs = sext i32 %i.zp to i64
  %i.zt = getelementptr inbounds i8, ptr %i.ue, i64 %i.zs
  %i.zu = zext i16 %i.zf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zt, ptr nonnull align 1 %i.yl, i64 %i.zu, i1 false)
  %i.zv = load ptr, ptr %i.vc, align 8, !tbaa !667
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = sub i64 %i.zk, %i.zw
  %i.zy = getelementptr inbounds i8, ptr %i.ue, i64 %i.zx
  store ptr %i.zy, ptr %i.ym, align 8, !tbaa !259
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.zz = load i8, ptr %i.uk, align 4, !tbaa !1612
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = sub nsw i32 %.pre-phi1074.i, %i.aaa
  call fastcc void @dropCell(ptr noundef nonnull %i.jm, i32 noundef %i.aab, i32 noundef %i.zg, ptr noundef %i.a), !inline_history !2832
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !27
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
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !135
  %i.aal = zext i32 %i.aak to i64
  %i.aam = add nuw nsw i64 %i.aai, %i.aal
  %i.aan = call fastcc ptr @sqlite3Malloc(i64 noundef %i.aam), !inline_history !2833 ; 15 uses
  store ptr %i.aan, ptr %i.ap, align 8, !tbaa !2825
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %sqlite3DbFree.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aap = ptrtoaddr ptr %i.aan to i64
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.aah ; 14 uses
  store ptr %i.aaq, ptr %i.aq, align 8, !tbaa !2826
  %i.aar = getelementptr inbounds nuw [2 x i8], ptr %i.aaq, i64 %i.aah ; 2 uses
  %i.aas = load ptr, ptr %i.b, align 16, !tbaa !1653 ; 4 uses
  store ptr %i.aas, ptr %i.ar, align 8, !tbaa !2824
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.aau = load i8, ptr %i.aat, align 8, !tbaa !858 ; 3 uses
  %i.aav = zext i8 %i.aau to i16
  %i.aaw = shl nuw nsw i16 %i.aav, 2              ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aay = load i8, ptr %i.aax, align 2, !tbaa !1606 ; 3 uses
  %i.aaz = zext i8 %i.aay to i32                  ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aas, i64 80 ; 2 uses
  %i.abb = icmp ne i8 %i.aay, 0
  %i.abc = zext nneg i16 %i.aaw to i64
  %wide.trip.count940.i = zext nneg i32 %i.uy to i64 ; 2 uses
  %i.abd = add i64 %i.aap, -40
  br label %bb.co

bb.co:                                            ; preds = %bb.cy, %bb.cn
  %indvars.iv936.i = phi i64 [ 0, %bb.cn ], [ %indvars.iv.next937.i, %bb.cy ] ; 6 uses
  %.0530782.i = phi i32 [ 0, %bb.cn ], [ %.4534.ph.i, %bb.cy ] ; 3 uses
  %.promoted769776781.i = phi i32 [ 0, %bb.cn ], [ %.promoted769777.i, %bb.cy ] ; 2 uses
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv936.i
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !1653 ; 9 uses
  %i.abg = ptrtoaddr ptr %i.abf to i64
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 24 ; 2 uses
  %i.abi = load i16, ptr %i.abh, align 8, !tbaa !1613 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 80 ; 2 uses
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !667 ; 7 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abf, i64 26
  %i.abm = load i16, ptr %i.abl, align 2, !tbaa !859 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abf, i64 18 ; 2 uses
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !1610
  %i.abp = zext i16 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abp ; 4 uses
  %i.abr = load i8, ptr %i.abk, align 1, !tbaa !231
  %i.abs = load ptr, ptr %i.aba, align 8, !tbaa !667
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !231
  %.not620.i = icmp eq i8 %i.abr, %i.abt
  br i1 %.not620.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81666, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.cq:                                            ; preds = %bb.co
  %i.abu = zext i16 %i.abi to i64
  %i.abv = sext i32 %.promoted769776781.i to i64  ; 4 uses
  %i.abw = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abf, i64 12 ; 2 uses
  %i.aby = load i8, ptr %i.abx, align 4, !tbaa !1612
  %i.abz = zext i8 %i.aby to i64
  %i.aca = add nuw nsw i64 %i.abz, %i.abu
  %i.acb = shl nuw nsw i64 %i.aca, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.abw, i8 0, i64 %i.acb, i1 false)
  %i.acc = load i8, ptr %i.abx, align 4, !tbaa !1612 ; 3 uses
  %.not621.i = icmp eq i8 %i.acc, 0
  br i1 %.not621.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abf, i64 28
  %i.ace = load i16, ptr %i.acd, align 4, !tbaa !338 ; 5 uses
  %i.acf = zext i16 %i.ace to i32                 ; 2 uses
  %i.acg = icmp ult i16 %i.abi, %i.ace
  br i1 %i.acg, label %bb.cs, label %.preheader729.i

.preheader729.i:                                  ; preds = %bb.cr
  %.not874.i = icmp eq i16 %i.ace, 0
  br i1 %.not874.i, label %.preheader727.i, label %.lr.ph763.i

.lr.ph763.i:                                      ; preds = %.preheader729.i
  %i.ach = zext i16 %i.abm to i64                 ; 3 uses
  %xtraiter = and i32 %i.acf, 1
  %i.aci = icmp eq i16 %i.ace, 1
  br i1 %i.aci, label %.epil.preheader, label %.lr.ph763.i.new

.lr.ph763.i.new:                                  ; preds = %.lr.ph763.i
  %unroll_iter = and i32 %i.acf, 65534
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81690, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

.preheader727.i.loopexit.unr-lcssa:               ; preds = %bb.ct
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader727.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader727.i.loopexit.unr-lcssa, %.lr.ph763.i
  %indvars.iv915.i.epil.init = phi i64 [ %i.abv, %.lr.ph763.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ] ; 2 uses
  %.0515762.i.epil.init = phi ptr [ %i.abq, %.lr.ph763.i ], [ %i.aeg, %.preheader727.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod484 = trunc i16 %i.ace to i1
  call void @llvm.assume(i1 %lcmp.mod484)
  %i.acj = load i8, ptr %.0515762.i.epil.init, align 1, !tbaa !231
  %i.ack = zext i8 %i.acj to i64
  %i.acl = shl nuw nsw i64 %i.ack, 8
  %i.acm = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 1
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !231
  %i.aco = zext i8 %i.acn to i64
  %i.acp = or disjoint i64 %i.acl, %i.aco
  %i.acq = and i64 %i.acp, %i.ach
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.acq
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv915.i.epil.init
  store ptr %i.acr, ptr %i.acs, align 8, !tbaa !259
  %i.act = getelementptr inbounds nuw i8, ptr %.0515762.i.epil.init, i64 2
  %indvars.iv.next916.i.epil = add nsw i64 %indvars.iv915.i.epil.init, 1
  br label %.preheader727.i

.preheader727.i:                                  ; preds = %.epil.preheader, %.preheader727.i.loopexit.unr-lcssa, %.preheader729.i
  %.pre-phi.i = phi i64 [ %i.abv, %.preheader729.i ], [ %indvars.iv.next916.i.1, %.preheader727.i.loopexit.unr-lcssa ], [ %indvars.iv.next916.i.epil, %.epil.preheader ] ; 5 uses
  %.0515.lcssa.i = phi ptr [ %i.abq, %.preheader729.i ], [ %i.aeg, %.preheader727.i.loopexit.unr-lcssa ], [ %i.act, %.epil.preheader ]
  %i.acu = getelementptr inbounds nuw i8, ptr %i.abf, i64 40 ; 6 uses
  %wide.trip.count.i = zext i8 %i.acc to i64      ; 5 uses
  %min.iters.check = icmp ult i8 %i.acc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader727.i
  %i.acv = shl nsw i64 %.pre-phi.i, 3
  %i.acw = add i64 %i.abd, %i.acv
  %i.acx = sub i64 %i.abg, %i.acw
  %diff.check = icmp ugt i64 %i.acx, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 252        ; 4 uses
  %i.acy = add i64 %.pre-phi.i, %n.vec            ; 2 uses
  %i.acz = getelementptr [8 x i8], ptr %i.aan, i64 %.pre-phi.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %index ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ada, align 8, !tbaa !259
  %wide.load422 = load <2 x ptr>, ptr %i.adb, align 8, !tbaa !259
  %i.adc = getelementptr [8 x i8], ptr %i.acz, i64 %index ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store <2 x ptr> %wide.load, ptr %i.adc, align 8, !tbaa !259
  store <2 x ptr> %wide.load422, ptr %i.add, align 8, !tbaa !259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ade = icmp eq i64 %index.next, %n.vec
  br i1 %i.ade, label %middle.block, label %vector.body, !llvm.loop !2835

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit728.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader727.i, %middle.block
  %indvars.iv921.i.ph = phi i64 [ %.pre-phi.i, %vector.memcheck ], [ %.pre-phi.i, %.preheader727.i ], [ %i.acy, %middle.block ] ; 2 uses
  %indvars.iv919.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader727.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter485 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  br i1 %lcmp.mod486.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv921.i.prol = phi i64 [ %indvars.iv.next922.i.prol, %scalar.ph.prol ], [ %indvars.iv921.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv919.i.prol = phi i64 [ %indvars.iv.next920.i.prol, %scalar.ph.prol ], [ %indvars.iv919.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv919.i.prol
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !259
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv921.i.prol
  store ptr %i.adg, ptr %i.adh, align 8, !tbaa !259
  %indvars.iv.next922.i.prol = add nsw i64 %indvars.iv921.i.prol, 1 ; 3 uses
  %indvars.iv.next920.i.prol = add nuw nsw i64 %indvars.iv919.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter485
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2836

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next922.i.lcssa438.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv921.i.unr = phi i64 [ %indvars.iv921.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next922.i.prol, %scalar.ph.prol ]
  %indvars.iv919.i.unr = phi i64 [ %indvars.iv919.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next920.i.prol, %scalar.ph.prol ]
  %i.adi = sub nsw i64 %indvars.iv919.i.ph, %wide.trip.count.i
  %i.adj = icmp ugt i64 %i.adi, -4
  br i1 %i.adj, label %.loopexit728.i, label %scalar.ph

bb.ct:                                            ; preds = %bb.ct, %.lr.ph763.i.new
  %indvars.iv915.i = phi i64 [ %i.abv, %.lr.ph763.i.new ], [ %indvars.iv.next916.i.1, %bb.ct ] ; 3 uses
  %.0515762.i = phi ptr [ %i.abq, %.lr.ph763.i.new ], [ %i.aeg, %bb.ct ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph763.i.new ], [ %niter.next.1, %bb.ct ]
  %i.adk = load i8, ptr %.0515762.i, align 1, !tbaa !231
  %i.adl = zext i8 %i.adk to i64
  %i.adm = shl nuw nsw i64 %i.adl, 8
  %i.adn = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 1
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !231
  %i.adp = zext i8 %i.ado to i64
  %i.adq = or disjoint i64 %i.adm, %i.adp
  %i.adr = and i64 %i.adq, %i.ach
  %i.ads = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adr
  %i.adt = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %indvars.iv915.i
  store ptr %i.ads, ptr %i.adt, align 8, !tbaa !259
  %i.adu = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 2
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !231
  %i.adw = zext i8 %i.adv to i64
  %i.adx = shl nuw nsw i64 %i.adw, 8
  %i.ady = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 3
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !231
  %i.aea = zext i8 %i.adz to i64
  %i.aeb = or disjoint i64 %i.adx, %i.aea
  %i.aec = and i64 %i.aeb, %i.ach
  %i.aed = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aec
  %i.aee = getelementptr [8 x i8], ptr %i.aan, i64 %indvars.iv915.i
  %i.aef = getelementptr i8, ptr %i.aee, i64 8
  store ptr %i.aed, ptr %i.aef, align 8, !tbaa !259
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0515762.i, i64 4 ; 3 uses
  %indvars.iv.next916.i.1 = add nsw i64 %indvars.iv915.i, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader727.i.loopexit.unr-lcssa, label %bb.ct, !llvm.loop !2837

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv921.i = phi i64 [ %indvars.iv.next922.i.3, %scalar.ph ], [ %indvars.iv921.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv919.i = phi i64 [ %indvars.iv.next920.i.3, %scalar.ph ], [ %indvars.iv919.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv919.i
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !259
end_hunk_0
begin_hunk_1_@balance:bb.a
  %i.ajg = phi i32 [ %.pre1048.i, %.preheader724..preheader723_crit_edge.i ], [ %i.akg, %bb.du ] ; 2 uses
  %.lcssa791.i = phi i32 [ %.promoted790.i, %.preheader724..preheader723_crit_edge.i ], [ %i.akn, %bb.du ] ; 3 uses
  %.5542.lcssa.i = phi i32 [ %.4541802.i, %.preheader724..preheader723_crit_edge.i ], [ %.6543.i, %bb.du ]
  store i32 %.lcssa791.i, ptr %i.aix, align 4
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv952.i ; 3 uses
  %i.aji = icmp slt i32 %i.ajg, %i.ahh
  br i1 %i.aji, label %.lr.ph800.i, label %._crit_edge801.i

.lr.ph800.i:                                      ; preds = %.preheader723.i
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aix, i64 4 ; 4 uses
  %i.ajk = sext i32 %i.ajg to i64                 ; 2 uses
  br i1 %.not619.i, label %.lr.ph800.i.split.us, label %.lr.ph800.i.split

.lr.ph800.i.split.us:                             ; preds = %.lr.ph800.i, %bb.dk
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.dk ], [ %i.ajk, %.lr.ph800.i ] ; 4 uses
  %i.ajl = phi i32 [ %i.ajs, %bb.dk ], [ %.lcssa791.i, %.lr.ph800.i ]
  %i.ajm = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv231
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !338 ; 2 uses
  %.not.i638.i.us = icmp eq i16 %i.ajn, 0
  br i1 %.not.i638.i.us, label %bb.dg, label %cachedCellSize.exit640.i.us

bb.dg:                                            ; preds = %.lr.ph800.i.split.us
  %i.ajo = trunc nsw i64 %indvars.iv231 to i32
  %i.ajp = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.ajo), !inline_history !2832
  br label %cachedCellSize.exit640.i.us

cachedCellSize.exit640.i.us:                      ; preds = %bb.dg, %.lr.ph800.i.split.us
  %.0.i639.i.us = phi i16 [ %i.ajp, %bb.dg ], [ %i.ajn, %.lr.ph800.i.split.us ]
  %i.ajq = zext i16 %.0.i639.i.us to i32
  %i.ajr = add nuw nsw i32 %i.ajq, 2
  %i.ajs = add nsw i32 %i.ajr, %i.ajl             ; 3 uses
  %i.ajt = icmp sgt i32 %i.ajs, %i.ahf
  br i1 %i.ajt, label %.split.us, label %bb.dh

bb.dh:                                            ; preds = %cachedCellSize.exit640.i.us
  store i32 %i.ajs, ptr %i.aix, align 4, !tbaa !27
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1 ; 5 uses
  %i.aju = trunc nsw i64 %indvars.iv.next232 to i32 ; 2 uses
  store i32 %i.aju, ptr %i.ajh, align 4, !tbaa !27
  %i.ajv = icmp slt i64 %indvars.iv.next232, %i.ahi
  br i1 %i.ajv, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.ajw = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next232
  %i.ajx = load i16, ptr %i.ajw, align 2, !tbaa !338 ; 2 uses
  %.not.i641.i.us = icmp eq i16 %i.ajx, 0
  br i1 %.not.i641.i.us, label %bb.dj, label %cachedCellSize.exit643.i.us

bb.dj:                                            ; preds = %bb.di
  %i.ajy = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.aju), !inline_history !2832
  br label %cachedCellSize.exit643.i.us

cachedCellSize.exit643.i.us:                      ; preds = %bb.dj, %bb.di
  %.0.i642.i.us = phi i16 [ %i.ajy, %bb.dj ], [ %i.ajx, %bb.di ]
  %i.ajz = zext i16 %.0.i642.i.us to i32
  %i.aka = add nuw nsw i32 %i.ajz, 2
  br label %bb.dk

bb.dk:                                            ; preds = %cachedCellSize.exit643.i.us, %bb.dh
  %.1514.i.us = phi i32 [ 0, %bb.dh ], [ %i.aka, %cachedCellSize.exit643.i.us ]
  %i.akb = load i32, ptr %i.ajj, align 4, !tbaa !27
  %i.akc = sub nsw i32 %i.akb, %.1514.i.us
  store i32 %i.akc, ptr %i.ajj, align 4, !tbaa !27
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %i.ahi
  br i1 %exitcond235.not, label %._crit_edge801.i, label %.lr.ph800.i.split.us, !llvm.loop !2844

bb.dl:                                            ; preds = %bb.du, %.lr.ph795.i
  %.5542794.i = phi i32 [ %.4541802.i, %.lr.ph795.i ], [ %.6543.i, %bb.du ] ; 2 uses
  %i.akd = phi i32 [ %.promoted790.i, %.lr.ph795.i ], [ %i.akn, %bb.du ] ; 2 uses
  %i.ake = sext i32 %.5542794.i to i64
  %.not616.i = icmp slt i64 %i.aiz, %i.ake
  br i1 %.not616.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.aja, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 %i.akd, ptr %i.aix, align 4
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81791, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.do:                                            ; preds = %bb.dm
  store i32 0, ptr %i.ajb, align 4, !tbaa !27
  store i32 %i.ahh, ptr %i.ajc, align 4, !tbaa !27
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl
  %.6543.i = phi i32 [ %i.ajf, %bb.do ], [ %.5542794.i, %bb.dl ] ; 2 uses
  %i.akf = load i32, ptr %i.ajd, align 4, !tbaa !27 ; 4 uses
  %i.akg = add nsw i32 %i.akf, -1                 ; 4 uses
  %i.akh = sext i32 %i.akg to i64
  %i.aki = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.akh
  %i.akj = load i16, ptr %i.aki, align 2, !tbaa !338 ; 2 uses
  %.not.i.i102 = icmp eq i16 %i.akj, 0
  br i1 %.not.i.i102, label %bb.dq, label %cachedCellSize.exit.i

bb.dq:                                            ; preds = %bb.dp
  %i.akk = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.akg), !inline_history !2832
  br label %cachedCellSize.exit.i

cachedCellSize.exit.i:                            ; preds = %bb.dq, %bb.dp
  %.0.i.i103 = phi i16 [ %i.akk, %bb.dq ], [ %i.akj, %bb.dp ]
  %i.akl = zext i16 %.0.i.i103 to i32
  %i.akm = add nuw nsw i32 %i.akl, 2              ; 2 uses
  %i.akn = sub nsw i32 %i.akd, %i.akm             ; 3 uses
  br i1 %.not619.i, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %cachedCellSize.exit.i
  %i.ako = icmp slt i32 %i.akf, %i.ahh
  br i1 %i.ako, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.akp = sext i32 %i.akf to i64
  %i.akq = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !338 ; 2 uses
  %.not.i635.i = icmp eq i16 %i.akr, 0
  br i1 %.not.i635.i, label %bb.dt, label %cachedCellSize.exit637.i

bb.dt:                                            ; preds = %bb.ds
  %i.aks = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.akf), !inline_history !2832
  br label %cachedCellSize.exit637.i

cachedCellSize.exit637.i:                         ; preds = %bb.dt, %bb.ds
  %.0.i636.i = phi i16 [ %i.aks, %bb.dt ], [ %i.akr, %bb.ds ]
  %i.akt = zext i16 %.0.i636.i to i32
  %i.aku = add nuw nsw i32 %i.akt, 2
  br label %bb.du

bb.du:                                            ; preds = %cachedCellSize.exit637.i, %bb.dr, %cachedCellSize.exit.i
  %.0513.i = phi i32 [ %i.akm, %cachedCellSize.exit.i ], [ %i.aku, %cachedCellSize.exit637.i ], [ 0, %bb.dr ]
  %i.akv = load i32, ptr %i.ajb, align 4, !tbaa !27
  %i.akw = add nsw i32 %i.akv, %.0513.i
  store i32 %i.akw, ptr %i.ajb, align 4, !tbaa !27
  store i32 %i.akg, ptr %i.ajd, align 4, !tbaa !27
  %i.akx = icmp sgt i32 %i.akn, %i.ahf
  br i1 %i.akx, label %bb.dl, label %.preheader723.i, !llvm.loop !2845

.lr.ph800.i.split:                                ; preds = %.lr.ph800.i, %bb.dw
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dw ], [ %i.ajk, %.lr.ph800.i ] ; 4 uses
  %i.aky = phi i32 [ %i.alf, %bb.dw ], [ %.lcssa791.i, %.lr.ph800.i ]
  %i.akz = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !338 ; 2 uses
  %.not.i638.i = icmp eq i16 %i.ala, 0
  br i1 %.not.i638.i, label %bb.dv, label %cachedCellSize.exit640.i

bb.dv:                                            ; preds = %.lr.ph800.i.split
  %i.alb = trunc nsw i64 %indvars.iv to i32
  %i.alc = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.alb), !inline_history !2832
  br label %cachedCellSize.exit640.i

cachedCellSize.exit640.i:                         ; preds = %bb.dv, %.lr.ph800.i.split
  %.0.i639.i = phi i16 [ %i.alc, %bb.dv ], [ %i.ala, %.lr.ph800.i.split ]
  %i.ald = zext i16 %.0.i639.i to i32
  %i.ale = add nuw nsw i32 %i.ald, 2              ; 2 uses
  %i.alf = add nsw i32 %i.ale, %i.aky             ; 3 uses
  %i.alg = icmp sgt i32 %i.alf, %i.ahf
  br i1 %i.alg, label %.split.us, label %bb.dw

bb.dw:                                            ; preds = %cachedCellSize.exit640.i
  store i32 %i.alf, ptr %i.aix, align 4, !tbaa !27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.alh = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.alh, ptr %i.ajh, align 4, !tbaa !27
  %i.ali = load i32, ptr %i.ajj, align 4, !tbaa !27
  %i.alj = sub nsw i32 %i.ali, %i.ale
  store i32 %i.alj, ptr %i.ajj, align 4, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ahi
  br i1 %exitcond.not, label %._crit_edge801.i, label %.lr.ph800.i.split, !llvm.loop !2844

._crit_edge801.i:                                 ; preds = %bb.dw, %bb.dk, %.preheader723.i
  %i.alk = add nuw nsw i64 %indvars.iv952.i, 1    ; 2 uses
  %i.all = trunc nuw nsw i64 %i.alk to i32
  br label %bb.ea

.split.us:                                        ; preds = %cachedCellSize.exit640.i, %cachedCellSize.exit640.i.us
  %.us-phi.in = phi i64 [ %indvars.iv231, %cachedCellSize.exit640.i.us ], [ %indvars.iv, %cachedCellSize.exit640.i ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %.not614.i = icmp eq i64 %indvars.iv952.i, 0
  br i1 %.not614.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split.us
  %i.alm = getelementptr i8, ptr %i.ajh, i64 -4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !27
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.split.us
  %i.alo = phi i32 [ %i.aln, %bb.dx ], [ 0, %.split.us ]
  %.not615.i = icmp slt i32 %i.alo, %.us-phi
  br i1 %.not615.i, label %._crit_edge1065.i, label %bb.dz

._crit_edge1065.i:                                ; preds = %bb.dy
  %.pre1066.i = add nuw nsw i64 %indvars.iv952.i, 1
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81824, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.ea:                                            ; preds = %._crit_edge1065.i, %._crit_edge801.i
  %indvars.iv.next953.pre-phi.i = phi i64 [ %.pre1066.i, %._crit_edge1065.i ], [ %i.alk, %._crit_edge801.i ] ; 2 uses
  %.8545.ph.i = phi i32 [ %.5542.lcssa.i, %._crit_edge1065.i ], [ %i.all, %._crit_edge801.i ] ; 9 uses
  %i.alp = sext i32 %.8545.ph.i to i64
  %i.alq = icmp slt i64 %indvars.iv.next953.pre-phi.i, %i.alp
  br i1 %i.alq, label %.preheader724.i, label %bb.eb, !llvm.loop !2846

bb.eb:                                            ; preds = %bb.ea
  %i.alr = add i32 %.8545.ph.i, -1                ; 3 uses
  %.not609.i = icmp eq i8 %i.ug, 0                ; 2 uses
  %i.als = sub nsw i32 0, %i.aaz
  %i.alt = sext i32 %i.als to i64
  %i.alu = zext i32 %i.alr to i64                 ; 3 uses
  %i.alv = icmp sgt i32 %i.alr, 0
  br i1 %i.alv, label %.lr.ph, label %._crit_edge

bb.ec:                                            ; preds = %bb.ek
  %i.alw = trunc nuw i64 %i.ama to i32
  %i.alx = icmp sgt i32 %i.alw, 0
  br i1 %i.alx, label %.lr.ph, label %._crit_edge, !llvm.loop !2847

.lr.ph:                                           ; preds = %bb.eb, %bb.ec
  %indvars.iv972.i421 = phi i64 [ %i.ama, %bb.ec ], [ %i.alu, %bb.eb ] ; 5 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv972.i421 ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !27 ; 2 uses
  %i.ama = add nsw i64 %indvars.iv972.i421, -1    ; 4 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ama ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !27 ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ama ; 3 uses
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !27 ; 2 uses
  %i.amf = sub nsw i32 %i.ame, %i.aaz             ; 2 uses
  %i.amg = sext i32 %i.amf to i64
  %i.amh = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.amg
  %i.ami = load i16, ptr %i.amh, align 2, !tbaa !338
  %.not.i644.i = icmp eq i16 %i.ami, 0
  br i1 %.not.i644.i, label %bb.ed, label %cachedCellSize.exit646.i

bb.ed:                                            ; preds = %.lr.ph
  %i.amj = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.amf), !inline_history !2832 ; 0 uses
  br label %cachedCellSize.exit646.i

cachedCellSize.exit646.i:                         ; preds = %bb.ed, %.lr.ph
  %i.amk = icmp eq i64 %indvars.iv972.i421, %i.alu
  %.neg.i = select i1 %i.amk, i32 0, i32 -2
  %i.aml = sext i32 %i.ame to i64                 ; 3 uses
  %i.amm = add nsw i64 %i.aml, %i.alt             ; 2 uses
  br i1 %.not609.i, label %cachedCellSize.exit646.split.us.i, label %cachedCellSize.exit646.split.i

cachedCellSize.exit646.split.us.i:                ; preds = %cachedCellSize.exit646.i, %bb.eg
  %indvars.iv966.i = phi i64 [ %indvars.iv.next967.i, %bb.eg ], [ %i.amm, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv964.i = phi i64 [ %indvars.iv.next965.i, %bb.eg ], [ %i.aml, %cachedCellSize.exit646.i ] ; 3 uses
  %.0511.us.i = phi i32 [ %.pre-phi1070.i, %bb.eg ], [ %i.alz, %cachedCellSize.exit646.i ] ; 3 uses
  %.0509.us.i = phi i32 [ %i.amy, %bb.eg ], [ %i.amc, %cachedCellSize.exit646.i ] ; 3 uses
  %indvars.iv.next965.i = add nsw i64 %indvars.iv964.i, -1 ; 3 uses
  %indvars237 = trunc i64 %indvars.iv.next965.i to i32 ; 3 uses
  %i.amn = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next965.i
  %i.amo = load i16, ptr %i.amn, align 2, !tbaa !338 ; 2 uses
  %.not.i647.us.i = icmp eq i16 %i.amo, 0
  br i1 %.not.i647.us.i, label %bb.ee, label %cachedCellSize.exit649.us.i

bb.ee:                                            ; preds = %cachedCellSize.exit646.split.us.i
  %i.amp = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %indvars237), !inline_history !2832
  br label %cachedCellSize.exit649.us.i

cachedCellSize.exit649.us.i:                      ; preds = %bb.ee, %cachedCellSize.exit646.split.us.i
  %.0.i648.us.i = phi i16 [ %i.amp, %bb.ee ], [ %i.amo, %cachedCellSize.exit646.split.us.i ]
  %i.amq = zext i16 %.0.i648.us.i to i32          ; 2 uses
  %i.amr = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv966.i
  %i.ams = load i16, ptr %i.amr, align 2, !tbaa !338
  %i.amt = zext i16 %i.ams to i32                 ; 2 uses
  %.not608.us.i = icmp eq i32 %.0511.us.i, 0
  br i1 %.not608.us.i, label %cachedCellSize.exit649.us._crit_edge.i, label %bb.ef

cachedCellSize.exit649.us._crit_edge.i:           ; preds = %cachedCellSize.exit649.us.i
  %.pre1069.i = add nuw nsw i32 %i.amt, 2
  br label %bb.eg

bb.ef:                                            ; preds = %cachedCellSize.exit649.us.i
  %i.amu = add i32 %.0511.us.i, 2
  %i.amv = add i32 %i.amu, %i.amt                 ; 2 uses
  %.neg715.us.i = add i32 %.0509.us.i, %.neg.i
  %i.amw = sub i32 %.neg715.us.i, %i.amq
  %i.amx = icmp sgt i32 %i.amv, %i.amw
  br i1 %i.amx, label %.thread678.i.loopexit.split.loop.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %cachedCellSize.exit649.us._crit_edge.i
  %.pre-phi1070.i = phi i32 [ %.pre1069.i, %cachedCellSize.exit649.us._crit_edge.i ], [ %i.amv, %bb.ef ] ; 2 uses
  %.neg716.us.i = add i32 %.0509.us.i, -2
  %i.amy = sub i32 %.neg716.us.i, %i.amq          ; 2 uses
  store i32 %indvars237, ptr %i.amd, align 4, !tbaa !27
  %indvars.iv.next967.i = add nsw i64 %indvars.iv966.i, -1
  %i.amz = icmp sgt i64 %indvars.iv964.i, 1
  br i1 %i.amz, label %cachedCellSize.exit646.split.us.i, label %.thread678.i, !llvm.loop !2848

cachedCellSize.exit646.split.i:                   ; preds = %cachedCellSize.exit646.i, %bb.ei
  %indvars.iv958.i = phi i64 [ %indvars.iv.next959.i, %bb.ei ], [ %i.amm, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv956.i = phi i64 [ %indvars.iv.next957.i, %bb.ei ], [ %i.aml, %cachedCellSize.exit646.i ] ; 3 uses
  %.0511.i = phi i32 [ %i.anh, %bb.ei ], [ %i.alz, %cachedCellSize.exit646.i ] ; 2 uses
  %.0509.i = phi i32 [ %i.ani, %bb.ei ], [ %i.amc, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv.next957.i = add nsw i64 %indvars.iv956.i, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next957.i to i32 ; 3 uses
  %i.ana = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next957.i
  %i.anb = load i16, ptr %i.ana, align 2, !tbaa !338 ; 2 uses
  %.not.i647.i = icmp eq i16 %i.anb, 0
  br i1 %.not.i647.i, label %bb.eh, label %cachedCellSize.exit649.i

bb.eh:                                            ; preds = %cachedCellSize.exit646.split.i
  %i.anc = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %indvars), !inline_history !2832
  br label %cachedCellSize.exit649.i

cachedCellSize.exit649.i:                         ; preds = %bb.eh, %cachedCellSize.exit646.split.i
  %.0.i648.i = phi i16 [ %i.anc, %bb.eh ], [ %i.anb, %cachedCellSize.exit646.split.i ]
  %.not608.i = icmp eq i32 %.0511.i, 0
  br i1 %.not608.i, label %bb.ei, label %.thread678.i.loopexit307.split.loop.exit

bb.ei:                                            ; preds = %cachedCellSize.exit649.i
  %i.and = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv958.i
  %i.ane = load i16, ptr %i.and, align 2, !tbaa !338
  %i.anf = zext i16 %i.ane to i32
  %i.ang = zext i16 %.0.i648.i to i32
  %i.anh = add nuw nsw i32 %i.anf, 2              ; 2 uses
  %.neg716.i = add i32 %.0509.i, -2
  %i.ani = sub i32 %.neg716.i, %i.ang             ; 2 uses
  store i32 %indvars, ptr %i.amd, align 4, !tbaa !27
  %indvars.iv.next959.i = add nsw i64 %indvars.iv958.i, -1
  %i.anj = icmp sgt i64 %indvars.iv956.i, 1
  br i1 %i.anj, label %cachedCellSize.exit646.split.i, label %.thread678.i, !llvm.loop !2848

.thread678.i.loopexit.split.loop.exit:            ; preds = %bb.ef
  %indvars238.le = trunc i64 %indvars.iv964.i to i32
  br label %.thread678.i

.thread678.i.loopexit307.split.loop.exit:         ; preds = %cachedCellSize.exit649.i
  %indvars236.le = trunc i64 %indvars.iv956.i to i32
  br label %.thread678.i

.thread678.i:                                     ; preds = %bb.ei, %bb.eg, %.thread678.i.loopexit307.split.loop.exit, %.thread678.i.loopexit.split.loop.exit
  %i.ank = phi i32 [ %indvars237, %bb.eg ], [ %indvars238.le, %.thread678.i.loopexit.split.loop.exit ], [ %indvars236.le, %.thread678.i.loopexit307.split.loop.exit ], [ %indvars, %bb.ei ]
  %.us-phi.i = phi i32 [ %i.amy, %bb.eg ], [ %.0509.us.i, %.thread678.i.loopexit.split.loop.exit ], [ %.0509.i, %.thread678.i.loopexit307.split.loop.exit ], [ %i.ani, %bb.ei ]
  %.us-phi805.i = phi i32 [ %.pre-phi1070.i, %bb.eg ], [ %.0511.us.i, %.thread678.i.loopexit.split.loop.exit ], [ %.0511.i, %.thread678.i.loopexit307.split.loop.exit ], [ %i.anh, %bb.ei ]
  store i32 %.us-phi805.i, ptr %i.aly, align 4, !tbaa !27
  store i32 %.us-phi.i, ptr %i.amb, align 4, !tbaa !27
  %.not610.i = icmp eq i64 %indvars.iv972.i421, 1
  br i1 %.not610.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.thread678.i
  %i.anl = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv972.i421
  %i.anm = getelementptr i8, ptr %i.anl, i64 -8
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !27
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread678.i
  %i.ano = phi i32 [ %i.ann, %bb.ej ], [ 0, %.thread678.i ]
  %.not611.i = icmp sgt i32 %i.ank, %i.ano
  br i1 %.not611.i, label %bb.ec, label %bb.el, !llvm.loop !2847

bb.el:                                            ; preds = %bb.ek
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81868, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

._crit_edge:                                      ; preds = %bb.ec, %bb.eb
  %i.anp = load ptr, ptr %i.aba, align 8, !tbaa !667
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !231 ; 2 uses
  %i.anr = zext i8 %i.anq to i32                  ; 3 uses
  %i.ans = icmp sgt i32 %.8545.ph.i, 0            ; 2 uses
  br i1 %i.ans, label %.lr.ph811.i, label %.._crit_edge823.i_crit_edge

.._crit_edge823.i_crit_edge:                      ; preds = %._crit_edge
  %.pre240 = and i32 %i.anr, 8
  br label %._crit_edge823.i

.lr.ph811.i:                                      ; preds = %._crit_edge
  %i.ant = sub nsw i32 %i.jp, %.1536.i
  %i.anu = and i32 %i.anr, 8                      ; 3 uses
  %i.anv = icmp eq i32 %i.anu, 0
  %i.anw = select i1 %i.anv, i32 12, i32 8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.uj, i64 33
  %i.any = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.anz = zext i32 %i.ant to i64
  %wide.trip.count982.i = zext nneg i32 %.8545.ph.i to i64 ; 6 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.fa, %.lr.ph811.i
  %indvars.iv976.i = phi i64 [ 0, %.lr.ph811.i ], [ %indvars.iv.next977.i, %bb.fa ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  %.not602.i = icmp samesign ugt i64 %indvars.iv976.i, %i.wm
  br i1 %.not602.i, label %bb.ew, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv976.i ; 2 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !1653 ; 3 uses
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv976.i
  store ptr %i.aob, ptr %i.aoc, align 8, !tbaa !1653
  store ptr %i.aob, ptr %i.k, align 8, !tbaa !1653
  store ptr null, ptr %i.aoa, align 8, !tbaa !1653
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aob, i64 112 ; 2 uses
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !698 ; 6 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 40
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !531 ; 5 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 52
  %i.aoi = load i16, ptr %i.aoh, align 4, !tbaa !530
  %i.aoj = and i16 %i.aoi, 4
  %.not.i650.i = icmp eq i16 %i.aoj, 0
end_hunk_1
begin_hunk_2_@balance:bb.a
  %i.bav = load ptr, ptr %i.wh, align 8, !tbaa !1607
  %i.baw = call zeroext i16 %i.bav(ptr noundef %i.jm, ptr noundef nonnull %i.bat) #58, !inline_history !2832
  %i.bax = zext i16 %i.baw to i32
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %sqlite3PutVarint.exit.i, %bb.fx
  %.3550.i = phi i32 [ %i.baa, %sqlite3PutVarint.exit.i ], [ %i.azk, %bb.gf ], [ %i.azk, %bb.ge ], [ %i.azk, %bb.fx ]
  %.0483.i = phi ptr [ %i.azt, %sqlite3PutVarint.exit.i ], [ %i.bat, %bb.gf ], [ %i.bat, %bb.ge ], [ %i.azn, %bb.fx ] ; 3 uses
  %.0482.i = phi ptr [ null, %sqlite3PutVarint.exit.i ], [ %i.azt, %bb.gf ], [ %i.azt, %bb.ge ], [ %i.azt, %bb.fx ]
  %.0481.i = phi i32 [ %.0.i657.i, %sqlite3PutVarint.exit.i ], [ %i.bax, %bb.gf ], [ %i.azr, %bb.ge ], [ %i.azr, %bb.fx ] ; 3 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %bb.gg
  %indvars.iv1012.i = phi i64 [ %indvars.iv.next1013.i, %bb.gh ], [ 0, %bb.gg ] ; 3 uses
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv1012.i
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !27
  %.not598.i = icmp sgt i32 %i.baz, %.3550.i
  %indvars.iv.next1013.i = add nuw nsw i64 %indvars.iv1012.i, 1
  br i1 %.not598.i, label %bb.gi, label %bb.gh, !llvm.loop !2861

bb.gi:                                            ; preds = %bb.gh
  %i.bba = add nsw i32 %.0481.i, %.0529846.i
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv1012.i
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !259 ; 2 uses
  %i.bbd = icmp ult ptr %.0483.i, %i.bbc
  %i.bbe = sext i32 %.0481.i to i64
  %i.bbf = getelementptr inbounds i8, ptr %.0483.i, i64 %i.bbe
  %i.bbg = icmp ugt ptr %i.bbf, %i.bbc
  %or.cond632.i = select i1 %i.bbd, i1 %i.bbg, i1 false
  br i1 %or.cond632.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !2834
  br label %.thread705.i

bb.gk:                                            ; preds = %bb.gi
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !774
  %i.bbj = trunc i64 %indvars.iv1016.i to i32
  %i.bbk = add i32 %.1536.i, %i.bbj
  %i.bbl = call fastcc i32 @insertCell(ptr noundef %i.jm, i32 noundef %i.bbk, ptr noundef nonnull %.0483.i, i32 noundef %.0481.i, ptr noundef %.0482.i, i32 noundef %i.bbi), !inline_history !2832 ; 2 uses
  %.not599.i = icmp eq i32 %i.bbl, 0
  br i1 %.not599.i, label %bb.fv, label %.thread705.i

._crit_edge849.i:                                 ; preds = %bb.fv, %.thread702.i
  %i.bbm = sub nsw i32 1, %.0496.lcssa11251127.i  ; 2 uses
  %i.bbn = icmp slt i32 %i.bbm, %.0496.lcssa11251127.i
  br i1 %i.bbn, label %.lr.ph858.i, label %._crit_edge859.i

.lr.ph858.i:                                      ; preds = %._crit_edge849.i
  %i.bbo = zext i1 %.not619.i to i32              ; 2 uses
  %i.bbp = load i32, ptr %i.e, align 16
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gs, %.lr.ph858.i
  %.11854.i = phi i32 [ %i.bbm, %.lr.ph858.i ], [ %i.bcu, %bb.gs ] ; 4 uses
  %i.bbq = call i32 @llvm.abs.i32(i32 %.11854.i, i1 true) ; 3 uses
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 5 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bbr ; 2 uses
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !231
  %.not590.i = icmp eq i8 %i.bbt, 0
  br i1 %.not590.i, label %bb.gm, label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.bbu = icmp sgt i32 %.11854.i, -1
  br i1 %i.bbu, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bbv = add nsw i32 %i.bbq, -1
  %i.bbw = sext i32 %i.bbv to i64                 ; 2 uses
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !27
  %i.bbz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bbw
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !27
  %.not591.i = icmp slt i32 %i.bby, %i.bca
  br i1 %.not591.i, label %bb.gs, label %.thread707.i

bb.go:                                            ; preds = %bb.gm
  %i.bcb = icmp eq i32 %.11854.i, 0
  br i1 %i.bcb, label %bb.gr, label %.thread707.i

.thread707.i:                                     ; preds = %bb.go, %bb.gn
  %.not592.i = icmp samesign ugt i32 %i.bbq, %.0499.i
  br i1 %.not592.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %.thread707.i
  %i.bcc = getelementptr [4 x i8], ptr %i.f, i64 %i.bbr
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 -4
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !27
  %i.bcf = add nsw i32 %i.bce, %i.bbo
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.thread707.i
  %i.bcg = phi i32 [ %i.bcf, %bb.gp ], [ %i.aze, %.thread707.i ]
  %i.bch = getelementptr [4 x i8], ptr %i.e, i64 %i.bbr ; 2 uses
  %i.bci = getelementptr i8, ptr %i.bch, i64 -4
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !27
  %i.bck = add nsw i32 %i.bcj, %i.bbo             ; 2 uses
  %i.bcl = load i32, ptr %i.bch, align 4, !tbaa !27
  %i.bcm = sub nsw i32 %i.bcl, %i.bck
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.go
  %.0480.i = phi i32 [ %i.bck, %bb.gq ], [ 0, %bb.go ]
  %.0479.i = phi i32 [ %i.bcg, %bb.gq ], [ 0, %bb.go ]
  %.0478.i = phi i32 [ %i.bcm, %bb.gq ], [ %i.bbp, %bb.go ]
  %i.bcn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bbr
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !1653 ; 2 uses
  %i.bcp = call fastcc i32 @editPage(ptr noundef %i.bco, i32 noundef %.0479.i, i32 noundef %.0480.i, i32 noundef %.0478.i, ptr noundef %2), !inline_history !2832 ; 2 uses
  %.not595.i = icmp eq i32 %i.bcp, 0
  br i1 %.not595.i, label %.thread708.i, label %.thread705.i

.thread708.i:                                     ; preds = %bb.gr
  store i8 1, ptr %i.bbs, align 1, !tbaa !231
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bbr
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !27
  %i.bcs = sub nsw i32 %i.ahf, %i.bcr
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bco, i64 20
  store i32 %i.bcs, ptr %i.bct, align 4, !tbaa !1603
  br label %bb.gs

bb.gs:                                            ; preds = %.thread708.i, %bb.gn, %bb.gl
  %i.bcu = add i32 %.11854.i, 1                   ; 2 uses
  %exitcond1022.not.i = icmp eq i32 %i.bcu, %.0496.lcssa11251127.i
  br i1 %exitcond1022.not.i, label %._crit_edge859.i, label %bb.gl, !llvm.loop !2862

._crit_edge859.i:                                 ; preds = %bb.gs, %._crit_edge849.i
  store i32 0, ptr %i.a, align 4
  br i1 %.not125, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %._crit_edge859.i
  %i.bcv = load i16, ptr %i.un, align 8, !tbaa !1613
  %i.bcw = icmp eq i16 %i.bcv, 0
  br i1 %i.bcw, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !776
  %i.bcz = zext i8 %i.bcy to i32
  %i.bda = load ptr, ptr %i.c, align 16, !tbaa !1653 ; 6 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 20
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !1603
  %.not588.i = icmp slt i32 %i.bdc, %i.bcz
  br i1 %.not588.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bdd = call fastcc i32 @defragmentPage(ptr noundef nonnull %i.bda, i32 noundef -1), !inline_history !2832
  store i32 %i.bdd, ptr %i.a, align 4, !tbaa !27
  call fastcc void @copyNodeContent(ptr noundef nonnull %i.bda, ptr noundef nonnull %i.jm, ptr noundef %i.a), !inline_history !2832
  %i.bde = load i32, ptr %i.a, align 4, !tbaa !27 ; 2 uses
  %i.bdf = icmp eq i32 %i.bde, 0
  br i1 %i.bdf, label %bb.gw, label %freePage.exit.i

bb.gw:                                            ; preds = %bb.gv
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bda, i64 72
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !775
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bda, i64 4
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !774
  %i.bdk = call fastcc i32 @freePage2(ptr noundef %i.bdh, ptr noundef nonnull %i.bda, i32 noundef %i.bdj), !inline_history !2863
  br label %freePage.exit.i

bb.gx:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge859.i
  %i.bdl = load i8, ptr %i.avr, align 1, !tbaa !754
  %i.bdm = icmp ne i8 %i.bdl, 0
  %i.bdn = icmp eq i8 %i.aau, 0
  %or.cond5.not878.i = select i1 %i.bdm, i1 %i.bdn, i1 false
  %or.cond873.i = and i1 %i.ans, %or.cond5.not878.i
  br i1 %or.cond873.i, label %.lr.ph862.preheader.i, label %freePage.exit.i

.lr.ph862.preheader.i:                            ; preds = %bb.gx
  %wide.trip.count1027.i = zext nneg i32 %.0496.lcssa11251127.i to i64
  br label %.lr.ph862.i

.lr.ph862.i:                                      ; preds = %.lr.ph862.i, %.lr.ph862.preheader.i
  %indvars.iv1023.i = phi i64 [ 0, %.lr.ph862.preheader.i ], [ %indvars.iv.next1024.i, %.lr.ph862.i ] ; 2 uses
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1023.i
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !1653 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 80
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !667
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdt = load i32, ptr %i.bds, align 1
  %i.bdu = call i32 @llvm.bswap.i32(i32 %i.bdt)
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdp, i64 4
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !774
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.uj, i32 noundef %i.bdu, i8 noundef zeroext 5, i32 noundef %i.bdw, ptr noundef %i.a), !inline_history !2832
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %exitcond1028.not.i = icmp eq i64 %indvars.iv.next1024.i, %wide.trip.count1027.i
  br i1 %exitcond1028.not.i, label %freePage.exit.loopexit.i, label %.lr.ph862.i, !llvm.loop !2864

freePage.exit.loopexit.i:                         ; preds = %.lr.ph862.i
  %.promoted863.pre.i = load i32, ptr %i.a, align 4
  br label %freePage.exit.i

freePage.exit.i:                                  ; preds = %freePage.exit.loopexit.i, %bb.gx, %bb.gw, %bb.gv
  %.promoted863.i = phi i32 [ %.promoted863.pre.i, %freePage.exit.loopexit.i ], [ %i.bdk, %bb.gw ], [ %i.bde, %bb.gv ], [ 0, %bb.gx ] ; 2 uses
  %.not589865.i = icmp sgt i32 %.0496.lcssa11251127.i, %.0499.i
  br i1 %.not589865.i, label %.thread705.i, label %.lr.ph867.preheader.i

.lr.ph867.preheader.i:                            ; preds = %freePage.exit.i
  %i.bdx = zext nneg i32 %.0496.lcssa11251127.i to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %.8545.ph.i, i32 %.0499.i)
  %6 = add nuw i32 %smax.i, 1
  %wide.trip.count1034.i = zext i32 %6 to i64
  br label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %freePage.exit658.i, %.lr.ph867.preheader.i
  %indvars.iv1029.i = phi i64 [ %i.bdx, %.lr.ph867.preheader.i ], [ %indvars.iv.next1030.i, %freePage.exit658.i ] ; 2 uses
  %i.bdy = phi i32 [ %.promoted863.i, %.lr.ph867.preheader.i ], [ %i.beh, %freePage.exit658.i ] ; 2 uses
  %i.bdz = icmp eq i32 %i.bdy, 0
  br i1 %i.bdz, label %bb.gy, label %freePage.exit658.i

bb.gy:                                            ; preds = %.lr.ph867.i
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1029.i
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !1653 ; 3 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 72
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !775
  %i.bee = getelementptr inbounds nuw i8, ptr %i.beb, i64 4
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !774
  %i.beg = call fastcc i32 @freePage2(ptr noundef %i.bed, ptr noundef %i.beb, i32 noundef %i.bef), !inline_history !2863
  br label %freePage.exit658.i

freePage.exit658.i:                               ; preds = %bb.gy, %.lr.ph867.i
  %i.beh = phi i32 [ %i.bdy, %.lr.ph867.i ], [ %i.beg, %bb.gy ] ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1030.i, %wide.trip.count1034.i
  br i1 %exitcond1035.not.i, label %.thread705.i, label %.lr.ph867.i, !llvm.loop !2865

.thread705.i:                                     ; preds = %bb.ft, %bb.gk, %bb.gr, %freePage.exit658.i, %freePage.exit.i, %bb.gj, %.thread692.i, %bb.el, %bb.dz, %bb.dn, %bb.cs, %bb.cp, %bb.cc, %.thread.i87
  %.ph = phi i32 [ %i.beh, %freePage.exit658.i ], [ %.promoted863.i, %freePage.exit.i ], [ 11, %bb.gj ], [ 11, %bb.dz ], [ 11, %bb.cs ], [ %i.bbl, %bb.gk ], [ %i.wq, %.thread.i87 ], [ %i.arw, %.thread692.i ], [ 11, %bb.el ], [ 11, %bb.cp ], [ 11, %bb.dn ], [ %i.bcp, %bb.gr ], [ %i.wx, %bb.cc ], [ %i.aza, %bb.ft ] ; 4 uses
  %.3.i.ph = phi i32 [ %.0496.lcssa11251127.i, %freePage.exit658.i ], [ %.0496.lcssa11251127.i, %freePage.exit.i ], [ %.0496.lcssa11251127.i, %bb.gj ], [ 0, %bb.dz ], [ 0, %bb.cs ], [ %.0496.lcssa11251127.i, %bb.gk ], [ 0, %.thread.i87 ], [ %.2498.ph.i, %.thread692.i ], [ 0, %bb.el ], [ 0, %bb.cp ], [ 0, %bb.dn ], [ %.0496.lcssa11251127.i, %bb.gr ], [ 0, %bb.cc ], [ %.0496.lcssa11251127.i, %bb.ft ] ; 4 uses
  %.pr = load ptr, ptr %i.ap, align 8, !tbaa !2825 ; 4 uses
  %.not.i659.i = icmp eq ptr %.pr, null
  br i1 %.not.i659.i, label %sqlite3DbFree.exit.i, label %bb.gz

bb.gz:                                            ; preds = %.thread705.i
  %i.bei = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i = icmp eq i32 %i.bei, 0
  br i1 %.not.i.i.i, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bej = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i665.i = icmp eq ptr %i.bej, null
  br i1 %.not.i.i.i665.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.bek(ptr noundef nonnull %i.bej) #58, !inline_history !2866
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.hb, %bb.ha
  %i.bel = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.bem = call i32 %i.bel(ptr noundef nonnull %.pr) #58, !inline_history !2867
  %i.ben = sext i32 %i.bem to i64
  %i.beo = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.bep = sub nsw i64 %i.beo, %i.ben
  store i64 %i.bep, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.beq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ber = add nsw i64 %i.beq, -1
  store i64 %i.ber, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.bes = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.bes(ptr noundef nonnull %.pr) #58, !inline_history !2868
  %i.bet = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.bet, null
  br i1 %.not.i4.i.i.i, label %sqlite3DbFree.exit.i, label %bb.hc

bb.hc:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.beu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.beu(ptr noundef nonnull %i.bet) #58, !inline_history !2869
  br label %sqlite3DbFree.exit.i

bb.hd:                                            ; preds = %bb.gz
  %i.bev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.bev(ptr noundef nonnull %.pr) #58, !inline_history !2868
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.cm, %bb.hd, %bb.hc, %sqlite3_mutex_enter.exit.i.i.i, %.thread705.i
  %.3.i305 = phi i32 [ %.3.i.ph, %.thread705.i ], [ %.3.i.ph, %bb.hd ], [ %.3.i.ph, %bb.hc ], [ %.3.i.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 0, %bb.cm ] ; 2 uses
  %i.bew = phi i32 [ %.ph, %.thread705.i ], [ %.ph, %bb.hd ], [ %.ph, %bb.hc ], [ %.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 7, %bb.cm ] ; 2 uses
  %wide.trip.count1040.i = zext nneg i32 %i.uy to i64
  br label %bb.he

.preheader.i:                                     ; preds = %releasePage.exit.i90
  %i.bex = icmp sgt i32 %.3.i305, 0
  br i1 %i.bex, label %.lr.ph871.preheader.i, label %balance_nonroot.exit

.lr.ph871.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count1046.i = zext nneg i32 %.3.i305 to i64
  br label %.lr.ph871.i

bb.he:                                            ; preds = %releasePage.exit.i90, %sqlite3DbFree.exit.i
  %indvars.iv1036.i = phi i64 [ 0, %sqlite3DbFree.exit.i ], [ %indvars.iv.next1037.i, %releasePage.exit.i90 ] ; 2 uses
  %i.bey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1036.i
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !1653 ; 2 uses
  %.not.i660.i = icmp eq ptr %i.bez, null
  br i1 %.not.i660.i, label %releasePage.exit.i90, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bfa = getelementptr i8, ptr %i.bez, i64 112
  %.val.i.i88 = load ptr, ptr %i.bfa, align 8, !tbaa !698 ; 7 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 52
  %i.bfc = load i16, ptr %i.bfb, align 4, !tbaa !530
  %i.bfd = and i16 %i.bfc, 32
  %.not.i.i.i.i89 = icmp eq i16 %i.bfd, 0
  br i1 %.not.i.i.i.i89, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bfe = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 40
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !531 ; 4 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 152 ; 2 uses
  %i.bfh = load i32, ptr %i.bfg, align 8, !tbaa !532
  %i.bfi = add nsw i32 %i.bfh, -1
  store i32 %i.bfi, ptr %i.bfg, align 8, !tbaa !532
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bff, i64 168 ; 2 uses
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !533
  %i.bfl = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 32
  store ptr %i.bfk, ptr %i.bfl, align 8, !tbaa !534
  store ptr %.val.i.i88, ptr %i.bfj, align 8, !tbaa !533
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bff, i64 72
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !535 ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 48
  %i.bfp = load i32, ptr %i.bfo, align 8, !tbaa !536
  %i.bfq = add i32 %i.bfp, -1
  %i.bfr = zext i32 %i.bfq to i64
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bff, i64 200
  %i.bft = load i64, ptr %i.bfs, align 8, !tbaa !83
  %i.bfu = mul nsw i64 %i.bft, %i.bfr
  %i.bfv = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 8
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !527
  %i.bfx = load ptr, ptr %i.bfn, align 8, !tbaa !483
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 144
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !537
  %i.bga = call i32 %i.bfz(ptr noundef nonnull %i.bfn, i64 noundef %i.bfu, ptr noundef %i.bfw) #58, !inline_history !2870 ; 0 uses
  br label %releasePage.exit.i90

bb.hh:                                            ; preds = %bb.hf
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i.i88), !inline_history !2832
  br label %releasePage.exit.i90

releasePage.exit.i90:                             ; preds = %bb.hh, %bb.hg, %bb.he
  %indvars.iv.next1037.i = add nuw nsw i64 %indvars.iv1036.i, 1 ; 2 uses
  %exitcond1041.not.i = icmp eq i64 %indvars.iv.next1037.i, %wide.trip.count1040.i
  br i1 %exitcond1041.not.i, label %.preheader.i, label %bb.he, !llvm.loop !2871

.lr.ph871.i:                                      ; preds = %releasePage.exit664.i, %.lr.ph871.preheader.i
  %indvars.iv1042.i = phi i64 [ 0, %.lr.ph871.preheader.i ], [ %indvars.iv.next1043.i, %releasePage.exit664.i ] ; 2 uses
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1042.i
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !1653 ; 2 uses
  %.not.i661.i = icmp eq ptr %i.bgc, null
  br i1 %.not.i661.i, label %releasePage.exit664.i, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph871.i
  %i.bgd = getelementptr i8, ptr %i.bgc, i64 112
  %.val.i662.i = load ptr, ptr %i.bgd, align 8, !tbaa !698 ; 7 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 52
  %i.bgf = load i16, ptr %i.bge, align 4, !tbaa !530
  %i.bgg = and i16 %i.bgf, 32
  %.not.i.i.i663.i = icmp eq i16 %i.bgg, 0
  br i1 %.not.i.i.i663.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bgh = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 40
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !531 ; 4 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 152 ; 2 uses
  %i.bgk = load i32, ptr %i.bgj, align 8, !tbaa !532
  %i.bgl = add nsw i32 %i.bgk, -1
  store i32 %i.bgl, ptr %i.bgj, align 8, !tbaa !532
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgi, i64 168 ; 2 uses
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !533
  %i.bgo = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 32
  store ptr %i.bgn, ptr %i.bgo, align 8, !tbaa !534
  store ptr %.val.i662.i, ptr %i.bgm, align 8, !tbaa !533
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgi, i64 72
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !535 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 48
  %i.bgs = load i32, ptr %i.bgr, align 8, !tbaa !536
  %i.bgt = add i32 %i.bgs, -1
  %i.bgu = zext i32 %i.bgt to i64
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgi, i64 200
  %i.bgw = load i64, ptr %i.bgv, align 8, !tbaa !83
  %i.bgx = mul nsw i64 %i.bgw, %i.bgu
  %i.bgy = getelementptr inbounds nuw i8, ptr %.val.i662.i, i64 8
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !527
  %i.bha = load ptr, ptr %i.bgq, align 8, !tbaa !483
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 144
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !537
  %i.bhd = call i32 %i.bhc(ptr noundef nonnull %i.bgq, i64 noundef %i.bgx, ptr noundef %i.bgz) #58, !inline_history !2870 ; 0 uses
  br label %releasePage.exit664.i

bb.hk:                                            ; preds = %bb.hi
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i662.i), !inline_history !2832
  br label %releasePage.exit664.i

releasePage.exit664.i:                            ; preds = %bb.hk, %bb.hj, %.lr.ph871.i
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 1 ; 2 uses
  %exitcond1047.not.i = icmp eq i64 %indvars.iv.next1043.i, %wide.trip.count1046.i
  br i1 %exitcond1047.not.i, label %balance_nonroot.exit, label %.lr.ph871.i, !llvm.loop !2872

balance_nonroot.exit:                             ; preds = %releasePage.exit664.i, %bb.bp, %.preheader.i
  %.0.i91 = phi i32 [ 7, %bb.bp ], [ %i.bew, %.preheader.i ], [ %i.bew, %releasePage.exit664.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not71 = icmp eq ptr %.057, null
  br i1 %.not71, label %.thread113, label %bb.hl

bb.hl:                                            ; preds = %balance_nonroot.exit
  call fastcc void @pcache1Free(ptr noundef nonnull %.057)
  br label %.thread113

.thread113:                                       ; preds = %bb.aj, %sqlite3PagerWrite.exit, %bb.an, %balance_quick.exit, %bb.hl, %balance_nonroot.exit
  %.361 = phi i32 [ %.1.i, %balance_quick.exit ], [ %i.ks, %bb.an ], [ %.0.i91, %bb.hl ], [ %.0.i91, %balance_nonroot.exit ], [ %.0.i77, %sqlite3PagerWrite.exit ], [ %i.kf, %bb.aj ]
  %.1 = phi ptr [ %.057, %balance_quick.exit ], [ %.057, %bb.an ], [ %i.ue, %bb.hl ], [ %i.ue, %balance_nonroot.exit ], [ %.057, %sqlite3PagerWrite.exit ], [ %.057, %bb.aj ]
  store i8 0, ptr %i.bb, align 4, !tbaa !1612
  %.val.i105 = load ptr, ptr %i.je, align 8, !tbaa !698 ; 7 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %.val.i105, i64 52
  %i.bhf = load i16, ptr %i.bhe, align 4, !tbaa !530
  %i.bhg = and i16 %i.bhf, 32
end_hunk_2
