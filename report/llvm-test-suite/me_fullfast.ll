Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/me_fullfast?download=true
inline.NumInlined: 28
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@SetupFastFullPelSearch:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 196
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !281
  %.not516 = icmp eq i32 %i.ah, 0
  br i1 %.not516, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !280
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.d
  %i.al = load ptr, ptr @input, align 8, !tbaa !116
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2936
  %i.an = load i32, ptr %i.am, align 8, !tbaa !282
  %i.ao = icmp ne i32 %i.an, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ap = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.ao, %bb.e ] ; 3 uses
  %i.aq = load ptr, ptr @input, align 8, !tbaa !116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 5780
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %.not517 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 14232
  %.in = select i1 %.not517, ptr @byte_abs, ptr %i.at
  %i.au = load ptr, ptr %.in, align 8, !tbaa !144 ; 80 uses
  %i.av = add nsw i32 %i.aa, %1
  %i.aw = sext i32 %i.av to i64                   ; 5 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !284
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.f
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !286 ; 8 uses
  store i32 0, ptr @ref_access_method, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 6448
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !294
  store ptr %i.bc, ptr @ref_pic_sub, align 8, !tbaa !296
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 6392
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !297
  %i.bf = add nsw i32 %i.be, -17                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 6396
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !298
  %i.bi = add nsw i32 %i.bh, -17                  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 6408
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !299
  store i32 %i.bk, ptr @width_pad, align 4, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 6412
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !300
  store i32 %i.bm, ptr @height_pad, align 4, !tbaa !7
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr @wp_weight, align 8, !tbaa !141
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.aw
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !143
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.f
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !144
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  store i32 %i.bs, ptr @weight_luma, align 4, !tbaa !7
  %i.bt = load ptr, ptr @wp_offset, align 8, !tbaa !141
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.aw
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !143
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.f
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !144
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  store i32 %i.by, ptr @offset_luma, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bz = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not518 = icmp eq i32 %i.bz, 0
  br i1 %.not518, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 6464
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !301 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !302
  store ptr %i.cc, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !302
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !302
  store ptr %i.ce, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !302
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 6416
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !303
  store i32 %i.cg, ptr @width_pad_cr, align 4, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 6420
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !304
  store i32 %i.ci, ptr @height_pad_cr, align 4, !tbaa !7
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr @wp_weight, align 8, !tbaa !141
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.aw
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !143
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.f
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !144
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load <2 x i32>, ptr %i.co, align 4, !tbaa !7
  store <2 x i32> %i.cp, ptr @weight_cr, align 4, !tbaa !7
  %i.cq = load ptr, ptr @wp_offset, align 8, !tbaa !141
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.aw
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !143
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.f
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !144
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load <2 x i32>, ptr %i.cv, align 4, !tbaa !7
  store <2 x i32> %i.cw, ptr @offset_cr, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.cx = load ptr, ptr @enc_picture, align 8, !tbaa !286 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6488
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !305
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.c
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !306
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 6512
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !307
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.c
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !308
  call void @SetMotionVectorPredictor(ptr noundef nonnull %i.a, ptr noundef %i.db, ptr noundef %i.df, i16 noundef signext %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #12
  %i.dg = load ptr, ptr @search_center_x, align 8, !tbaa !143
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.c
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !144
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.f ; 8 uses
  %i.dk = load <2 x i16>, ptr %i.a, align 4, !tbaa !147
  %i.dl = sdiv <2 x i16> %i.dk, splat (i16 4)     ; 2 uses
  %i.dm = extractelement <2 x i16> %i.dl, i64 0
  %i.dn = sext i16 %i.dm to i32
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !7
  %i.do = load ptr, ptr @search_center_y, align 8, !tbaa !143
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.c
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !144
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.f ; 7 uses
  %i.ds = extractelement <2 x i16> %i.dl, i64 1
  %i.dt = sext i16 %i.ds to i32
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !7
  %i.du = load ptr, ptr @input, align 8, !tbaa !116 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4168
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !148
  %.not519 = icmp eq i32 %i.dw, 0
  br i1 %.not519, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.dx = sub nsw i32 0, %i.o                     ; 2 uses
  %i.dy = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.dz = call noundef i32 @llvm.smax.i32(i32 %i.dy, i32 %i.dx)
  %i.ea = call noundef i32 @llvm.smin.i32(i32 %i.dz, i32 %i.o)
  store i32 %i.ea, ptr %i.dj, align 4, !tbaa !7
  %i.eb = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.ec = call noundef i32 @llvm.smax.i32(i32 %i.eb, i32 %i.dx)
  %i.ed = call noundef i32 @llvm.smin.i32(i32 %i.ec, i32 %i.o)
  store i32 %i.ed, ptr %i.dr, align 4, !tbaa !7
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.ee = add nsw i32 %i.o, -2047
  %i.ef = sub nsw i32 2047, %i.o
  %i.eg = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.eh = call noundef i32 @llvm.smax.i32(i32 %i.eg, i32 %i.ee)
  %i.ei = call noundef i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ef)
  store i32 %i.ei, ptr %i.dj, align 4, !tbaa !7
  %i.ej = load ptr, ptr @img, align 8, !tbaa !116 ; 13 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !309
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !7
  %i.ep = add nsw i32 %i.eo, %i.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
  %i.es = sub nsw i32 %i.er, %i.o
  %i.et = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.eu = call noundef i32 @llvm.smax.i32(i32 %i.et, i32 %i.ep)
  %i.ev = call noundef i32 @llvm.smin.i32(i32 %i.eu, i32 %i.es)
  store i32 %i.ev, ptr %i.dr, align 4, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 192 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !149
  %i.ey = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.ez = add nsw i32 %i.ey, %i.ex
  store i32 %i.ez, ptr %i.dj, align 4, !tbaa !7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 196 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !150
  %i.fc = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.fd = add nsw i32 %i.fc, %i.fb                ; 5 uses
  store i32 %i.fd, ptr %i.dr, align 4, !tbaa !7
  %i.fe = load i32, ptr %i.dj, align 4, !tbaa !7  ; 4 uses
  %i.ff = load i32, ptr %i.fa, align 4, !tbaa !150
  %i.fg = load ptr, ptr @imgY_org, align 8, !tbaa !310
  %i.fh = sext i32 %i.ff to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.fh, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.0491558 = phi ptr [ @SetupFastFullPelSearch.orig_pels, %.lr.ph ], [ %i.fn, %bb.m ] ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %indvars.iv
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !312
  %i.fk = load i32, ptr %i.ew, align 8, !tbaa !149
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fj, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.0491558, ptr noundef nonnull align 2 dereferenceable(32) %i.fm, i64 32, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.0491558, i64 32 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fo = load i32, ptr %i.fa, align 4, !tbaa !150
  %i.fp = add nsw i32 %i.fo, 15
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv, %i.fq
  br i1 %i.fr, label %bb.m, label %._crit_edge, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.m
  %i.fs = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not520 = icmp eq i32 %i.fs, 0
  br i1 %.not520, label %.loopexit555, label %.preheader554.preheader

.preheader554.preheader:                          ; preds = %._crit_edge
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ej, i64 15548 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !313
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph563, label %.loopexit555

.lr.ph563:                                        ; preds = %.preheader554.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ej, i64 204 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !314
  %i.fy = sext i32 %i.fx to i64
  %.pre = load ptr, ptr @imgUV_org, align 8, !tbaa !308
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ej, i64 15544 ; 2 uses
  %.pre796 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !315
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph563, %bb.n
  %i.ga = phi i32 [ %.pre796, %.lr.ph563 ], [ %i.gj, %bb.n ]
  %indvars.iv758 = phi i64 [ %i.fy, %.lr.ph563 ], [ %indvars.iv.next759, %bb.n ] ; 2 uses
  %.2493560 = phi ptr [ %i.fn, %.lr.ph563 ], [ %i.gl, %bb.n ] ; 2 uses
  %i.gb = load ptr, ptr %.pre, align 8, !tbaa !310
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %indvars.iv758
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !312
  %i.ge = load i32, ptr %i.fz, align 8, !tbaa !316
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = sext i32 %i.ga to i64
  %i.gi = shl nsw i64 %i.gh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2493560, ptr align 2 %i.gg, i64 %i.gi, i1 false)
  %i.gj = load i32, ptr %.phi.trans.insert, align 8, !tbaa !315 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [2 x i8], ptr %.2493560, i64 %i.gk ; 3 uses
  %indvars.iv.next759 = add nsw i64 %indvars.iv758, 1 ; 2 uses
  %i.gm = load i32, ptr %i.fw, align 4, !tbaa !314
  %i.gn = load i32, ptr %i.ft, align 4, !tbaa !313 ; 2 uses
  %i.go = add nsw i32 %i.gn, %i.gm
  %i.gp = sext i32 %i.go to i64
  %i.gq = icmp slt i64 %indvars.iv.next759, %i.gp
  br i1 %i.gq, label %bb.n, label %._crit_edge564, !llvm.loop !242

