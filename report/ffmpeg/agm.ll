Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/agm?download=true
inline.NumInlined: 66
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_inter_plane:bb.a
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !67
  %i.bp = ashr i32 %i.bo, %i.ah
  %i.bq = load ptr, ptr %i.v, align 16, !tbaa !81
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv534
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !60 ; 2 uses
  %i.bt = icmp sgt i16 %i.bi, -33
  br i1 %i.bt, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !75
  %i.bw = sdiv i16 %i.bv, %.rhs.trunc
  %.sext = sext i16 %i.bw to i32
  %i.bx = sdiv i16 %i.bi, %.rhs.trunc
  %.sext434 = sext i16 %i.bx to i32
  %i.by = load i32, ptr %i.ab, align 16, !tbaa !76
  %i.bz = add i32 %i.by, %i.ay
  %i.ca = shl nsw i32 %i.bz, 3                    ; 2 uses
  %i.cb = sub nsw i32 %i.ca, %.sext               ; 3 uses
  %i.cc = shl nuw nsw i64 %indvars.iv534, 3       ; 3 uses
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, %.sext434            ; 3 uses
  %i.cf = icmp slt i32 %i.cb, 0
  br i1 %i.cf, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = add nuw nsw i32 %i.cb, 8
  %i.ch = icmp sgt i32 %i.cg, %i.bm
  %i.ci = icmp slt i32 %i.ce, 0
  %or.cond = select i1 %i.ch, i1 true, i1 %i.ci
  %i.cj = add nuw nsw i32 %i.ce, 8
  %i.ck = icmp sgt i32 %i.cj, %i.bp
  %or.cond343 = select i1 %or.cond, i1 true, i1 %i.ck
  br i1 %or.cond343, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.cm = load i32, ptr %i.an, align 4, !tbaa !60 ; 2 uses
  %i.cn = mul nsw i32 %i.cm, %i.ca
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cc ; 2 uses
  %i.cr = load ptr, ptr %i.ao, align 8, !tbaa !47
  %i.cs = load i32, ptr %i.aq, align 4, !tbaa !60 ; 2 uses
  %i.ct = mul nsw i32 %i.cs, %i.cb
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = zext nneg i32 %i.ce to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw ; 2 uses
  %i.cy = sext i32 %i.cm to i64                   ; 7 uses
  %i.cz = sext i32 %i.cs to i64                   ; 7 uses
  %i.da = load i64, ptr %i.cx, align 1, !tbaa !48
  store i64 %i.da, ptr %i.cq, align 1, !tbaa !48
  %i.db = getelementptr inbounds i8, ptr %i.cq, i64 %i.cy ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 %i.cz ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 1, !tbaa !48
  store i64 %i.dd, ptr %i.db, align 1, !tbaa !48
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %i.cy ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.cz ; 2 uses
  %i.dg = load i64, ptr %i.df, align 1, !tbaa !48
  store i64 %i.dg, ptr %i.de, align 1, !tbaa !48
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %i.cy ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.cz ; 2 uses
  %i.dj = load i64, ptr %i.di, align 1, !tbaa !48
  store i64 %i.dj, ptr %i.dh, align 1, !tbaa !48
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.cy ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.cz ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 1, !tbaa !48
  store i64 %i.dm, ptr %i.dk, align 1, !tbaa !48
  %i.dn = getelementptr inbounds i8, ptr %i.dk, i64 %i.cy ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.cz ; 2 uses
  %i.dp = load i64, ptr %i.do, align 1, !tbaa !48
  store i64 %i.dp, ptr %i.dn, align 1, !tbaa !48
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.cy ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 %i.cz ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 1, !tbaa !48
  store i64 %i.ds, ptr %i.dq, align 1, !tbaa !48
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.cy
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.cz
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !48
  store i64 %i.dv, ptr %i.dt, align 1, !tbaa !48
  %.not339 = icmp eq i32 %i.bs, 0
  br i1 %.not339, label %.critedge344, label %vector.ph600

