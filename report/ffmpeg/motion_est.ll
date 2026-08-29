Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/motion_est?download=true
inline.NumInlined: 141
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@qpel_motion_search:bb.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !115  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5640 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4748 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4756 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4764
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !19 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4728
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !112 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5112 ; 2 uses
  %i.af = sext i32 %6 to i64                      ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 5 uses
  %i.ai = add nsw i32 %6, 1
  %i.aj = sext i32 %i.ai to i64                   ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.af
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.aj
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4620
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !94
  %.not = icmp eq i32 %i.as, 0
  %.lcssa355.sroa.gep385 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.lcssa355.sroa.gep386 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.lcssa355.sroa.gep387 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.lcssa355.sroa.gep388 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.lcssa355.sroa.gep389 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.lcssa355.sroa.gep390 = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.lcssa355.sroa.gep391 = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.lcssa355.sroa.gep401 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %.lcssa355.sroa.gep402 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.lcssa355.sroa.gep403 = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %.lcssa355.sroa.gep404 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.lcssa355.sroa.gep405 = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 4 uses
  %.lcssa355.sroa.gep406 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %.lcssa355.sroa.gep407 = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !59
  store i32 0, ptr %2, align 4, !tbaa !59
  br label %bb.bx

bb.c:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 244
  %i.au = load i32, ptr %i.at, align 4, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !107
  %.not298 = icmp eq i32 %i.au, %i.aw
  br i1 %.not298, label %bb.e, label %cmp.exit309

cmp.exit309:                                      ; preds = %bb.c
  %i.ax = tail call fastcc i32 @cmp_fpel_internal(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %i.e, i32 noundef %6, i32 noundef %7, i32 noundef %5, i32 noundef %4, ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef %i.ad) ; 2 uses
  %i.ay = icmp ne i32 %i.d, 0
  %i.az = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.ay, i1 true, i1 %i.az
  %i.ba = icmp sgt i32 %6, 0
  %or.cond3 = or i1 %i.ba, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %cmp.exit309
  %i.bb = shl nsw i32 %i.d, 2
  %i.bc = sub nsw i32 %i.bb, %i.z
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !68
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nsw i32 %i.e, 2
  %i.bi = sub nsw i32 %i.bh, %i.ab
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !68
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bm, %i.bg
  %i.bo = mul nsw i32 %i.bn, %i.g
  %i.bp = add nsw i32 %i.bo, %i.ax
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cmp.exit309, %bb.c
  %.0291 = phi i32 [ %i.bp, %bb.d ], [ %i.ax, %cmp.exit309 ], [ %3, %bb.c ] ; 4 uses
  %i.bq = icmp sgt i32 %i.d, %i.p
  %i.br = icmp slt i32 %i.d, %i.t
  %or.cond299 = select i1 %i.bq, i1 %i.br, i1 false
  %i.bs = icmp sgt i32 %i.e, %i.r
  %or.cond300 = select i1 %or.cond299, i1 %i.bs, i1 false
  %i.bt = icmp slt i32 %i.e, %i.v
  %or.cond301 = select i1 %or.cond300, i1 %i.bt, i1 false
  %i.bu = shl nsw i32 %i.d, 2                     ; 6 uses
  br i1 %or.cond301, label %bb.f, label %bb.bw

