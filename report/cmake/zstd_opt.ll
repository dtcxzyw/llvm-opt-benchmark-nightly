inline.NumInlined: 270
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ZSTD_compressBlock_opt0:bb.a
  %i.dl = add i32 %i.df, -7936
  %i.dm = add i32 %i.dl, %reass.mul
  br label %ZSTD_litLengthPrice.exit

ZSTD_litLengthPrice.exit:                         ; preds = %bb.g, %bb.i, %ZSTD_LLcode.exit.i
  %.0.i13 = phi i32 [ %i.dm, %ZSTD_LLcode.exit.i ], [ %i.cs, %bb.i ], [ %i.cj, %bb.g ]
  store i32 %.0.i13, ptr %i.ad, align 4, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.dn = add i32 %i.cc, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !46 ; 2 uses
  %.not490.i = icmp ugt i32 %i.dr, %spec.select.i
  br i1 %.not490.i, label %.thread144, label %.preheader186

.thread144:                                       ; preds = %ZSTD_litLengthPrice.exit
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.az

.preheader186:                                    ; preds = %ZSTD_litLengthPrice.exit, %.preheader186
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader186 ], [ 1, %ZSTD_litLengthPrice.exit ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader186 ], [ 0, %ZSTD_litLengthPrice.exit ]
  %i.dt = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  store i32 1073741824, ptr %i.dt, align 4, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 0, ptr %i.du, align 4, !tbaa !38
  %i.dv = trunc nuw nsw i64 %indvars.iv to i32
  %i.dw = add i32 %i.dv, %i.bv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next ; 3 uses
  store i32 1073741824, ptr %i.dy, align 4, !tbaa !45
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 0, ptr %i.dz, align 4, !tbaa !38
  %i.ea = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.eb = add i32 %i.ea, %i.bv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader185.preheader.unr-lcssa, label %.preheader186, !llvm.loop !49

.preheader185.preheader.unr-lcssa:                ; preds = %.preheader186
  br i1 %lcmp.mod.not, label %.preheader185.preheader, label %.preheader186.epil.preheader

.preheader186.epil.preheader:                     ; preds = %.preheader185.preheader.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod423)
  %i.ed = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next.1 ; 3 uses
  store i32 1073741824, ptr %i.ed, align 4, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 0, ptr %i.ee, align 4, !tbaa !38
  %i.ef = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.eg = add i32 %i.ef, %i.bv
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !40
  br label %.preheader185.preheader

.preheader185.preheader:                          ; preds = %.preheader185.preheader.unr-lcssa, %.preheader186.epil.preheader
  %wide.trip.count259 = zext i32 %i.cc to i64
  br label %.preheader185

.preheader185:                                    ; preds = %.preheader185.preheader, %._crit_edge
  %indvars.iv256 = phi i64 [ 0, %.preheader185.preheader ], [ %indvars.iv.next257, %._crit_edge ] ; 2 uses
  %.1452.i194 = phi i32 [ %i.z, %.preheader185.preheader ], [ %.2453.i.lcssa, %._crit_edge ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv256 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !48 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !46 ; 3 uses
  %.not500.i192 = icmp ugt i32 %.1452.i194, %i.el
  br i1 %.not500.i192, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader185
  %i.em = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ej, i1 true)
  %i.en = xor i32 %i.em, 31                       ; 5 uses
  %i.eo = load i32, ptr %i.av, align 8, !tbaa !41
  %i.ep = icmp eq i32 %i.eo, 1
  %i.eq = shl nuw nsw i32 %i.en, 8
  %i.er = add nuw nsw i32 %i.eq, 4096
  br i1 %i.ep, label %ZSTD_litLengthPrice.exit17.us, label %.lr.ph.split

ZSTD_litLengthPrice.exit17.us:                    ; preds = %.lr.ph, %ZSTD_litLengthPrice.exit17.us
  %.2453.i193.us = phi i32 [ %i.fe, %ZSTD_litLengthPrice.exit17.us ], [ %.1452.i194, %.lr.ph ] ; 4 uses
  %i.es = add i32 %.2453.i193.us, -2
  %i.et = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.es, i1 true)
  %i.eu = shl nuw nsw i32 %i.et, 8
  %i.ev = xor i32 %i.eu, 7936
  %i.ew = add nuw nsw i32 %i.er, %i.ev
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !45
  %i.ey = add nsw i32 %i.ew, %i.ex
  %i.ez = zext i32 %.2453.i193.us to i64
  %i.fa = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ez ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i32 %.2453.i193.us, ptr %i.fb, align 4, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.ej, ptr %i.fc, align 4, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !40
  store i32 %i.ey, ptr %i.fa, align 4, !tbaa !45
  %i.fe = add i32 %.2453.i193.us, 1               ; 3 uses
  %.not500.i.us = icmp ugt i32 %i.fe, %i.el
  br i1 %.not500.i.us, label %._crit_edge, label %ZSTD_litLengthPrice.exit17.us, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ff = icmp samesign ugt i32 %i.en, 19
  %i.fg = shl nuw nsw i32 %i.en, 9
  %i.fh = add nsw i32 %i.fg, -9677
  %i.fi = select i1 %i.ff, i32 %i.fh, i32 51
  %i.fj = zext nneg i32 %i.en to i64
  %i.fk = load i32, ptr %i.az, align 4, !tbaa !52
  %i.fl = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fj
  %i.fn = load i32, ptr %i.bb, align 8, !tbaa !54
  %i.fo = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.fp = add i32 %i.fi, %i.fk
  %invariant.op = add i32 %i.fp, %i.fn
  %i.fq = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.fr = load ptr, ptr %i.ax, align 8, !tbaa !43
  %.neg20.i15 = add i32 %i.fq, -7936
  %invariant.op375 = add i32 %invariant.op, -7936
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.split, %ZSTD_litLengthPrice.exit17
  %.2453.i193 = phi i32 [ %.1452.i194, %.lr.ph.split ], [ %i.he, %ZSTD_litLengthPrice.exit17 ] ; 4 uses
  %i.fs = add i32 %.2453.i193, -3                 ; 3 uses
  %i.ft = load i32, ptr %i.fm, align 4, !tbaa !26
  %i.fu = add i32 %i.ft, 1
  %i.fv = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fu, i1 true)
  %i.fw = icmp ugt i32 %i.fs, 127
  br i1 %i.fw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fx = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fs, i1 true)
  %i.fy = sub nuw nsw i32 67, %i.fx
  br label %ZSTD_litLengthPrice.exit17

bb.o:                                             ; preds = %bb.m
  %i.fz = zext nneg i32 %i.fs to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !44
  %i.gc = zext i8 %i.gb to i32
  br label %ZSTD_litLengthPrice.exit17

ZSTD_litLengthPrice.exit17:                       ; preds = %bb.n, %bb.o
  %i.gd = phi i32 [ %i.fy, %bb.n ], [ %i.gc, %bb.o ]
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !44
  %i.gh = zext i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ge
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !26
  %i.gk = add i32 %i.gj, 1
  %i.gl = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gk, i1 true)
  %i.gm = shl nuw nsw i32 %i.gl, 8
  %.neg241 = add nsw i32 %i.gm, -7936
  %i.gn = load i32, ptr %i.ad, align 4, !tbaa !45
  %reass.add180 = add nuw nsw i32 %i.en, %i.gh
  %i.go = add nuw nsw i32 %i.fv, %reass.add180
  %i.gp = shl nuw nsw i32 %i.go, 8
  %i.gq = add i32 %i.gp, %invariant.op375
  %i.gr = add i32 %i.gq, %i.gn
  %i.gs = add i32 %i.gr, %.neg241
  %i.gt = zext i32 %.2453.i193 to i64
  %i.gu = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.gt ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i32 %.2453.i193, ptr %i.gv, align 4, !tbaa !38
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %i.ej, ptr %i.gw, align 4, !tbaa !50
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gx, align 4, !tbaa !40
  %i.gy = load i32, ptr %i.fr, align 4, !tbaa !26
  %i.gz = add i32 %i.gy, 1
  %i.ha = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true)
  %i.hb = shl nuw nsw i32 %i.ha, 8
  %i.hc = add i32 %.neg20.i15, %i.hb
  %i.hd = add nsw i32 %i.hc, %i.gs
  store i32 %i.hd, ptr %i.gu, align 4, !tbaa !45
  %i.he = add i32 %.2453.i193, 1                  ; 3 uses
  %.not500.i = icmp ugt i32 %i.he, %i.el
  br i1 %.not500.i, label %._crit_edge, label %bb.m, !llvm.loop !51

._crit_edge:                                      ; preds = %ZSTD_litLengthPrice.exit17, %ZSTD_litLengthPrice.exit17.us, %.preheader185
  %.2453.i.lcssa = phi i32 [ %.1452.i194, %.preheader185 ], [ %i.fe, %ZSTD_litLengthPrice.exit17.us ], [ %i.he, %ZSTD_litLengthPrice.exit17 ] ; 3 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %.lr.ph221.preheader, label %.preheader185, !llvm.loop !56

.lr.ph221.preheader:                              ; preds = %._crit_edge
  %i.hf = zext i32 %.2453.i.lcssa to i64
  %i.hg = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hf
  store i32 1073741824, ptr %i.hg, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.hh = add i32 %.2453.i.lcssa, -1
  br label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %.thread110
  %.2461.i219 = phi i32 [ %.15.i119, %.thread110 ], [ %i.hh, %.lr.ph221.preheader ] ; 6 uses
  %.2468.i218 = phi i32 [ %.pre-phi286, %.thread110 ], [ 1, %.lr.ph221.preheader ] ; 10 uses
  %i.hi = zext i32 %.2468.i218 to i64             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0442.i236, i64 %i.hi ; 5 uses
  %i.hk = add i32 %.2468.i218, -1
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hl ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !40 ; 6 uses
  %i.hp = add i32 %i.ho, 1                        ; 7 uses
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !45 ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %i.hj, i64 -1
  %.val.i = load i32, ptr %i.bd, align 8, !tbaa !57
  %.not31.i = icmp eq i32 %.val.i, 2
  %.pre = load i32, ptr %i.av, align 8, !tbaa !41 ; 2 uses
  br i1 %.not31.i, label %ZSTD_rawLiteralsCost.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph221
  %i.hs = icmp eq i32 %.pre, 1
  br i1 %i.hs, label %ZSTD_rawLiteralsCost.exit.thread, label %ZSTD_rawLiteralsCost.exit.thread335

ZSTD_rawLiteralsCost.exit.thread:                 ; preds = %bb.p
  %i.ht = add nsw i32 %i.hq, 1536
  br label %bb.u

ZSTD_rawLiteralsCost.exit.thread335:              ; preds = %bb.p
  %i.hu = load i32, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.hv = add i32 %i.hu, -256
  %i.hw = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.hx = load i8, ptr %i.hr, align 1, !tbaa !44
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !26
  %i.ib = add i32 %i.ia, 1
  %i.ic = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ib, i1 true)
  %i.id = shl nuw nsw i32 %i.ic, 8
  %i.ie = xor i32 %i.id, 7936                     ; 2 uses
  %i.if = icmp ugt i32 %i.ie, %i.hv
  %i.ig = sub i32 %i.hu, %i.ie
  %spec.select.i18 = select i1 %i.if, i32 256, i32 %i.ig, !prof !60
  %i.ih = add nsw i32 %spec.select.i18, %i.hq
  br label %bb.q

ZSTD_rawLiteralsCost.exit:                        ; preds = %.lr.ph221
  %i.ii = add nsw i32 %i.hq, 2048                 ; 2 uses
  %i.ij = icmp eq i32 %.pre, 1
  br i1 %i.ij, label %bb.u, label %bb.q

bb.q:                                             ; preds = %ZSTD_rawLiteralsCost.exit.thread335, %ZSTD_rawLiteralsCost.exit
  %i.ik = phi i32 [ %i.ih, %ZSTD_rawLiteralsCost.exit.thread335 ], [ %i.ii, %ZSTD_rawLiteralsCost.exit ] ; 2 uses
  %i.il = icmp eq i32 %i.hp, 131072
  br i1 %i.il, label %.thread87, label %bb.r

.thread87:                                        ; preds = %bb.q
  %i.im = load i32, ptr %i.aw, align 4, !tbaa !42 ; 2 uses
  %i.in = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 140
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !26
  %i.iq = add i32 %i.ip, 1
  %i.ir = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.iq, i1 true)
  %i.is = shl nuw nsw i32 %i.ir, 8
  %.neg23.i22 = add i32 %i.im, -3584
  %i.it = add i32 %.neg23.i22, %i.is
  %.pre291 = add i32 %i.im, -7936
  br label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.iu = icmp ugt i32 %i.hp, 63
  br i1 %i.iu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iv = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hp, i1 true)
  %i.iw = sub nuw nsw i32 50, %i.iv
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ix = zext nneg i32 %i.hp to i64
  %i.iy = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !44
  %i.ja = zext i8 %i.iz to i32
  br label %bb.v

bb.u:                                             ; preds = %ZSTD_rawLiteralsCost.exit.thread, %ZSTD_rawLiteralsCost.exit
  %i.jb = phi i32 [ %i.ht, %ZSTD_rawLiteralsCost.exit.thread ], [ %i.ii, %ZSTD_rawLiteralsCost.exit ]
  %i.jc = add i32 %i.ho, 2
  %i.jd = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.jc, i1 true)
  %i.je = shl nuw nsw i32 %i.jd, 8
  %i.jf = xor i32 %i.je, 7936
  %i.jg = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hp, i1 true)
  %i.jh = shl nuw nsw i32 %i.jg, 8
  %i.ji = xor i32 %i.jh, 7936
  br label %ZSTD_litLengthPrice.exit28