._crit_edge564:                                   ; preds = %bb.n
  %i.gr = icmp sgt i32 %i.gn, 0
  br i1 %i.gr, label %.lr.ph563.1, label %.loopexit555

.lr.ph563.1:                                      ; preds = %._crit_edge564
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ej, i64 204
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !314
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %.phi.trans.insert797 = getelementptr inbounds nuw i8, ptr %i.ej, i64 15544
  %.pre798 = load i32, ptr %.phi.trans.insert797, align 8, !tbaa !315
  %i.gv = load ptr, ptr @imgUV_org, align 8, !tbaa !308
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %i.gx = load ptr, ptr @img, align 8, !tbaa !116 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 15544 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 204 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 15548 ; 2 uses
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !310
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.gu
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !312
  %i.he = getelementptr inbounds nuw i8, ptr %i.ej, i64 200
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !316
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = sext i32 %.pre798 to i64
  %i.hj = shl nsw i64 %i.hi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gl, ptr align 2 %i.hh, i64 %i.hj, i1 false)
  %i.hk = load i32, ptr %i.gy, align 8, !tbaa !315 ; 2 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.gl, i64 %i.hl
  %indvars.iv.next759.1.peel = add nsw i64 %i.gu, 1 ; 2 uses
  %i.hn = load i32, ptr %i.gz, align 4, !tbaa !314
  %i.ho = load i32, ptr %i.ha, align 4, !tbaa !313
  %i.hp = add nsw i32 %i.ho, %i.hn
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next759.1.peel, %i.hq
  br i1 %i.hr, label %.lr.ph563.1.peel.newph, label %._crit_edge564.loopexit.1

.lr.ph563.1.peel.newph:                           ; preds = %.lr.ph563.1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gx, i64 200
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph563.1.peel.newph
  %i.ht = phi i32 [ %i.hk, %.lr.ph563.1.peel.newph ], [ %i.ic, %bb.o ]
  %indvars.iv758.1 = phi i64 [ %indvars.iv.next759.1.peel, %.lr.ph563.1.peel.newph ], [ %indvars.iv.next759.1, %bb.o ] ; 2 uses
  %.2493560.1 = phi ptr [ %i.hm, %.lr.ph563.1.peel.newph ], [ %i.ie, %bb.o ] ; 2 uses
  %i.hu = load ptr, ptr %i.gw, align 8, !tbaa !310
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %indvars.iv758.1
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !312
  %i.hx = load i32, ptr %i.hs, align 8, !tbaa !316
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.hw, i64 %i.hy
  %i.ia = sext i32 %i.ht to i64
  %i.ib = shl nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2493560.1, ptr align 2 %i.hz, i64 %i.ib, i1 false)
  %i.ic = load i32, ptr %i.gy, align 8, !tbaa !315 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [2 x i8], ptr %.2493560.1, i64 %i.id
  %indvars.iv.next759.1 = add nsw i64 %indvars.iv758.1, 1 ; 2 uses
  %i.if = load i32, ptr %i.gz, align 4, !tbaa !314
  %i.ig = load i32, ptr %i.ha, align 4, !tbaa !313
  %i.ih = add nsw i32 %i.ig, %i.if
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next759.1, %i.ii
  br i1 %i.ij, label %bb.o, label %._crit_edge564.loopexit.1, !llvm.loop !243

._crit_edge564.loopexit.1:                        ; preds = %bb.o, %.lr.ph563.1
  %.pre799.pre = load ptr, ptr @input, align 8, !tbaa !116
  br label %.loopexit555

.loopexit555:                                     ; preds = %.preheader554.preheader, %._crit_edge564, %._crit_edge564.loopexit.1, %._crit_edge
  %i.ik = phi ptr [ %i.ej, %._crit_edge ], [ %i.gx, %._crit_edge564.loopexit.1 ], [ %i.ej, %._crit_edge564 ], [ %i.ej, %.preheader554.preheader ] ; 2 uses
  %i.il = phi ptr [ %i.du, %._crit_edge ], [ %.pre799.pre, %._crit_edge564.loopexit.1 ], [ %i.du, %._crit_edge564 ], [ %i.du, %.preheader554.preheader ]
  %.not521 = icmp sge i32 %i.fe, %i.o
  %i.im = sub nsw i32 %i.bf, %i.o
  %.not522 = icmp sle i32 %i.fe, %i.im
  %or.cond530.not535 = select i1 %.not521, i1 %.not522, i1 false
  %.not523 = icmp sge i32 %i.fd, %i.o
  %or.cond531.not534 = select i1 %or.cond530.not535, i1 %.not523, i1 false
  %i.in = sub nsw i32 %i.bi, %i.o
  %.not524 = icmp sle i32 %i.fd, %i.in
  %or.cond532.not = select i1 %or.cond531.not534, i1 %.not524, i1 false
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4168
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !148
  %.not525 = icmp eq i32 %i.ip, 0
  br i1 %.not525, label %bb.p, label %.loopexit555..loopexit553_crit_edge

.loopexit555..loopexit553_crit_edge:              ; preds = %.loopexit555
  %.pre801 = zext nneg i32 %i.r to i64
  br label %.loopexit553

bb.p:                                             ; preds = %.loopexit555
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 192
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !149
  %i.is = sub nsw i32 %i.ir, %i.fe
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 196
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !150
  %i.iv = sub nsw i32 %i.iu, %i.fd
  %i.iw = load ptr, ptr @spiral_search_x, align 8, !tbaa !312
  %i.ix = load ptr, ptr @spiral_search_y, align 8
  %i.iy = zext nneg i32 %i.r to i64               ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.t
  %indvars.iv764 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next765, %bb.t ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %indvars.iv764
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !147
  %i.jb = sext i16 %i.ja to i32
  %i.jc = icmp eq i32 %i.is, %i.jb
  br i1 %i.jc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %indvars.iv764
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !147
  %i.jf = sext i16 %i.je to i32
  %i.jg = icmp eq i32 %i.iv, %i.jf
  br i1 %i.jg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jh = trunc nuw nsw i64 %indvars.iv764 to i32
  %i.ji = load ptr, ptr @pos_00, align 8, !tbaa !143
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.c
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !144
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.f
  store i32 %i.jh, ptr %i.jl, align 4, !tbaa !7
  br label %.loopexit553

bb.t:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %i.jm = icmp samesign ult i64 %indvars.iv.next765, %i.iy
  br i1 %i.jm, label %bb.q, label %.loopexit553, !llvm.loop !244

.loopexit553:                                     ; preds = %bb.t, %.loopexit555..loopexit553_crit_edge, %bb.s
  %.pre-phi = phi i64 [ %.pre801, %.loopexit555..loopexit553_crit_edge ], [ %i.iy, %bb.s ], [ %i.iy, %bb.t ]
  br label %bb.u

bb.u:                                             ; preds = %.loopexit553, %.loopexit
  %indvars.iv793 = phi i64 [ 0, %.loopexit553 ], [ %indvars.iv.next794, %.loopexit ] ; 27 uses
  %i.jn = load ptr, ptr @spiral_search_y, align 8, !tbaa !312
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv793
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !147
  %i.jq = sext i16 %i.jp to i32
  %i.jr = add nsw i32 %i.fd, %i.jq                ; 3 uses
  %i.js = load ptr, ptr @spiral_search_x, align 8, !tbaa !312
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv793
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !147
  %i.jv = sext i16 %i.ju to i32
  %i.jw = add nsw i32 %i.fe, %i.jv                ; 3 uses
  %i.jx = shl i32 %i.jr, 2
  %i.jy = add i32 %i.jx, 80                       ; 5 uses
  %i.jz = shl i32 %i.jw, 2
  %i.ka = add i32 %i.jz, 80                       ; 5 uses
  br i1 %or.cond532.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kb = icmp sgt i32 %i.jr, -1
  br i1 %i.kb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kc = icmp sgt i32 %i.jr, %i.bi
  %i.kd = icmp slt i32 %i.jw, 0
  %or.cond.not538 = select i1 %i.kc, i1 true, i1 %i.kd
  %.not527 = icmp sgt i32 %i.jw, %i.bf
  %or.cond533 = select i1 %or.cond.not538, i1 true, i1 %.not527
  br i1 %or.cond533, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.x
  %.sink = phi i32 [ 1, %bb.x ], [ 0, %bb.w ]
  store i32 %.sink, ptr @ref_access_method, align 4, !tbaa !7
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.u
  %i.ke = load i32, ptr @ref_access_method, align 4, !tbaa !7
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr @get_line, i64 %i.kf
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !116
  %i.ki = load ptr, ptr @ref_pic_sub, align 8, !tbaa !296
  %i.kj = call ptr %i.kh(ptr noundef %i.ki, i32 noundef %i.jy, i32 noundef %i.ka) #12 ; 2 uses
  br i1 %i.ap, label %bb.z, label %.preheader549