bb.f:                                             ; preds = %bb.e
  %i.bv = shl nsw i32 %i.e, 2                     ; 5 uses
  %i.bw = shl nsw i32 %i.e, 3
  %i.bx = add nsw i32 %i.bw, %i.d                 ; 10 uses
  %i.by = add i32 %i.bx, 56
  %i.bz = and i32 %i.by, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 4 uses
  %i.cd = add i32 %i.bx, 63
  %i.ce = and i32 %i.cd, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !59 ; 4 uses
  %i.ci = add nsw i32 %i.bx, 1
  %i.cj = and i32 %i.ci, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !59 ; 4 uses
  %i.cn = add nsw i32 %i.bx, 8
  %i.co = and i32 %i.cn, 63
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !59 ; 4 uses
  %i.cs = and i32 %i.bx, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 64, i64 32, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4740
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !116
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.cz = add i32 %i.bx, 55
  %i.da = and i32 %i.cz, 63
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !59 ; 2 uses
  %i.de = add nsw i32 %i.bx, 7
  %i.df = and i32 %i.de, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !59 ; 2 uses
  %i.dj = add i32 %i.bx, 57
  %i.dk = and i32 %i.dj, 63
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !59 ; 2 uses
  %i.do = add nsw i32 %i.bx, 9
  %i.dp = and i32 %i.do, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !59 ; 2 uses
  %invariant.op338 = add i32 %i.di, %i.ds
  %invariant.op339 = add i32 %i.dd, %i.dn
  %i.dt = shl i32 %i.cr, 1
  %.reass = sub i32 %invariant.op338, %i.dt
  %i.du = sub nsw i32 %i.ds, %i.di
  %i.dv = shl nsw i32 %i.cr, 5
  %i.dw = shl i32 %i.cc, 1
  %.reass340 = sub i32 %invariant.op339, %i.dw
  %i.dx = sub nsw i32 %i.dn, %i.dd
  %i.dy = shl nsw i32 %i.cc, 5
  %i.dz = add nsw i32 %i.cm, %i.ch
  %i.ea = shl i32 %i.cv, 1
  %i.eb = sub i32 %i.dz, %i.ea
  %i.ec = sub nsw i32 %i.cm, %i.ch
  %i.ed = shl nsw i32 %i.cv, 5
  %i.ee = sext i32 %i.bu to i64
  %i.ef = sext i32 %i.z to i64
  %i.eg = sext i32 %i.bv to i64
  %i.eh = sext i32 %i.ab to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.r
  %indvars.iv372 = phi i64 [ -3, %bb.g ], [ %indvars.iv.next373, %bb.r ] ; 6 uses
  %i.ei = mul nsw i64 %indvars.iv372, %indvars.iv372
  %i.ej = shl nsw i64 %indvars.iv372, 2
  %i.ek = add nsw i64 %indvars.iv372, %i.eg       ; 2 uses
  %i.el = sub nsw i64 %i.ek, %i.eh
  %i.em = getelementptr inbounds i8, ptr %i.x, i64 %i.el
  %i.en = trunc nsw i64 %i.ek to i32
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv368 = phi i64 [ -3, %.preheader ], [ %indvars.iv.next369, %.loopexit ] ; 6 uses
  %i.eo = or i64 %indvars.iv368, %indvars.iv372
  %i.ep = and i64 %i.eo, 3
  %or.cond303 = icmp eq i64 %i.ep, 0
  br i1 %or.cond303, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = mul nsw i64 %indvars.iv368, %indvars.iv368 ; 3 uses
  %indvars.iv368.tr = trunc i64 %indvars.iv368 to i32
  %i.er = shl i32 %indvars.iv368.tr, 2            ; 3 uses
  %i.es = mul nsw i32 %i.er, %i.du
  %i.et = add i32 %i.es, %i.dv
  %i.eu = trunc i64 %i.eq to i32
  %i.ev = mul i32 %.reass, %i.eu
  %i.ew = add i32 %i.et, %i.ev
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = mul nsw i32 %i.er, %i.dx
  %i.ez = add i32 %i.ey, %i.dy
  %i.fa = trunc i64 %i.eq to i32
  %i.fb = mul i32 %.reass340, %i.fa
  %i.fc = add i32 %i.ez, %i.fb
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = add nsw i64 %i.ex, %i.fd
  %i.ff = mul nsw i32 %i.er, %i.ec
  %i.fg = add i32 %i.ff, %i.ed
  %i.fh = trunc i64 %i.eq to i32
  %i.fi = mul i32 %i.eb, %i.fh
  %i.fj = add i32 %i.fg, %i.fi
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = shl nsw i64 %i.fk, 1
  %i.fm = sub nsw i64 %i.fe, %i.fl
  %i.fn = mul nsw i64 %i.fm, %i.ei
  %i.fo = sub nsw i64 %i.ex, %i.fd
  %i.fp = mul nsw i64 %i.fo, %i.ej
  %i.fq = shl nsw i64 %i.fk, 5
  %i.fr = add nsw i64 %i.fq, 512
  %i.fs = add i64 %i.fr, %i.fp
  %i.ft = add i64 %i.fs, %i.fn
  %i.fu = lshr i64 %i.ft, 10
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = add nsw i64 %indvars.iv368, %i.ee       ; 2 uses
  %i.fx = sub nsw i64 %i.fw, %i.ef
  %i.fy = getelementptr inbounds i8, ptr %i.x, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !68
  %i.ga = zext i8 %i.fz to i32
  %i.gb = load i8, ptr %i.em, align 1, !tbaa !68
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nuw nsw i32 %i.gc, %i.ga
  %i.ge = mul nsw i32 %i.gd, %i.g
  %i.gf = add nsw i32 %i.ge, %i.fv                ; 9 uses
  %i.gg = load i32, ptr %i.a, align 16, !tbaa !59
  %i.gh = icmp slt i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i
  %.0281337.lcssa.wide = phi i32 [ 0, %bb.i ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ], [ 5, %bb.o ], [ 6, %bb.p ], [ 7, %bb.q ] ; 2 uses
  %.lcssa.sroa.phi = phi ptr [ %i.b, %bb.i ], [ %.lcssa355.sroa.gep385, %bb.k ], [ %.lcssa355.sroa.gep386, %bb.l ], [ %.lcssa355.sroa.gep387, %bb.m ], [ %.lcssa355.sroa.gep388, %bb.n ], [ %.lcssa355.sroa.gep389, %bb.o ], [ %.lcssa355.sroa.gep390, %bb.p ], [ %.lcssa355.sroa.gep391, %bb.q ] ; 3 uses
  %.lcssa.sroa.phi408 = phi ptr [ %i.a, %bb.i ], [ %.lcssa355.sroa.gep401, %bb.k ], [ %.lcssa355.sroa.gep402, %bb.l ], [ %.lcssa355.sroa.gep403, %bb.m ], [ %.lcssa355.sroa.gep404, %bb.n ], [ %.lcssa355.sroa.gep405, %bb.o ], [ %.lcssa355.sroa.gep406, %bb.p ], [ %.lcssa355.sroa.gep407, %bb.q ] ; 2 uses
  %i.gi = add nuw nsw i32 %.0281337.lcssa.wide, 1
  %i.gj = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gj
  %i.gl = xor i32 %.0281337.lcssa.wide, 7
  %i.gm = zext nneg i32 %i.gl to i64              ; 2 uses
  %i.gn = shl nuw nsw i64 %i.gm, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gk, ptr nonnull align 4 %.lcssa.sroa.phi408, i64 %i.gn, i1 false)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gj
  %i.gp = shl nuw nsw i64 %i.gm, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.go, ptr nonnull align 8 %.lcssa.sroa.phi, i64 %i.gp, i1 false)
  store i32 %i.gf, ptr %.lcssa.sroa.phi408, align 4, !tbaa !59
  %i.gq = trunc nsw i64 %i.fw to i32
  store i32 %i.gq, ptr %.lcssa.sroa.phi, align 8, !tbaa !59
  %i.gr = getelementptr inbounds nuw i8, ptr %.lcssa.sroa.phi, i64 4
  store i32 %i.en, ptr %i.gr, align 4, !tbaa !59
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.gs = load i32, ptr %.lcssa355.sroa.gep401, align 4, !tbaa !59
  %i.gt = icmp slt i32 %i.gf, %i.gs
  br i1 %i.gt, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gu = load i32, ptr %.lcssa355.sroa.gep402, align 8, !tbaa !59
  %i.gv = icmp slt i32 %i.gf, %i.gu
  br i1 %i.gv, label %bb.j, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gw = load i32, ptr %.lcssa355.sroa.gep403, align 4, !tbaa !59
  %i.gx = icmp slt i32 %i.gf, %i.gw
  br i1 %i.gx, label %bb.j, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gy = load i32, ptr %.lcssa355.sroa.gep404, align 16, !tbaa !59
  %i.gz = icmp slt i32 %i.gf, %i.gy
  br i1 %i.gz, label %bb.j, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ha = load i32, ptr %.lcssa355.sroa.gep405, align 4, !tbaa !59
  %i.hb = icmp slt i32 %i.gf, %i.ha
  br i1 %i.hb, label %bb.j, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hc = load i32, ptr %.lcssa355.sroa.gep406, align 8, !tbaa !59
  %i.hd = icmp slt i32 %i.gf, %i.hc
  br i1 %i.hd, label %bb.j, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = load i32, ptr %.lcssa355.sroa.gep407, align 4, !tbaa !59
  %i.hf = icmp slt i32 %i.gf, %i.he
  br i1 %i.hf, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.j, %bb.h
  %indvars.iv.next369 = add nsw i64 %indvars.iv368, 1 ; 2 uses
  %exitcond371.not = icmp eq i64 %indvars.iv.next369, 4
  br i1 %exitcond371.not, label %bb.r, label %bb.h, !llvm.loop !117