vector.ph600:                                     ; preds = %bb.i
  %i.dw = load ptr, ptr %i.ar, align 8, !tbaa !143
  %i.dx = load ptr, ptr %i.n, align 16, !tbaa !78
  %i.dy = shl nuw nsw i64 %indvars.iv534, 6       ; 3 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %i.dy
  tail call void %i.dw(ptr noundef %i.dz) #13
  %i.ea = load ptr, ptr %i.n, align 16, !tbaa !78 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.dy ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16 ; 2 uses
  %wide.load603 = load <8 x i16>, ptr %invariant.gep, align 2, !tbaa !79
  %wide.load604 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !79
  %i.ec = add <8 x i16> %wide.load603, splat (i16 1)
  %i.ed = add <8 x i16> %wide.load604, splat (i16 1)
  %i.ee = and <8 x i16> %i.ec, splat (i16 -4)
  %i.ef = and <8 x i16> %i.ed, splat (i16 -4)
  store <8 x i16> %i.ee, ptr %invariant.gep, align 2, !tbaa !79
  store <8 x i16> %i.ef, ptr %i.eb, align 2, !tbaa !79
  %i.eg = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48 ; 2 uses
  %wide.load603.1 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !79
  %wide.load604.1 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !79
  %i.ei = add <8 x i16> %wide.load603.1, splat (i16 1)
  %i.ej = add <8 x i16> %wide.load604.1, splat (i16 1)
  %i.ek = and <8 x i16> %i.ei, splat (i16 -4)
  %i.el = and <8 x i16> %i.ej, splat (i16 -4)
  store <8 x i16> %i.ek, ptr %i.eg, align 2, !tbaa !79
  store <8 x i16> %i.el, ptr %i.eh, align 2, !tbaa !79
  %i.em = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80 ; 2 uses
  %wide.load603.2 = load <8 x i16>, ptr %i.em, align 2, !tbaa !79
  %wide.load604.2 = load <8 x i16>, ptr %i.en, align 2, !tbaa !79
  %i.eo = add <8 x i16> %wide.load603.2, splat (i16 1)
  %i.ep = add <8 x i16> %wide.load604.2, splat (i16 1)
  %i.eq = and <8 x i16> %i.eo, splat (i16 -4)
  %i.er = and <8 x i16> %i.ep, splat (i16 -4)
  store <8 x i16> %i.eq, ptr %i.em, align 2, !tbaa !79
  store <8 x i16> %i.er, ptr %i.en, align 2, !tbaa !79
  %i.es = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112 ; 2 uses
  %wide.load603.3 = load <8 x i16>, ptr %i.es, align 2, !tbaa !79
  %wide.load604.3 = load <8 x i16>, ptr %i.et, align 2, !tbaa !79
  %i.eu = add <8 x i16> %wide.load603.3, splat (i16 1)
  %i.ev = add <8 x i16> %wide.load604.3, splat (i16 1)
  %i.ew = and <8 x i16> %i.eu, splat (i16 -4)
  %i.ex = and <8 x i16> %i.ev, splat (i16 -4)
  store <8 x i16> %i.ew, ptr %i.es, align 2, !tbaa !79
  store <8 x i16> %i.ex, ptr %i.et, align 2, !tbaa !79
  %i.ey = load ptr, ptr %i.as, align 16, !tbaa !144
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.dy
  %i.fa = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.fb = load i32, ptr %i.ab, align 16, !tbaa !76
  %i.fc = add i32 %i.fb, %i.ay
  %i.fd = shl nsw i32 %i.fc, 3
  %i.fe = load i32, ptr %i.an, align 4, !tbaa !60 ; 2 uses
  %i.ff = mul nsw i32 %i.fd, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.fa, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.cc
  %i.fj = sext i32 %i.fe to i64
  tail call void %i.ey(ptr noundef %i.ez, ptr noundef %i.fi, i64 noundef %i.fj) #13
  br label %.critedge344

bb.j:                                             ; preds = %bb.f
  %.not338 = icmp eq i32 %i.bs, 0
  br i1 %.not338, label %.critedge344, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fk = load ptr, ptr %i.aj, align 16, !tbaa !80
  %i.fl = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.fm = load i32, ptr %i.ab, align 16, !tbaa !76
  %i.fn = add i32 %i.fm, %i.ay
  %i.fo = shl nsw i32 %i.fn, 3
  %i.fp = load i32, ptr %i.an, align 4, !tbaa !60 ; 2 uses
  %i.fq = mul nsw i32 %i.fo, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fl, i64 %i.fr
  %i.ft = shl nuw nsw i64 %indvars.iv534, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  %i.fv = sext i32 %i.fp to i64
  %i.fw = load ptr, ptr %i.n, align 16, !tbaa !78
  %.idx573 = shl nuw nsw i64 %indvars.iv534, 7
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx573
  tail call void %i.fk(ptr noundef %i.fu, i64 noundef %i.fv, ptr noundef %i.fx) #13
  br label %.critedge344