bb.v:                                             ; preds = %bb.s, %bb.t
  %i.jj = phi i32 [ %i.iw, %bb.s ], [ %i.ja, %bb.t ]
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !44
  %i.jn = zext i8 %i.jm to i32
  %i.jo = load i32, ptr %i.aw, align 4, !tbaa !42 ; 2 uses
  %i.jp = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 4 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jk
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !26
  %i.js = add i32 %i.jr, 1
  %i.jt = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.js, i1 true)
  %reass.add171 = add nuw nsw i32 %i.jt, %i.jn
  %reass.mul172 = shl nuw nsw i32 %reass.add171, 8
  %i.ju = add i32 %i.jo, -7936                    ; 3 uses
  %i.jv = add i32 %i.ju, %reass.mul172            ; 3 uses
  %i.jw = icmp eq i32 %i.ho, 131072
  br i1 %i.jw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 140
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !26
  %i.jz = add i32 %i.jy, 1
  %i.ka = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.jz, i1 true)
  %i.kb = shl nuw nsw i32 %i.ka, 8
  %.neg23.i27 = add i32 %i.jo, -3584
  %i.kc = add i32 %.neg23.i27, %i.kb
  br label %ZSTD_litLengthPrice.exit28

bb.x:                                             ; preds = %bb.v
  %i.kd = icmp ugt i32 %i.ho, 63
  br i1 %i.kd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread87, %bb.x
  %.pre283.pre-phi = phi i32 [ %.pre291, %.thread87 ], [ %i.ju, %bb.x ]
  %i.ke = phi ptr [ %i.in, %.thread87 ], [ %i.jp, %bb.x ]
  %.0.i21.ph8690 = phi i32 [ %i.it, %.thread87 ], [ %i.jv, %bb.x ]
  %i.kf = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ho, i1 true)
  %i.kg = sub nuw nsw i32 50, %i.kf
  br label %ZSTD_LLcode.exit.i24

bb.z:                                             ; preds = %bb.x
  %i.kh = zext nneg i32 %i.ho to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !44
  %i.kk = zext i8 %i.kj to i32
  br label %ZSTD_LLcode.exit.i24

ZSTD_LLcode.exit.i24:                             ; preds = %bb.z, %bb.y
  %.pre-phi284 = phi i32 [ %i.ju, %bb.z ], [ %.pre283.pre-phi, %bb.y ]
  %i.kl = phi ptr [ %i.jp, %bb.z ], [ %i.ke, %bb.y ]
  %.0.i21.ph8689 = phi i32 [ %i.jv, %bb.z ], [ %.0.i21.ph8690, %bb.y ]
  %i.km = phi i32 [ %i.kk, %bb.z ], [ %i.kg, %bb.y ]
  %i.kn = zext nneg i32 %i.km to i64              ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !44
  %i.kq = zext i8 %i.kp to i32
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kn
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !26
  %i.kt = add i32 %i.ks, 1
  %i.ku = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kt, i1 true)
  %reass.add173 = add nuw nsw i32 %i.ku, %i.kq
  %reass.mul174 = shl nuw nsw i32 %reass.add173, 8
  %i.kv = add i32 %.pre-phi284, %reass.mul174
  br label %ZSTD_litLengthPrice.exit28

ZSTD_litLengthPrice.exit28:                       ; preds = %bb.u, %bb.w, %ZSTD_LLcode.exit.i24
  %i.kw = phi i32 [ %i.ik, %ZSTD_LLcode.exit.i24 ], [ %i.ik, %bb.w ], [ %i.jb, %bb.u ]
  %.0.i2182 = phi i32 [ %.0.i21.ph8689, %ZSTD_LLcode.exit.i24 ], [ %i.jv, %bb.w ], [ %i.jf, %bb.u ]
  %.0.i26 = phi i32 [ %i.kv, %ZSTD_LLcode.exit.i24 ], [ %i.kc, %bb.w ], [ %i.ji, %bb.u ]
  %i.kx = sub nsw i32 %.0.i2182, %.0.i26
  %i.ky = add nsw i32 %i.kw, %i.kx                ; 3 uses
  %i.kz = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hi ; 9 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !45 ; 2 uses
  %.not492.i = icmp sgt i32 %i.ky, %i.la
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kz, i64 12 ; 2 uses
  br i1 %.not492.i, label %ZSTD_litLengthPrice.exit28._crit_edge, label %bb.aa

ZSTD_litLengthPrice.exit28._crit_edge:            ; preds = %ZSTD_litLengthPrice.exit28
  %.pre272 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  br label %bb.ab

bb.aa:                                            ; preds = %ZSTD_litLengthPrice.exit28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kz, ptr noundef nonnull align 4 dereferenceable(28) %i.hm, i64 28, i1 false), !tbaa.struct !61
  store i32 %i.hp, ptr %.phi.trans.insert, align 4, !tbaa !40
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !45
  br label %bb.ab

bb.ab:                                            ; preds = %ZSTD_litLengthPrice.exit28._crit_edge, %bb.aa
  %i.lb = phi i32 [ %i.la, %ZSTD_litLengthPrice.exit28._crit_edge ], [ %i.ky, %bb.aa ] ; 2 uses
  %i.lc = phi i32 [ %.pre272, %ZSTD_litLengthPrice.exit28._crit_edge ], [ %i.hp, %bb.aa ]
  %i.ld = icmp eq i32 %i.lc, 0                    ; 2 uses
  br i1 %i.ld, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !38
  %i.lg = sub i32 %.2468.i218, %i.lf
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !50 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.lj, i64 12, i1 false)
  %i.lo = icmp ugt i32 %i.ll, 3
  br i1 %i.lo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.lp = load i32, ptr %i.bf, align 4, !tbaa !26
  %i.lq = load i32, ptr %7, align 8, !tbaa !26
  store i32 %i.lq, ptr %i.bf, align 4, !tbaa !26
  %i.lr = add i32 %i.ll, -3
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ls = icmp eq i32 %i.ln, 0
  %i.lt = zext i1 %i.ls to i32
  %i.lu = add nsw i32 %i.ll, -1
  %i.lv = add nsw i32 %i.lu, %i.lt                ; 3 uses
  switch i32 %i.lv, label %bb.ag [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i
    i32 3, label %bb.af
  ]

.ZSTD_updateRep.exit_crit_edge.i:                 ; preds = %bb.ae
  %.sroa.2.0.copyload.pre.i = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i, align 8
  br label %ZSTD_newRep.exit

bb.af:                                            ; preds = %bb.ae
  %i.lw = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.lx = add i32 %i.lw, -1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ly = zext i32 %i.lv to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !26
  %.pre.i.i = load i32, ptr %7, align 8, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mb = phi i32 [ %i.lw, %bb.af ], [ %.pre.i.i, %bb.ag ]
  %i.mc = phi i32 [ %i.lx, %bb.af ], [ %i.ma, %bb.ag ]
  %.not22.i.i = icmp eq i32 %i.lv, 1
  %.val.i29 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i, align 8
  %.val2.i = load i32, ptr %i.bf, align 4
  %i.md = select i1 %.not22.i.i, i32 %.val.i29, i32 %.val2.i
  store i32 %i.mb, ptr %i.bf, align 4, !tbaa !26
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ah, %bb.ad
  %.sroa.2.0.copyload4.i = phi i32 [ %i.md, %bb.ah ], [ %i.lp, %bb.ad ]
  %.sink.i.i = phi i32 [ %i.mc, %bb.ah ], [ %i.lr, %bb.ad ]
  store i32 %.sink.i.i, ptr %7, align 8, !tbaa !26
  br label %ZSTD_newRep.exit

ZSTD_newRep.exit:                                 ; preds = %.ZSTD_updateRep.exit_crit_edge.i, %.sink.split.i.i
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.pre.i, %.ZSTD_updateRep.exit_crit_edge.i ], [ %.sroa.2.0.copyload4.i, %.sink.split.i.i ]
  %.sroa.0.0.copyload.i = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.me = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.me, align 4
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.481.0..sroa_idx.i, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %ZSTD_newRep.exit, %bb.ab
  %i.mf = icmp ugt ptr %i.hj, %i.f
  br i1 %i.mf, label %..thread110_crit_edge, label %bb.aj

..thread110_crit_edge:                            ; preds = %bb.ai
  %.pre285 = add i32 %.2468.i218, 1
  br label %.thread110

bb.aj:                                            ; preds = %bb.ai
  %i.mg = icmp eq i32 %.2468.i218, %.2461.i219
  br i1 %i.mg, label %bb.aw, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mh = add i32 %.2468.i218, 1                  ; 4 uses
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !45
  %i.ml = add nsw i32 %i.lb, 128
  %.not493.i = icmp sgt i32 %i.mk, %i.ml
  br i1 %.not493.i, label %.split471.i, label %.thread110

.split471.i:                                      ; preds = %bb.ak
  %i.mm = load i32, ptr %i.av, align 8, !tbaa !41
  %i.mn = icmp eq i32 %i.mm, 1
  br i1 %i.mn, label %ZSTD_litLengthPrice.exit33, label %bb.al

bb.al:                                            ; preds = %.split471.i
  %i.mo = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.mp = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !26
  %i.mr = add i32 %i.mq, 1
  %i.ms = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mr, i1 true)
  %i.mt = shl nuw nsw i32 %i.ms, 8
  %.neg20.i31 = add i32 %i.mo, -7936
  %i.mu = add i32 %.neg20.i31, %i.mt
  br label %ZSTD_litLengthPrice.exit33

ZSTD_litLengthPrice.exit33:                       ; preds = %.split471.i, %bb.al
  %.0.i32 = phi i32 [ %i.mu, %bb.al ], [ 0, %.split471.i ]
  %i.mv = zext i1 %i.ld to i32
  %i.mw = add nsw i32 %.0.i32, %i.lb              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.my = call i32 %i.v(ptr noundef %i.af, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.hj, ptr noundef %i.e, ptr noundef nonnull %i.mx, i32 noundef %i.mv, i32 noundef %i.z) #11, !inline_history !37
  store i32 %i.my, ptr %i.c, align 4, !tbaa !26
  %i.mz = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.na = sub i64 %i.mz, %i.al
  %i.nb = trunc i64 %i.na to i32
  %i.nc = sub i64 %i.am, %i.mz
  %i.nd = trunc i64 %i.nc to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %8, ptr noundef %i.af, ptr noundef %i.c, i32 noundef %i.nb, i32 noundef %i.nd, i32 noundef %i.z)
  %i.ne = load i32, ptr %i.c, align 4, !tbaa !26  ; 3 uses
  %.not494.i = icmp eq i32 %i.ne, 0
  br i1 %.not494.i, label %.thread126, label %bb.am

.thread126:                                       ; preds = %ZSTD_litLengthPrice.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread110

bb.am:                                            ; preds = %ZSTD_litLengthPrice.exit33
  %i.nf = add i32 %i.ne, -1
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !46 ; 5 uses
  %i.nk = icmp ule i32 %i.nj, %spec.select.i
  %i.nl = add i32 %i.nj, %.2468.i218              ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 4096
  %or.cond504.i.not = and i1 %i.nk, %i.nm
  %i.nn = zext nneg i32 %i.nj to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.nn
  %.not495.i = icmp ult ptr %i.no, %i.e
  %or.cond506.i = select i1 %or.cond504.i.not, i1 %.not495.i, i1 false
  br i1 %or.cond506.i, label %.preheader, label %.thread338

.preheader:                                       ; preds = %bb.am
  %invariant.op214 = add i32 %i.mw, 4096
  %wide.trip.count270 = zext i32 %i.ne to i64
  br label %bb.an

bb.an:                                            ; preds = %.preheader, %._crit_edge206
  %indvars.iv267 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next268, %._crit_edge206 ] ; 4 uses
  %.8.i215 = phi i32 [ %.2461.i219, %.preheader ], [ %.9.i.lcssa, %._crit_edge206 ] ; 3 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv267 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !48 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !46 ; 3 uses
  %.not496.i = icmp eq i64 %indvars.iv267, 0
  br i1 %.not496.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nt = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv267
  %i.nu = getelementptr i8, ptr %i.nt, i64 -4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !46
  %i.nw = add i32 %i.nv, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.nx = phi i32 [ %i.nw, %bb.ao ], [ %i.z, %bb.an ] ; 3 uses
  %.not497.i201 = icmp ult i32 %i.ns, %i.nx
  br i1 %.not497.i201, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.ap
  %i.ny = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.nq, i1 true)
  %i.nz = xor i32 %i.ny, 31                       ; 5 uses
  %i.oa = load i32, ptr %i.av, align 8, !tbaa !41
  %i.ob = icmp eq i32 %i.oa, 1
  br i1 %i.ob, label %.lr.ph205.split.us, label %.lr.ph205.split

.lr.ph205.split.us:                               ; preds = %.lr.ph205
  %i.oc = shl nuw nsw i32 %i.nz, 8
  %i.od = add i32 %i.oc, %invariant.op214
  br label %ZSTD_getMatchPrice.exit8.us

ZSTD_getMatchPrice.exit8.us:                      ; preds = %._crit_edge199.us, %.lr.ph205.split.us
  %.0448.i203.us = phi i32 [ %i.ns, %.lr.ph205.split.us ], [ %i.pm, %._crit_edge199.us ] ; 4 uses
  %.9.i202.us = phi i32 [ %.8.i215, %.lr.ph205.split.us ], [ %.10.i.lcssa.us, %._crit_edge199.us ] ; 4 uses
  %i.oe = add i32 %.0448.i203.us, %.2468.i218     ; 4 uses
  %i.of = add i32 %.0448.i203.us, -2
  %i.og = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.of, i1 true)
  %i.oh = shl nuw nsw i32 %i.og, 8
  %i.oi = xor i32 %i.oh, 7936
  %.reass = add i32 %i.oi, %i.od                  ; 2 uses
  %i.oj = icmp ugt i32 %i.oe, %.9.i202.us
  br i1 %i.oj, label %.lr.ph198.us.preheader, label %bb.aq

