Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_write?download=true
inline.NumInlined: 97
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@stbiw__jpg_processDU:bb.a
  br i1 %i.pb, label %bb.bd, label %.preheader.lr.ph

bb.bd:                                            ; preds = %bb.bc
  %i.pc = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !12
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.be, label %.preheader.lr.ph

bb.be:                                            ; preds = %bb.bd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.pg = load i32, ptr %i.pf, align 16, !tbaa !12
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.bf, label %.preheader.lr.ph

bb.bf:                                            ; preds = %bb.be
  %i.pi = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !12
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.bg, label %.preheader.lr.ph

bb.bg:                                            ; preds = %bb.bf
  %i.pl = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !12
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %bb.bh, label %.preheader.lr.ph

bb.bh:                                            ; preds = %bb.bg
  %i.po = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !12
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %bb.bi, label %.preheader.lr.ph

bb.bi:                                            ; preds = %bb.bh
  %i.pr = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ps = load i32, ptr %i.pr, align 16, !tbaa !12
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %bb.bj, label %.preheader.lr.ph

bb.bj:                                            ; preds = %bb.bi
  %i.pu = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !12
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %bb.bk, label %.preheader.lr.ph

bb.bk:                                            ; preds = %bb.bj
  %i.px = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.py = load i32, ptr %i.px, align 8, !tbaa !12
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %bb.bl, label %.preheader.lr.ph

bb.bl:                                            ; preds = %bb.bk
  %i.qa = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !12
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %bb.bm, label %.preheader.lr.ph

bb.bm:                                            ; preds = %bb.bl
  %i.qd = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.qe = load i32, ptr %i.qd, align 16, !tbaa !12
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %bb.bn, label %.preheader.lr.ph

bb.bn:                                            ; preds = %bb.bm
  %i.qg = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !12
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.bo, label %.preheader.lr.ph

bb.bo:                                            ; preds = %bb.bn
  %i.qj = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !12
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.bp, label %.preheader.lr.ph

bb.bp:                                            ; preds = %bb.bo
  %i.qm = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !12
  %i.qo = icmp eq i32 %i.qn, 0
  br i1 %i.qo, label %bb.bq, label %.preheader.lr.ph

bb.bq:                                            ; preds = %bb.bp
  %i.qp = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.qq = load i32, ptr %i.qp, align 16, !tbaa !12
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %bb.br, label %.preheader.lr.ph

bb.br:                                            ; preds = %bb.bq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !12
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %bb.bs, label %.preheader.lr.ph

bb.bs:                                            ; preds = %bb.br
  %i.qv = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !12
  %i.qx = icmp eq i32 %i.qw, 0
  br i1 %i.qx, label %bb.bt, label %.preheader.lr.ph

bb.bt:                                            ; preds = %bb.bs
  %i.qy = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !12
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.bu, label %.preheader.lr.ph

bb.bu:                                            ; preds = %bb.bt
  %i.rb = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.rc = load i32, ptr %i.rb, align 16, !tbaa !12
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %bb.bv, label %.preheader.lr.ph

bb.bv:                                            ; preds = %bb.bu
  %i.re = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !12
  %i.rg = icmp eq i32 %i.rf, 0
  br i1 %i.rg, label %bb.bw, label %.preheader.lr.ph

bb.bw:                                            ; preds = %bb.bv
  %i.rh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !12
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.bx, label %.preheader.lr.ph