bb.z:                                             ; preds = %bb.y
  %i.kk = load ptr, ptr @img, align 8, !tbaa !116
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 15520
  br label %.preheader548

.preheader548:                                    ; preds = %bb.z, %bb.ab
  %indvars.iv782 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next783, %bb.ab ] ; 2 uses
  %.0457649 = phi i32 [ 0, %bb.z ], [ %i.pt, %bb.ab ]
  %.0483647 = phi ptr [ %i.kj, %bb.z ], [ %scevgep780, %bb.ab ] ; 2 uses
  %.3494646 = phi ptr [ @SetupFastFullPelSearch.orig_pels, %bb.z ], [ %scevgep779, %bb.ab ] ; 2 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !318
  %i.kn = load i32, ptr @weight_luma, align 4, !tbaa !7
  %i.ko = load i32, ptr @wp_luma_round, align 4, !tbaa !7
  %i.kp = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !7
  %i.kq = load i32, ptr @offset_luma, align 4, !tbaa !7
  %i.kr = load i32, ptr @img_padded_size_x, align 4, !tbaa !7
  %i.ks = sext i32 %i.kr to i64                   ; 2 uses
  %i.kt = insertelement <8 x i32> poison, i32 %i.kn, i64 0
  %i.ku = shufflevector <8 x i32> %i.kt, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kv = insertelement <8 x i32> poison, i32 %i.ko, i64 0
  %i.kw = shufflevector <8 x i32> %i.kv, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kx = insertelement <8 x i32> poison, i32 %i.kp, i64 0
  %i.ky = shufflevector <8 x i32> %i.kx, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kz = insertelement <8 x i32> poison, i32 %i.kq, i64 0
  %i.la = shufflevector <8 x i32> %i.kz, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lb = insertelement <8 x i32> poison, i32 %i.km, i64 0
  %i.lc = shufflevector <8 x i32> %i.lb, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader548, %bb.aa
  %.0645 = phi i32 [ 0, %.preheader548 ], [ %i.pd, %bb.aa ]
  %.0439644 = phi i32 [ 0, %.preheader548 ], [ %i.oj, %bb.aa ]
  %.0445643 = phi i32 [ 0, %.preheader548 ], [ %i.nd, %bb.aa ]
  %.0451642 = phi i32 [ 0, %.preheader548 ], [ %i.mj, %bb.aa ]
  %.2470641 = phi i32 [ 0, %.preheader548 ], [ %i.pf, %bb.aa ]
  %.1484640 = phi ptr [ %.0483647, %.preheader548 ], [ %i.pe, %bb.aa ] ; 3 uses
  %.4495639 = phi ptr [ %.3494646, %.preheader548 ], [ %i.ne, %bb.aa ] ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.1484640, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %.4495639, i64 16
  %i.lf = load <8 x i16>, ptr %.1484640, align 2, !tbaa !147
  %i.lg = zext <8 x i16> %i.lf to <8 x i32>
  %i.lh = mul nsw <8 x i32> %i.ku, %i.lg
  %i.li = add nsw <8 x i32> %i.lh, %i.kw
  %i.lj = ashr <8 x i32> %i.li, %i.ky
  %i.lk = add nsw <8 x i32> %i.lj, %i.la
  %i.ll = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lk, <8 x i32> zeroinitializer)
  %i.lm = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ll, <8 x i32> %i.lc)
  %i.ln = load <8 x i16>, ptr %.4495639, align 2, !tbaa !147
  %i.lo = zext <8 x i16> %i.ln to <8 x i32>
  %i.lp = sub nsw <8 x i32> %i.lm, %i.lo          ; 8 uses
  %i.lq = extractelement <8 x i32> %i.lp, i64 0
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7
  %i.lu = add nsw i32 %i.lt, %.0451642
  %i.lv = extractelement <8 x i32> %i.lp, i64 1
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !7
  %i.lz = add nsw i32 %i.lu, %i.ly
  %i.ma = extractelement <8 x i32> %i.lp, i64 2
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !7
  %i.me = add nsw i32 %i.lz, %i.md
  %i.mf = extractelement <8 x i32> %i.lp, i64 3
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !7
  %i.mj = add nsw i32 %i.me, %i.mi                ; 2 uses
  %i.mk = extractelement <8 x i32> %i.lp, i64 4
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !7
  %i.mo = add nsw i32 %i.mn, %.0445643
  %i.mp = extractelement <8 x i32> %i.lp, i64 5
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !7
  %i.mt = add nsw i32 %i.mo, %i.ms
  %i.mu = extractelement <8 x i32> %i.lp, i64 6
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !7
  %i.my = add nsw i32 %i.mt, %i.mx
  %i.mz = extractelement <8 x i32> %i.lp, i64 7
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !7
  %i.nd = add nsw i32 %i.my, %i.nc                ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.4495639, i64 32
  %i.nf = load <8 x i16>, ptr %i.ld, align 2, !tbaa !147
  %i.ng = zext <8 x i16> %i.nf to <8 x i32>
  %i.nh = mul nsw <8 x i32> %i.ku, %i.ng
  %i.ni = add nsw <8 x i32> %i.nh, %i.kw
  %i.nj = ashr <8 x i32> %i.ni, %i.ky
  %i.nk = add nsw <8 x i32> %i.nj, %i.la
  %i.nl = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nk, <8 x i32> zeroinitializer)
  %i.nm = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.nl, <8 x i32> %i.lc)
  %i.nn = load <8 x i16>, ptr %i.le, align 2, !tbaa !147
  %i.no = zext <8 x i16> %i.nn to <8 x i32>
  %i.np = sub nsw <8 x i32> %i.nm, %i.no          ; 8 uses
  %i.nq = extractelement <8 x i32> %i.np, i64 0
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !7
  %i.nu = add nsw i32 %i.nt, %.0439644
  %i.nv = extractelement <8 x i32> %i.np, i64 1
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !7
  %i.nz = add nsw i32 %i.nu, %i.ny
  %i.oa = extractelement <8 x i32> %i.np, i64 2
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !7
  %i.oe = add nsw i32 %i.nz, %i.od
  %i.of = extractelement <8 x i32> %i.np, i64 3
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !7
  %i.oj = add nsw i32 %i.oe, %i.oi                ; 2 uses
  %i.ok = extractelement <8 x i32> %i.np, i64 4
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !7
  %i.oo = add nsw i32 %i.on, %.0645
  %i.op = extractelement <8 x i32> %i.np, i64 5
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !7
  %i.ot = add nsw i32 %i.oo, %i.os
  %i.ou = extractelement <8 x i32> %i.np, i64 6
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !7
  %i.oy = add nsw i32 %i.ot, %i.ox
  %i.oz = extractelement <8 x i32> %i.np, i64 7
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !7
  %i.pd = add nsw i32 %i.oy, %i.pc                ; 2 uses
  %i.pe = getelementptr [2 x i8], ptr %.1484640, i64 %i.ks
  %i.pf = add nuw nsw i32 %.2470641, 1            ; 2 uses
  %exitcond781.not = icmp eq i32 %i.pf, 4
  br i1 %exitcond781.not, label %bb.ab, label %bb.aa, !llvm.loop !245

bb.ab:                                            ; preds = %bb.aa
  %scevgep779 = getelementptr i8, ptr %.3494646, i64 128 ; 2 uses
  %i.pg = shl nsw i64 %i.ks, 3
  %scevgep780 = getelementptr i8, ptr %.0483647, i64 %i.pg
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv782 ; 4 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !144
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv793
  store i32 %i.mj, ptr %i.pj, align 4, !tbaa !7
  %i.pk = getelementptr i8, ptr %i.ph, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !144
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv793
  store i32 %i.nd, ptr %i.pm, align 4, !tbaa !7
  %i.pn = getelementptr i8, ptr %i.ph, i64 16
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !144
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv793
  store i32 %i.oj, ptr %i.pp, align 4, !tbaa !7
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !144
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv793
  store i32 %i.pd, ptr %i.ps, align 4, !tbaa !7
  %i.pt = add nuw nsw i32 %.0457649, 1            ; 2 uses
  %exitcond785.not = icmp eq i32 %i.pt, 4
  br i1 %exitcond785.not, label %bb.ac, label %.preheader548, !llvm.loop !246