.critedge344:                                     ; preds = %bb.j, %bb.i, %vector.ph600, %bb.k
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.fy = load i32, ptr %i.p, align 4, !tbaa !77  ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %.not340 = icmp slt i64 %indvars.iv.next535, %i.fz
  br i1 %.not340, label %bb.f, label %.critedge345, !llvm.loop !134

.critedge345:                                     ; preds = %.critedge344, %.preheader
  %i.ga = add nuw nsw i32 %.0298506, 1            ; 2 uses
  %i.gb = load i32, ptr %i.ab, align 16, !tbaa !76
  %.not341 = icmp slt i32 %i.ga, %i.gb
  br i1 %.not341, label %bb.e, label %.critedge.thread396, !llvm.loop !135

bb.l:                                             ; preds = %bb.b
  %i.gc = and i32 %i.l, 2
  %.not = icmp eq i32 %i.gc, 0
  br i1 %.not, label %bb.at, label %.preheader455

.preheader455:                                    ; preds = %bb.l
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ge = load i32, ptr %i.gd, align 16, !tbaa !76 ; 2 uses
  %.not335472 = icmp sgt i32 %i.ge, 0
  br i1 %.not335472, label %.preheader453.lr.ph, label %.critedge.thread396

.preheader453.lr.ph:                              ; preds = %.preheader455
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.gg = icmp eq i32 %6, 0                       ; 3 uses
  %i.gh = zext i1 %i.gg to i32                    ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gj = xor i1 %i.gg, true
  %i.gk = zext i1 %i.gj to i32                    ; 2 uses
  %.rhs.trunc436 = select i1 %i.gg, i16 1, i16 2
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.gp = zext nneg i32 %6 to i64                 ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gp ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gp
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.gy = load i32, ptr %i.gf, align 4, !tbaa !77 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %.preheader453.preheader, label %.critedge.thread396

.preheader453.preheader:                          ; preds = %.preheader453.lr.ph
  %7 = insertelement <2 x i16> poison, i16 %.rhs.trunc436, i64 0
  %8 = shufflevector <2 x i16> %7, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  br label %.preheader453

.preheader453:                                    ; preds = %.preheader453.preheader, %.thread408
  %i.hh = phi i32 [ %i.pb, %.thread408 ], [ %i.ge, %.preheader453.preheader ]
  %i.hi = phi i32 [ %i.pc, %.thread408 ], [ %i.gy, %.preheader453.preheader ] ; 3 uses
  %.0295474 = phi i32 [ %i.pd, %.thread408 ], [ 0, %.preheader453.preheader ] ; 3 uses
  %storemerge.i460.lcssa464.lcssa469473 = phi i32 [ %storemerge.i460.lcssa464.lcssa, %.thread408 ], [ 0, %.preheader453.preheader ] ; 2 uses
  %.not334466 = icmp sgt i32 %i.hi, 0
  br i1 %.not334466, label %.lr.ph, label %.thread408