bb.aq:                                            ; preds = %ZSTD_getMatchPrice.exit8.us
  %i.ok = zext i32 %i.oe to i64
  %i.ol = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !45
  %i.on = icmp slt i32 %.reass, %i.om
  br i1 %i.on, label %.._crit_edge199.us_crit_edge, label %._crit_edge206

.._crit_edge199.us_crit_edge:                     ; preds = %bb.aq
  %.pre287 = zext i32 %i.oe to i64
  br label %._crit_edge199.us

.lr.ph198.us.preheader:                           ; preds = %ZSTD_getMatchPrice.exit8.us
  %i.oo = zext i32 %.9.i202.us to i64             ; 4 uses
  %i.op = zext i32 %i.oe to i64                   ; 4 uses
  %i.oq = sub nsw i64 %i.op, %i.oo
  %xtraiter428 = and i64 %i.oq, 3                 ; 2 uses
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph198.us.prol.loopexit, label %.lr.ph198.us.prol

.lr.ph198.us.prol:                                ; preds = %.lr.ph198.us.preheader, %.lr.ph198.us.prol
  %indvars.iv264.prol = phi i64 [ %indvars.iv.next265.prol, %.lr.ph198.us.prol ], [ %i.oo, %.lr.ph198.us.preheader ]
  %prol.iter430 = phi i64 [ %prol.iter430.next, %.lr.ph198.us.prol ], [ 0, %.lr.ph198.us.preheader ]
  %indvars.iv.next265.prol = add nuw nsw i64 %indvars.iv264.prol, 1 ; 4 uses
  %i.or = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next265.prol ; 2 uses
  store i32 1073741824, ptr %i.or, align 4, !tbaa !45
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 12
  store i32 1, ptr %i.os, align 4, !tbaa !40
  %prol.iter430.next = add i64 %prol.iter430, 1   ; 2 uses
  %prol.iter430.cmp.not = icmp eq i64 %prol.iter430.next, %xtraiter428
  br i1 %prol.iter430.cmp.not, label %.lr.ph198.us.prol.loopexit, label %.lr.ph198.us.prol, !llvm.loop !62

.lr.ph198.us.prol.loopexit:                       ; preds = %.lr.ph198.us.prol, %.lr.ph198.us.preheader
  %indvars.iv264.unr = phi i64 [ %i.oo, %.lr.ph198.us.preheader ], [ %indvars.iv.next265.prol, %.lr.ph198.us.prol ]
  %indvars.iv.next265.lcssa.unr = phi i64 [ poison, %.lr.ph198.us.preheader ], [ %indvars.iv.next265.prol, %.lr.ph198.us.prol ]
  %i.ot = sub nsw i64 %i.oo, %i.op
  %i.ou = icmp ugt i64 %i.ot, -4
  br i1 %i.ou, label %._crit_edge199.us.loopexit, label %.lr.ph198.us

.lr.ph198.us:                                     ; preds = %.lr.ph198.us.prol.loopexit, %.lr.ph198.us
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.lr.ph198.us ], [ %indvars.iv264.unr, %.lr.ph198.us.prol.loopexit ] ; 4 uses
  %i.ov = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv264 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 28
  store i32 1073741824, ptr %i.ow, align 4, !tbaa !45
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  store i32 1, ptr %i.ox, align 4, !tbaa !40
  %i.oy = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv264 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  store i32 1073741824, ptr %i.oz, align 4, !tbaa !45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 68
  store i32 1, ptr %i.pa, align 4, !tbaa !40
  %i.pb = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv264 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 84
  store i32 1073741824, ptr %i.pc, align 4, !tbaa !45
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 96
  store i32 1, ptr %i.pd, align 4, !tbaa !40
  %indvars.iv.next265.3 = add nuw nsw i64 %indvars.iv264, 4 ; 4 uses
  %i.pe = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next265.3 ; 2 uses
  store i32 1073741824, ptr %i.pe, align 4, !tbaa !45
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  store i32 1, ptr %i.pf, align 4, !tbaa !40
  %i.pg = icmp samesign ult i64 %indvars.iv.next265.3, %i.op
  br i1 %i.pg, label %.lr.ph198.us, label %._crit_edge199.us.loopexit, !llvm.loop !64

._crit_edge199.us.loopexit:                       ; preds = %.lr.ph198.us, %.lr.ph198.us.prol.loopexit
  %indvars.iv.next265.lcssa = phi i64 [ %indvars.iv.next265.lcssa.unr, %.lr.ph198.us.prol.loopexit ], [ %indvars.iv.next265.3, %.lr.ph198.us ]
  %i.ph = trunc nuw i64 %indvars.iv.next265.lcssa to i32
  br label %._crit_edge199.us

._crit_edge199.us:                                ; preds = %.._crit_edge199.us_crit_edge, %._crit_edge199.us.loopexit
  %.pre-phi288 = phi i64 [ %.pre287, %.._crit_edge199.us_crit_edge ], [ %i.op, %._crit_edge199.us.loopexit ]
  %.10.i.lcssa.us = phi i32 [ %.9.i202.us, %.._crit_edge199.us_crit_edge ], [ %i.ph, %._crit_edge199.us.loopexit ] ; 2 uses
  %i.pi = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi288 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i32 %.0448.i203.us, ptr %i.pj, align 4, !tbaa !38
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  store i32 %i.nq, ptr %i.pk, align 4, !tbaa !50
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  store i32 0, ptr %i.pl, align 4, !tbaa !40
  store i32 %.reass, ptr %i.pi, align 4, !tbaa !45
  %i.pm = add i32 %.0448.i203.us, -1              ; 2 uses
  %.not497.i.us = icmp ult i32 %i.pm, %i.nx
  br i1 %.not497.i.us, label %._crit_edge206, label %ZSTD_getMatchPrice.exit8.us, !llvm.loop !65

.lr.ph205.split:                                  ; preds = %.lr.ph205
  %i.pn = icmp samesign ugt i32 %i.nz, 19
  %i.po = shl nuw nsw i32 %i.nz, 9
  %i.pp = add nsw i32 %i.po, -9677
  %i.pq = select i1 %i.pn, i32 %i.pp, i32 51
  %i.pr = zext nneg i32 %i.nz to i64
  %i.ps = load i32, ptr %i.az, align 4, !tbaa !52
  %i.pt = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.pr
  %i.pv = load i32, ptr %i.bb, align 8, !tbaa !54
  %i.pw = load ptr, ptr %i.bc, align 8, !tbaa !55
  %invariant.op212.a = add i32 %i.pq, %i.ps
  %invariant.op376.a = add i32 %invariant.op212.a, %i.pv
  %i.px = add i32 %invariant.op376.a, -7936
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph205.split, %._crit_edge199
  %.0448.i203 = phi i32 [ %i.ns, %.lr.ph205.split ], [ %i.sc, %._crit_edge199 ] ; 4 uses
  %.9.i202 = phi i32 [ %.8.i215, %.lr.ph205.split ], [ %.10.i.lcssa, %._crit_edge199 ] ; 4 uses
  %i.py = add i32 %.0448.i203, %.2468.i218        ; 4 uses
  %i.pz = add i32 %.0448.i203, -3                 ; 3 uses
  %i.qa = load i32, ptr %i.pu, align 4, !tbaa !26
  %i.qb = add i32 %i.qa, 1
  %i.qc = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qb, i1 true)
  %i.qd = icmp ugt i32 %i.pz, 127
  br i1 %i.qd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qe = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pz, i1 true)
  %i.qf = sub nuw nsw i32 67, %i.qe
  br label %ZSTD_MLcode.exit34

bb.at:                                            ; preds = %bb.ar
  %i.qg = zext nneg i32 %i.pz to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !44
  %i.qj = zext i8 %i.qi to i32
  br label %ZSTD_MLcode.exit34

ZSTD_MLcode.exit34:                               ; preds = %bb.as, %bb.at
  %i.qk = phi i32 [ %i.qf, %bb.as ], [ %i.qj, %bb.at ]
  %i.ql = zext nneg i32 %i.qk to i64              ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !44
  %i.qo = zext i8 %i.qn to i32
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.ql
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !26
  %i.qr = add i32 %i.qq, 1
  %i.qs = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qr, i1 true)
  %i.qt = shl nuw nsw i32 %i.qs, 8
  %.neg = add nsw i32 %i.qt, -7936
  %reass.add176 = add nuw nsw i32 %i.nz, %i.qo
  %i.qu = add nuw nsw i32 %i.qc, %reass.add176
  %i.qv = shl nuw nsw i32 %i.qu, 8
  %i.qw = add i32 %i.qv, %i.px
  %i.qx = add i32 %i.qw, %.neg
  %i.qy = add nsw i32 %i.mw, %i.qx                ; 2 uses
  %i.qz = icmp ugt i32 %i.py, %.9.i202
  br i1 %i.qz, label %.lr.ph198.preheader, label %bb.au

bb.au:                                            ; preds = %ZSTD_MLcode.exit34
  %i.ra = zext i32 %i.py to i64
  %i.rb = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !45
  %i.rd = icmp slt i32 %i.qy, %i.rc
  br i1 %i.rd, label %.._crit_edge199_crit_edge, label %._crit_edge206

.._crit_edge199_crit_edge:                        ; preds = %bb.au
  %.pre289 = zext i32 %i.py to i64
  br label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %ZSTD_MLcode.exit34
  %i.re = zext i32 %.9.i202 to i64                ; 4 uses
  %i.rf = zext i32 %i.py to i64                   ; 4 uses
  %i.rg = sub nsw i64 %i.rf, %i.re
  %xtraiter424 = and i64 %i.rg, 3                 ; 2 uses
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader, %.lr.ph198.prol
  %indvars.iv261.prol = phi i64 [ %indvars.iv.next262.prol, %.lr.ph198.prol ], [ %i.re, %.lr.ph198.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph198.prol ], [ 0, %.lr.ph198.preheader ]
  %indvars.iv.next262.prol = add nuw nsw i64 %indvars.iv261.prol, 1 ; 4 uses
  %i.rh = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next262.prol ; 2 uses
  store i32 1073741824, ptr %i.rh, align 4, !tbaa !45
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  store i32 1, ptr %i.ri, align 4, !tbaa !40
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter424
  br i1 %prol.iter.cmp.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol, !llvm.loop !66

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %indvars.iv261.unr = phi i64 [ %i.re, %.lr.ph198.preheader ], [ %indvars.iv.next262.prol, %.lr.ph198.prol ]
  %indvars.iv.next262.lcssa.unr = phi i64 [ poison, %.lr.ph198.preheader ], [ %indvars.iv.next262.prol, %.lr.ph198.prol ]
  %i.rj = sub nsw i64 %i.re, %i.rf
  %i.rk = icmp ugt i64 %i.rj, -4
  br i1 %i.rk, label %._crit_edge199.loopexit, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.3, %.lr.ph198 ], [ %indvars.iv261.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %i.rl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv261 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 28
  store i32 1073741824, ptr %i.rm, align 4, !tbaa !45
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 40
  store i32 1, ptr %i.rn, align 4, !tbaa !40
  %i.ro = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv261 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 56
  store i32 1073741824, ptr %i.rp, align 4, !tbaa !45
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 68
  store i32 1, ptr %i.rq, align 4, !tbaa !40
  %i.rr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv261 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 84
  store i32 1073741824, ptr %i.rs, align 4, !tbaa !45
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 96
  store i32 1, ptr %i.rt, align 4, !tbaa !40
  %indvars.iv.next262.3 = add nuw nsw i64 %indvars.iv261, 4 ; 4 uses
  %i.ru = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next262.3 ; 2 uses
  store i32 1073741824, ptr %i.ru, align 4, !tbaa !45
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  store i32 1, ptr %i.rv, align 4, !tbaa !40
  %i.rw = icmp samesign ult i64 %indvars.iv.next262.3, %i.rf
  br i1 %i.rw, label %.lr.ph198, label %._crit_edge199.loopexit, !llvm.loop !64

._crit_edge199.loopexit:                          ; preds = %.lr.ph198, %.lr.ph198.prol.loopexit
  %indvars.iv.next262.lcssa = phi i64 [ %indvars.iv.next262.lcssa.unr, %.lr.ph198.prol.loopexit ], [ %indvars.iv.next262.3, %.lr.ph198 ]
  %i.rx = trunc nuw i64 %indvars.iv.next262.lcssa to i32
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %.._crit_edge199_crit_edge, %._crit_edge199.loopexit
  %.pre-phi290 = phi i64 [ %.pre289, %.._crit_edge199_crit_edge ], [ %i.rf, %._crit_edge199.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i202, %.._crit_edge199_crit_edge ], [ %i.rx, %._crit_edge199.loopexit ] ; 2 uses
  %i.ry = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi290 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i32 %.0448.i203, ptr %i.rz, align 4, !tbaa !38
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  store i32 %i.nq, ptr %i.sa, align 4, !tbaa !50
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  store i32 0, ptr %i.sb, align 4, !tbaa !40
  store i32 %i.qy, ptr %i.ry, align 4, !tbaa !45
  %i.sc = add i32 %.0448.i203, -1                 ; 2 uses
  %.not497.i = icmp ult i32 %i.sc, %i.nx
  br i1 %.not497.i, label %._crit_edge206, label %bb.ar, !llvm.loop !65

._crit_edge206:                                   ; preds = %._crit_edge199, %bb.au, %._crit_edge199.us, %bb.aq, %bb.ap
  %.9.i.lcssa = phi i32 [ %.8.i215, %bb.ap ], [ %.9.i202.us, %bb.aq ], [ %.10.i.lcssa.us, %._crit_edge199.us ], [ %.9.i202, %bb.au ], [ %.10.i.lcssa, %._crit_edge199 ] ; 3 uses
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %bb.av, label %bb.an, !llvm.loop !67

bb.av:                                            ; preds = %._crit_edge206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.sd = add i32 %.9.i.lcssa, 1
  %i.se = zext i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.se
  store i32 1073741824, ptr %i.sf, align 4, !tbaa !45
  br label %.thread110

.thread110:                                       ; preds = %..thread110_crit_edge, %bb.ak, %bb.av, %.thread126
  %.pre-phi286 = phi i32 [ %.pre285, %..thread110_crit_edge ], [ %i.mh, %bb.ak ], [ %i.mh, %bb.av ], [ %i.mh, %.thread126 ] ; 2 uses
  %.15.i119 = phi i32 [ %.2461.i219, %..thread110_crit_edge ], [ %.2461.i219, %bb.ak ], [ %.9.i.lcssa, %bb.av ], [ %.2461.i219, %.thread126 ] ; 3 uses
  %.not491.i = icmp ugt i32 %.pre-phi286, %.15.i119
  br i1 %.not491.i, label %bb.aw, label %.lr.ph221, !llvm.loop !68

bb.aw:                                            ; preds = %bb.aj, %.thread110
  %.2461.i.lcssa.ph = phi i32 [ %.15.i119, %.thread110 ], [ %.2461.i219, %bb.aj ] ; 3 uses
  %i.sg = zext i32 %.2461.i.lcssa.ph to i64
  %i.sh = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sg ; 5 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.sh, align 4, !tbaa !26 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !26 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !26 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 12
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !26 ; 5 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !69
  %i.si = sub i32 %.2461.i.lcssa.ph, %.sroa.9.0.copyload.i ; 2 uses
  %i.sj = icmp eq i32 %.sroa.9.0.copyload.i, 0
  br i1 %i.sj, label %bb.ax, label %bb.ay

.thread338:                                       ; preds = %bb.am
  %i.sk = load i32, ptr %i.nh, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.sl = icmp eq i32 %i.nj, 0
  br i1 %i.sl, label %bb.ax, label %._crit_edge273

bb.ax:                                            ; preds = %.thread338, %bb.aw
  %.17.i351 = phi i32 [ %i.nl, %.thread338 ], [ %.2461.i.lcssa.ph, %bb.aw ]
  %.sroa.0214.1.i345 = phi i32 [ %.sroa.0214.0.i234, %.thread338 ], [ %.sroa.0214.0.copyload.i, %bb.aw ]
  %i.sm = zext i32 %.17.i351 to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %.0442.i236, i64 %i.sm
  br label %bb.cd, !llvm.loop !70

bb.ay:                                            ; preds = %bb.aw
  %i.so = icmp eq i32 %.sroa.13.0.copyload.i, 0
  br i1 %i.so, label %._crit_edge273, label %bb.bf

._crit_edge273:                                   ; preds = %.thread338, %bb.ay
  %.sroa.0214.1.i346361 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.ay ], [ %.sroa.0214.0.i234, %.thread338 ]
  %.sroa.6217.7.i347360 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.ay ], [ %i.sk, %.thread338 ]
  %.sroa.9.7.i348359 = phi i32 [ %.sroa.9.0.copyload.i, %bb.ay ], [ %i.nj, %.thread338 ]
  %.3469.i350358 = phi i32 [ %i.si, %bb.ay ], [ %.2468.i218, %.thread338 ] ; 2 uses
  %.phi.trans.insert274 = zext i32 %.3469.i350358 to i64
  %.phi.trans.insert275 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert274
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert275, i64 12
  %.pre277 = load i32, ptr %.phi.trans.insert276, align 4, !tbaa !40
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge273, %.thread144
  %i.sp = phi i32 [ %i.bv, %.thread144 ], [ %.pre277, %._crit_edge273 ]
  %.sroa.0214.1.i139158 = phi i32 [ %.sroa.0214.0.i234, %.thread144 ], [ %.sroa.0214.1.i346361, %._crit_edge273 ]
  %.sroa.6217.7.i140156 = phi i32 [ %i.ds, %.thread144 ], [ %.sroa.6217.7.i347360, %._crit_edge273 ] ; 4 uses
  %.sroa.9.7.i141154 = phi i32 [ %i.dr, %.thread144 ], [ %.sroa.9.7.i348359, %._crit_edge273 ]
  %.3469.i143150 = phi i32 [ 0, %.thread144 ], [ %.3469.i350358, %._crit_edge273 ] ; 3 uses
  %i.sq = zext i32 %.3469.i143150 to i64
  %i.sr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sq
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ss, i64 12, i1 false)
  %i.st = icmp ugt i32 %.sroa.6217.7.i140156, 3
  br i1 %i.st, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.su = load i32, ptr %i.bg, align 4, !tbaa !26
  %i.sv = load i32, ptr %6, align 8, !tbaa !26
  store i32 %i.sv, ptr %i.bg, align 4, !tbaa !26
  %i.sw = add i32 %.sroa.6217.7.i140156, -3
  br label %.sink.split.i.i38