bb.ac:                                            ; preds = %bb.ab
  %i.pu = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not529 = icmp eq i32 %i.pu, 0
  br i1 %.not529, label %.loopexit, label %.preheader550

.preheader550:                                    ; preds = %bb.ac
  %i.pv = load i32, ptr @ref_access_method, align 4, !tbaa !7
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !116
  %i.pz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !302
  %i.qa = call ptr %i.py(ptr noundef %i.pz, i32 noundef %i.jy, i32 noundef %i.ka) #12
  %i.qb = load ptr, ptr @img, align 8, !tbaa !116 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 15548
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 15544
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 15524 ; 4 uses
  br label %.preheader546

.preheader546:                                    ; preds = %.preheader550, %._crit_edge691
  %indvars.iv786 = phi i64 [ 0, %.preheader550 ], [ %indvars.iv.next787, %._crit_edge691 ] ; 2 uses
  %.1458701 = phi i32 [ 0, %.preheader550 ], [ %i.uv, %._crit_edge691 ]
  %.2485699 = phi ptr [ %i.qa, %.preheader550 ], [ %.3486.lcssa, %._crit_edge691 ] ; 2 uses
  %.6497698 = phi ptr [ %scevgep779, %.preheader550 ], [ %.7498.lcssa, %._crit_edge691 ] ; 2 uses
  %i.qf = load i32, ptr %i.qc, align 4, !tbaa !313 ; 2 uses
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.preheader541.lr.ph, label %._crit_edge691

.preheader541.lr.ph:                              ; preds = %.preheader546
  %i.qh = load i32, ptr %i.qd, align 8, !tbaa !315 ; 6 uses
  %i.qi = icmp sgt i32 %i.qh, 0
  %i.qj = load i32, ptr @wp_chroma_round, align 4 ; 4 uses
  %i.qk = load i32, ptr @chroma_log_weight_denom, align 4 ; 4 uses
  %i.ql = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !7
  %i.qm = sub nsw i32 %i.ql, %i.qh
  %i.qn = sext i32 %i.qm to i64
  %i.qo = load i32, ptr @weight_cr, align 4
  %i.qp = load i32, ptr @offset_cr, align 4
  %i.qq = load i32, ptr @weight_cr, align 4
  %i.qr = load i32, ptr @offset_cr, align 4
  %i.qs = load i32, ptr @weight_cr, align 4
  %i.qt = load i32, ptr @offset_cr, align 4
  %i.qu = load i32, ptr @weight_cr, align 4
  %i.qv = load i32, ptr @offset_cr, align 4
  br label %.preheader541

.preheader541:                                    ; preds = %.preheader541.lr.ph, %._crit_edge680
  %.1690 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2.lcssa, %._crit_edge680 ] ; 2 uses
  %.1440689 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2441.lcssa849, %._crit_edge680 ] ; 2 uses
  %.1446688 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2447.lcssa836843, %._crit_edge680 ] ; 2 uses
  %.1452687 = phi i32 [ 0, %.preheader541.lr.ph ], [ %.2453.lcssa826832845, %._crit_edge680 ] ; 2 uses
  %.3471686 = phi i32 [ 0, %.preheader541.lr.ph ], [ %i.tz, %._crit_edge680 ]
  %.3486685 = phi ptr [ %.2485699, %.preheader541.lr.ph ], [ %i.ty, %._crit_edge680 ] ; 2 uses
  %.7498684 = phi ptr [ %.6497698, %.preheader541.lr.ph ], [ %.11502.lcssa, %._crit_edge680 ] ; 2 uses
  br i1 %i.qi, label %.lr.ph654, label %._crit_edge680

.lr.ph654:                                        ; preds = %.preheader541
  %i.qw = load i32, ptr %i.qe, align 4, !tbaa !319
  br label %bb.ad

.lr.ph663:                                        ; preds = %bb.ad
  %i.qx = load i32, ptr %i.qe, align 4, !tbaa !319
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph654, %bb.ad
  %.2453653 = phi i32 [ %.1452687, %.lr.ph654 ], [ %i.ro, %bb.ad ]
  %.0474652 = phi i32 [ 0, %.lr.ph654 ], [ %i.rp, %bb.ad ]
  %.4487651 = phi ptr [ %.3486685, %.lr.ph654 ], [ %i.qy, %bb.ad ] ; 2 uses
  %.8499650 = phi ptr [ %.7498684, %.lr.ph654 ], [ %i.rh, %bb.ad ] ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.4487651, i64 2 ; 2 uses
  %i.qz = load i16, ptr %.4487651, align 2, !tbaa !147
  %i.ra = zext i16 %i.qz to i32
  %i.rb = mul nsw i32 %i.qo, %i.ra
  %i.rc = add nsw i32 %i.rb, %i.qj
  %i.rd = ashr i32 %i.rc, %i.qk
  %i.re = add nsw i32 %i.rd, %i.qp
  %i.rf = call noundef i32 @llvm.smax.i32(i32 %i.re, i32 0)
  %i.rg = call noundef i32 @llvm.smin.i32(i32 %i.rf, i32 %i.qw)
  %i.rh = getelementptr inbounds nuw i8, ptr %.8499650, i64 2 ; 2 uses
  %i.ri = load i16, ptr %.8499650, align 2, !tbaa !147
  %i.rj = zext i16 %i.ri to i32
  %i.rk = sub nsw i32 %i.rg, %i.rj
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !7
  %i.ro = add nsw i32 %i.rn, %.2453653            ; 2 uses
  %i.rp = add nuw nsw i32 %.0474652, 4            ; 2 uses
  %i.rq = icmp slt i32 %i.rp, %i.qh
  br i1 %i.rq, label %bb.ad, label %.lr.ph663, !llvm.loop !247

.lr.ph671:                                        ; preds = %bb.ae
  %i.rr = load i32, ptr %i.qe, align 4, !tbaa !319
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph663, %bb.ae
  %.2447662 = phi i32 [ %.1446688, %.lr.ph663 ], [ %i.si, %bb.ae ]
  %.1475661 = phi i32 [ 0, %.lr.ph663 ], [ %i.sj, %bb.ae ]
  %.5488660 = phi ptr [ %i.qy, %.lr.ph663 ], [ %i.rs, %bb.ae ] ; 2 uses
  %.9500659 = phi ptr [ %i.rh, %.lr.ph663 ], [ %i.sb, %bb.ae ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.5488660, i64 2 ; 2 uses
  %i.rt = load i16, ptr %.5488660, align 2, !tbaa !147
  %i.ru = zext i16 %i.rt to i32
  %i.rv = mul nsw i32 %i.qq, %i.ru
  %i.rw = add nsw i32 %i.rv, %i.qj
  %i.rx = ashr i32 %i.rw, %i.qk
  %i.ry = add nsw i32 %i.rx, %i.qr
  %i.rz = call noundef i32 @llvm.smax.i32(i32 %i.ry, i32 0)
  %i.sa = call noundef i32 @llvm.smin.i32(i32 %i.rz, i32 %i.qx)
  %i.sb = getelementptr inbounds nuw i8, ptr %.9500659, i64 2 ; 2 uses
  %i.sc = load i16, ptr %.9500659, align 2, !tbaa !147
  %i.sd = zext i16 %i.sc to i32
  %i.se = sub nsw i32 %i.sa, %i.sd
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !7
  %i.si = add nsw i32 %i.sh, %.2447662            ; 2 uses
  %i.sj = add nuw nsw i32 %.1475661, 4            ; 2 uses
  %i.sk = icmp slt i32 %i.sj, %i.qh
  br i1 %i.sk, label %bb.ae, label %.lr.ph671, !llvm.loop !248

.lr.ph679:                                        ; preds = %bb.af
  %i.sl = load i32, ptr %i.qe, align 4, !tbaa !319
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph671, %bb.af
  %.2441670 = phi i32 [ %.1440689, %.lr.ph671 ], [ %i.tc, %bb.af ]
  %.2476669 = phi i32 [ 0, %.lr.ph671 ], [ %i.td, %bb.af ]
  %.6489668 = phi ptr [ %i.rs, %.lr.ph671 ], [ %i.sm, %bb.af ] ; 2 uses
  %.10501667 = phi ptr [ %i.sb, %.lr.ph671 ], [ %i.sv, %bb.af ] ; 2 uses
end_hunk_0
begin_hunk_1_@SetupFastFullPelSearch:bb.a

.preheader541.1:                                  ; preds = %._crit_edge680.1, %.preheader541.lr.ph.1
  %.1690.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2.lcssa.1, %._crit_edge680.1 ] ; 2 uses
  %.1440689.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2441.lcssa849.1, %._crit_edge680.1 ] ; 2 uses
  %.1446688.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2447.lcssa836843.1, %._crit_edge680.1 ] ; 2 uses
  %.1452687.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %.2453.lcssa826832845.1, %._crit_edge680.1 ] ; 2 uses
  %.3471686.1 = phi i32 [ 0, %.preheader541.lr.ph.1 ], [ %i.za, %._crit_edge680.1 ]
  %.3486685.1 = phi ptr [ %.2485699.1, %.preheader541.lr.ph.1 ], [ %i.yz, %._crit_edge680.1 ] ; 2 uses
  %.7498684.1 = phi ptr [ %.6497698.1, %.preheader541.lr.ph.1 ], [ %.11502.lcssa.1, %._crit_edge680.1 ] ; 2 uses
  br i1 %i.vj, label %.lr.ph654.1, label %._crit_edge680.1