bb.r:                                             ; preds = %.loopexit
  %indvars.iv.next373 = add nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next373, 4
  br i1 %exitcond375.not, label %.loopexit323, label %.preheader, !llvm.loop !118

bb.s:                                             ; preds = %bb.f
  %i.hg = sub nsw i32 %i.cm, %i.ch
  %i.hh = shl nsw i32 %i.hg, 2                    ; 2 uses
  %i.hi = add nsw i32 %i.cm, %i.ch
  %i.hj = shl nsw i32 %i.cv, 1                    ; 2 uses
  %i.hk = sub i32 %i.hi, %i.hj                    ; 2 uses
  %i.hl = sub nsw i32 %i.cr, %i.cc
  %i.hm = shl nsw i32 %i.hl, 2                    ; 2 uses
  %i.hn = add nsw i32 %i.cr, %i.cc                ; 2 uses
  %i.ho = sub nsw i32 %i.hn, %i.hj
  %i.hp = add i32 %i.bx, 55
  %i.hq = and i32 %i.hp, 63
  %i.hr = zext nneg i32 %i.hq to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !59
  %i.hu = add nsw i32 %i.e, -1                    ; 2 uses
  %i.hv = shl nsw i32 %i.hu, 11
  %i.hw = add nsw i32 %i.d, -1                    ; 2 uses
  %i.hx = add nsw i32 %i.hv, %i.hw
  %i.hy = add i32 %i.hx, %i.i
  %i.hz = icmp eq i32 %i.ht, %i.hy
  br i1 %i.hz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.hr
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !59
  br label %cmp.exit