bb.bb:                                            ; preds = %bb.az
  %i.sx = icmp eq i32 %i.sp, 0
  %i.sy = zext i1 %i.sx to i32
  %i.sz = add nsw i32 %.sroa.6217.7.i140156, -1
  %i.ta = add nsw i32 %i.sz, %i.sy                ; 3 uses
  switch i32 %i.ta, label %bb.bd [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i45
    i32 3, label %bb.bc
  ]

.ZSTD_updateRep.exit_crit_edge.i45:               ; preds = %bb.bb
  %.sroa.2.0.copyload.pre.i47 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  br label %.thread159

bb.bc:                                            ; preds = %bb.bb
  %i.tb = load i32, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.tc = add i32 %i.tb, -1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.td = zext i32 %i.ta to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !26
  %.pre.i.i48 = load i32, ptr %6, align 8, !tbaa !26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.tg = phi i32 [ %i.tb, %bb.bc ], [ %.pre.i.i48, %bb.bd ]
  %i.th = phi i32 [ %i.tc, %bb.bc ], [ %i.tf, %bb.bd ]
  %.not22.i.i35 = icmp eq i32 %i.ta, 1
  %.val.i36 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  %.val2.i37 = load i32, ptr %i.bg, align 4
  %i.ti = select i1 %.not22.i.i35, i32 %.val.i36, i32 %.val2.i37
  store i32 %i.tg, ptr %i.bg, align 4, !tbaa !26
  br label %.sink.split.i.i38

.sink.split.i.i38:                                ; preds = %bb.be, %bb.ba
  %.sroa.2.0.copyload4.i39 = phi i32 [ %i.ti, %bb.be ], [ %i.su, %bb.ba ]
  %.sink.i.i40 = phi i32 [ %i.th, %bb.be ], [ %i.sw, %bb.ba ]
  store i32 %.sink.i.i40, ptr %6, align 8, !tbaa !26
  br label %.thread159

.thread159:                                       ; preds = %.sink.split.i.i38, %.ZSTD_updateRep.exit_crit_edge.i45
  %.sroa.2.0.copyload.i41 = phi i32 [ %.sroa.2.0.copyload.pre.i47, %.ZSTD_updateRep.exit_crit_edge.i45 ], [ %.sroa.2.0.copyload4.i39, %.sink.split.i.i38 ]
  %.sroa.0.0.copyload.i42 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i42, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i41, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.tj = add i32 %.3469.i143150, 2               ; 2 uses
  %.pre281 = zext i32 %i.tj to i64
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.tk = sub i32 %i.si, %.sroa.13.0.copyload.i   ; 3 uses
  %i.tl = add i32 %i.tk, 2                        ; 2 uses
  %i.tm = zext i32 %i.tl to i64                   ; 2 uses
  %i.tn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %i.to, align 4, !tbaa !40
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i32 0, ptr %i.tp, align 4, !tbaa !38
  %i.tq = add i32 %i.tk, 1
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tr ; 5 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.ts, align 4, !tbaa !26
  %.sroa.6217.0..sroa_idx218.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.6217.0..sroa_idx218.i, align 4, !tbaa !26
  %.sroa.9.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i, align 4, !tbaa !26
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !26
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  br label %bb.bg

bb.bg:                                            ; preds = %.thread159, %bb.bf
  %.pre-phi282 = phi i64 [ %.pre281, %.thread159 ], [ %i.tm, %bb.bf ]
  %i.tt = phi i32 [ %i.tj, %.thread159 ], [ %i.tl, %bb.bf ] ; 5 uses
  %.4470.i169 = phi i32 [ %.3469.i143150, %.thread159 ], [ %i.tk, %bb.bf ] ; 2 uses
  %.sroa.13.7.i142151168 = phi i32 [ 0, %.thread159 ], [ %.sroa.13.0.copyload.i, %bb.bf ]
  %.sroa.9.7.i141153167 = phi i32 [ %.sroa.9.7.i141154, %.thread159 ], [ %.sroa.9.0.copyload.i, %bb.bf ]
  %.sroa.6217.7.i140155166 = phi i32 [ %.sroa.6217.7.i140156, %.thread159 ], [ %.sroa.6217.0.copyload.i, %bb.bf ]
  %.sroa.0214.1.i139157165 = phi i32 [ %.sroa.0214.1.i139158, %.thread159 ], [ %.sroa.0214.0.copyload.i, %bb.bf ] ; 2 uses
  %i.tu = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi282 ; 5 uses
  store i32 %.sroa.0214.1.i139157165, ptr %i.tu, align 4, !tbaa !26
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  store i32 %.sroa.6217.7.i140155166, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !26
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store i32 %.sroa.9.7.i141153167, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !26
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.tu, i64 12
  store i32 %.sroa.13.7.i142151168, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !26
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  %i.tv = zext i32 %.4470.i169 to i64             ; 2 uses
  %i.tw = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tv ; 3 uses
  %i.tx = load i64, ptr %i.tw, align 4
  %.sroa.4.0..sroa_idx.i386 = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %.sroa.4.0.copyload.i387 = load i32, ptr %.sroa.4.0..sroa_idx.i386, align 4, !tbaa !26 ; 2 uses
  %.sroa.6.0..sroa_idx.i388 = getelementptr inbounds nuw i8, ptr %i.tw, i64 12
  %.sroa.6.0.copyload.i389 = load i32, ptr %.sroa.6.0..sroa_idx.i388, align 4, !tbaa !26 ; 2 uses
  %i.ty = zext i32 %i.tt to i64
  %i.tz = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ty
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  store i32 %.sroa.6.0.copyload.i389, ptr %i.ua, align 4, !tbaa !40
  %.not390 = icmp eq i32 %.sroa.4.0.copyload.i387, 0
  br i1 %.not390, label %.preheader184, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.bg, %.lr.ph396
  %.sroa.6.0.copyload.i394 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph396 ], [ %.sroa.6.0.copyload.i389, %bb.bg ] ; 2 uses
  %.sroa.4.0.copyload.i393 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph396 ], [ %.sroa.4.0.copyload.i387, %bb.bg ] ; 2 uses
  %i.ub = phi i64 [ %i.ul, %.lr.ph396 ], [ %i.tx, %bb.bg ]
end_hunk_0
begin_hunk_1_@ZSTD_compressBlock_opt2:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.dy = add i32 %i.cd, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !46 ; 2 uses
  %.not490.i = icmp ugt i32 %i.ec, %spec.select.i
  br i1 %.not490.i, label %.thread217, label %.preheader305

.thread217:                                       ; preds = %ZSTD_litLengthPrice.exit
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.br

.preheader305:                                    ; preds = %ZSTD_litLengthPrice.exit, %.preheader305
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader305 ], [ 1, %ZSTD_litLengthPrice.exit ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader305 ], [ 0, %ZSTD_litLengthPrice.exit ]
  %i.ee = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  store i32 1073741824, ptr %i.ee, align 4, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 0, ptr %i.ef, align 4, !tbaa !38
  %i.eg = trunc nuw nsw i64 %indvars.iv to i32
  %i.eh = add i32 %i.eg, %i.bw
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next ; 3 uses
  store i32 1073741824, ptr %i.ej, align 4, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 0, ptr %i.ek, align 4, !tbaa !38
  %i.el = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.em = add i32 %i.el, %i.bw
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 %i.em, ptr %i.en, align 4, !tbaa !40
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader304.preheader.unr-lcssa, label %.preheader305, !llvm.loop !49

.preheader304.preheader.unr-lcssa:                ; preds = %.preheader305
  br i1 %lcmp.mod.not, label %.preheader304.preheader, label %.preheader305.epil.preheader

.preheader305.epil.preheader:                     ; preds = %.preheader304.preheader.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod550)
  %i.eo = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next.1 ; 3 uses
  store i32 1073741824, ptr %i.eo, align 4, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 0, ptr %i.ep, align 4, !tbaa !38
  %i.eq = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.er = add i32 %i.eq, %i.bw
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 %i.er, ptr %i.es, align 4, !tbaa !40
  br label %.preheader304.preheader

.preheader304.preheader:                          ; preds = %.preheader304.preheader.unr-lcssa, %.preheader305.epil.preheader
  %wide.trip.count374 = zext i32 %i.cd to i64
  br label %.preheader304

.preheader304:                                    ; preds = %.preheader304.preheader, %._crit_edge
  %indvars.iv371 = phi i64 [ 0, %.preheader304.preheader ], [ %indvars.iv.next372, %._crit_edge ] ; 2 uses
  %.1452.i312 = phi i32 [ %i.z, %.preheader304.preheader ], [ %.2453.i.lcssa, %._crit_edge ] ; 4 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv371 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !48 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !46 ; 3 uses
  %.not500.i310 = icmp ugt i32 %.1452.i312, %i.ew
  br i1 %.not500.i310, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader304
  %i.ex = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.eu, i1 true)
  %i.ey = xor i32 %i.ex, 31                       ; 3 uses
  %i.ez = load i32, ptr %i.av, align 8, !tbaa !41
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %ZSTD_litLengthPrice.exit18.us, label %.lr.ph.split