.lr.ph654.1:                                      ; preds = %.preheader541.1
  %i.vx = load i32, ptr %i.vf, align 4, !tbaa !319
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph654.1
  %.2453653.1 = phi i32 [ %.1452687.1, %.lr.ph654.1 ], [ %i.wo, %bb.ah ]
  %.0474652.1 = phi i32 [ 0, %.lr.ph654.1 ], [ %i.wp, %bb.ah ]
  %.4487651.1 = phi ptr [ %.3486685.1, %.lr.ph654.1 ], [ %i.vy, %bb.ah ] ; 2 uses
  %.8499650.1 = phi ptr [ %.7498684.1, %.lr.ph654.1 ], [ %i.wh, %bb.ah ] ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.4487651.1, i64 2 ; 2 uses
  %i.vz = load i16, ptr %.4487651.1, align 2, !tbaa !147
  %i.wa = zext i16 %i.vz to i32
  %i.wb = mul nsw i32 %i.vp, %i.wa
  %i.wc = add nsw i32 %i.wb, %i.vk
  %i.wd = ashr i32 %i.wc, %i.vl
  %i.we = add nsw i32 %i.wd, %i.vq
  %i.wf = call noundef i32 @llvm.smax.i32(i32 %i.we, i32 0)
  %i.wg = call noundef i32 @llvm.smin.i32(i32 %i.wf, i32 %i.vx)
  %i.wh = getelementptr inbounds nuw i8, ptr %.8499650.1, i64 2 ; 2 uses
  %i.wi = load i16, ptr %.8499650.1, align 2, !tbaa !147
  %i.wj = zext i16 %i.wi to i32
  %i.wk = sub nsw i32 %i.wg, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !7
  %i.wo = add nsw i32 %i.wn, %.2453653.1          ; 2 uses
  %i.wp = add nuw nsw i32 %.0474652.1, 4          ; 2 uses
  %i.wq = icmp slt i32 %i.wp, %i.vi
  br i1 %i.wq, label %bb.ah, label %.lr.ph663.1, !llvm.loop !247

.lr.ph663.1:                                      ; preds = %bb.ah
  %i.wr = load i32, ptr %i.vf, align 4, !tbaa !319
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph663.1
  %.2447662.1 = phi i32 [ %.1446688.1, %.lr.ph663.1 ], [ %i.xi, %bb.ai ]
  %.1475661.1 = phi i32 [ 0, %.lr.ph663.1 ], [ %i.xj, %bb.ai ]
  %.5488660.1 = phi ptr [ %i.vy, %.lr.ph663.1 ], [ %i.ws, %bb.ai ] ; 2 uses
  %.9500659.1 = phi ptr [ %i.wh, %.lr.ph663.1 ], [ %i.xb, %bb.ai ] ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.5488660.1, i64 2 ; 2 uses
  %i.wt = load i16, ptr %.5488660.1, align 2, !tbaa !147
  %i.wu = zext i16 %i.wt to i32
  %i.wv = mul nsw i32 %i.vr, %i.wu
  %i.ww = add nsw i32 %i.wv, %i.vk
  %i.wx = ashr i32 %i.ww, %i.vl
  %i.wy = add nsw i32 %i.wx, %i.vs
  %i.wz = call noundef i32 @llvm.smax.i32(i32 %i.wy, i32 0)
  %i.xa = call noundef i32 @llvm.smin.i32(i32 %i.wz, i32 %i.wr)
  %i.xb = getelementptr inbounds nuw i8, ptr %.9500659.1, i64 2 ; 2 uses
  %i.xc = load i16, ptr %.9500659.1, align 2, !tbaa !147
  %i.xd = zext i16 %i.xc to i32
  %i.xe = sub nsw i32 %i.xa, %i.xd
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !7
  %i.xi = add nsw i32 %i.xh, %.2447662.1          ; 2 uses
  %i.xj = add nuw nsw i32 %.1475661.1, 4          ; 2 uses
  %i.xk = icmp slt i32 %i.xj, %i.vi
  br i1 %i.xk, label %bb.ai, label %.lr.ph671.1, !llvm.loop !248

.lr.ph671.1:                                      ; preds = %bb.ai
  %i.xl = load i32, ptr %i.vf, align 4, !tbaa !319
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph671.1
  %.2441670.1 = phi i32 [ %.1440689.1, %.lr.ph671.1 ], [ %i.yc, %bb.aj ]
  %.2476669.1 = phi i32 [ 0, %.lr.ph671.1 ], [ %i.yd, %bb.aj ]
  %.6489668.1 = phi ptr [ %i.ws, %.lr.ph671.1 ], [ %i.xm, %bb.aj ] ; 2 uses
  %.10501667.1 = phi ptr [ %i.xb, %.lr.ph671.1 ], [ %i.xv, %bb.aj ] ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.6489668.1, i64 2 ; 2 uses
  %i.xn = load i16, ptr %.6489668.1, align 2, !tbaa !147
  %i.xo = zext i16 %i.xn to i32
  %i.xp = mul nsw i32 %i.vt, %i.xo
  %i.xq = add nsw i32 %i.xp, %i.vk
  %i.xr = ashr i32 %i.xq, %i.vl
  %i.xs = add nsw i32 %i.xr, %i.vu
  %i.xt = call noundef i32 @llvm.smax.i32(i32 %i.xs, i32 0)
  %i.xu = call noundef i32 @llvm.smin.i32(i32 %i.xt, i32 %i.xl)
  %i.xv = getelementptr inbounds nuw i8, ptr %.10501667.1, i64 2 ; 2 uses
  %i.xw = load i16, ptr %.10501667.1, align 2, !tbaa !147
  %i.xx = zext i16 %i.xw to i32
  %i.xy = sub nsw i32 %i.xu, %i.xx
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !7
  %i.yc = add nsw i32 %i.yb, %.2441670.1          ; 2 uses
  %i.yd = add nuw nsw i32 %.2476669.1, 4          ; 2 uses
  %i.ye = icmp slt i32 %i.yd, %i.vi
  br i1 %i.ye, label %bb.aj, label %.lr.ph679.1, !llvm.loop !249

.lr.ph679.1:                                      ; preds = %bb.aj
  %i.yf = load i32, ptr %i.vf, align 4, !tbaa !319
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph679.1
  %.2678.1 = phi i32 [ %.1690.1, %.lr.ph679.1 ], [ %i.yw, %bb.ak ]
  %.3477677.1 = phi i32 [ 0, %.lr.ph679.1 ], [ %i.yx, %bb.ak ]
  %.7490676.1 = phi ptr [ %i.xm, %.lr.ph679.1 ], [ %i.yg, %bb.ak ] ; 2 uses
  %.11502675.1 = phi ptr [ %i.xv, %.lr.ph679.1 ], [ %i.yp, %bb.ak ] ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.7490676.1, i64 2 ; 2 uses
  %i.yh = load i16, ptr %.7490676.1, align 2, !tbaa !147
  %i.yi = zext i16 %i.yh to i32
  %i.yj = mul nsw i32 %i.vv, %i.yi
  %i.yk = add nsw i32 %i.yj, %i.vk
  %i.yl = ashr i32 %i.yk, %i.vl
  %i.ym = add nsw i32 %i.yl, %i.vw
  %i.yn = call noundef i32 @llvm.smax.i32(i32 %i.ym, i32 0)
  %i.yo = call noundef i32 @llvm.smin.i32(i32 %i.yn, i32 %i.yf)
  %i.yp = getelementptr inbounds nuw i8, ptr %.11502675.1, i64 2 ; 2 uses
  %i.yq = load i16, ptr %.11502675.1, align 2, !tbaa !147
  %i.yr = zext i16 %i.yq to i32
  %i.ys = sub nsw i32 %i.yo, %i.yr
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !7
  %i.yw = add nsw i32 %i.yv, %.2678.1             ; 2 uses
  %i.yx = add nuw nsw i32 %.3477677.1, 4          ; 2 uses
  %i.yy = icmp slt i32 %i.yx, %i.vi
  br i1 %i.yy, label %bb.ak, label %._crit_edge680.1, !llvm.loop !250