bb.u:                                             ; preds = %bb.s
  %i.ic = tail call fastcc i32 @cmp_fpel_internal(ptr noundef nonnull %0, i32 noundef %i.hw, i32 noundef %i.hu, i32 noundef %6, i32 noundef %7, i32 noundef %5, i32 noundef %4, ptr noundef %i.ah, ptr noundef %i.al, i32 noundef %i.ad)
  br label %cmp.exit

cmp.exit:                                         ; preds = %bb.u, %bb.t
  %.0280 = phi i32 [ %i.ib, %bb.t ], [ %i.ic, %bb.u ]
  %i.id = shl nsw i32 %.0280, 1
  %i.ie = add nsw i32 %i.hm, %i.hh
  %i.if = ashr exact i32 %i.ie, 2
  %i.ig = add i32 %i.hk, %i.hn
  %i.ih = sub i32 %i.if, %i.ig
  %i.ii = add i32 %i.ih, %i.id
  %i.ij = sext i32 %i.bu to i64
  %i.ik = sext i32 %i.z to i64
  %i.il = sext i32 %i.bv to i64
  %i.im = sext i32 %i.ab to i64
  br label %.preheader325

.preheader325:                                    ; preds = %cmp.exit, %bb.af
  %indvars.iv360 = phi i64 [ -3, %cmp.exit ], [ %indvars.iv.next361, %bb.af ] ; 3 uses
  %i.in = trunc nsw i64 %indvars.iv360 to i32     ; 4 uses
  %i.io = mul i32 %i.ii, %i.in
  %i.ip = mul i32 %i.ho, %i.in
  %i.iq = add nsw i64 %indvars.iv360, %i.il       ; 2 uses
  %i.ir = sub nsw i64 %i.iq, %i.im
  %i.is = getelementptr inbounds i8, ptr %i.x, i64 %i.ir
  %invariant.op = add i32 %i.hh, %i.io
  %reass.add315 = add i32 %i.ip, %i.hm
  %reass.mul316 = mul i32 %reass.add315, %i.in
  %i.it = trunc nsw i64 %i.iq to i32
  br label %bb.v