ZSTD_litLengthPrice.exit18.us:                    ; preds = %.lr.ph, %ZSTD_litLengthPrice.exit18.us
  %.2453.i311.us = phi i32 [ %i.fq, %ZSTD_litLengthPrice.exit18.us ], [ %.1452.i312, %.lr.ph ] ; 4 uses
  %i.fb = add i32 %.2453.i311.us, -2              ; 2 uses
  %i.fc = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fb, i1 true)
  %i.fd = xor i32 %i.fc, 31                       ; 2 uses
  %i.fe = shl i32 %i.fb, 8
  %i.ff = lshr i32 %i.fe, %i.fd
  %i.fg = load i32, ptr %i.ad, align 4, !tbaa !45
  %reass.add299.us = add nuw nsw i32 %i.fd, %i.ey
  %reass.mul300.us = shl nuw nsw i32 %reass.add299.us, 8
  %i.fh = add i32 %i.ff, 4096
  %i.fi = add i32 %i.fh, %reass.mul300.us
  %i.fj = add i32 %i.fi, %i.fg
  %i.fk = zext i32 %.2453.i311.us to i64
  %i.fl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.fk ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 %.2453.i311.us, ptr %i.fm, align 4, !tbaa !38
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.eu, ptr %i.fn, align 4, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !40
  %i.fp = add nsw i32 %i.fj, 256
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !45
  %i.fq = add i32 %.2453.i311.us, 1               ; 3 uses
  %.not500.i.us = icmp ugt i32 %i.fq, %i.ew
  br i1 %.not500.i.us, label %._crit_edge, label %ZSTD_litLengthPrice.exit18.us, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fr = zext nneg i32 %i.ey to i64
  %i.fs = load i32, ptr %i.az, align 4, !tbaa !52
  %i.ft = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fr
  %i.fv = load i32, ptr %i.bb, align 8, !tbaa !54
  %i.fw = load ptr, ptr %i.bc, align 8, !tbaa !55
  %.neg287 = add i32 %i.fs, 51
  %invariant.op = add i32 %.neg287, %i.fv
  %i.fx = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.fy = load ptr, ptr %i.ax, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.split, %ZSTD_litLengthPrice.exit18
  %.2453.i311 = phi i32 [ %.1452.i312, %.lr.ph.split ], [ %i.hv, %ZSTD_litLengthPrice.exit18 ] ; 4 uses
  %i.fz = add i32 %.2453.i311, -3                 ; 3 uses
  %i.ga = load i32, ptr %i.fu, align 4, !tbaa !26
  %i.gb = add i32 %i.ga, 1                        ; 2 uses
  %i.gc = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gb, i1 true)
  %i.gd = xor i32 %i.gc, 31                       ; 2 uses
  %i.ge = shl i32 %i.gb, 8
  %i.gf = lshr i32 %i.ge, %i.gd
  %i.gg = icmp ugt i32 %i.fz, 127
  br i1 %i.gg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gh = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fz, i1 true)
  %i.gi = sub nuw nsw i32 67, %i.gh
  br label %ZSTD_litLengthPrice.exit18

bb.o:                                             ; preds = %bb.m
  %i.gj = zext nneg i32 %i.fz to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !44
  %i.gm = zext i8 %i.gl to i32
  br label %ZSTD_litLengthPrice.exit18

ZSTD_litLengthPrice.exit18:                       ; preds = %bb.n, %bb.o
  %i.gn = phi i32 [ %i.gi, %bb.n ], [ %i.gm, %bb.o ]
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !44
  %i.gr = zext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.go
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !26
  %i.gu = add i32 %i.gt, 1                        ; 2 uses
  %i.gv = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gu, i1 true)
  %i.gw = xor i32 %i.gv, 31                       ; 2 uses
  %i.gx = shl i32 %i.gu, 8
  %i.gy = lshr i32 %i.gx, %i.gw
  %i.gz = load i32, ptr %i.ad, align 4, !tbaa !45
  %i.ha = add nuw nsw i32 %i.ey, %i.gr
  %i.hb = add nuw nsw i32 %i.gd, %i.gw
  %reass.add297 = sub nsw i32 %i.ha, %i.hb
  %reass.mul298 = shl nsw i32 %reass.add297, 8
  %i.hc = add i32 %invariant.op, %i.gz
  %i.hd = add i32 %i.gf, %i.gy
  %i.he = sub i32 %i.hc, %i.hd
  %i.hf = add i32 %i.he, %reass.mul298
  %i.hg = zext i32 %.2453.i311 to i64
  %i.hh = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hg ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i32 %.2453.i311, ptr %i.hi, align 4, !tbaa !38
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i32 %i.eu, ptr %i.hj, align 4, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !40
  %i.hl = load i32, ptr %i.fy, align 4, !tbaa !26
  %i.hm = add i32 %i.hl, 1                        ; 2 uses
  %i.hn = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hm, i1 true)
  %i.ho = xor i32 %i.hn, 31                       ; 2 uses
  %i.hp = shl i32 %i.hm, 8
  %i.hq = lshr i32 %i.hp, %i.ho
  %i.hr = shl nuw nsw i32 %i.ho, 8
  %i.hs = add i32 %i.hq, %i.hr
  %i.ht = sub i32 %i.fx, %i.hs
  %i.hu = add nsw i32 %i.ht, %i.hf
  store i32 %i.hu, ptr %i.hh, align 4, !tbaa !45
  %i.hv = add i32 %.2453.i311, 1                  ; 3 uses
  %.not500.i = icmp ugt i32 %i.hv, %i.ew
  br i1 %.not500.i, label %._crit_edge, label %bb.m, !llvm.loop !51

._crit_edge:                                      ; preds = %ZSTD_litLengthPrice.exit18, %ZSTD_litLengthPrice.exit18.us, %.preheader304
  %.2453.i.lcssa = phi i32 [ %.1452.i312, %.preheader304 ], [ %i.fq, %ZSTD_litLengthPrice.exit18.us ], [ %i.hv, %ZSTD_litLengthPrice.exit18 ] ; 3 uses
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %.lr.ph335.preheader, label %.preheader304, !llvm.loop !56

.lr.ph335.preheader:                              ; preds = %._crit_edge
  %i.hw = zext i32 %.2453.i.lcssa to i64
  %i.hx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hw
  store i32 1073741824, ptr %i.hx, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.hy = add i32 %.2453.i.lcssa, -1
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.thread183
  %.2461.i333 = phi i32 [ %.15.i192, %.thread183 ], [ %i.hy, %.lr.ph335.preheader ] ; 7 uses
  %.2468.i332 = phi i32 [ %i.aae, %.thread183 ], [ 1, %.lr.ph335.preheader ] ; 12 uses
  %i.hz = zext i32 %.2468.i332 to i64             ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0442.i350, i64 %i.hz ; 8 uses
  %i.ib = add i32 %.2468.i332, -1
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ic ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !40 ; 7 uses
  %i.ig = add i32 %i.if, 1                        ; 17 uses
  %i.ih = load i32, ptr %i.id, align 4, !tbaa !45 ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ia, i64 -1
  %.val.i = load i32, ptr %i.bd, align 8, !tbaa !57
  %.not31.i = icmp eq i32 %.val.i, 2
  %.pre = load i32, ptr %i.av, align 8, !tbaa !41 ; 2 uses
  br i1 %.not31.i, label %ZSTD_rawLiteralsCost.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph335
  %i.ij = icmp eq i32 %.pre, 1
  br i1 %i.ij, label %ZSTD_rawLiteralsCost.exit.thread, label %ZSTD_rawLiteralsCost.exit.thread454

ZSTD_rawLiteralsCost.exit.thread:                 ; preds = %bb.p
  %i.ik = add nsw i32 %i.ih, 1536
  br label %bb.u

ZSTD_rawLiteralsCost.exit.thread454:              ; preds = %bb.p
  %i.il = load i32, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.im = add i32 %i.il, -256
  %i.in = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.io = load i8, ptr %i.ii, align 1, !tbaa !44
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !26
  %i.is = add i32 %i.ir, 1                        ; 2 uses
  %i.it = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.is, i1 true)
  %i.iu = xor i32 %i.it, 31                       ; 2 uses
  %i.iv = shl nuw nsw i32 %i.iu, 8
  %i.iw = shl i32 %i.is, 8
  %i.ix = lshr i32 %i.iw, %i.iu
  %i.iy = add i32 %i.iv, %i.ix                    ; 2 uses
  %i.iz = icmp ugt i32 %i.iy, %i.im
  %i.ja = sub i32 %i.il, %i.iy
  %spec.select39.i = select i1 %i.iz, i32 256, i32 %i.ja, !prof !60
  %i.jb = add nsw i32 %spec.select39.i, %i.ih
  br label %bb.q

ZSTD_rawLiteralsCost.exit:                        ; preds = %.lr.ph335
  %i.jc = add nsw i32 %i.ih, 2048                 ; 2 uses
  %i.jd = icmp eq i32 %.pre, 1
  br i1 %i.jd, label %bb.u, label %bb.q

bb.q:                                             ; preds = %ZSTD_rawLiteralsCost.exit.thread454, %ZSTD_rawLiteralsCost.exit
  %i.je = phi i32 [ %i.jb, %ZSTD_rawLiteralsCost.exit.thread454 ], [ %i.jc, %ZSTD_rawLiteralsCost.exit ] ; 2 uses
  %i.jf = icmp eq i32 %i.ig, 131072
  br i1 %i.jf, label %.thread151, label %bb.r

.thread151:                                       ; preds = %bb.q
  %i.jg = load i32, ptr %i.aw, align 4, !tbaa !42 ; 2 uses
  %i.jh = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 140
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !26
  %i.jk = add i32 %i.jj, 1                        ; 2 uses
  %i.jl = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.jk, i1 true)
  %i.jm = xor i32 %i.jl, 31                       ; 2 uses
  %i.jn = shl i32 %i.jk, 8
  %i.jo = lshr i32 %i.jn, %i.jm
  %.neg22.i24 = add i32 %i.jg, 4352
  %i.jp = shl nuw nsw i32 %i.jm, 8
  %i.jq = add i32 %i.jo, %i.jp
  %i.jr = sub i32 %.neg22.i24, %i.jq
  br label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.js = icmp ugt i32 %i.ig, 63
  br i1 %i.js, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jt = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ig, i1 true)
  %i.ju = sub nuw nsw i32 50, %i.jt
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.jv = zext nneg i32 %i.ig to i64
  %i.jw = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !44
  %i.jy = zext i8 %i.jx to i32
  br label %bb.v

bb.u:                                             ; preds = %ZSTD_rawLiteralsCost.exit.thread, %ZSTD_rawLiteralsCost.exit
  %i.jz = phi i32 [ %i.ik, %ZSTD_rawLiteralsCost.exit.thread ], [ %i.jc, %ZSTD_rawLiteralsCost.exit ]
  %i.ka = add i32 %i.if, 2                        ; 2 uses
  %i.kb = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ka, i1 true)
  %i.kc = xor i32 %i.kb, 31                       ; 2 uses
  %i.kd = shl nuw nsw i32 %i.kc, 8
  %i.ke = shl i32 %i.ka, 8
  %i.kf = lshr i32 %i.ke, %i.kc
  %i.kg = add i32 %i.kd, %i.kf
  %i.kh = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ig, i1 true)
  %i.ki = xor i32 %i.kh, 31                       ; 2 uses
  %i.kj = shl nuw nsw i32 %i.ki, 8
  %i.kk = shl i32 %i.ig, 8
  %i.kl = lshr i32 %i.kk, %i.ki
  %i.km = add i32 %i.kj, %i.kl
  br label %ZSTD_litLengthPrice.exit32

bb.v:                                             ; preds = %bb.s, %bb.t
  %i.kn = phi i32 [ %i.ju, %bb.s ], [ %i.jy, %bb.t ]
  %i.ko = zext nneg i32 %i.kn to i64              ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !44
  %i.kr = zext i8 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 8
  %i.kt = load i32, ptr %i.aw, align 4, !tbaa !42 ; 4 uses
  %i.ku = add i32 %i.ks, %i.kt
  %i.kv = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 4 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.ko
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !26
  %i.ky = add i32 %i.kx, 1                        ; 2 uses
  %i.kz = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ky, i1 true)
  %i.la = xor i32 %i.kz, 31                       ; 2 uses
  %.neg18.i20 = mul nsw i32 %i.la, -256
  %i.lb = shl i32 %i.ky, 8
  %i.lc = lshr i32 %i.lb, %i.la
  %.neg19.i21 = sub i32 %.neg18.i20, %i.lc
  %i.ld = add i32 %i.ku, %.neg19.i21              ; 3 uses
  %i.le = icmp eq i32 %i.if, 131072
  br i1 %i.le, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 140
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !26
  %i.lh = add i32 %i.lg, 1                        ; 2 uses
  %i.li = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.lh, i1 true)
  %i.lj = xor i32 %i.li, 31                       ; 2 uses
  %i.lk = shl i32 %i.lh, 8
  %i.ll = lshr i32 %i.lk, %i.lj
  %.neg22.i31 = add i32 %i.kt, 4352
  %i.lm = shl nuw nsw i32 %i.lj, 8
  %i.ln = add i32 %i.ll, %i.lm
  %i.lo = sub i32 %.neg22.i31, %i.ln
  br label %ZSTD_litLengthPrice.exit32

bb.x:                                             ; preds = %bb.v
  %i.lp = icmp ugt i32 %i.if, 63
  br i1 %i.lp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread151, %bb.x
  %i.lq = phi ptr [ %i.jh, %.thread151 ], [ %i.kv, %bb.x ]
  %i.lr = phi i32 [ %i.jg, %.thread151 ], [ %i.kt, %bb.x ]
  %.0.i22.ph150154 = phi i32 [ %i.jr, %.thread151 ], [ %i.ld, %bb.x ]
  %i.ls = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.if, i1 true)
  %i.lt = sub nuw nsw i32 50, %i.ls
  br label %ZSTD_LLcode.exit.i26