.lr.ph:                                           ; preds = %.preheader453
  %i.hj = lshr i32 %.0295474, %i.gh
  %i.hk = xor i32 %.0295474, -1                   ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.as
  %indvars.iv521 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next522, %bb.as ] ; 4 uses
  %i.hl = phi i32 [ %i.hi, %.lr.ph ], [ %i.oz, %bb.as ]
  %storemerge.i460.lcssa464467 = phi i32 [ %storemerge.i460.lcssa464.lcssa469473, %.lr.ph ], [ %storemerge.i460, %bb.as ]
  %i.hm = ashr i32 %i.hl, %i.gh
  %i.hn = mul nsw i32 %i.hm, %i.hj
  %i.ho = trunc nuw nsw i64 %indvars.iv521 to i32
  %i.hp = lshr i32 %i.ho, %i.gh
  %i.hq = add nsw i32 %i.hn, %i.hp
  %i.hr = load ptr, ptr %i.gi, align 8, !tbaa !71
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.hs ; 2 uses
  %9 = load <2 x i16>, ptr %i.ht, align 2, !tbaa !79
  %10 = load i16, ptr %i.ht, align 2, !tbaa !74
  %11 = sdiv <2 x i16> %9, %8                     ; 2 uses
  %12 = extractelement <2 x i16> %11, i64 0
  %.sext437 = sext i16 %12 to i32
  %13 = extractelement <2 x i16> %11, i64 1
  %.sext440 = sext i16 %13 to i32
  %i.hu = load ptr, ptr %i.gl, align 8, !tbaa !40 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 124
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !66
  %i.hx = ashr i32 %i.hw, %i.gk
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 120
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !67
  %i.ia = ashr i32 %i.hz, %i.gk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.gn, i8 0, i64 128, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.am, %bb.m
  %storemerge.i459 = phi i32 [ %storemerge.i460.lcssa464467, %bb.m ], [ %storemerge.i460, %bb.am ] ; 3 uses
  %.0384 = phi i32 [ 0, %bb.m ], [ %.1385, %bb.am ] ; 5 uses
  %.02632.i = phi i32 [ 0, %bb.m ], [ %.1.i, %bb.am ] ; 3 uses
  %i.ib = icmp sgt i32 %storemerge.i459, 0
  br i1 %i.ib, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ic = sub nuw nsw i32 64, %.02632.i
  %..i = tail call i32 @llvm.umin.i32(i32 %storemerge.i459, i32 %i.ic) ; 2 uses
  %i.id = sub nsw i32 %storemerge.i459, %..i
  br label %bb.am

bb.p:                                             ; preds = %bb.n
  %i.ie = load i32, ptr %i.k, align 4, !tbaa !62
  %i.if = and i32 %i.ie, 1
  %.val.i359 = load i32, ptr %i.j, align 8, !tbaa !59 ; 5 uses
  %.val49.i = load i32, ptr %i.g, align 4, !tbaa !57
  %i.ig = sub nsw i32 %.val49.i, %.val.i359
  %i.ih = icmp slt i32 %i.ig, 2
  br i1 %i.ih, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val60.i = load ptr, ptr %1, align 8, !tbaa !56 ; 6 uses
  %i.ii = lshr i32 %.val.i359, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 1, !tbaa !48
  %i.im = and i32 %.val.i359, 7
  %i.in = lshr i32 %i.il, %i.im                   ; 4 uses
  %i.io = and i32 %i.in, 3
  %.not.i360 = icmp eq i32 %i.io, 0
  br i1 %.not.i360, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ip = and i32 %i.in, 15
  switch i32 %i.ip, label %.critedge.thread [
    i32 1, label %bb.ab
    i32 9, label %bb.ab
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 5, label %bb.u
    i32 13, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 10, label %bb.x
    i32 11, label %bb.y
    i32 14, label %bb.z
    i32 15, label %bb.aa
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  br label %bb.ab

bb.u:                                             ; preds = %bb.r, %bb.r
  br label %bb.ab

bb.v:                                             ; preds = %bb.r
  br label %bb.ab

bb.w:                                             ; preds = %bb.r
  br label %bb.ab

bb.x:                                             ; preds = %bb.r
  br label %bb.ab

bb.y:                                             ; preds = %bb.r
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  br label %bb.ab

bb.aa:                                            ; preds = %bb.r
  %i.iq = lshr i32 %i.in, 4
  %i.ir = and i32 %i.iq, 1
  %i.is = or disjoint i32 %i.ir, 10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.r
  %.041.i = phi i32 [ %i.is, %bb.aa ], [ 3, %bb.s ], [ 7, %bb.t ], [ 2, %bb.u ], [ 4, %bb.v ], [ 8, %bb.w ], [ 5, %bb.x ], [ 9, %bb.y ], [ 6, %bb.z ], [ 1, %bb.r ], [ 1, %bb.r ] ; 3 uses
  %.0.i = phi i32 [ 5, %bb.aa ], [ 4, %bb.s ], [ 4, %bb.t ], [ 3, %bb.u ], [ 4, %bb.v ], [ 4, %bb.w ], [ 4, %bb.x ], [ 4, %bb.y ], [ 4, %bb.z ], [ 3, %bb.r ], [ 3, %bb.r ]
  %i.it = load i32, ptr %i.i, align 8, !tbaa !58  ; 2 uses
  %i.iu = add i32 %.0.i, %.val.i359
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.it, i32 %i.iu) ; 4 uses
  store i32 %i.iv, ptr %i.j, align 8, !tbaa !59
  %i.iw = lshr i32 %i.iv, 3
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 1, !tbaa !48
  %i.ja = and i32 %i.iv, 7
  %i.jb = lshr i32 %i.iz, %i.ja
  %i.jc = sub nuw nsw i32 32, %.041.i
  %i.jd = lshr i32 -1, %i.jc
  %i.je = and i32 %i.jb, %i.jd                    ; 3 uses
  %i.jf = add i32 %i.iv, %.041.i
  %i.jg = tail call i32 @llvm.umin.i32(i32 %i.it, i32 %i.jf)
  store i32 %i.jg, ptr %i.j, align 8, !tbaa !59
  %i.jh = add nsw i32 %.041.i, -1
  %i.ji = shl nuw nsw i32 1, %i.jh                ; 2 uses
  %i.jj = icmp samesign ult i32 %i.je, %i.ji
  br i1 %i.jj, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.jk = add nuw nsw i32 %i.ji, %i.je
  %i.jl = sub nsw i32 0, %i.jk
  br label %bb.al