bb.v:                                             ; preds = %.preheader325, %.loopexit324
  %indvars.iv = phi i64 [ -3, %.preheader325 ], [ %indvars.iv.next, %.loopexit324 ] ; 3 uses
  %i.iu = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.iv = or i32 %i.iu, %i.in
  %i.iw = and i32 %i.iv, 3
  %or.cond305 = icmp eq i32 %i.iw, 0
  br i1 %or.cond305, label %.loopexit324, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ix = mul i32 %i.hk, %i.iu
  %i.iy = add nsw i64 %indvars.iv, %i.ij          ; 2 uses
  %i.iz = sub nsw i64 %i.iy, %i.ik
  %i.ja = getelementptr inbounds i8, ptr %i.x, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !68
  %i.jc = zext i8 %i.jb to i32
  %i.jd = load i8, ptr %i.is, align 1, !tbaa !68
  %i.je = zext i8 %i.jd to i32
  %i.jf = add nuw nsw i32 %i.je, %i.jc
  %i.jg = mul i32 %i.jf, %i.g
  %reass.add314.reass = add i32 %i.ix, %invariant.op
  %reass.mul = mul i32 %reass.add314.reass, %i.iu
  %reass.add317 = add i32 %i.jg, %i.cv
  %reass.mul318 = shl i32 %reass.add317, 5
  %i.jh = add i32 %reass.mul, %reass.mul316
  %i.ji = add i32 %i.jh, %reass.mul318            ; 9 uses
  %i.jj = load i32, ptr %i.a, align 16, !tbaa !59
  %i.jk = icmp slt i32 %i.ji, %i.jj
  br i1 %i.jk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w
end_hunk_0
begin_hunk_1_@ff_estimate_p_frame_motion:bb.a
  %i.aai = zext nneg i8 %i.aah to i32
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.aaj = icmp ult i32 %i.xj, 65536
  br i1 %i.aaj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aak = lshr i32 %i.xj, 8
  %i.aal = zext nneg i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !68
  %i.aao = zext i8 %i.aan to i32
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %.not.i.i311 = icmp ult i32 %i.xj, 16777216     ; 2 uses
  %spec.select.i.v.i312 = select i1 %.not.i.i311, i32 16, i32 24
  %spec.select.i.i313 = lshr i32 %i.xj, %spec.select.i.v.i312
  %spec.select7.i.i314 = select i1 %.not.i.i311, i32 0, i32 8
  %i.aap = zext nneg i32 %spec.select.i.i313 to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !68
  %i.aas = zext i8 %i.aar to i32
  %i.aat = add nuw nsw i32 %spec.select7.i.i314, %i.aas
  %i.aau = lshr i32 %i.aat, 1                     ; 3 uses
  %i.aav = add nuw nsw i32 %i.aau, 2
  %i.aaw = lshr i32 %i.xj, %i.aav                 ; 2 uses
  %i.aax = add nuw nsw i32 %i.aau, 8
  %i.aay = lshr i32 %i.aaw, %i.aax
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !68 ; 2 uses
  %i.abc = zext i8 %i.abb to i32
  %i.abd = zext nneg i32 %i.aaw to i64
  %i.abe = zext i8 %i.abb to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.abe
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !59
  %i.abh = zext i32 %i.abg to i64
  %i.abi = mul nuw nsw i64 %i.abd, %i.abh
  %i.abj = lshr i64 %i.abi, 32
  %i.abk = trunc nuw nsw i64 %i.abj to i32
  %i.abl = shl i32 %i.abc, %i.aau
  %i.abm = add i32 %i.abl, %i.abk
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cv
  %.022.i315 = phi i32 [ %i.aab, %bb.cv ], [ %i.aai, %bb.cx ], [ %i.aao, %bb.cz ], [ %i.abm, %bb.da ] ; 3 uses
  %i.abn = mul i32 %.022.i315, %.022.i315
  %i.abo = icmp ult i32 %i.xj, %i.abn
  %.neg.i316 = sext i1 %i.abo to i32
  %i.abp = add i32 %.022.i315, %.neg.i316
  br label %ff_sqrt.exit318

ff_sqrt.exit318:                                  ; preds = %bb.ct, %bb.db
  %.0.i317 = phi i32 [ %i.zu, %bb.ct ], [ %i.abp, %bb.db ]
  %i.abq = sub i32 %.0.i309, %.0.i317
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 5056 ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 16, !tbaa !149
  %i.abt = add i32 %i.abq, %i.abs
  store i32 %i.abt, ptr %i.abr, align 16, !tbaa !149
  br label %bb.dc