bb.z:                                             ; preds = %bb.x
  %i.lu = zext nneg i32 %i.if to i64
  %i.lv = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !44
  %i.lx = zext i8 %i.lw to i32
  br label %ZSTD_LLcode.exit.i26

ZSTD_LLcode.exit.i26:                             ; preds = %bb.z, %bb.y
  %i.ly = phi ptr [ %i.lq, %bb.y ], [ %i.kv, %bb.z ]
  %i.lz = phi i32 [ %i.lr, %bb.y ], [ %i.kt, %bb.z ]
  %.0.i22.ph150153 = phi i32 [ %.0.i22.ph150154, %bb.y ], [ %i.ld, %bb.z ]
  %i.ma = phi i32 [ %i.lt, %bb.y ], [ %i.lx, %bb.z ]
  %i.mb = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !44
  %i.me = zext i8 %i.md to i32
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.mb
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !26
  %i.mh = add i32 %i.mg, 1                        ; 2 uses
  %i.mi = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mh, i1 true)
  %i.mj = xor i32 %i.mi, 31                       ; 2 uses
  %i.mk = shl i32 %i.mh, 8
  %i.ml = lshr i32 %i.mk, %i.mj
  %reass.add249 = sub nsw i32 %i.me, %i.mj
  %reass.mul250 = shl nsw i32 %reass.add249, 8
  %i.mm = sub i32 %i.lz, %i.ml
  %i.mn = add i32 %i.mm, %reass.mul250
  br label %ZSTD_litLengthPrice.exit32

ZSTD_litLengthPrice.exit32:                       ; preds = %bb.u, %bb.w, %ZSTD_LLcode.exit.i26
  %i.mo = phi i32 [ %i.je, %ZSTD_LLcode.exit.i26 ], [ %i.je, %bb.w ], [ %i.jz, %bb.u ]
  %.0.i22146 = phi i32 [ %.0.i22.ph150153, %ZSTD_LLcode.exit.i26 ], [ %i.ld, %bb.w ], [ %i.kg, %bb.u ]
  %.0.i29 = phi i32 [ %i.mn, %ZSTD_LLcode.exit.i26 ], [ %i.lo, %bb.w ], [ %i.km, %bb.u ]
  %i.mp = sub nsw i32 %.0.i22146, %.0.i29
  %i.mq = add nsw i32 %i.mo, %i.mp                ; 9 uses
  %i.mr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.hz ; 12 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !45 ; 4 uses
  %.not492.i = icmp sgt i32 %i.mq, %i.ms
  br i1 %.not492.i, label %ZSTD_litLengthPrice.exit32._crit_edge, label %bb.aa

ZSTD_litLengthPrice.exit32._crit_edge:            ; preds = %ZSTD_litLengthPrice.exit32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  %.pre387 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  br label %ZSTD_litLengthPrice.exit42.thread

bb.aa:                                            ; preds = %ZSTD_litLengthPrice.exit32
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !26 ; 4 uses
end_hunk_1
begin_hunk_2_@ZSTD_compressBlock_opt2:bb.a
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.sq = zext i32 %i.sn to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !26
  %.pre.i.i = load i32, ptr %8, align 8, !tbaa !26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.st = phi i32 [ %i.so, %bb.aq ], [ %.pre.i.i, %bb.ar ]
  %i.su = phi i32 [ %i.sp, %bb.aq ], [ %i.ss, %bb.ar ]
  %.not22.i.i = icmp eq i32 %i.sn, 1
  %.val.i77 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i, align 8
  %.val2.i = load i32, ptr %i.bf, align 4
  %i.sv = select i1 %.not22.i.i, i32 %.val.i77, i32 %.val2.i
  store i32 %i.st, ptr %i.bf, align 4, !tbaa !26
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.as, %bb.ao
  %.sroa.2.0.copyload4.i = phi i32 [ %i.sv, %bb.as ], [ %i.sh, %bb.ao ]
  %.sink.i.i = phi i32 [ %i.su, %bb.as ], [ %i.sj, %bb.ao ]
  store i32 %.sink.i.i, ptr %8, align 8, !tbaa !26
  br label %ZSTD_newRep.exit

ZSTD_newRep.exit:                                 ; preds = %.ZSTD_updateRep.exit_crit_edge.i, %.sink.split.i.i
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.pre.i, %.ZSTD_updateRep.exit_crit_edge.i ], [ %.sroa.2.0.copyload4.i, %.sink.split.i.i ]
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.sroa.5.0..sroa_idx98.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx98.i, align 4, !tbaa !26
  %.sroa.6100.0..sroa_idx101.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i32 %.sroa.6100.0.copyload.i, ptr %.sroa.6100.0..sroa_idx101.i, align 4, !tbaa !26
  %.sroa.7.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 12
  %.sroa.8105.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.8105.0..sroa_idx106.i, align 4
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.489.0..sroa_idx.i, align 4
  store i32 1, ptr %.sroa.7.0..sroa_idx103.i, align 4, !tbaa !40
  store i32 %i.pf, ptr %i.rx, align 4, !tbaa !45
  %spec.select502.i = call i32 @llvm.umax.i32(i32 %.2461.i333, i32 %i.rv)
  br label %ZSTD_litLengthPrice.exit42.thread

ZSTD_litLengthPrice.exit42.thread:                ; preds = %bb.aa, %ZSTD_litLengthPrice.exit42, %ZSTD_litLengthPrice.exit76, %bb.am, %ZSTD_newRep.exit, %bb.ab, %ZSTD_litLengthPrice.exit32._crit_edge
  %i.sw = phi i32 [ %i.ms, %ZSTD_litLengthPrice.exit32._crit_edge ], [ %i.mq, %bb.ab ], [ %i.mq, %ZSTD_newRep.exit ], [ %i.mq, %bb.am ], [ %i.mq, %ZSTD_litLengthPrice.exit76 ], [ %i.mq, %ZSTD_litLengthPrice.exit42 ], [ %i.mq, %bb.aa ]
  %i.sx = phi i32 [ %.pre387, %ZSTD_litLengthPrice.exit32._crit_edge ], [ %i.ig, %bb.ab ], [ %i.ig, %ZSTD_newRep.exit ], [ %i.ig, %bb.am ], [ %i.ig, %ZSTD_litLengthPrice.exit76 ], [ %i.ig, %ZSTD_litLengthPrice.exit42 ], [ %i.ig, %bb.aa ]
  %.6465.i = phi i32 [ %.2461.i333, %ZSTD_litLengthPrice.exit32._crit_edge ], [ %.2461.i333, %bb.ab ], [ %spec.select502.i, %ZSTD_newRep.exit ], [ %.2461.i333, %bb.am ], [ %.2461.i333, %ZSTD_litLengthPrice.exit76 ], [ %.2461.i333, %ZSTD_litLengthPrice.exit42 ], [ %.2461.i333, %bb.aa ] ; 4 uses
  %i.sy = icmp eq i32 %i.sx, 0                    ; 2 uses
  br i1 %i.sy, label %bb.at, label %bb.az

bb.at:                                            ; preds = %ZSTD_litLengthPrice.exit42.thread
  %i.sz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !38
  %i.tb = sub i32 %.2468.i332, %i.ta
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !50 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 12
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.te, i64 12, i1 false)
  %i.tj = icmp ugt i32 %i.tg, 3
  br i1 %i.tj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.tk = load i32, ptr %i.bg, align 4, !tbaa !26
  %i.tl = load i32, ptr %7, align 8, !tbaa !26
  store i32 %i.tl, ptr %i.bg, align 4, !tbaa !26
  %i.tm = add i32 %i.tg, -3
  br label %.sink.split.i.i81

bb.av:                                            ; preds = %bb.at
  %i.tn = icmp eq i32 %i.ti, 0
  %i.to = zext i1 %i.tn to i32
  %i.tp = add nsw i32 %i.tg, -1
  %i.tq = add nsw i32 %i.tp, %i.to                ; 3 uses
  switch i32 %i.tq, label %bb.ax [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i88
    i32 3, label %bb.aw
  ]

.ZSTD_updateRep.exit_crit_edge.i88:               ; preds = %bb.av
  %.sroa.2.0.copyload.pre.i90 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i89, align 8
  br label %ZSTD_newRep.exit92

bb.aw:                                            ; preds = %bb.av
  %i.tr = load i32, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ts = add i32 %i.tr, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.tt = zext i32 %i.tq to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.tt
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !26
  %.pre.i.i91 = load i32, ptr %7, align 8, !tbaa !26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.tw = phi i32 [ %i.tr, %bb.aw ], [ %.pre.i.i91, %bb.ax ]
  %i.tx = phi i32 [ %i.ts, %bb.aw ], [ %i.tv, %bb.ax ]
  %.not22.i.i78 = icmp eq i32 %i.tq, 1
  %.val.i79 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i89, align 8
  %.val2.i80 = load i32, ptr %i.bg, align 4
  %i.ty = select i1 %.not22.i.i78, i32 %.val.i79, i32 %.val2.i80
  store i32 %i.tw, ptr %i.bg, align 4, !tbaa !26
  br label %.sink.split.i.i81

.sink.split.i.i81:                                ; preds = %bb.ay, %bb.au
  %.sroa.2.0.copyload4.i82 = phi i32 [ %i.ty, %bb.ay ], [ %i.tk, %bb.au ]
  %.sink.i.i83 = phi i32 [ %i.tx, %bb.ay ], [ %i.tm, %bb.au ]
  store i32 %.sink.i.i83, ptr %7, align 8, !tbaa !26
  br label %ZSTD_newRep.exit92

ZSTD_newRep.exit92:                               ; preds = %.ZSTD_updateRep.exit_crit_edge.i88, %.sink.split.i.i81
  %.sroa.2.0.copyload.i84 = phi i32 [ %.sroa.2.0.copyload.pre.i90, %.ZSTD_updateRep.exit_crit_edge.i88 ], [ %.sroa.2.0.copyload4.i82, %.sink.split.i.i81 ]
  %.sroa.0.0.copyload.i85 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i64 %.sroa.0.0.copyload.i85, ptr %i.tz, align 4
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store i32 %.sroa.2.0.copyload.i84, ptr %.sroa.481.0..sroa_idx.i, align 4
  br label %bb.az

bb.az:                                            ; preds = %ZSTD_newRep.exit92, %ZSTD_litLengthPrice.exit42.thread
  %i.ua = icmp ugt ptr %i.ia, %i.f
  br i1 %i.ua, label %.thread183, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ub = icmp eq i32 %.2468.i332, %.6465.i
  br i1 %i.ub, label %bb.bo, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.uc = load i32, ptr %i.av, align 8, !tbaa !41
  %i.ud = icmp eq i32 %i.uc, 1
  br i1 %i.ud, label %ZSTD_litLengthPrice.exit97, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ue = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.uf = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !26
  %i.uh = add i32 %i.ug, 1                        ; 2 uses
  %i.ui = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.uh, i1 true)
  %i.uj = xor i32 %i.ui, 31                       ; 2 uses
  %i.uk = shl i32 %i.uh, 8
  %i.ul = lshr i32 %i.uk, %i.uj
  %i.um = shl nuw nsw i32 %i.uj, 8
  %i.un = add i32 %i.ul, %i.um
  %i.uo = sub i32 %i.ue, %i.un
  br label %ZSTD_litLengthPrice.exit97

ZSTD_litLengthPrice.exit97:                       ; preds = %bb.bb, %bb.bc
  %.0.i96 = phi i32 [ %i.uo, %bb.bc ], [ 256, %bb.bb ]
  %i.up = zext i1 %i.sy to i32
  %i.uq = add nsw i32 %.0.i96, %i.sw              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ur = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.us = call i32 %i.v(ptr noundef %i.af, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.ia, ptr noundef %i.e, ptr noundef nonnull %i.ur, i32 noundef %i.up, i32 noundef %i.z) #11, !inline_history !37
  store i32 %i.us, ptr %i.c, align 4, !tbaa !26
  %i.ut = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.uu = sub i64 %i.ut, %i.al
  %i.uv = trunc i64 %i.uu to i32
  %i.uw = sub i64 %i.am, %i.ut
  %i.ux = trunc i64 %i.uw to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %9, ptr noundef %i.af, ptr noundef %i.c, i32 noundef %i.uv, i32 noundef %i.ux, i32 noundef %i.z)
  %i.uy = load i32, ptr %i.c, align 4, !tbaa !26  ; 3 uses
  %.not494.i = icmp eq i32 %i.uy, 0
  br i1 %.not494.i, label %.thread199, label %bb.bd

.thread199:                                       ; preds = %ZSTD_litLengthPrice.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread183

bb.bd:                                            ; preds = %ZSTD_litLengthPrice.exit97
  %i.uz = add i32 %i.uy, -1
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.va ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !46 ; 5 uses
  %i.ve = icmp ule i32 %i.vd, %spec.select.i
  %i.vf = add i32 %i.vd, %.2468.i332              ; 2 uses
  %i.vg = icmp ult i32 %i.vf, 4096
  %or.cond504.i.not = and i1 %i.ve, %i.vg
  %i.vh = zext nneg i32 %i.vd to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.vh
  %.not495.i = icmp ult ptr %i.vi, %i.e
  %or.cond506.i = select i1 %or.cond504.i.not, i1 %.not495.i, i1 false
  br i1 %or.cond506.i, label %.preheader.preheader, label %.thread461

.preheader.preheader:                             ; preds = %bb.bd
  %wide.trip.count385 = zext i32 %i.uy to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge324
  %indvars.iv382 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next383, %._crit_edge324 ] ; 4 uses
  %.8.i329 = phi i32 [ %.6465.i, %.preheader.preheader ], [ %.9.i.lcssa, %._crit_edge324 ] ; 3 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv382 ; 2 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !48 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !46 ; 3 uses
  %.not496.i = icmp eq i64 %indvars.iv382, 0
  br i1 %.not496.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.preheader
  %i.vn = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv382
  %i.vo = getelementptr i8, ptr %i.vn, i64 -4
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !46
  %i.vq = add i32 %i.vp, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.preheader
  %i.vr = phi i32 [ %i.vq, %bb.be ], [ %i.z, %.preheader ] ; 3 uses
  %.not497.i319 = icmp ult i32 %i.vm, %i.vr
  br i1 %.not497.i319, label %._crit_edge324, label %.lr.ph323