bb.ad:                                            ; preds = %bb.q
  %i.jm = and i32 %i.in, 4
  %.not46.i = icmp eq i32 %i.jm, 0
  %i.jn = load i32, ptr %i.i, align 8, !tbaa !58  ; 4 uses
  %i.jo = add i32 %.val.i359, 3
  %i.jp = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 %i.jo) ; 8 uses
  store i32 %i.jp, ptr %i.j, align 8, !tbaa !59
  %i.jq = icmp eq i32 %i.if, 0                    ; 2 uses
  br i1 %.not46.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jr = lshr i32 %i.jp, 3
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 1, !tbaa !48
  %i.jv = and i32 %i.jp, 7
  %i.jw = lshr i32 %i.ju, %i.jv                   ; 2 uses
  br i1 %i.jq, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jx = and i32 %i.jw, 15                       ; 2 uses
  %i.jy = add i32 %i.jp, 4
  %i.jz = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 %i.jy) ; 7 uses
  store i32 %i.jz, ptr %i.j, align 8, !tbaa !59
  switch i32 %i.jx, label %bb.al [
    i32 0, label %bb.ah
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ka = lshr i32 %i.jz, 3
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 1, !tbaa !48
  %i.ke = and i32 %i.jz, 7
  %i.kf = lshr i32 %i.kd, %i.ke
  %i.kg = and i32 %i.kf, 65535
  %i.kh = add i32 %i.jz, 16
  br label %.sink.split65.i

bb.ah:                                            ; preds = %bb.af
  %i.ki = lshr i32 %i.jz, 3
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 1, !tbaa !48
  %i.km = and i32 %i.jz, 7
  %i.kn = lshr i32 %i.kl, %i.km
  %i.ko = and i32 %i.kn, 1023
  %i.kp = add i32 %i.jz, 10
  br label %.sink.split65.i

bb.ai:                                            ; preds = %bb.ae
  %i.kq = and i32 %i.jw, 1023
  %i.kr = add i32 %i.jp, 10
  br label %.sink.split65.i

.sink.split65.i:                                  ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sink67.i = phi i32 [ %i.kr, %bb.ai ], [ %i.kp, %bb.ah ], [ %i.kh, %bb.ag ]
  %.sink.ph.i = phi i32 [ %i.kq, %bb.ai ], [ %i.ko, %bb.ah ], [ %i.kg, %bb.ag ]
  %i.ks = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 %.sink67.i)
  store i32 %i.ks, ptr %i.j, align 8, !tbaa !59
  br label %bb.al