bb.dc:                                            ; preds = %bb.bx, %bb.bv, %bb.bw, %ff_sqrt.exit318
  %.10 = phi i32 [ %..8, %ff_sqrt.exit318 ], [ %.3, %bb.bw ], [ %.3, %bb.bv ], [ %spec.select278, %bb.bx ]
  %i.abu = trunc nuw nsw i32 %.10 to i16
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %i.abw = load ptr, ptr %i.abv, align 16, !tbaa !154
  %i.abx = load i32, ptr %i.fp, align 4, !tbaa !70
  %i.aby = mul nsw i32 %i.abx, %2
  %i.abz = add nsw i32 %i.aby, %1
  %i.aca = sext i32 %i.abz to i64
  %i.acb = getelementptr inbounds [2 x i8], ptr %i.abw, i64 %i.aca
  store i16 %i.abu, ptr %i.acb, align 2, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @h263_mv4_search(ptr noundef initializes((4808, 4816), (4840, 4848), (4872, 4880), (4936, 4944), (4968, 4976), (5000, 5008)) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x [2 x i32]], align 16        ; 20 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.j = load i32, ptr %i.i, align 8, !tbaa !135
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load i32, ptr %i.k, align 16, !tbaa !155
  %i.m = and i32 %i.l, 15
  %.not231 = icmp eq i32 %i.m, 0
  br i1 %.not231, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.o = load i32, ptr %i.n, align 4, !tbaa !156
  %i.p = and i32 %i.o, 15
  %i.q = icmp ne i32 %i.p, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.q, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4904 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4936
  store ptr %i.u, ptr %i.v, align 8, !tbaa !61
  %i.w = shl nsw i32 %i.f, 3
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4968
  store ptr %i.y, ptr %i.z, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5000
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4808
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.x ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4840
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4872
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.au = lshr i32 65536, %3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4748
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4764 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4768 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5208 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4688 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3772 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5344
  %i.bo = sext i32 %i.f to i64                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5328 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4720 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.v
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.v ] ; 8 uses
  %.0213256 = phi i32 [ 0, %bb.d ], [ %.1, %bb.v ]
  %.0216255 = phi i32 [ 1, %bb.d ], [ %.1217, %bb.v ]
  %.0219254 = phi i32 [ 0, %bb.d ], [ %.1220, %bb.v ]
  %.0221253 = phi i32 [ 0, %bb.d ], [ %.1222, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.by = load i32, ptr %i.ak, align 16, !tbaa !143
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !59 ; 2 uses
  br i1 %i.r, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.ap, align 16, !tbaa !23
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %indvars.iv.tr274 = trunc i64 %indvars.iv to i32
  %i.cb = load <2 x i32>, ptr %i.av, align 4, !tbaa !59
  %i.cc = load <2 x i32>, ptr %i.aw, align 16, !tbaa !59
  %i.cd = mul <2 x i32> %i.cb, splat (i32 -16)
  %i.ce = shl i32 %indvars.iv.tr274, 2
  %i.cf = shl i32 %indvars.iv.tr, 3
  %i.cg = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ch = insertelement <2 x i32> %i.cg, i32 %i.ce, i64 1
  %i.ci = and <2 x i32> %i.ch, splat (i32 8)
  %i.cj = sub <2 x i32> %i.cd, %i.ci
  %i.ck = add <2 x i32> %i.cj, %i.cc              ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0   ; 2 uses
  store i32 %i.cl, ptr %i.ap, align 16, !tbaa !23
  %i.cm = extractelement <2 x i32> %i.ck, i64 1
  store i32 %i.cm, ptr %i.ay, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.cn = phi i32 [ %.pre, %._crit_edge ], [ %i.cl, %bb.f ]
  %i.co = load ptr, ptr %i.am, align 16, !tbaa !144 ; 3 uses
  %i.cp = sext i32 %i.ca to i64
  %i.cq = getelementptr [4 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !79
  %i.ct = sext i16 %i.cs to i32                   ; 3 uses
  store i32 %i.ct, ptr %i.an, align 8, !tbaa !59
  %i.cu = getelementptr i8, ptr %i.cq, i64 -2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !79
  %i.cw = sext i16 %i.cv to i32                   ; 8 uses
  store i32 %i.cw, ptr %i.ao, align 4, !tbaa !59
  %i.cx = shl i32 %i.cn, %3                       ; 10 uses
  %i.cy = icmp slt i32 %i.cx, %i.ct
  br i1 %i.cy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.cx, ptr %i.an, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cz = phi i32 [ %i.cx, %bb.h ], [ %i.ct, %bb.g ] ; 7 uses
  %i.da = load i32, ptr %i.aq, align 4, !tbaa !78
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp samesign ult i64 %indvars.iv, 2
  %or.cond = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = sub nsw i32 %i.ca, %i.by                ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !79
  %i.dh = sext i16 %i.dg to i32                   ; 4 uses
  store i32 %i.dh, ptr %i.az, align 16, !tbaa !59
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !79
  %i.dk = sext i16 %i.dj to i32                   ; 3 uses
  store i32 %i.dk, ptr %i.ba, align 4, !tbaa !59
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @h263_mv4_search.off, i64 %indvars.iv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !59
  %i.dn = add nsw i32 %i.dm, %i.dd
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.do ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !79
  %i.dr = sext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !79
  %i.du = sext i16 %i.dt to i32                   ; 3 uses
  store i32 %i.du, ptr %i.bc, align 4, !tbaa !59
  %i.dv = load i32, ptr %i.ay, align 8, !tbaa !25
  %i.dw = shl i32 %i.dv, %3                       ; 6 uses
  %i.dx = icmp slt i32 %i.dw, %i.dk
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.dw, ptr %i.ba, align 4, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dy = phi i32 [ %i.dw, %bb.k ], [ %i.dk, %bb.j ] ; 3 uses
  %i.dz = load i32, ptr %i.bd, align 4, !tbaa !22
  %i.ea = shl i32 %i.dz, %3
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ea, i32 %i.dr)
  %spec.store.select = call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.cx) ; 3 uses
  store i32 %spec.store.select, ptr %i.bb, align 8
  %i.eb = icmp slt i32 %i.dw, %i.du
  br i1 %i.eb, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  store i32 %i.dw, ptr %i.bc, align 4, !tbaa !59
  br label %.thread