._crit_edge680.1:                                 ; preds = %bb.ak, %.preheader541.1
  %.2441.lcssa849.1 = phi i32 [ %.1440689.1, %.preheader541.1 ], [ %i.yc, %bb.ak ] ; 2 uses
  %.2453.lcssa826832845.1 = phi i32 [ %.1452687.1, %.preheader541.1 ], [ %i.wo, %bb.ak ] ; 2 uses
  %.2447.lcssa836843.1 = phi i32 [ %.1446688.1, %.preheader541.1 ], [ %i.xi, %bb.ak ] ; 2 uses
  %.11502.lcssa.1 = phi ptr [ %.7498684.1, %.preheader541.1 ], [ %i.yp, %bb.ak ] ; 2 uses
  %.7490.lcssa.1 = phi ptr [ %.3486685.1, %.preheader541.1 ], [ %i.yg, %bb.ak ]
  %.2.lcssa.1 = phi i32 [ %.1690.1, %.preheader541.1 ], [ %i.yw, %bb.ak ] ; 2 uses
  %i.yz = getelementptr inbounds [2 x i8], ptr %.7490.lcssa.1, i64 %i.vo ; 2 uses
  %i.za = add nuw nsw i32 %.3471686.1, 4          ; 2 uses
  %i.zb = icmp slt i32 %i.za, %i.vg
  br i1 %i.zb, label %.preheader541.1, label %._crit_edge691.1, !llvm.loop !251

._crit_edge691.1:                                 ; preds = %._crit_edge680.1, %.preheader546.1
  %.7498.lcssa.1 = phi ptr [ %.6497698.1, %.preheader546.1 ], [ %.11502.lcssa.1, %._crit_edge680.1 ]
  %.3486.lcssa.1 = phi ptr [ %.2485699.1, %.preheader546.1 ], [ %i.yz, %._crit_edge680.1 ]
  %.1452.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2453.lcssa826832845.1, %._crit_edge680.1 ]
  %.1446.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2447.lcssa836843.1, %._crit_edge680.1 ]
  %.1440.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2441.lcssa849.1, %._crit_edge680.1 ]
  %.1.lcssa.1 = phi i32 [ 0, %.preheader546.1 ], [ %.2.lcssa.1, %._crit_edge680.1 ]
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv786.1 ; 4 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !144
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %indvars.iv793 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !7
  %i.zg = add nsw i32 %i.zf, %.1452.lcssa.1
  store i32 %i.zg, ptr %i.ze, align 4, !tbaa !7
  %i.zh = getelementptr i8, ptr %i.zc, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !144
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv793 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !7
  %i.zl = add nsw i32 %i.zk, %.1446.lcssa.1
  store i32 %i.zl, ptr %i.zj, align 4, !tbaa !7
  %i.zm = getelementptr i8, ptr %i.zc, i64 16
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !144
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %indvars.iv793 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !7
  %i.zq = add nsw i32 %i.zp, %.1440.lcssa.1
  store i32 %i.zq, ptr %i.zo, align 4, !tbaa !7
  %indvars.iv.next787.1 = add nuw nsw i64 %indvars.iv786.1, 4
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !144
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv793 ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !7
  %i.zv = add nsw i32 %i.zu, %.1.lcssa.1
  store i32 %i.zv, ptr %i.zt, align 4, !tbaa !7
  %i.zw = add nuw nsw i32 %.1458701.1, 1          ; 2 uses
  %exitcond789.not.1 = icmp eq i32 %i.zw, 4
  br i1 %exitcond789.not.1, label %.loopexit, label %.preheader546.1, !llvm.loop !252