.lr.ph323:                                        ; preds = %bb.bf
  %i.vs = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.vk, i1 true)
  %i.vt = xor i32 %i.vs, 31                       ; 3 uses
  %i.vu = load i32, ptr %i.av, align 8, !tbaa !41
  %i.vv = icmp eq i32 %i.vu, 1
  br i1 %i.vv, label %ZSTD_getMatchPrice.exit8.us, label %.lr.ph323.split

ZSTD_getMatchPrice.exit8.us:                      ; preds = %.lr.ph323, %bb.bh
  %.0448.i321.us = phi i32 [ %i.xi, %bb.bh ], [ %i.vm, %.lr.ph323 ] ; 4 uses
  %.9.i320.us = phi i32 [ %.12.i.us, %bb.bh ], [ %.8.i329, %.lr.ph323 ] ; 4 uses
  %i.vw = add i32 %.0448.i321.us, %.2468.i332     ; 4 uses
  %i.vx = add i32 %.0448.i321.us, -2              ; 2 uses
  %i.vy = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.vx, i1 true)
  %i.vz = xor i32 %i.vy, 31                       ; 2 uses
  %i.wa = shl i32 %i.vx, 8
  %i.wb = lshr i32 %i.wa, %i.vz
  %reass.add283.us = add nuw nsw i32 %i.vz, %i.vt
  %reass.mul284.us = shl nuw nsw i32 %reass.add283.us, 8
  %i.wc = add i32 %i.wb, 4096
  %i.wd = add i32 %i.wc, %reass.mul284.us
  %i.we = add nsw i32 %i.uq, %i.wd                ; 2 uses
  %i.wf = icmp ugt i32 %i.vw, %.9.i320.us
  br i1 %i.wf, label %.lr.ph316.us.preheader, label %bb.bg

bb.bg:                                            ; preds = %ZSTD_getMatchPrice.exit8.us
  %i.wg = zext i32 %i.vw to i64
  %i.wh = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !45
  %i.wj = icmp slt i32 %i.we, %i.wi
  br i1 %i.wj, label %.._crit_edge317.us_crit_edge, label %bb.bh

.._crit_edge317.us_crit_edge:                     ; preds = %bb.bg
  %.pre398 = zext i32 %i.vw to i64
  br label %._crit_edge317.us

.lr.ph316.us.preheader:                           ; preds = %ZSTD_getMatchPrice.exit8.us
  %i.wk = zext i32 %.9.i320.us to i64             ; 4 uses
  %i.wl = zext i32 %i.vw to i64                   ; 4 uses
  %i.wm = sub nsw i64 %i.wl, %i.wk
  %xtraiter555 = and i64 %i.wm, 3                 ; 2 uses
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  br i1 %lcmp.mod556.not, label %.lr.ph316.us.prol.loopexit, label %.lr.ph316.us.prol

.lr.ph316.us.prol:                                ; preds = %.lr.ph316.us.preheader, %.lr.ph316.us.prol
  %indvars.iv379.prol = phi i64 [ %indvars.iv.next380.prol, %.lr.ph316.us.prol ], [ %i.wk, %.lr.ph316.us.preheader ]
  %prol.iter557 = phi i64 [ %prol.iter557.next, %.lr.ph316.us.prol ], [ 0, %.lr.ph316.us.preheader ]
  %indvars.iv.next380.prol = add nuw nsw i64 %indvars.iv379.prol, 1 ; 4 uses
  %i.wn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next380.prol ; 2 uses
  store i32 1073741824, ptr %i.wn, align 4, !tbaa !45
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  store i32 1, ptr %i.wo, align 4, !tbaa !40
  %prol.iter557.next = add i64 %prol.iter557, 1   ; 2 uses
  %prol.iter557.cmp.not = icmp eq i64 %prol.iter557.next, %xtraiter555
  br i1 %prol.iter557.cmp.not, label %.lr.ph316.us.prol.loopexit, label %.lr.ph316.us.prol, !llvm.loop !101

.lr.ph316.us.prol.loopexit:                       ; preds = %.lr.ph316.us.prol, %.lr.ph316.us.preheader
  %indvars.iv379.unr = phi i64 [ %i.wk, %.lr.ph316.us.preheader ], [ %indvars.iv.next380.prol, %.lr.ph316.us.prol ]
  %indvars.iv.next380.lcssa.unr = phi i64 [ poison, %.lr.ph316.us.preheader ], [ %indvars.iv.next380.prol, %.lr.ph316.us.prol ]
  %i.wp = sub nsw i64 %i.wk, %i.wl
  %i.wq = icmp ugt i64 %i.wp, -4
  br i1 %i.wq, label %._crit_edge317.us.loopexit, label %.lr.ph316.us

.lr.ph316.us:                                     ; preds = %.lr.ph316.us.prol.loopexit, %.lr.ph316.us
  %indvars.iv379 = phi i64 [ %indvars.iv.next380.3, %.lr.ph316.us ], [ %indvars.iv379.unr, %.lr.ph316.us.prol.loopexit ] ; 4 uses
  %i.wr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv379 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 28
  store i32 1073741824, ptr %i.ws, align 4, !tbaa !45
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 40
  store i32 1, ptr %i.wt, align 4, !tbaa !40
  %i.wu = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv379 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 56
  store i32 1073741824, ptr %i.wv, align 4, !tbaa !45
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 68
  store i32 1, ptr %i.ww, align 4, !tbaa !40
  %i.wx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv379 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 84
  store i32 1073741824, ptr %i.wy, align 4, !tbaa !45
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 96
  store i32 1, ptr %i.wz, align 4, !tbaa !40
  %indvars.iv.next380.3 = add nuw nsw i64 %indvars.iv379, 4 ; 4 uses
  %i.xa = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next380.3 ; 2 uses
  store i32 1073741824, ptr %i.xa, align 4, !tbaa !45
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 12
  store i32 1, ptr %i.xb, align 4, !tbaa !40
  %i.xc = icmp samesign ult i64 %indvars.iv.next380.3, %i.wl
  br i1 %i.xc, label %.lr.ph316.us, label %._crit_edge317.us.loopexit, !llvm.loop !64

._crit_edge317.us.loopexit:                       ; preds = %.lr.ph316.us, %.lr.ph316.us.prol.loopexit
  %indvars.iv.next380.lcssa = phi i64 [ %indvars.iv.next380.lcssa.unr, %.lr.ph316.us.prol.loopexit ], [ %indvars.iv.next380.3, %.lr.ph316.us ]
  %i.xd = trunc nuw i64 %indvars.iv.next380.lcssa to i32
  br label %._crit_edge317.us

._crit_edge317.us:                                ; preds = %.._crit_edge317.us_crit_edge, %._crit_edge317.us.loopexit
  %.pre-phi399 = phi i64 [ %.pre398, %.._crit_edge317.us_crit_edge ], [ %i.wl, %._crit_edge317.us.loopexit ]
  %.10.i.lcssa.us = phi i32 [ %.9.i320.us, %.._crit_edge317.us_crit_edge ], [ %i.xd, %._crit_edge317.us.loopexit ]
  %i.xe = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi399 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i32 %.0448.i321.us, ptr %i.xf, align 4, !tbaa !38
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  store i32 %i.vk, ptr %i.xg, align 4, !tbaa !50
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  store i32 0, ptr %i.xh, align 4, !tbaa !40
  store i32 %i.we, ptr %i.xe, align 4, !tbaa !45
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge317.us, %bb.bg
  %.12.i.us = phi i32 [ %.10.i.lcssa.us, %._crit_edge317.us ], [ %.9.i320.us, %bb.bg ] ; 2 uses
  %i.xi = add i32 %.0448.i321.us, -1              ; 2 uses
  %.not497.i.us = icmp ult i32 %i.xi, %i.vr
  br i1 %.not497.i.us, label %._crit_edge324, label %ZSTD_getMatchPrice.exit8.us, !llvm.loop !65

.lr.ph323.split:                                  ; preds = %.lr.ph323
  %i.xj = zext nneg i32 %i.vt to i64
  %i.xk = load i32, ptr %i.az, align 4, !tbaa !52
  %i.xl = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.xj
  %i.xn = load i32, ptr %i.bb, align 8, !tbaa !54
  %i.xo = load ptr, ptr %i.bc, align 8, !tbaa !55
  %invariant.op327.a = add i32 %i.xk, 51
  %i.xp = add i32 %invariant.op327.a, %i.xn
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph323.split, %bb.bm
  %.0448.i321 = phi i32 [ %i.vm, %.lr.ph323.split ], [ %i.aaa, %bb.bm ] ; 4 uses
  %.9.i320 = phi i32 [ %.8.i329, %.lr.ph323.split ], [ %.12.i, %bb.bm ] ; 4 uses
  %i.xq = add i32 %.0448.i321, %.2468.i332        ; 4 uses
  %i.xr = add i32 %.0448.i321, -3                 ; 3 uses
  %i.xs = load i32, ptr %i.xm, align 4, !tbaa !26
  %i.xt = add i32 %i.xs, 1                        ; 2 uses
  %i.xu = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xt, i1 true)
  %i.xv = xor i32 %i.xu, 31                       ; 2 uses
  %i.xw = shl i32 %i.xt, 8
  %i.xx = lshr i32 %i.xw, %i.xv
  %i.xy = icmp ugt i32 %i.xr, 127
  br i1 %i.xy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.xz = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xr, i1 true)
  %i.ya = sub nuw nsw i32 67, %i.xz
  br label %ZSTD_MLcode.exit98

bb.bk:                                            ; preds = %bb.bi
  %i.yb = zext nneg i32 %i.xr to i64
  %i.yc = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !44
  %i.ye = zext i8 %i.yd to i32
  br label %ZSTD_MLcode.exit98

ZSTD_MLcode.exit98:                               ; preds = %bb.bj, %bb.bk
  %i.yf = phi i32 [ %i.ya, %bb.bj ], [ %i.ye, %bb.bk ]
  %i.yg = zext nneg i32 %i.yf to i64              ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !44
  %i.yj = zext i8 %i.yi to i32
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.yg
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !26
  %i.ym = add i32 %i.yl, 1                        ; 2 uses
  %i.yn = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ym, i1 true)
  %i.yo = xor i32 %i.yn, 31                       ; 2 uses
  %i.yp = shl i32 %i.ym, 8
  %i.yq = lshr i32 %i.yp, %i.yo
  %i.yr = add nuw nsw i32 %i.vt, %i.yj
  %i.ys = add nuw nsw i32 %i.xv, %i.yo
  %reass.add281 = sub nsw i32 %i.yr, %i.ys
  %reass.mul282 = shl nsw i32 %reass.add281, 8
  %i.yt = add i32 %i.xx, %i.yq
  %i.yu = sub i32 %i.xp, %i.yt
  %i.yv = add i32 %i.yu, %reass.mul282
  %i.yw = add nsw i32 %i.uq, %i.yv                ; 2 uses
  %i.yx = icmp ugt i32 %i.xq, %.9.i320
  br i1 %i.yx, label %.lr.ph316.preheader, label %bb.bl

bb.bl:                                            ; preds = %ZSTD_MLcode.exit98
  %i.yy = zext i32 %i.xq to i64
  %i.yz = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.yy
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !45
  %i.zb = icmp slt i32 %i.yw, %i.za
  br i1 %i.zb, label %.._crit_edge317_crit_edge, label %bb.bm

.._crit_edge317_crit_edge:                        ; preds = %bb.bl
  %.pre400 = zext i32 %i.xq to i64
  br label %._crit_edge317

.lr.ph316.preheader:                              ; preds = %ZSTD_MLcode.exit98
  %i.zc = zext i32 %.9.i320 to i64                ; 4 uses
  %i.zd = zext i32 %i.xq to i64                   ; 4 uses
  %i.ze = sub nsw i64 %i.zd, %i.zc
  %xtraiter551 = and i64 %i.ze, 3                 ; 2 uses
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol

.lr.ph316.prol:                                   ; preds = %.lr.ph316.preheader, %.lr.ph316.prol
  %indvars.iv376.prol = phi i64 [ %indvars.iv.next377.prol, %.lr.ph316.prol ], [ %i.zc, %.lr.ph316.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph316.prol ], [ 0, %.lr.ph316.preheader ]
  %indvars.iv.next377.prol = add nuw nsw i64 %indvars.iv376.prol, 1 ; 4 uses
  %i.zf = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next377.prol ; 2 uses
  store i32 1073741824, ptr %i.zf, align 4, !tbaa !45
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 12
  store i32 1, ptr %i.zg, align 4, !tbaa !40
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter551
  br i1 %prol.iter.cmp.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol, !llvm.loop !102

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %.lr.ph316.preheader
  %indvars.iv376.unr = phi i64 [ %i.zc, %.lr.ph316.preheader ], [ %indvars.iv.next377.prol, %.lr.ph316.prol ]
  %indvars.iv.next377.lcssa.unr = phi i64 [ poison, %.lr.ph316.preheader ], [ %indvars.iv.next377.prol, %.lr.ph316.prol ]
  %i.zh = sub nsw i64 %i.zc, %i.zd
  %i.zi = icmp ugt i64 %i.zh, -4
  br i1 %i.zi, label %._crit_edge317.loopexit, label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.prol.loopexit, %.lr.ph316
  %indvars.iv376 = phi i64 [ %indvars.iv.next377.3, %.lr.ph316 ], [ %indvars.iv376.unr, %.lr.ph316.prol.loopexit ] ; 4 uses
  %i.zj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv376 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 28
  store i32 1073741824, ptr %i.zk, align 4, !tbaa !45
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 40
  store i32 1, ptr %i.zl, align 4, !tbaa !40
  %i.zm = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv376 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 56
  store i32 1073741824, ptr %i.zn, align 4, !tbaa !45
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 68
  store i32 1, ptr %i.zo, align 4, !tbaa !40
  %i.zp = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv376 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 84
  store i32 1073741824, ptr %i.zq, align 4, !tbaa !45
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 96
  store i32 1, ptr %i.zr, align 4, !tbaa !40
  %indvars.iv.next377.3 = add nuw nsw i64 %indvars.iv376, 4 ; 4 uses
  %i.zs = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next377.3 ; 2 uses
  store i32 1073741824, ptr %i.zs, align 4, !tbaa !45
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 12
  store i32 1, ptr %i.zt, align 4, !tbaa !40
  %i.zu = icmp samesign ult i64 %indvars.iv.next377.3, %i.zd
  br i1 %i.zu, label %.lr.ph316, label %._crit_edge317.loopexit, !llvm.loop !64