bb.n:                                             ; preds = %bb.i
  store i32 %i.cz, ptr %i.bg, align 4, !tbaa !18
  store i32 %i.cw, ptr %i.bh, align 16, !tbaa !19
  store i32 %1, ptr %i.ar, align 8, !tbaa !59
  store i32 %2, ptr %i.as, align 4, !tbaa !59
  br i1 %i.r, label %.loopexit.loopexit, label %.loopexit

.thread:                                          ; preds = %bb.l, %bb.m
  %i.ec = phi i32 [ %i.dw, %bb.m ], [ %i.du, %bb.l ] ; 2 uses
  %..i = call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.dh)
  %.20.i = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.dh)
  %i.ed = call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %..i)
  %i.ee = call noundef i32 @llvm.smax.i32(i32 %i.ed, i32 %.20.i) ; 5 uses
  store i32 %i.ee, ptr %i.be, align 16, !tbaa !59
  %..i243 = call i32 @llvm.smax.i32(i32 %i.cw, i32 %i.dy)
  %.20.i244 = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.dy)
  %i.ef = call i32 @llvm.smin.i32(i32 %i.ec, i32 %..i243)
  %i.eg = call noundef i32 @llvm.smax.i32(i32 %i.ef, i32 %.20.i244) ; 5 uses
  store i32 %i.eg, ptr %i.bf, align 4, !tbaa !59
  store i32 %i.ee, ptr %i.bg, align 4, !tbaa !18
  store i32 %i.eg, ptr %i.bh, align 16, !tbaa !19
  store i32 %1, ptr %i.ar, align 8, !tbaa !59
  store i32 %2, ptr %i.as, align 4, !tbaa !59
  br i1 %i.r, label %.loopexit.loopexit259, label %.loopexit