bb.aj:                                            ; preds = %bb.ad
  br i1 %i.jq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kt = lshr i32 %i.jp, 3
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 1, !tbaa !48
  %i.kx = and i32 %i.jp, 7
  %i.ky = lshr i32 %i.kw, %i.kx
  %i.kz = and i32 %i.ky, 15
  %i.la = add i32 %i.jp, 4
  %i.lb = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 %i.la)
  store i32 %i.lb, ptr %i.j, align 8, !tbaa !59
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.af, %.sink.split65.i, %bb.ab, %bb.ac
  %storemerge.i461 = phi i32 [ 0, %bb.ab ], [ %.sink.ph.i, %.sink.split65.i ], [ 0, %bb.ac ], [ %i.jx, %bb.af ], [ %i.kz, %bb.ak ], [ 0, %bb.aj ]
  %.2391.ph = phi i32 [ %i.je, %bb.ab ], [ 0, %.sink.split65.i ], [ %i.jl, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  %.4388.ph = phi i32 [ 1, %bb.ab ], [ %.0384, %.sink.split65.i ], [ 1, %bb.ac ], [ %.0384, %bb.af ], [ %.0384, %bb.ak ], [ %.0384, %bb.aj ]
  %i.lc = zext nneg i32 %.02632.i to i64          ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !60
  %i.lf = mul nsw i32 %i.le, %.2391.ph
  %i.lg = trunc i32 %i.lf to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.lc
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !48
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.lj
  store i16 %i.lg, ptr %i.lk, align 2, !tbaa !79
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.o
  %storemerge.i460 = phi i32 [ %i.id, %bb.o ], [ %storemerge.i461, %bb.al ] ; 3 uses
  %.1385 = phi i32 [ %.0384, %bb.o ], [ %.4388.ph, %bb.al ] ; 3 uses
  %.pn.i = phi i32 [ %..i, %bb.o ], [ 1, %bb.al ]
  %.1.i = add nuw nsw i32 %.pn.i, %.02632.i       ; 2 uses
  %i.ll = icmp sgt i32 %.1.i, 63
  br i1 %i.ll, label %decode_inter_block.exit, label %bb.n, !llvm.loop !136

decode_inter_block.exit:                          ; preds = %bb.am
  %i.lm = icmp sgt i16 %10, -33
  br i1 %i.lm, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %decode_inter_block.exit
  %i.ln = load i32, ptr %i.gd, align 16, !tbaa !76
  %i.lo = add i32 %i.ln, %i.hk
  %i.lp = shl nsw i32 %i.lo, 3                    ; 2 uses
  %i.lq = sub nsw i32 %i.lp, %.sext440            ; 3 uses
  %i.lr = shl nuw nsw i64 %indvars.iv521, 3       ; 3 uses
  %i.ls = trunc nuw i64 %i.lr to i32
  %i.lt = add nsw i32 %i.ls, %.sext437            ; 3 uses
  %i.lu = icmp slt i32 %i.lq, 0
  br i1 %i.lu, label %.critedge.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lv = add nuw nsw i32 %i.lq, 8
  %i.lw = icmp sgt i32 %i.lv, %i.hx
  %i.lx = icmp slt i32 %i.lt, 0
  %or.cond13 = select i1 %i.lw, i1 true, i1 %i.lx
  %i.ly = add nuw nsw i32 %i.lt, 8
  %i.lz = icmp sgt i32 %i.ly, %i.ia
  %or.cond347 = select i1 %or.cond13, i1 true, i1 %i.lz
  br i1 %or.cond347, label %.critedge.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ma = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.mb = load i32, ptr %i.gs, align 4, !tbaa !60 ; 2 uses
  %i.mc = mul nsw i32 %i.mb, %i.lp
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds i8, ptr %i.ma, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.lr ; 2 uses
  %i.mg = load ptr, ptr %i.gt, align 8, !tbaa !47
  %i.mh = load i32, ptr %i.gv, align 4, !tbaa !60 ; 2 uses
  %i.mi = mul nsw i32 %i.mh, %i.lq
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.mj
  %i.ml = zext nneg i32 %i.lt to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ml ; 2 uses
  %i.mn = sext i32 %i.mb to i64                   ; 7 uses
  %i.mo = sext i32 %i.mh to i64                   ; 7 uses
  %i.mp = load i64, ptr %i.mm, align 1, !tbaa !48
  store i64 %i.mp, ptr %i.mf, align 1, !tbaa !48
  %i.mq = getelementptr inbounds i8, ptr %i.mf, i64 %i.mn ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mm, i64 %i.mo ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 1, !tbaa !48
  store i64 %i.ms, ptr %i.mq, align 1, !tbaa !48
  %i.mt = getelementptr inbounds i8, ptr %i.mq, i64 %i.mn ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.mr, i64 %i.mo ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 1, !tbaa !48
  store i64 %i.mv, ptr %i.mt, align 1, !tbaa !48
  %i.mw = getelementptr inbounds i8, ptr %i.mt, i64 %i.mn ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %i.mu, i64 %i.mo ; 2 uses
  %i.my = load i64, ptr %i.mx, align 1, !tbaa !48
  store i64 %i.my, ptr %i.mw, align 1, !tbaa !48
  %i.mz = getelementptr inbounds i8, ptr %i.mw, i64 %i.mn ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %i.mx, i64 %i.mo ; 2 uses
  %i.nb = load i64, ptr %i.na, align 1, !tbaa !48
  store i64 %i.nb, ptr %i.mz, align 1, !tbaa !48
  %i.nc = getelementptr inbounds i8, ptr %i.mz, i64 %i.mn ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %i.na, i64 %i.mo ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 1, !tbaa !48
  store i64 %i.ne, ptr %i.nc, align 1, !tbaa !48
  %i.nf = getelementptr inbounds i8, ptr %i.nc, i64 %i.mn ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %i.nd, i64 %i.mo ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 1, !tbaa !48
  store i64 %i.nh, ptr %i.nf, align 1, !tbaa !48
  %i.ni = getelementptr inbounds i8, ptr %i.nf, i64 %i.mn
  %i.nj = getelementptr inbounds i8, ptr %i.ng, i64 %i.mo
  %i.nk = load i64, ptr %i.nj, align 1, !tbaa !48
  store i64 %i.nk, ptr %i.ni, align 1, !tbaa !48
  %.not333 = icmp eq i32 %.1385, 0
  br i1 %.not333, label %bb.as, label %vector.ph

vector.ph:                                        ; preds = %bb.ap
  %i.nl = load ptr, ptr %i.gw, align 8, !tbaa !143
  tail call void %i.nl(ptr noundef nonnull %i.gn) #13
  %wide.load = load <8 x i16>, ptr %i.gn, align 16, !tbaa !79
  %wide.load599 = load <8 x i16>, ptr %i.ha, align 16, !tbaa !79
  %i.nm = add <8 x i16> %wide.load, splat (i16 1)
  %i.nn = add <8 x i16> %wide.load599, splat (i16 1)
  %i.no = and <8 x i16> %i.nm, splat (i16 -4)
  %i.np = and <8 x i16> %i.nn, splat (i16 -4)
  store <8 x i16> %i.no, ptr %i.gn, align 16, !tbaa !79
  store <8 x i16> %i.np, ptr %i.ha, align 16, !tbaa !79
  %wide.load.1 = load <8 x i16>, ptr %i.hb, align 16, !tbaa !79
  %wide.load599.1 = load <8 x i16>, ptr %i.hc, align 16, !tbaa !79
  %i.nq = add <8 x i16> %wide.load.1, splat (i16 1)
  %i.nr = add <8 x i16> %wide.load599.1, splat (i16 1)
  %i.ns = and <8 x i16> %i.nq, splat (i16 -4)
  %i.nt = and <8 x i16> %i.nr, splat (i16 -4)
  store <8 x i16> %i.ns, ptr %i.hb, align 16, !tbaa !79
  store <8 x i16> %i.nt, ptr %i.hc, align 16, !tbaa !79
  %wide.load.2 = load <8 x i16>, ptr %i.hd, align 16, !tbaa !79
  %wide.load599.2 = load <8 x i16>, ptr %i.he, align 16, !tbaa !79
  %i.nu = add <8 x i16> %wide.load.2, splat (i16 1)
  %i.nv = add <8 x i16> %wide.load599.2, splat (i16 1)
  %i.nw = and <8 x i16> %i.nu, splat (i16 -4)
  %i.nx = and <8 x i16> %i.nv, splat (i16 -4)
  store <8 x i16> %i.nw, ptr %i.hd, align 16, !tbaa !79
  store <8 x i16> %i.nx, ptr %i.he, align 16, !tbaa !79
  %wide.load.3 = load <8 x i16>, ptr %i.hf, align 16, !tbaa !79
  %wide.load599.3 = load <8 x i16>, ptr %i.hg, align 16, !tbaa !79
  %i.ny = add <8 x i16> %wide.load.3, splat (i16 1)
  %i.nz = add <8 x i16> %wide.load599.3, splat (i16 1)
  %i.oa = and <8 x i16> %i.ny, splat (i16 -4)
  %i.ob = and <8 x i16> %i.nz, splat (i16 -4)
  store <8 x i16> %i.oa, ptr %i.hf, align 16, !tbaa !79
  store <8 x i16> %i.ob, ptr %i.hg, align 16, !tbaa !79
  %i.oc = load ptr, ptr %i.gx, align 16, !tbaa !144
  %i.od = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.oe = load i32, ptr %i.gd, align 16, !tbaa !76
  %i.of = add i32 %i.oe, %i.hk
  %i.og = shl nsw i32 %i.of, 3
  %i.oh = load i32, ptr %i.gs, align 4, !tbaa !60 ; 2 uses
  %i.oi = mul nsw i32 %i.og, %i.oh
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.od, i64 %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.lr
  %i.om = sext i32 %i.oh to i64
  tail call void %i.oc(ptr noundef nonnull %i.gn, ptr noundef %i.ol, i64 noundef %i.om) #13
  br label %bb.as

bb.aq:                                            ; preds = %decode_inter_block.exit
  %.not332 = icmp eq i32 %.1385, 0
  br i1 %.not332, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.on = load ptr, ptr %i.go, align 16, !tbaa !80
  %i.oo = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.op = load i32, ptr %i.gd, align 16, !tbaa !76
  %i.oq = add i32 %i.op, %i.hk
  %i.or = shl nsw i32 %i.oq, 3
  %i.os = load i32, ptr %i.gs, align 4, !tbaa !60 ; 2 uses
  %i.ot = mul nsw i32 %i.or, %i.os
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds i8, ptr %i.oo, i64 %i.ou
  %i.ow = shl nuw nsw i64 %indvars.iv521, 3
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ow
  %i.oy = sext i32 %i.os to i64
  tail call void %i.on(ptr noundef %i.ox, i64 noundef %i.oy, ptr noundef nonnull %i.gn) #13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %vector.ph, %bb.ap
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %i.oz = load i32, ptr %i.gf, align 4, !tbaa !77 ; 3 uses
  %i.pa = sext i32 %i.oz to i64
  %.not334 = icmp slt i64 %indvars.iv.next522, %i.pa
  br i1 %.not334, label %bb.m, label %.thread408.loopexit, !llvm.loop !137

.thread408.loopexit:                              ; preds = %bb.as
  %.pre = load i32, ptr %i.gd, align 16, !tbaa !76
  br label %.thread408

.thread408:                                       ; preds = %.thread408.loopexit, %.preheader453
  %i.pb = phi i32 [ %i.hh, %.preheader453 ], [ %.pre, %.thread408.loopexit ] ; 2 uses
  %i.pc = phi i32 [ %i.hi, %.preheader453 ], [ %i.oz, %.thread408.loopexit ]
  %storemerge.i460.lcssa464.lcssa = phi i32 [ %storemerge.i460.lcssa464.lcssa469473, %.preheader453 ], [ %storemerge.i460, %.thread408.loopexit ]
  %i.pd = add nuw nsw i32 %.0295474, 1            ; 2 uses
  %.not335 = icmp slt i32 %i.pd, %i.pb
  br i1 %.not335, label %.preheader453, label %.critedge.thread396, !llvm.loop !138

bb.at:                                            ; preds = %bb.l
  %i.pe = and i32 %i.l, 1
  %.not324 = icmp eq i32 %i.pe, 0
  br i1 %.not324, label %.preheader446, label %bb.au

.preheader446:                                    ; preds = %bb.at
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.pg = load i32, ptr %i.pf, align 16, !tbaa !76 ; 2 uses
  %.not326496 = icmp sgt i32 %i.pg, 0
  br i1 %.not326496, label %.preheader445.lr.ph, label %.critedge.thread396

.preheader445.lr.ph:                              ; preds = %.preheader446
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.pl = zext nneg i32 %6 to i64                 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pl
  %i.pp = load i32, ptr %i.ph, align 4, !tbaa !77 ; 3 uses
  %i.pq = icmp sgt i32 %i.pp, 0
  br i1 %i.pq, label %.preheader445, label %.critedge.thread396

bb.au:                                            ; preds = %bb.at
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !77
  %i.pv = shl nsw i32 %i.pu, 6
  %i.pw = sext i32 %i.pv to i64
  %i.px = shl nsw i64 %i.pw, 1
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.pr, ptr noundef nonnull %i.ps, i64 noundef %i.px) #13
  %i.py = load ptr, ptr %i.pr, align 16, !tbaa !78
  %.not328 = icmp eq ptr %i.py, null
  br i1 %.not328, label %.critedge.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 920
end_hunk_0