._crit_edge317.loopexit:                          ; preds = %.lr.ph316, %.lr.ph316.prol.loopexit
  %indvars.iv.next377.lcssa = phi i64 [ %indvars.iv.next377.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %indvars.iv.next377.3, %.lr.ph316 ]
  %i.zv = trunc nuw i64 %indvars.iv.next377.lcssa to i32
  br label %._crit_edge317

._crit_edge317:                                   ; preds = %.._crit_edge317_crit_edge, %._crit_edge317.loopexit
  %.pre-phi401 = phi i64 [ %.pre400, %.._crit_edge317_crit_edge ], [ %i.zd, %._crit_edge317.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i320, %.._crit_edge317_crit_edge ], [ %i.zv, %._crit_edge317.loopexit ]
  %i.zw = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi401 ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  store i32 %.0448.i321, ptr %i.zx, align 4, !tbaa !38
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  store i32 %i.vk, ptr %i.zy, align 4, !tbaa !50
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 12
  store i32 0, ptr %i.zz, align 4, !tbaa !40
  store i32 %i.yw, ptr %i.zw, align 4, !tbaa !45
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge317
  %.12.i = phi i32 [ %.10.i.lcssa, %._crit_edge317 ], [ %.9.i320, %bb.bl ] ; 2 uses
  %i.aaa = add i32 %.0448.i321, -1                ; 2 uses
  %.not497.i = icmp ult i32 %i.aaa, %i.vr
  br i1 %.not497.i, label %._crit_edge324, label %bb.bi, !llvm.loop !65

._crit_edge324:                                   ; preds = %bb.bm, %bb.bh, %bb.bf
  %.9.i.lcssa = phi i32 [ %.8.i329, %bb.bf ], [ %.12.i.us, %bb.bh ], [ %.12.i, %bb.bm ] ; 3 uses
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count385
  br i1 %exitcond386.not, label %bb.bn, label %.preheader, !llvm.loop !67

bb.bn:                                            ; preds = %._crit_edge324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aab = add i32 %.9.i.lcssa, 1
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aac
  store i32 1073741824, ptr %i.aad, align 4, !tbaa !45
  br label %.thread183

.thread183:                                       ; preds = %bb.bn, %bb.az, %.thread199
  %.15.i192 = phi i32 [ %.6465.i, %.thread199 ], [ %.9.i.lcssa, %bb.bn ], [ %.6465.i, %bb.az ] ; 3 uses
  %i.aae = add i32 %.2468.i332, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.aae, %.15.i192
  br i1 %.not491.i, label %bb.bo, label %.lr.ph335, !llvm.loop !68

bb.bo:                                            ; preds = %bb.ba, %.thread183
  %.16.i.ph = phi i32 [ %.15.i192, %.thread183 ], [ %.2468.i332, %bb.ba ] ; 3 uses
  %i.aaf = zext i32 %.16.i.ph to i64
  %i.aag = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aaf ; 5 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.aag, align 4, !tbaa !26 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !26 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !26 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 12
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !26 ; 5 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !69
  %i.aah = sub i32 %.16.i.ph, %.sroa.9.0.copyload.i ; 2 uses
  %i.aai = icmp eq i32 %.sroa.9.0.copyload.i, 0
  br i1 %i.aai, label %bb.bp, label %bb.bq

.thread461:                                       ; preds = %bb.bd
  %i.aaj = load i32, ptr %i.vb, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aak = icmp eq i32 %i.vd, 0
  br i1 %i.aak, label %bb.bp, label %._crit_edge388

bb.bp:                                            ; preds = %.thread461, %bb.bo
  %.17.i474 = phi i32 [ %i.vf, %.thread461 ], [ %.16.i.ph, %bb.bo ]
  %.sroa.0214.1.i468 = phi i32 [ %.sroa.0214.0.i348, %.thread461 ], [ %.sroa.0214.0.copyload.i, %bb.bo ]
  %i.aal = zext i32 %.17.i474 to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.0442.i350, i64 %i.aal
  br label %bb.cv, !llvm.loop !70

bb.bq:                                            ; preds = %bb.bo
  %i.aan = icmp eq i32 %.sroa.13.0.copyload.i, 0
  br i1 %i.aan, label %._crit_edge388, label %bb.bx

._crit_edge388:                                   ; preds = %.thread461, %bb.bq
  %.sroa.0214.1.i469484 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.bq ], [ %.sroa.0214.0.i348, %.thread461 ]
  %.sroa.6217.7.i470483 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.bq ], [ %i.aaj, %.thread461 ]
  %.sroa.9.7.i471482 = phi i32 [ %.sroa.9.0.copyload.i, %bb.bq ], [ %i.vd, %.thread461 ]
  %.3469.i473481 = phi i32 [ %i.aah, %bb.bq ], [ %.2468.i332, %.thread461 ] ; 2 uses
  %.phi.trans.insert389 = zext i32 %.3469.i473481 to i64
  %.phi.trans.insert390 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert389
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert390, i64 12
  %.pre392 = load i32, ptr %.phi.trans.insert391, align 4, !tbaa !40
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge388, %.thread217
  %i.aao = phi i32 [ %i.bw, %.thread217 ], [ %.pre392, %._crit_edge388 ]
  %.sroa.0214.1.i212231 = phi i32 [ %.sroa.0214.0.i348, %.thread217 ], [ %.sroa.0214.1.i469484, %._crit_edge388 ]
  %.sroa.6217.7.i213229 = phi i32 [ %i.ed, %.thread217 ], [ %.sroa.6217.7.i470483, %._crit_edge388 ] ; 4 uses
  %.sroa.9.7.i214227 = phi i32 [ %i.ec, %.thread217 ], [ %.sroa.9.7.i471482, %._crit_edge388 ]
  %.3469.i216223 = phi i32 [ 0, %.thread217 ], [ %.3469.i473481, %._crit_edge388 ] ; 3 uses
  %i.aap = zext i32 %.3469.i216223 to i64
  %i.aaq = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aar, i64 12, i1 false)
  %i.aas = icmp ugt i32 %.sroa.6217.7.i213229, 3
  br i1 %i.aas, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.aat = load i32, ptr %i.bh, align 4, !tbaa !26
  %i.aau = load i32, ptr %6, align 8, !tbaa !26
  store i32 %i.aau, ptr %i.bh, align 4, !tbaa !26
  %i.aav = add i32 %.sroa.6217.7.i213229, -3
  br label %.sink.split.i.i102

bb.bt:                                            ; preds = %bb.br
  %i.aaw = icmp eq i32 %i.aao, 0
  %i.aax = zext i1 %i.aaw to i32
  %i.aay = add nsw i32 %.sroa.6217.7.i213229, -1
  %i.aaz = add nsw i32 %i.aay, %i.aax             ; 3 uses
  switch i32 %i.aaz, label %bb.bv [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i109
    i32 3, label %bb.bu
  ]

.ZSTD_updateRep.exit_crit_edge.i109:              ; preds = %bb.bt
  %.sroa.2.0.copyload.pre.i111 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i110, align 8
  br label %.thread232

bb.bu:                                            ; preds = %bb.bt
  %i.aba = load i32, ptr %6, align 8, !tbaa !26   ; 2 uses
  %i.abb = add i32 %i.aba, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.abc = zext i32 %i.aaz to i64
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.abc
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !26
  %.pre.i.i112 = load i32, ptr %6, align 8, !tbaa !26
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.abf = phi i32 [ %i.aba, %bb.bu ], [ %.pre.i.i112, %bb.bv ]
  %i.abg = phi i32 [ %i.abb, %bb.bu ], [ %i.abe, %bb.bv ]
  %.not22.i.i99 = icmp eq i32 %i.aaz, 1
  %.val.i100 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i110, align 8
  %.val2.i101 = load i32, ptr %i.bh, align 4
  %i.abh = select i1 %.not22.i.i99, i32 %.val.i100, i32 %.val2.i101
  store i32 %i.abf, ptr %i.bh, align 4, !tbaa !26
  br label %.sink.split.i.i102

.sink.split.i.i102:                               ; preds = %bb.bw, %bb.bs
  %.sroa.2.0.copyload4.i103 = phi i32 [ %i.abh, %bb.bw ], [ %i.aat, %bb.bs ]
  %.sink.i.i104 = phi i32 [ %i.abg, %bb.bw ], [ %i.aav, %bb.bs ]
  store i32 %.sink.i.i104, ptr %6, align 8, !tbaa !26
  br label %.thread232

.thread232:                                       ; preds = %.sink.split.i.i102, %.ZSTD_updateRep.exit_crit_edge.i109
  %.sroa.2.0.copyload.i105 = phi i32 [ %.sroa.2.0.copyload.pre.i111, %.ZSTD_updateRep.exit_crit_edge.i109 ], [ %.sroa.2.0.copyload4.i103, %.sink.split.i.i102 ]
  %.sroa.0.0.copyload.i106 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i106, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i105, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.abi = add i32 %.3469.i216223, 2              ; 2 uses
  %.pre396 = zext i32 %i.abi to i64
  br label %bb.by

bb.bx:                                            ; preds = %bb.bq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.abj = sub i32 %i.aah, %.sroa.13.0.copyload.i ; 3 uses
  %i.abk = add i32 %i.abj, 2                      ; 2 uses
  %i.abl = zext i32 %i.abk to i64                 ; 2 uses
  %i.abm = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %i.abn, align 4, !tbaa !40
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store i32 0, ptr %i.abo, align 4, !tbaa !38
  %i.abp = add i32 %i.abj, 1
  %i.abq = zext i32 %i.abp to i64
  %i.abr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abq ; 5 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.abr, align 4, !tbaa !26
  %.sroa.6217.0..sroa_idx218.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.6217.0..sroa_idx218.i, align 4, !tbaa !26
  %.sroa.9.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i, align 4, !tbaa !26
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !26
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  br label %bb.by

bb.by:                                            ; preds = %.thread232, %bb.bx
  %.pre-phi397 = phi i64 [ %.pre396, %.thread232 ], [ %i.abl, %bb.bx ]
  %i.abs = phi i32 [ %i.abi, %.thread232 ], [ %i.abk, %bb.bx ] ; 5 uses
  %.4470.i242 = phi i32 [ %.3469.i216223, %.thread232 ], [ %i.abj, %bb.bx ] ; 2 uses
  %.sroa.13.7.i215224241 = phi i32 [ 0, %.thread232 ], [ %.sroa.13.0.copyload.i, %bb.bx ]
  %.sroa.9.7.i214226240 = phi i32 [ %.sroa.9.7.i214227, %.thread232 ], [ %.sroa.9.0.copyload.i, %bb.bx ]
  %.sroa.6217.7.i213228239 = phi i32 [ %.sroa.6217.7.i213229, %.thread232 ], [ %.sroa.6217.0.copyload.i, %bb.bx ]
  %.sroa.0214.1.i212230238 = phi i32 [ %.sroa.0214.1.i212231, %.thread232 ], [ %.sroa.0214.0.copyload.i, %bb.bx ] ; 2 uses
  %i.abt = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi397 ; 5 uses
  store i32 %.sroa.0214.1.i212230238, ptr %i.abt, align 4, !tbaa !26
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 4
  store i32 %.sroa.6217.7.i213228239, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !26
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  store i32 %.sroa.9.7.i214226240, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !26
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 12
  store i32 %.sroa.13.7.i215224241, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !26
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  %i.abu = zext i32 %.4470.i242 to i64            ; 2 uses
  %i.abv = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abu ; 3 uses
  %i.abw = load i64, ptr %i.abv, align 4
  %.sroa.4.0..sroa_idx.i508 = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %.sroa.4.0.copyload.i509 = load i32, ptr %.sroa.4.0..sroa_idx.i508, align 4, !tbaa !26 ; 2 uses
  %.sroa.6.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %i.abv, i64 12
  %.sroa.6.0.copyload.i511 = load i32, ptr %.sroa.6.0..sroa_idx.i510, align 4, !tbaa !26 ; 2 uses
  %i.abx = zext i32 %i.abs to i64
  %i.aby = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abx
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 12
  store i32 %.sroa.6.0.copyload.i511, ptr %i.abz, align 4, !tbaa !40
  %.not512 = icmp eq i32 %.sroa.4.0.copyload.i509, 0
  br i1 %.not512, label %.preheader303, label %.lr.ph518

.lr.ph518:                                        ; preds = %bb.by, %.lr.ph518
  %.sroa.6.0.copyload.i516 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph518 ], [ %.sroa.6.0.copyload.i511, %bb.by ] ; 2 uses
  %.sroa.4.0.copyload.i515 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph518 ], [ %.sroa.4.0.copyload.i509, %bb.by ] ; 2 uses
  %i.aca = phi i64 [ %i.ack, %.lr.ph518 ], [ %i.abw, %bb.by ]
end_hunk_2