.preheader549:                                    ; preds = %bb.y, %bb.am
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %bb.am ], [ 0, %bb.y ] ; 2 uses
  %.2459579 = phi i32 [ %i.agr, %bb.am ], [ 0, %bb.y ]
  %.8577 = phi ptr [ %scevgep767, %bb.am ], [ %i.kj, %bb.y ] ; 2 uses
  %.12503576 = phi ptr [ %scevgep, %bb.am ], [ @SetupFastFullPelSearch.orig_pels, %bb.y ] ; 2 uses
  %i.zx = load i32, ptr @img_padded_size_x, align 4, !tbaa !7
  %i.zy = sext i32 %i.zx to i64                   ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.preheader549, %bb.al
  %.3575 = phi i32 [ 0, %.preheader549 ], [ %i.agb, %bb.al ]
  %.3442574 = phi i32 [ 0, %.preheader549 ], [ %i.aeo, %bb.al ]
  %.3448573 = phi i32 [ 0, %.preheader549 ], [ %i.ada, %bb.al ]
  %.3454572 = phi i32 [ 0, %.preheader549 ], [ %i.abm, %bb.al ]
  %.4472571 = phi i32 [ 0, %.preheader549 ], [ %i.agd, %bb.al ]
  %.9570 = phi ptr [ %.8577, %.preheader549 ], [ %i.agc, %bb.al ] ; 17 uses
  %.13504569 = phi ptr [ %.12503576, %.preheader549 ], [ %i.afv, %bb.al ] ; 17 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.9570, i64 2
  %i.aaa = load i16, ptr %.9570, align 2, !tbaa !147
  %i.aab = zext i16 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %.13504569, i64 2
  %i.aad = load i16, ptr %.13504569, align 2, !tbaa !147
  %i.aae = zext i16 %i.aad to i64
  %i.aaf = sub nsw i64 %i.aab, %i.aae
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !7
  %i.aai = add nsw i32 %i.aah, %.3454572
  %i.aaj = getelementptr inbounds nuw i8, ptr %.9570, i64 4
  %i.aak = load i16, ptr %i.zz, align 2, !tbaa !147
  %i.aal = zext i16 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.13504569, i64 4
  %i.aan = load i16, ptr %i.aac, align 2, !tbaa !147
  %i.aao = zext i16 %i.aan to i64
  %i.aap = sub nsw i64 %i.aal, %i.aao
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !7
  %i.aas = add nsw i32 %i.aai, %i.aar
  %i.aat = getelementptr inbounds nuw i8, ptr %.9570, i64 6
  %i.aau = load i16, ptr %i.aaj, align 2, !tbaa !147
  %i.aav = zext i16 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.13504569, i64 6
  %i.aax = load i16, ptr %i.aam, align 2, !tbaa !147
  %i.aay = zext i16 %i.aax to i64
  %i.aaz = sub nsw i64 %i.aav, %i.aay
  %i.aba = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aaz
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !7
  %i.abc = add nsw i32 %i.aas, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %.9570, i64 8
  %i.abe = load i16, ptr %i.aat, align 2, !tbaa !147
  %i.abf = zext i16 %i.abe to i64
  %i.abg = getelementptr inbounds nuw i8, ptr %.13504569, i64 8
  %i.abh = load i16, ptr %i.aaw, align 2, !tbaa !147
  %i.abi = zext i16 %i.abh to i64
  %i.abj = sub nsw i64 %i.abf, %i.abi
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abj
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !7
  %i.abm = add nsw i32 %i.abc, %i.abl             ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.9570, i64 10
  %i.abo = load i16, ptr %i.abd, align 2, !tbaa !147
  %i.abp = zext i16 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %.13504569, i64 10
  %i.abr = load i16, ptr %i.abg, align 2, !tbaa !147
  %i.abs = zext i16 %i.abr to i64
  %i.abt = sub nsw i64 %i.abp, %i.abs
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !7
  %i.abw = add nsw i32 %i.abv, %.3448573
  %i.abx = getelementptr inbounds nuw i8, ptr %.9570, i64 12
  %i.aby = load i16, ptr %i.abn, align 2, !tbaa !147
  %i.abz = zext i16 %i.aby to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %.13504569, i64 12
  %i.acb = load i16, ptr %i.abq, align 2, !tbaa !147
  %i.acc = zext i16 %i.acb to i64
  %i.acd = sub nsw i64 %i.abz, %i.acc
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acd
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !7
  %i.acg = add nsw i32 %i.abw, %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %.9570, i64 14
  %i.aci = load i16, ptr %i.abx, align 2, !tbaa !147
  %i.acj = zext i16 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %.13504569, i64 14
  %i.acl = load i16, ptr %i.aca, align 2, !tbaa !147
  %i.acm = zext i16 %i.acl to i64
  %i.acn = sub nsw i64 %i.acj, %i.acm
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acn
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !7
  %i.acq = add nsw i32 %i.acg, %i.acp
  %i.acr = getelementptr inbounds nuw i8, ptr %.9570, i64 16
  %i.acs = load i16, ptr %i.ach, align 2, !tbaa !147
  %i.act = zext i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %.13504569, i64 16
  %i.acv = load i16, ptr %i.ack, align 2, !tbaa !147
  %i.acw = zext i16 %i.acv to i64
  %i.acx = sub nsw i64 %i.act, %i.acw
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.acx
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !7
  %i.ada = add nsw i32 %i.acq, %i.acz             ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.9570, i64 18
  %i.adc = load i16, ptr %i.acr, align 2, !tbaa !147
  %i.add = zext i16 %i.adc to i64
  %i.ade = getelementptr inbounds nuw i8, ptr %.13504569, i64 18
  %i.adf = load i16, ptr %i.acu, align 2, !tbaa !147
  %i.adg = zext i16 %i.adf to i64
  %i.adh = sub nsw i64 %i.add, %i.adg
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adh
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !7
  %i.adk = add nsw i32 %i.adj, %.3442574
  %i.adl = getelementptr inbounds nuw i8, ptr %.9570, i64 20
  %i.adm = load i16, ptr %i.adb, align 2, !tbaa !147
  %i.adn = zext i16 %i.adm to i64
  %i.ado = getelementptr inbounds nuw i8, ptr %.13504569, i64 20
  %i.adp = load i16, ptr %i.ade, align 2, !tbaa !147
  %i.adq = zext i16 %i.adp to i64
  %i.adr = sub nsw i64 %i.adn, %i.adq
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !7
  %i.adu = add nsw i32 %i.adk, %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %.9570, i64 22
  %i.adw = load i16, ptr %i.adl, align 2, !tbaa !147
  %i.adx = zext i16 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %.13504569, i64 22
  %i.adz = load i16, ptr %i.ado, align 2, !tbaa !147
  %i.aea = zext i16 %i.adz to i64
  %i.aeb = sub nsw i64 %i.adx, %i.aea
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aeb
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !7
  %i.aee = add nsw i32 %i.adu, %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %.9570, i64 24
  %i.aeg = load i16, ptr %i.adv, align 2, !tbaa !147
  %i.aeh = zext i16 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw i8, ptr %.13504569, i64 24
  %i.aej = load i16, ptr %i.ady, align 2, !tbaa !147
  %i.aek = zext i16 %i.aej to i64
  %i.ael = sub nsw i64 %i.aeh, %i.aek
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ael
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !7
  %i.aeo = add nsw i32 %i.aee, %i.aen             ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.9570, i64 26
  %i.aeq = load i16, ptr %i.aef, align 2, !tbaa !147
  %i.aer = zext i16 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw i8, ptr %.13504569, i64 26
  %i.aet = load i16, ptr %i.aei, align 2, !tbaa !147
  %i.aeu = zext i16 %i.aet to i64
  %i.aev = sub nsw i64 %i.aer, %i.aeu
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aev
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !7
  %i.aey = add nsw i32 %i.aex, %.3575
  %i.aez = getelementptr inbounds nuw i8, ptr %.9570, i64 28
  %i.afa = load i16, ptr %i.aep, align 2, !tbaa !147
  %i.afb = zext i16 %i.afa to i64
  %i.afc = getelementptr inbounds nuw i8, ptr %.13504569, i64 28
  %i.afd = load i16, ptr %i.aes, align 2, !tbaa !147
  %i.afe = zext i16 %i.afd to i64
  %i.aff = sub nsw i64 %i.afb, %i.afe
  %i.afg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !7
  %i.afi = add nsw i32 %i.aey, %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %.9570, i64 30
  %i.afk = load i16, ptr %i.aez, align 2, !tbaa !147
  %i.afl = zext i16 %i.afk to i64
  %i.afm = getelementptr inbounds nuw i8, ptr %.13504569, i64 30
  %i.afn = load i16, ptr %i.afc, align 2, !tbaa !147
  %i.afo = zext i16 %i.afn to i64
  %i.afp = sub nsw i64 %i.afl, %i.afo
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.afp
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !7
  %i.afs = add nsw i32 %i.afi, %i.afr
  %i.aft = load i16, ptr %i.afj, align 2, !tbaa !147
  %i.afu = zext i16 %i.aft to i64
  %i.afv = getelementptr inbounds nuw i8, ptr %.13504569, i64 32
  %i.afw = load i16, ptr %i.afm, align 2, !tbaa !147
  %i.afx = zext i16 %i.afw to i64
  %i.afy = sub nsw i64 %i.afu, %i.afx
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.afy
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !7
  %i.agb = add nsw i32 %i.afs, %i.aga             ; 2 uses
  %i.agc = getelementptr [2 x i8], ptr %.9570, i64 %i.zy
  %i.agd = add nuw nsw i32 %.4472571, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.agd, 4
  br i1 %exitcond.not, label %bb.am, label %bb.al, !llvm.loop !253

bb.am:                                            ; preds = %bb.al
  %scevgep = getelementptr i8, ptr %.12503576, i64 128 ; 2 uses
  %i.age = shl nsw i64 %i.zy, 3
  %scevgep767 = getelementptr i8, ptr %.8577, i64 %i.age
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv768 ; 4 uses
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !144
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv793
  store i32 %i.abm, ptr %i.agh, align 4, !tbaa !7
  %i.agi = getelementptr i8, ptr %i.agf, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !144
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %indvars.iv793
  store i32 %i.ada, ptr %i.agk, align 4, !tbaa !7
  %i.agl = getelementptr i8, ptr %i.agf, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !144
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %indvars.iv793
  store i32 %i.aeo, ptr %i.agn, align 4, !tbaa !7
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 4
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !144
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv793
  store i32 %i.agb, ptr %i.agq, align 4, !tbaa !7
  %i.agr = add nuw nsw i32 %.2459579, 1           ; 2 uses
  %exitcond771.not = icmp eq i32 %i.agr, 4
  br i1 %exitcond771.not, label %bb.an, label %.preheader549, !llvm.loop !254

bb.an:                                            ; preds = %bb.am
  %i.ags = load i32, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not528 = icmp eq i32 %i.ags, 0
  br i1 %.not528, label %.loopexit, label %.preheader551.preheader

.preheader551.preheader:                          ; preds = %bb.an
  %i.agt = load i32, ptr @ref_access_method, align 4, !tbaa !7
  %i.agu = sext i32 %i.agt to i64
  %i.agv = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.agu
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !116
  %i.agx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !302
  %i.agy = call ptr %i.agw(ptr noundef %i.agx, i32 noundef %i.jy, i32 noundef %i.ka) #12
  %i.agz = load ptr, ptr @img, align 8, !tbaa !116 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 15548
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 15544
  br label %.preheader547

.preheader547:                                    ; preds = %.preheader551.preheader, %._crit_edge621
  %indvars.iv772 = phi i64 [ 0, %.preheader551.preheader ], [ %indvars.iv.next773, %._crit_edge621 ] ; 2 uses
  %.3460636 = phi i32 [ 0, %.preheader551.preheader ], [ %i.aqs, %._crit_edge621 ]
  %.10634 = phi ptr [ %i.agy, %.preheader551.preheader ], [ %.11.lcssa, %._crit_edge621 ] ; 4 uses
  %.15506633 = phi ptr [ %scevgep, %.preheader551.preheader ], [ %.16.lcssa, %._crit_edge621 ] ; 4 uses
  %i.ahc = load i32, ptr %i.aha, align 4, !tbaa !313 ; 4 uses
  %i.ahd = icmp sgt i32 %i.ahc, 0
  br i1 %i.ahd, label %.preheader545.lr.ph, label %._crit_edge621

.preheader545.lr.ph:                              ; preds = %.preheader547
  %i.ahe = load i32, ptr %i.ahb, align 8, !tbaa !315 ; 7 uses
  %i.ahf = icmp sgt i32 %i.ahe, 0
  %i.ahg = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !7
  %i.ahh = sub nsw i32 %i.ahg, %i.ahe
  %i.ahi = sext i32 %i.ahh to i64                 ; 10 uses
  br i1 %i.ahf, label %.preheader545.us.preheader, label %._crit_edge610.preheader