.loopexit.loopexit259:                            ; preds = %.thread
  %spec.store.select245.us = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.cx)
  store i32 %spec.store.select245.us, ptr %i.an, align 8
  %i.eh = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.ei = shl i32 %i.eh, %3
  %spec.store.select246.us = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.ei)
  store i32 %spec.store.select246.us, ptr %i.br, align 4
  %spec.store.select245.us.1 = call i32 @llvm.smin.i32(i32 %i.dh, i32 %i.cx)
  store i32 %spec.store.select245.us.1, ptr %i.az, align 16
  %i.ej = shl i32 %i.eh, %3
  %spec.store.select246.us.1 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.ej)
  store i32 %spec.store.select246.us.1, ptr %i.bs, align 4
  store i32 %spec.store.select, ptr %i.bb, align 8
  %i.ek = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.el = shl i32 %i.ek, %3
  %spec.store.select246.us.2 = call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.el)
  store i32 %spec.store.select246.us.2, ptr %i.bt, align 4
  %spec.store.select245.us.3 = call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.cx)
  store i32 %spec.store.select245.us.3, ptr %i.be, align 16
  %i.em = shl i32 %i.ek, %3
  %spec.store.select246.us.3 = call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.em)
  store i32 %spec.store.select246.us.3, ptr %i.bu, align 4
  %spec.store.select245.us.8 = call i32 @llvm.smin.i32(i32 %1, i32 %i.cx)
  store i32 %spec.store.select245.us.8, ptr %i.ar, align 8
  %i.en = load i32, ptr %i.ay, align 8, !tbaa !25
  %i.eo = shl i32 %i.en, %3
  %spec.store.select246.us.8 = call i32 @llvm.smin.i32(i32 %2, i32 %i.eo)
  store i32 %spec.store.select246.us.8, ptr %i.bv, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %spec.store.select245 = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.cx)
  store i32 %spec.store.select245, ptr %i.an, align 8
  %i.ep = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.eq = shl i32 %i.ep, %3
  %spec.store.select246 = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.eq)
  store i32 %spec.store.select246, ptr %i.bw, align 4
  %spec.store.select245.8 = call i32 @llvm.smin.i32(i32 %1, i32 %i.cx)
  store i32 %spec.store.select245.8, ptr %i.ar, align 8
  %i.er = shl i32 %i.ep, %3
  %spec.store.select246.8 = call i32 @llvm.smin.i32(i32 %2, i32 %i.er)
  store i32 %spec.store.select246.8, ptr %i.bx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.loopexit.loopexit259, %.loopexit.loopexit, %bb.n
  %storemerge280 = phi i32 [ %i.eg, %.loopexit.loopexit259 ], [ %i.cw, %.loopexit.loopexit ], [ %i.cw, %bb.n ], [ %i.eg, %.thread ]
  %storemerge275278 = phi i32 [ %i.ee, %.loopexit.loopexit259 ], [ %i.cz, %.loopexit.loopexit ], [ %i.cz, %bb.n ], [ %i.ee, %.thread ]
  %i.es = load ptr, ptr %i.at, align 16, !tbaa !145
  %i.et = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  %i.eu = call fastcc i32 @epzs_motion_search2(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.a, i32 noundef %i.et, i32 noundef %i.et, ptr noundef %i.es, i32 noundef %i.au, i32 noundef 1)
  %i.ev = load ptr, ptr %i.bi, align 16, !tbaa !113
  %i.ew = call i32 %i.ev(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.eu, i32 noundef %i.et, i32 noundef %i.et, i32 noundef 1, i32 noundef 8) #14
  %i.ex = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.ey = load ptr, ptr %i.bk, align 8, !tbaa !20
  %.not235 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not235, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ez = and i32 %i.et, 1
  %i.fa = lshr i32 %i.et, 1
  %i.fb = mul nuw nsw i32 %i.fa, %i.f
  %i.fc = add nsw i32 %i.fb, %i.ez
  %i.fd = shl nsw i32 %i.fc, 3
  %i.fe = load ptr, ptr %i.bl, align 16, !tbaa !152
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.bm, align 4, !tbaa !128
  %.not236 = icmp eq i32 %i.fh, 0
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !61 ; 2 uses
  %i.fk = load i32, ptr %i.b, align 4, !tbaa !59  ; 4 uses
  %i.fl = load i32, ptr %i.c, align 4, !tbaa !59  ; 4 uses
  br i1 %.not236, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fm = ashr i32 %i.fk, 2
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fj, i64 %i.fn
  %i.fp = ashr i32 %i.fl, 2
  %i.fq = mul nsw i32 %i.fp, %i.f
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 %i.fr
  %i.ft = shl i32 %i.fl, 2
  %i.fu = and i32 %i.ft, 12
  %i.fv = and i32 %i.fk, 3
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = load ptr, ptr %i.bn, align 16, !tbaa !65
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  %i.fz = zext nneg i32 %i.fw to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz
end_hunk_1