bb.bx:                                            ; preds = %bb.bw
  %i.rk = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !12
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.bi, %bb.as, %bb.ba, %bb.ar, %bb.bj, %bb.aq, %bb.bc, %bb.ap, %bb.bk, %bb.ao, %bb.az, %bb.an, %bb.bl, %bb.am, %bb.bf, %bb.al, %bb.bm, %bb.ak, %bb.ay, %bb.aj, %bb.bn, %bb.ai, %bb.bd, %bb.ah, %bb.bo, %bb.ag, %bb.ax, %bb.af, %bb.bp, %bb.ae, %bb.bg, %bb.ad, %bb.bq, %bb.ac, %bb.aw, %bb.ab, %bb.br, %bb.aa, %bb.bb, %bb.z, %bb.bs, %bb.y, %bb.av, %bb.x, %bb.bt, %bb.w, %bb.bh, %bb.v, %bb.bu, %bb.u, %bb.au, %bb.t, %bb.bv, %bb.s, %bb.be, %bb.r, %bb.bw, %bb.q, %bb.at, %bb.p, %bb.bx, %bb.o, %stbiw__jpg_writeBits.exit
  %.0123.lcssa.ph = phi i32 [ 16, %bb.bi ], [ 32, %bb.as ], [ 24, %bb.ba ], [ 33, %bb.ar ], [ 15, %bb.bj ], [ 34, %bb.aq ], [ 22, %bb.bc ], [ 35, %bb.ap ], [ 14, %bb.bk ], [ 36, %bb.ao ], [ 25, %bb.az ], [ 37, %bb.an ], [ 13, %bb.bl ], [ 38, %bb.am ], [ 19, %bb.bf ], [ 39, %bb.al ], [ 12, %bb.bm ], [ 40, %bb.ak ], [ 26, %bb.ay ], [ 41, %bb.aj ], [ 11, %bb.bn ], [ 42, %bb.ai ], [ 21, %bb.bd ], [ 43, %bb.ah ], [ 10, %bb.bo ], [ 44, %bb.ag ], [ 27, %bb.ax ], [ 45, %bb.af ], [ 9, %bb.bp ], [ 46, %bb.ae ], [ 18, %bb.bg ], [ 47, %bb.ad ], [ 8, %bb.bq ], [ 48, %bb.ac ], [ 28, %bb.aw ], [ 49, %bb.ab ], [ 7, %bb.br ], [ 50, %bb.aa ], [ 23, %bb.bb ], [ 51, %bb.z ], [ 6, %bb.bs ], [ 52, %bb.y ], [ 29, %bb.av ], [ 53, %bb.x ], [ 5, %bb.bt ], [ 54, %bb.w ], [ 17, %bb.bh ], [ 55, %bb.v ], [ 4, %bb.bu ], [ 56, %bb.u ], [ 30, %bb.au ], [ 57, %bb.t ], [ 3, %bb.bv ], [ 58, %bb.s ], [ 20, %bb.be ], [ 59, %bb.r ], [ 2, %bb.bw ], [ 60, %bb.q ], [ 31, %bb.at ], [ 61, %bb.p ], [ 1, %bb.bx ], [ 62, %bb.o ], [ 63, %stbiw__jpg_writeBits.exit ] ; 2 uses
  %i.rn = zext i16 %i.x to i32
  %i.ro = zext i16 %i.v to i32
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.rq = zext nneg i32 %.0123.lcssa.ph to i64
  br label %.preheader

.critedge:                                        ; preds = %bb.bx
  %i.rr = load i32, ptr %1, align 4, !tbaa !12
  %i.rs = zext i16 %i.t to i32
  %i.rt = add nsw i32 %i.kg, %i.rs                ; 4 uses
  %i.ru = zext i16 %i.r to i32
  %i.rv = sub nsw i32 24, %i.rt
  %i.rw = shl i32 %i.ru, %i.rv
  %i.rx = or i32 %i.rw, %i.rr                     ; 2 uses
  %i.ry = icmp sgt i32 %i.rt, 7
  br i1 %i.ry, label %.lr.ph.i148, label %.sink.split