._crit_edge610.preheader:                         ; preds = %.preheader545.lr.ph
  %i.ahj = add nsw i32 %i.ahc, -1
  %i.ahk = lshr i32 %i.ahj, 2
  %i.ahl = add nuw nsw i32 %i.ahk, 1              ; 2 uses
  %xtraiter = and i32 %i.ahl, 7                   ; 3 uses
  %i.ahm = icmp ult i32 %i.ahc, 29
  br i1 %i.ahm, label %._crit_edge610.epil.preheader, label %._crit_edge610.preheader.new

._crit_edge610.preheader.new:                     ; preds = %._crit_edge610.preheader
  %unroll_iter = and i32 %i.ahl, 2147483640
  br label %._crit_edge610

.preheader545.us.preheader:                       ; preds = %.preheader545.lr.ph
  %i.ahn = add nsw i32 %i.ahe, -1
  %i.aho = lshr i32 %i.ahn, 2
  %i.ahp = add nuw nsw i32 %i.aho, 1              ; 8 uses
  %xtraiter1023 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahq = icmp ult i32 %i.ahe, 13
  %unroll_iter1030 = and i32 %i.ahp, 2147483644
  %lcmp.mod1025.not = icmp eq i32 %xtraiter1023, 0
  %lcmp.mod1029 = icmp ne i32 %xtraiter1023, 0
  %xtraiter1036 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahr = icmp ult i32 %i.ahe, 13
  %unroll_iter1043 = and i32 %i.ahp, 2147483644
  %lcmp.mod1038.not = icmp eq i32 %xtraiter1036, 0
  %lcmp.mod1042 = icmp ne i32 %xtraiter1036, 0
  %xtraiter1050 = and i32 %i.ahp, 3               ; 3 uses
  %i.ahs = icmp ult i32 %i.ahe, 13
  %unroll_iter1057 = and i32 %i.ahp, 2147483644
  %lcmp.mod1052.not = icmp eq i32 %xtraiter1050, 0
  %lcmp.mod1056 = icmp ne i32 %xtraiter1050, 0
  %xtraiter1064 = and i32 %i.ahp, 3               ; 3 uses
  %i.aht = icmp ult i32 %i.ahe, 13
  %unroll_iter1071 = and i32 %i.ahp, 2147483644
  %lcmp.mod1066.not = icmp eq i32 %xtraiter1064, 0
  %lcmp.mod1070 = icmp ne i32 %xtraiter1064, 0
  br label %.preheader545.us

.preheader545.us:                                 ; preds = %.preheader545.us.preheader, %._crit_edge610.us
  %.4620.us = phi i32 [ %.lcssa978, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4443619.us = phi i32 [ %.lcssa975, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4449618.us = phi i32 [ %.lcssa972, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.4455617.us = phi i32 [ %.lcssa969, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ] ; 2 uses
  %.5473616.us = phi i32 [ %i.apn, %._crit_edge610.us ], [ 0, %.preheader545.us.preheader ]
  %.11615.us = phi ptr [ %i.apm, %._crit_edge610.us ], [ %.10634, %.preheader545.us.preheader ] ; 2 uses
  %.16614.us = phi ptr [ %.lcssa979, %._crit_edge610.us ], [ %.15506633, %.preheader545.us.preheader ] ; 2 uses
  br i1 %i.ahq, label %.epil.preheader, label %.preheader545.us.new

.preheader545.us.new:                             ; preds = %.preheader545.us, %.preheader545.us.new
  %.5456583.us = phi i32 [ %i.ajh, %.preheader545.us.new ], [ %.4455617.us, %.preheader545.us ]
  %.12581.us = phi ptr [ %i.aiy, %.preheader545.us.new ], [ %.11615.us, %.preheader545.us ] ; 5 uses
  %.17580.us = phi ptr [ %i.ajb, %.preheader545.us.new ], [ %.16614.us, %.preheader545.us ] ; 5 uses
  %niter1031 = phi i32 [ %niter1031.next.3, %.preheader545.us.new ], [ 0, %.preheader545.us ]
  %i.ahu = getelementptr inbounds nuw i8, ptr %.12581.us, i64 2
  %i.ahv = load i16, ptr %.12581.us, align 2, !tbaa !147
  %i.ahw = zext i16 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr %.17580.us, i64 2
  %i.ahy = load i16, ptr %.17580.us, align 2, !tbaa !147
  %i.ahz = zext i16 %i.ahy to i64
  %i.aia = sub nsw i64 %i.ahw, %i.ahz
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !7
  %i.aid = add nsw i32 %i.aic, %.5456583.us
  %i.aie = getelementptr inbounds nuw i8, ptr %.12581.us, i64 4
  %i.aif = load i16, ptr %i.ahu, align 2, !tbaa !147
  %i.aig = zext i16 %i.aif to i64
  %i.aih = getelementptr inbounds nuw i8, ptr %.17580.us, i64 4
  %i.aii = load i16, ptr %i.ahx, align 2, !tbaa !147
  %i.aij = zext i16 %i.aii to i64
  %i.aik = sub nsw i64 %i.aig, %i.aij
  %i.ail = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aik
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !7
  %i.ain = add nsw i32 %i.aim, %i.aid
  %i.aio = getelementptr inbounds nuw i8, ptr %.12581.us, i64 6
  %i.aip = load i16, ptr %i.aie, align 2, !tbaa !147
  %i.aiq = zext i16 %i.aip to i64
  %i.air = getelementptr inbounds nuw i8, ptr %.17580.us, i64 6
  %i.ais = load i16, ptr %i.aih, align 2, !tbaa !147
  %i.ait = zext i16 %i.ais to i64
  %i.aiu = sub nsw i64 %i.aiq, %i.ait
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !7
  %i.aix = add nsw i32 %i.aiw, %i.ain
  %i.aiy = getelementptr inbounds nuw i8, ptr %.12581.us, i64 8 ; 3 uses
  %i.aiz = load i16, ptr %i.aio, align 2, !tbaa !147
  %i.aja = zext i16 %i.aiz to i64
  %i.ajb = getelementptr inbounds nuw i8, ptr %.17580.us, i64 8 ; 3 uses
  %i.ajc = load i16, ptr %i.air, align 2, !tbaa !147
  %i.ajd = zext i16 %i.ajc to i64
  %i.aje = sub nsw i64 %i.aja, %i.ajd
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !7
  %i.ajh = add nsw i32 %i.ajg, %i.aix             ; 3 uses
  %niter1031.next.3 = add nuw nsw i32 %niter1031, 4 ; 2 uses
  %niter1031.ncmp.3.not = icmp eq i32 %niter1031.next.3, %unroll_iter1030
  br i1 %niter1031.ncmp.3.not, label %.lr.ph593.us.preheader.unr-lcssa, label %.preheader545.us.new, !llvm.loop !255

.lr.ph593.us.preheader.unr-lcssa:                 ; preds = %.preheader545.us.new
  br i1 %lcmp.mod1025.not, label %.lr.ph593.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph593.us.preheader.unr-lcssa, %.preheader545.us
  %.5456583.us.epil.init = phi i32 [ %.4455617.us, %.preheader545.us ], [ %i.ajh, %.lr.ph593.us.preheader.unr-lcssa ]
  %.12581.us.epil.init = phi ptr [ %.11615.us, %.preheader545.us ], [ %i.aiy, %.lr.ph593.us.preheader.unr-lcssa ]
  %.17580.us.epil.init = phi ptr [ %.16614.us, %.preheader545.us ], [ %i.ajb, %.lr.ph593.us.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1029)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %.5456583.us.epil = phi i32 [ %.5456583.us.epil.init, %.epil.preheader ], [ %i.ajr, %bb.ao ]
  %.12581.us.epil = phi ptr [ %.12581.us.epil.init, %.epil.preheader ], [ %i.aji, %bb.ao ] ; 2 uses
  %.17580.us.epil = phi ptr [ %.17580.us.epil.init, %.epil.preheader ], [ %i.ajl, %bb.ao ] ; 2 uses
  %epil.iter1024 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter1024.next, %bb.ao ]
  %i.aji = getelementptr inbounds nuw i8, ptr %.12581.us.epil, i64 2 ; 2 uses
  %i.ajj = load i16, ptr %.12581.us.epil, align 2, !tbaa !147
  %i.ajk = zext i16 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr %.17580.us.epil, i64 2 ; 2 uses
  %i.ajm = load i16, ptr %.17580.us.epil, align 2, !tbaa !147
  %i.ajn = zext i16 %i.ajm to i64
  %i.ajo = sub nsw i64 %i.ajk, %i.ajn
  %i.ajp = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !7
  %i.ajr = add nsw i32 %i.ajq, %.5456583.us.epil  ; 2 uses
end_hunk_1