.lr.ph.i148:                                      ; preds = %.critedge
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph.i148
  %.020.i149 = phi i32 [ %i.rt, %.lr.ph.i148 ], [ %i.sj, %bb.ca ] ; 2 uses
  %.01819.i150 = phi i32 [ %i.rx, %.lr.ph.i148 ], [ %i.si, %bb.ca ] ; 3 uses
  %i.sa = lshr i32 %.01819.i150, 16
  %i.sb = trunc i32 %i.sa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.sb, ptr %i.j, align 1, !tbaa !17
  %i.sc = load ptr, ptr %0, align 8, !tbaa !15
  %i.sd = load ptr, ptr %i.rz, align 8, !tbaa !16
  call void %i.sc(ptr noundef %i.sd, ptr noundef nonnull %i.j, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.se = and i32 %.01819.i150, 16711680
  %i.sf = icmp eq i32 %i.se, 16711680
  br i1 %i.sf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 0, ptr %i.i, align 1, !tbaa !17
  %i.sg = load ptr, ptr %0, align 8, !tbaa !15
  %i.sh = load ptr, ptr %i.rz, align 8, !tbaa !16
  call void %i.sg(ptr noundef %i.sh, ptr noundef nonnull %i.i, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.si = shl i32 %.01819.i150, 8                 ; 2 uses
  %i.sj = add nsw i32 %.020.i149, -8              ; 2 uses
  %i.sk = icmp sgt i32 %.020.i149, 15
  br i1 %i.sk, label %bb.by, label %.sink.split, !llvm.loop !3

.preheader:                                       ; preds = %.preheader.lr.ph, %stbiw__jpg_writeBits.exit171
  %i.sl = phi i32 [ %i.kg, %.preheader.lr.ph ], [ %.0.lcssa.i167, %stbiw__jpg_writeBits.exit171 ] ; 2 uses
  %.0125220 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.vq, %stbiw__jpg_writeBits.exit171 ] ; 2 uses
  %i.sm = sext i32 %.0125220 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.preheader
  %indvars.iv263 = phi i32 [ %indvars.iv.next264, %bb.cb ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %bb.cb ], [ %i.sm, %.preheader ] ; 4 uses
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv260
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !12 ; 4 uses
  %i.sp = icmp eq i32 %i.so, 0
  %i.sq = icmp sle i64 %indvars.iv260, %i.rq
  %i.sr = and i1 %i.sq, %i.sp
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1
  %indvars.iv.next264 = add nuw i32 %indvars.iv263, 1
  br i1 %i.sr, label %bb.cb, label %bb.cc, !llvm.loop !106

bb.cc:                                            ; preds = %bb.cb
  %i.ss = trunc nsw i64 %indvars.iv260 to i32     ; 2 uses
  %i.st = sub nsw i32 %i.ss, %.0125220            ; 3 uses
  %i.su = icmp sgt i32 %i.st, 15
  br i1 %i.su, label %.lr.ph218.preheader, label %bb.cf

.lr.ph218.preheader:                              ; preds = %bb.cc
  %i.sv = lshr i32 %indvars.iv263, 4
  %9 = call i32 @llvm.umax.i32(i32 %i.sv, i32 1)
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %stbiw__jpg_writeBits.exit157
  %i.sw = phi i32 [ %.0.lcssa.i153, %stbiw__jpg_writeBits.exit157 ], [ %i.sl, %.lr.ph218.preheader ]
  %.0217 = phi i32 [ %i.to, %stbiw__jpg_writeBits.exit157 ], [ 1, %.lr.ph218.preheader ] ; 2 uses
  %i.sx = load i32, ptr %1, align 4, !tbaa !12
  %i.sy = add nsw i32 %i.sw, %i.rn                ; 4 uses
  %i.sz = sub nsw i32 24, %i.sy
  %i.ta = shl i32 %i.ro, %i.sz
  %i.tb = or i32 %i.ta, %i.sx                     ; 2 uses
  %i.tc = icmp sgt i32 %i.sy, 7
  br i1 %i.tc, label %.lr.ph.i154, label %stbiw__jpg_writeBits.exit157

.lr.ph.i154:                                      ; preds = %.lr.ph218, %bb.ce
  %.020.i155 = phi i32 [ %i.tm, %bb.ce ], [ %i.sy, %.lr.ph218 ] ; 2 uses
  %.01819.i156 = phi i32 [ %i.tl, %bb.ce ], [ %i.tb, %.lr.ph218 ] ; 3 uses
  %i.td = lshr i32 %.01819.i156, 16
  %i.te = trunc i32 %i.td to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.te, ptr %i.h, align 1, !tbaa !17
  %i.tf = load ptr, ptr %0, align 8, !tbaa !15
  %i.tg = load ptr, ptr %i.rp, align 8, !tbaa !16
  call void %i.tf(ptr noundef %i.tg, ptr noundef nonnull %i.h, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.th = and i32 %.01819.i156, 16711680
  %i.ti = icmp eq i32 %i.th, 16711680
  br i1 %i.ti, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph.i154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1, !tbaa !17
  %i.tj = load ptr, ptr %0, align 8, !tbaa !15
  %i.tk = load ptr, ptr %i.rp, align 8, !tbaa !16
  call void %i.tj(ptr noundef %i.tk, ptr noundef nonnull %i.g, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph.i154
  %i.tl = shl i32 %.01819.i156, 8                 ; 2 uses
  %i.tm = add nsw i32 %.020.i155, -8              ; 2 uses
  %i.tn = icmp sgt i32 %.020.i155, 15
  br i1 %i.tn, label %.lr.ph.i154, label %stbiw__jpg_writeBits.exit157, !llvm.loop !3

stbiw__jpg_writeBits.exit157:                     ; preds = %bb.ce, %.lr.ph218
  %.018.lcssa.i152 = phi i32 [ %i.tb, %.lr.ph218 ], [ %i.tl, %bb.ce ]
  %.0.lcssa.i153 = phi i32 [ %i.sy, %.lr.ph218 ], [ %i.tm, %bb.ce ] ; 3 uses
  store i32 %.018.lcssa.i152, ptr %1, align 4, !tbaa !12
  store i32 %.0.lcssa.i153, ptr %2, align 4, !tbaa !12
  %i.to = add nuw nsw i32 %.0217, 1
  %exitcond265.not = icmp eq i32 %.0217, %9
  br i1 %exitcond265.not, label %._crit_edge, label %.lr.ph218, !llvm.loop !107

._crit_edge:                                      ; preds = %stbiw__jpg_writeBits.exit157
  %i.tp = and i32 %i.st, 15
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge, %bb.cc
  %i.tq = phi i32 [ %.0.lcssa.i153, %._crit_edge ], [ %i.sl, %bb.cc ]
  %.0119 = phi i32 [ %i.tp, %._crit_edge ], [ %i.st, %bb.cc ]
  %i.tr = call i32 @llvm.abs.i32(i32 %i.so, i1 true)
  %i.ts = lshr i32 %i.tr, 1
  %i.tt = call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.ts, i1 false)
  %i.tu = sub nuw nsw i32 33, %i.tt               ; 3 uses
  %.lobit.i158 = ashr i32 %i.so, 31
  %i.tv = add nsw i32 %.lobit.i158, %i.so
  %notmask.i159 = shl nsw i32 -1, %i.tu
  %i.tw = xor i32 %notmask.i159, -1
  %i.tx = shl i32 %.0119, 4
  %i.ty = add nsw i32 %i.tx, %i.tu
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [4 x i8], ptr %8, i64 %i.tz ; 2 uses
  %i.ub = load i32, ptr %1, align 4, !tbaa !12
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 2
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !29
  %i.ue = zext i16 %i.ud to i32
  %i.uf = add nsw i32 %i.tq, %i.ue                ; 4 uses
  %i.ug = load i16, ptr %i.ua, align 2, !tbaa !29
  %i.uh = zext i16 %i.ug to i32
  %i.ui = sub nsw i32 24, %i.uf
  %i.uj = shl i32 %i.uh, %i.ui
  %i.uk = or i32 %i.uj, %i.ub                     ; 2 uses
  %i.ul = icmp sgt i32 %i.uf, 7
  br i1 %i.ul, label %.lr.ph.i162, label %stbiw__jpg_writeBits.exit165

.lr.ph.i162:                                      ; preds = %bb.cf, %bb.ch
  %.020.i163 = phi i32 [ %i.uv, %bb.ch ], [ %i.uf, %bb.cf ] ; 2 uses
  %.01819.i164 = phi i32 [ %i.uu, %bb.ch ], [ %i.uk, %bb.cf ] ; 3 uses
  %i.um = lshr i32 %.01819.i164, 16
  %i.un = trunc i32 %i.um to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.un, ptr %i.f, align 1, !tbaa !17
  %i.uo = load ptr, ptr %0, align 8, !tbaa !15
  %i.up = load ptr, ptr %i.rp, align 8, !tbaa !16
  call void %i.uo(ptr noundef %i.up, ptr noundef nonnull %i.f, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.uq = and i32 %.01819.i164, 16711680
  %i.ur = icmp eq i32 %i.uq, 16711680
  br i1 %i.ur, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1, !tbaa !17
  %i.us = load ptr, ptr %0, align 8, !tbaa !15
  %i.ut = load ptr, ptr %i.rp, align 8, !tbaa !16
  call void %i.us(ptr noundef %i.ut, ptr noundef nonnull %i.e, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i162
  %i.uu = shl i32 %.01819.i164, 8                 ; 2 uses
  %i.uv = add nsw i32 %.020.i163, -8              ; 2 uses
  %i.uw = icmp samesign ugt i32 %.020.i163, 15
  br i1 %i.uw, label %.lr.ph.i162, label %stbiw__jpg_writeBits.exit165, !llvm.loop !3

stbiw__jpg_writeBits.exit165:                     ; preds = %bb.ch, %bb.cf
  %.018.lcssa.i160 = phi i32 [ %i.uk, %bb.cf ], [ %i.uu, %bb.ch ]
  %.0.lcssa.i161 = phi i32 [ %i.uf, %bb.cf ], [ %i.uv, %bb.ch ] ; 2 uses
  store i32 %.018.lcssa.i160, ptr %1, align 4, !tbaa !12
  store i32 %.0.lcssa.i161, ptr %2, align 4, !tbaa !12
  %i.ux = load i32, ptr %1, align 4, !tbaa !12
  %i.uy = add nsw i32 %.0.lcssa.i161, %i.tu       ; 4 uses
  %i.uz = and i32 %i.tv, 65535
  %i.va = and i32 %i.uz, %i.tw
  %i.vb = sub nsw i32 24, %i.uy
  %i.vc = shl i32 %i.va, %i.vb
  %i.vd = or i32 %i.vc, %i.ux                     ; 2 uses
  %i.ve = icmp sgt i32 %i.uy, 7
  br i1 %i.ve, label %.lr.ph.i168, label %stbiw__jpg_writeBits.exit171

.lr.ph.i168:                                      ; preds = %stbiw__jpg_writeBits.exit165, %bb.cj
  %.020.i169 = phi i32 [ %i.vo, %bb.cj ], [ %i.uy, %stbiw__jpg_writeBits.exit165 ] ; 2 uses
  %.01819.i170 = phi i32 [ %i.vn, %bb.cj ], [ %i.vd, %stbiw__jpg_writeBits.exit165 ] ; 3 uses
  %i.vf = lshr i32 %.01819.i170, 16
  %i.vg = trunc i32 %i.vf to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.vg, ptr %i.d, align 1, !tbaa !17
  %i.vh = load ptr, ptr %0, align 8, !tbaa !15
  %i.vi = load ptr, ptr %i.rp, align 8, !tbaa !16
  call void %i.vh(ptr noundef %i.vi, ptr noundef nonnull %i.d, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.vj = and i32 %.01819.i170, 16711680
  %i.vk = icmp eq i32 %i.vj, 16711680
  br i1 %i.vk, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !17
  %i.vl = load ptr, ptr %0, align 8, !tbaa !15
  %i.vm = load ptr, ptr %i.rp, align 8, !tbaa !16
  call void %i.vl(ptr noundef %i.vm, ptr noundef nonnull %i.c, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph.i168
  %i.vn = shl i32 %.01819.i170, 8                 ; 2 uses
  %i.vo = add nsw i32 %.020.i169, -8              ; 2 uses
  %i.vp = icmp samesign ugt i32 %.020.i169, 15
  br i1 %i.vp, label %.lr.ph.i168, label %stbiw__jpg_writeBits.exit171, !llvm.loop !3

stbiw__jpg_writeBits.exit171:                     ; preds = %bb.cj, %stbiw__jpg_writeBits.exit165
  %.018.lcssa.i166 = phi i32 [ %i.vd, %stbiw__jpg_writeBits.exit165 ], [ %i.vn, %bb.cj ]
  %.0.lcssa.i167 = phi i32 [ %i.uy, %stbiw__jpg_writeBits.exit165 ], [ %i.vo, %bb.cj ] ; 3 uses
  store i32 %.018.lcssa.i166, ptr %1, align 4, !tbaa !12
  store i32 %.0.lcssa.i167, ptr %2, align 4, !tbaa !12
  %i.vq = add nsw i32 %i.ss, 1                    ; 2 uses
  %.not.not = icmp sgt i32 %i.vq, %.0123.lcssa.ph
  br i1 %.not.not, label %._crit_edge221, label %.preheader, !llvm.loop !108

._crit_edge221:                                   ; preds = %stbiw__jpg_writeBits.exit171
  br i1 %.not.a, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %._crit_edge221
  %i.vr = load i32, ptr %1, align 4, !tbaa !12
  %i.vs = zext i16 %i.t to i32
  %i.vt = add nsw i32 %.0.lcssa.i167, %i.vs       ; 4 uses
  %i.vu = zext i16 %i.r to i32
  %i.vv = sub nsw i32 24, %i.vt
  %i.vw = shl i32 %i.vu, %i.vv
  %i.vx = or i32 %i.vw, %i.vr                     ; 2 uses
  %i.vy = icmp sgt i32 %i.vt, 7
  br i1 %i.vy, label %.lr.ph.i174, label %.sink.split

.lr.ph.i174:                                      ; preds = %bb.ck
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cn, %.lr.ph.i174
  %.020.i175 = phi i32 [ %i.vt, %.lr.ph.i174 ], [ %i.wj, %bb.cn ] ; 2 uses
  %.01819.i176 = phi i32 [ %i.vx, %.lr.ph.i174 ], [ %i.wi, %bb.cn ] ; 3 uses
  %i.wa = lshr i32 %.01819.i176, 16
  %i.wb = trunc i32 %i.wa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.wb, ptr %i.b, align 1, !tbaa !17
  %i.wc = load ptr, ptr %0, align 8, !tbaa !15
  %i.wd = load ptr, ptr %i.vz, align 8, !tbaa !16
  call void %i.wc(ptr noundef %i.wd, ptr noundef nonnull %i.b, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.we = and i32 %.01819.i176, 16711680
  %i.wf = icmp eq i32 %i.we, 16711680
  br i1 %i.wf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.wg = load ptr, ptr %0, align 8, !tbaa !15
  %i.wh = load ptr, ptr %i.vz, align 8, !tbaa !16
  call void %i.wg(ptr noundef %i.wh, ptr noundef nonnull %i.a, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.wi = shl i32 %.01819.i176, 8                 ; 2 uses
  %i.wj = add nsw i32 %.020.i175, -8              ; 2 uses
  %i.wk = icmp sgt i32 %.020.i175, 15
  br i1 %i.wk, label %bb.cl, label %.sink.split, !llvm.loop !3

.sink.split:                                      ; preds = %bb.cn, %bb.ca, %bb.ck, %.critedge
  %.018.lcssa.i172.sink = phi i32 [ %i.si, %bb.ca ], [ %i.rx, %.critedge ], [ %i.vx, %bb.ck ], [ %i.wi, %bb.cn ]
  %.0.lcssa.i173.sink = phi i32 [ %i.sj, %bb.ca ], [ %i.rt, %.critedge ], [ %i.vt, %bb.ck ], [ %i.wj, %bb.cn ]
  store i32 %.018.lcssa.i172.sink, ptr %1, align 4, !tbaa !12
  store i32 %.0.lcssa.i173.sink, ptr %2, align 4, !tbaa !12
  br label %bb.co

bb.co:                                            ; preds = %.sink.split, %._crit_edge221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  ret i32 %i.hd
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_jpg_core(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca [17 x i8], align 16               ; 4 uses
  %i.j = alloca [12 x i8], align 1                ; 4 uses
  %i.k = alloca [17 x i8], align 16               ; 4 uses
  %i.l = alloca [162 x i8], align 16              ; 4 uses
  %i.m = alloca [17 x i8], align 16               ; 4 uses
  %i.n = alloca [12 x i8], align 1                ; 4 uses
  %i.o = alloca [17 x i8], align 16               ; 4 uses
  %i.p = alloca [162 x i8], align 16              ; 4 uses
  %i.q = alloca [64 x float], align 16            ; 8 uses
  %i.r = alloca [64 x float], align 16            ; 7 uses
  %i.s = alloca [64 x i8], align 16               ; 36 uses
  %i.t = alloca [64 x i8], align 16               ; 36 uses
  %i.u = alloca [25 x i8], align 16               ; 4 uses
  %i.v = alloca [14 x i8], align 1                ; 4 uses
  %i.w = alloca [24 x i8], align 16               ; 14 uses
  %i.x = alloca i32, align 4                      ; 13 uses
  %i.y = alloca i32, align 4                      ; 13 uses
  %i.z = alloca [256 x float], align 16           ; 7 uses
  %i.aa = alloca [256 x float], align 16          ; 131 uses
  %i.ab = alloca [256 x float], align 16          ; 131 uses
  %i.ac = alloca [64 x float], align 16           ; 4 uses
  %i.ad = alloca [64 x float], align 16           ; 4 uses
  %i.ae = alloca [64 x float], align 16           ; 7 uses
  %i.af = alloca [64 x float], align 16           ; 7 uses
  %i.ag = alloca [64 x float], align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.i, ptr noundef nonnull align 16 dereferenceable(17) @__const.stbi_write_jpg_core.std_dc_luminance_nrcodes, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @__const.stbi_write_jpg_core.std_dc_chrominance_values, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.k, ptr noundef nonnull align 16 dereferenceable(17) @__const.stbi_write_jpg_core.std_ac_luminance_nrcodes, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(162) %i.l, ptr noundef nonnull align 16 dereferenceable(162) @__const.stbi_write_jpg_core.std_ac_luminance_values, i64 162, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.m, ptr noundef nonnull align 16 dereferenceable(17) @__const.stbi_write_jpg_core.std_dc_chrominance_nrcodes, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.n, ptr noundef nonnull align 1 dereferenceable(12) @__const.stbi_write_jpg_core.std_dc_chrominance_values, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.o, ptr noundef nonnull align 16 dereferenceable(17) @__const.stbi_write_jpg_core.std_ac_chrominance_nrcodes, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(162) %i.p, ptr noundef nonnull align 16 dereferenceable(162) @__const.stbi_write_jpg_core.std_ac_chrominance_values, i64 162, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #25
  %i.ah = icmp eq ptr %4, null
  %i.ai = icmp eq i32 %1, 0
  %or.cond.not263 = or i1 %i.ai, %i.ah
  %i.aj = icmp eq i32 %2, 0
  %or.cond3.not260 = or i1 %i.aj, %or.cond.not263
  %i.ak = add i32 %3, -5
  %i.al = icmp ult i32 %i.ak, -4
  %or.cond7 = or i1 %i.al, %or.cond3.not260
  br i1 %or.cond7, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  %i.am = select i1 %.not, i32 90, i32 %5         ; 3 uses
  %i.an = icmp slt i32 %i.am, 91                  ; 2 uses
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.am, i32 1)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 100) ; 2 uses
  %i.aq = icmp slt i32 %i.am, 50
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.rhs.trunc = trunc nuw nsw i32 %i.ap to i16
  %i.ar = udiv i16 5000, %.rhs.trunc
  %.zext = zext nneg i16 %i.ar to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = shl nuw nsw i32 %i.ap, 1
  %i.at = sub nuw nsw i32 200, %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = phi i32 [ %.zext, %bb.c ], [ %i.at, %bb.d ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi_write_jpg_core.YQT, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 2 uses
  %i.ay = add nsw i32 %i.ax, 50
  %i.az = sdiv i32 %i.ay, 100
  %i.ba = icmp slt i32 %i.ax, 50
  %i.bb = tail call i32 @llvm.smin.i32(i32 %i.az, i32 255)
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = select i1 %i.ba, i8 1, i8 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bg
  store i8 %i.bd, ptr %i.bh, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi_write_jpg_core.UVQT, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !12
  %i.bk = mul nsw i32 %i.bj, %i.au                ; 2 uses
  %i.bl = add nsw i32 %i.bk, 50
  %i.bm = sdiv i32 %i.bl, 100
  %i.bn = icmp slt i32 %i.bk, 50
  %i.bo = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 255)
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = select i1 %i.bn, i8 1, i8 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bg
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %vector.body, label %bb.f, !llvm.loop !109

vector.body:                                      ; preds = %bb.f, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.f ] ; 3 uses
  %i.bs = shl nuw i64 %index, 3                   ; 34 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi_write_jpg_core.aasf, i64 %index
  %wide.load = load <4 x float>, ptr %i.bt, align 16, !tbaa !23 ; 16 uses
  %i.bu = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %i.bs
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i8, ptr %i.bu, align 16, !tbaa !17
  %i.cc = load i8, ptr %i.bw, align 8, !tbaa !17
  %i.cd = load i8, ptr %i.by, align 16, !tbaa !17
  %i.ce = load i8, ptr %i.ca, align 8, !tbaa !17
  %i.cf = zext i8 %i.cb to i64                    ; 2 uses
  %i.cg = zext i8 %i.cc to i64                    ; 2 uses
end_hunk_0
begin_hunk_1_@stbi_write_jpg_core:bb.a
  %i.bpg = shufflevector <4 x float> %i.aiu, <4 x float> %i.and, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bph = shufflevector <4 x float> %i.arl, <4 x float> %i.avt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpi = shufflevector <8 x float> %i.bpg, <8 x float> %i.bph, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpj = fadd <16 x float> %i.bpf, %i.bpi
  %i.bpk = shufflevector <4 x float> %i.ajg, <4 x float> %i.anp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpl = shufflevector <4 x float> %i.arx, <4 x float> %i.awf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpm = shufflevector <8 x float> %i.bpk, <8 x float> %i.bpl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpn = fadd <16 x float> %i.bpj, %i.bpm
  %i.bpo = shufflevector <4 x float> %i.ajs, <4 x float> %i.aob, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpp = shufflevector <4 x float> %i.asj, <4 x float> %i.awr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpq = shufflevector <8 x float> %i.bpo, <8 x float> %i.bpp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpr = fadd <16 x float> %i.bpn, %i.bpq
  %i.bps = shufflevector <4 x float> %i.azp, <4 x float> %i.bdx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpt = shufflevector <4 x float> %i.bif, <4 x float> %i.bns, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpu = shufflevector <8 x float> %i.bps, <8 x float> %i.bpt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpv = shufflevector <4 x float> %i.bab, <4 x float> %i.bej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpw = shufflevector <4 x float> %i.bir, <4 x float> %i.boe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpx = shufflevector <8 x float> %i.bpv, <8 x float> %i.bpw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpy = fadd <16 x float> %i.bpu, %i.bpx
  %i.bpz = shufflevector <4 x float> %i.ban, <4 x float> %i.bev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqa = shufflevector <4 x float> %i.bjd, <4 x float> %i.boq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqb = shufflevector <8 x float> %i.bpz, <8 x float> %i.bqa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqc = fadd <16 x float> %i.bpy, %i.bqb
  %i.bqd = shufflevector <4 x float> %i.baz, <4 x float> %i.bfh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqe = shufflevector <4 x float> %i.bjp, <4 x float> %i.bpc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqf = shufflevector <8 x float> %i.bqd, <8 x float> %i.bqe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqg = fadd <16 x float> %i.bqc, %i.bqf
  %i.bqh = shufflevector <16 x float> %i.bpr, <16 x float> %i.bqg, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec424 = fmul <32 x float> %i.bqh, splat (float 2.500000e-01)
  store <32 x float> %interleaved.vec424, ptr %i.ajt, align 16, !tbaa !23
  %index.next425 = add nuw i64 %index422, 4       ; 2 uses
  %i.bqi = icmp eq i64 %index.next425, 8
  br i1 %i.bqi, label %middle.block426, label %vector.body421, !llvm.loop !116

middle.block426:                                  ; preds = %vector.body421
  %i.bqj = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ac, i32 noundef 8, ptr noundef nonnull %i.r, i32 noundef %.1250310.us, ptr noundef nonnull @__const.stbi_write_jpg_core.UVDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.UVAC_HT) ; 2 uses
  %i.bqk = call i32 @stbiw__jpg_processDU(ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ad, i32 noundef 8, ptr noundef nonnull %i.r, i32 noundef %.1246311.us, ptr noundef nonnull @__const.stbi_write_jpg_core.UVDC_HT, ptr noundef nonnull @__const.stbi_write_jpg_core.UVAC_HT) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #25
  %i.bql = add nuw nsw i32 %.0243312.us, 16       ; 2 uses
  %i.bqm = icmp slt i32 %i.bql, %1
  br i1 %i.bqm, label %bb.h, label %._crit_edge.us320, !llvm.loop !117

._crit_edge.us320:                                ; preds = %middle.block426
  %i.bqn = add nuw nsw i32 %.0241318.us, 16       ; 2 uses
  %i.bqo = icmp slt i32 %i.bqn, %2
  %indvars.iv.next378 = add i32 %indvars.iv377, 16
  br i1 %i.bqo, label %.preheader266.us, label %.loopexit, !llvm.loop !118

.loopexit:                                        ; preds = %._crit_edge.us, %._crit_edge.us320, %.preheader266.lr.ph, %.preheader268.lr.ph, %.preheader269, %.preheader267
  %i.bqp = load i32, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %i.bqq = icmp sgt i32 %i.bqp, 0
  br i1 %i.bqq, label %.lr.ph.i.preheader, label %stbiw__jpg_writeBits.exit

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.bqr = sub nsw i32 17, %i.bqp
  %i.bqs = shl i32 127, %i.bqr
  %i.bqt = load i32, ptr %i.x, align 4, !tbaa !12
  %i.bqu = or i32 %i.bqs, %i.bqt
  %i.bqv = add nuw nsw i32 %i.bqp, 7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.020.i = phi i32 [ %i.brf, %bb.m ], [ %i.bqv, %.lr.ph.i.preheader ] ; 2 uses
  %.01819.i = phi i32 [ %i.bre, %bb.m ], [ %i.bqu, %.lr.ph.i.preheader ] ; 3 uses
  %i.bqw = lshr i32 %.01819.i, 16
  %i.bqx = trunc i32 %i.bqw to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.bqx, ptr %i.d, align 1, !tbaa !17
  %i.bqy = load ptr, ptr %0, align 8, !tbaa !15
  %i.bqz = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.bqy(ptr noundef %i.bqz, ptr noundef nonnull %i.d, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bra = and i32 %.01819.i, 16711680
  %i.brb = icmp eq i32 %i.bra, 16711680
  br i1 %i.brb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !17
  %i.brc = load ptr, ptr %0, align 8, !tbaa !15
  %i.brd = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.brc(ptr noundef %i.brd, ptr noundef nonnull %i.c, i32 noundef 1) #25, !inline_history !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bre = shl i32 %.01819.i, 8
  %i.brf = add nsw i32 %.020.i, -8
  %i.brg = icmp sgt i32 %.020.i, 15
  br i1 %i.brg, label %.lr.ph.i, label %stbiw__jpg_writeBits.exit, !llvm.loop !3

stbiw__jpg_writeBits.exit:                        ; preds = %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 1, !tbaa !17
  %i.brh = load ptr, ptr %0, align 8, !tbaa !15
  %i.bri = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.brh(ptr noundef %i.bri, ptr noundef nonnull %i.b, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -39, ptr %i.a, align 1, !tbaa !17
  %i.brj = load ptr, ptr %0, align 8, !tbaa !15
  %i.brk = load ptr, ptr %i.qs, align 8, !tbaa !16
  call void %i.brj(ptr noundef %i.brk, ptr noundef nonnull %i.a, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %stbiw__jpg_writeBits.exit
  %.0 = phi i32 [ 1, %stbiw__jpg_writeBits.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_jpg_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %7, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = call i32 @stbi_write_jpg_core(ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_jpg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 3 uses
  store ptr @stbi__stdio_write, ptr %6, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !16
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @stbi_write_jpg_core(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !8, i64 16, !9, i64 80}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!8, !8, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!14, !9, i64 80}
!20 = !{ptr @stbiw__write_flush}
!21 = !{ptr @stbiw__write1, ptr @stbiw__write_flush}
!22 = !{!"float", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!13, !13, i64 0}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!"p1 omnipotent char", !13, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{ptr @stbiw__putc}
!33 = !{ptr @stbiw__jpg_writeBits, ptr @stbiw__putc}
!34 = distinct !{!34, !18}
!35 = !{ptr @stbiw__write3, ptr @stbiw__write_flush}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = !{ptr @stbiw__write_dump_data}
!52 = !{ptr @stbiw__write_run_data}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !18}
!68 = !{!"any p2 pointer", !13, i64 0}
!69 = !{!"p2 omnipotent char", !68, i64 0}
!70 = !{!69, !69, i64 0}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18, !30, !31}
!73 = distinct !{!73, !18, !30, !31}
!74 = distinct !{!74, !18, !30, !31}
!75 = distinct !{!75, !18, !30, !31}
!76 = distinct !{!76, !18, !30, !31}
!77 = distinct !{!77, !18, !30, !31}
!78 = distinct !{!78, !18, !30, !31}
!79 = distinct !{!79, !18, !30, !31}
!80 = distinct !{!80, !18, !30, !31}
!81 = distinct !{!81, !18, !30, !31}
!82 = distinct !{!82, !18, !30, !31}
!83 = distinct !{!83, !18, !30, !31}
!84 = distinct !{!84, !18, !30}
!85 = distinct !{!85, !18, !30}
!86 = distinct !{!86, !18, !30}
!87 = distinct !{!87, !18, !30}
!88 = distinct !{!88, !18, !30}
!89 = distinct !{!89, !18, !30}
!90 = !{!"branch_weights", i32 8, i32 24}
!91 = !{!"branch_weights", i32 4, i32 12}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18, !30, !31}
!94 = distinct !{!94, !18, !31, !30}
!95 = distinct !{!95, !18, !30, !31}
!96 = distinct !{!96, !18, !31, !30}
!97 = distinct !{!97, !18, !30, !31}
!98 = distinct !{!98, !18, !31, !30}
!99 = distinct !{!99, !18, !30, !31}
!100 = distinct !{!100, !18, !31, !30}
!101 = distinct !{!101, !18, !30, !31}
!102 = distinct !{!102, !18, !31, !30}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = distinct !{!107, !18}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !18}
!110 = distinct !{!110, !18, !30, !31}
!111 = distinct !{!111, !18}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !18}
!114 = distinct !{!114, !18}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18, !30, !31}
!117 = distinct !{!117, !18}
!118 = distinct !{!118, !18}
end_hunk_1
