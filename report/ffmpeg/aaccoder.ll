Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aaccoder?download=true
inline.NumInlined: 68
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 46
begin_hunk_0_@search_for_quantizers_twoloop:bb.a

bb.d:                                             ; preds = %bb.c
  %i.al = fdiv nsz float 1.200000e+02, %3
  %i.am = tail call nsz float @llvm.pow.f32(float %i.al, float 2.500000e-01) ; 2 uses
  %i.an = fcmp nsz ogt float %i.am, 6.250000e-02
  %i.ao = select nsz i1 %i.an, float %i.am, float 6.250000e-02 ; 2 uses
  %i.ap = fcmp nsz ogt float %i.ao, 1.000000e+00
  %..i1782 = select nsz i1 %i.ap, float 1.000000e+00, float %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.01395 = phi nsz float [ %..i1782, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 38212
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !154 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = uitofp nneg i32 %i.ar to float
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.av = load i32, ptr %i.au, align 4, !tbaa !155 ; 2 uses
  %.not1641 = icmp eq i32 %i.av, 0
  %i.aw = sitofp nsz i32 %i.av to float
  %i.ax = select i1 %.not1641, float 1.200000e+02, float %i.aw
  %i.ay = fdiv nsz float %3, %i.ax
  %i.az = fmul nsz float %i.ay, %i.at
  %i.ba = fptosi float %i.az to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.01455 = phi i32 [ %i.ba, %bb.f ], [ %i.af, %bb.e ] ; 6 uses
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !156
  %.not1643 = icmp eq i32 %i.bc, 0
  br i1 %.not1643, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 38256
  %i.be = load i32, ptr %i.bd, align 16, !tbaa !157
  %i.bf = icmp eq i32 %i.be, 1
  %i.bg = zext i1 %i.bf to i32
  %spec.select = shl nsw i32 %.01455, %i.bg
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.11456 = phi i32 [ %.01455, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %i.bh = sdiv i32 %.11456, 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !69 ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = sitofp nsz i32 %i.bk to float
  %i.bm = tail call nsz float @llvm.sqrt.f32(float %..i1783)
  %i.bn = fpext nsz float %i.bl to double
  %i.bo = sitofp nsz i32 %i.af to float
  %i.bp = fmul nnan nsz float %i.bo, 1.500000e+00
  %i.bq = sitofp nsz i32 %i.q to float
  %i.br = fmul nsz float %i.bp, %i.bq
  %i.bs = fmul nsz float %i.br, f0x3A800000
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bt = sdiv i32 %.01455, 8                     ; 2 uses
  %i.bu = add nsw i32 %i.bt, %.01455
  %i.bv = sub nsw i32 %.01455, %i.bt
  %i.bw = tail call nsz float @llvm.sqrt.f32(float %..i1783)
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 5800)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cc = sext i32 %i.cb to i64
  %i.cd = sdiv i64 %i.m, %i.cc
  %i.ce = sitofp nsz i64 %i.cd to float
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cf = phi i32 [ %i.bj, %bb.j ], [ %i.bz, %bb.k ] ; 5 uses
  %i.cg = phi ptr [ %i.bi, %bb.j ], [ %i.by, %bb.k ] ; 8 uses
  %.014221912 = phi i32 [ 60, %bb.j ], [ 30, %bb.k ] ; 6 uses
  %.014451910 = phi double [ %i.bn, %bb.j ], [ 0.000000e+00, %bb.k ]
  %.014461908 = phi float [ %i.bm, %bb.j ], [ %i.bw, %bb.k ] ; 2 uses
  %.014531906 = phi i32 [ %i.bh, %bb.j ], [ %i.bv, %bb.k ]
  %.014541904 = phi i32 [ 5800, %bb.j ], [ %i.bx, %bb.k ] ; 3 uses
  %.214571902 = phi i32 [ %.11456, %bb.j ], [ %.01455, %bb.k ]
  %i.ch = phi nsz float [ %i.bs, %bb.j ], [ %i.ce, %bb.k ]
  %i.ci = sdiv i32 1024, %i.cf                    ; 2 uses
  %i.cj = fptosi float %i.ch to i32               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !158
  %.not1645 = icmp eq i32 %i.cl, 0
  br i1 %.not1645, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !159
  %.not1646 = icmp eq i32 %i.cn, 0
  br i1 %.not1646, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.co = sitofp nsz i32 %i.cj to float
  %i.cp = fmul nnan nsz float %i.co, 1.150000e+00
  %i.cq = fptosi float %i.cp to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.01393 = phi i32 [ %i.cq, %bb.n ], [ %i.cj, %bb.m ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !70 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not1647 = icmp eq i32 %.01393, 0
  br i1 %.not1647, label %.thread1918, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = sdiv i32 %.01393, 5
  %i.cv = mul nsw i32 %.01393, 15
  %i.cw = sdiv i32 %i.cv, 32
  %i.cx = add nsw i32 %i.cw, -5500
  %. = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 %i.cx)
  %i.cy = sdiv i32 %.01393, 4
  %i.cz = add nsw i32 %i.cy, 3000
  %i.da = tail call i32 @llvm.smin.i32(i32 %., i32 %i.cz)
  %i.db = sdiv i32 %.01393, 16
  %i.dc = add nsw i32 %i.db, 12000
  %i.dd = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %i.dc) ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 22000
  br i1 %i.de, label %.thread1914, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = sdiv i32 %i.q, 2
  %spec.select2759 = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.df)
  %i.dg = icmp slt i32 %spec.select2759, 3000
  br i1 %i.dg, label %.thread1921, label %.thread1917

.thread1914:                                      ; preds = %bb.q
  %i.dh = icmp slt i32 %i.q, 6000
  br i1 %i.dh, label %.thread1921, label %.thread1920

.thread1918:                                      ; preds = %bb.p
  %i.di = tail call i32 @llvm.smax.i32(i32 %i.q, i32 6000)
  %spec.select2762 = lshr i32 %i.di, 1
  br label %.thread1921

.thread1917:                                      ; preds = %bb.r
  %i.dj = sdiv i32 %i.q, 2
  %spec.select1960 = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.dj)
  br label %.thread1921

.thread1920:                                      ; preds = %.thread1914
  %i.dk = lshr i32 %i.q, 1
  %spec.select1955 = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 22000)
  br label %.thread1921

.thread1921:                                      ; preds = %.thread1918, %.thread1914, %.thread1917, %.thread1920, %bb.r
  %i.dl = phi i32 [ 3000, %bb.r ], [ 3000, %.thread1914 ], [ %spec.select2762, %.thread1918 ], [ %spec.select1955, %.thread1920 ], [ %spec.select1960, %.thread1917 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 38180
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !160
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %.thread1921
  %.01394 = phi i32 [ %i.dl, %.thread1921 ], [ %i.cs, %bb.o ]
  %i.dn = shl nsw i32 %i.ci, 1
  %i.do = mul i32 %i.dn, %.01394
  %i.dp = sdiv i32 %i.do, %i.q                    ; 2 uses
  %i.dq = mul nsw i32 %i.ci, 8000
  %i.dr = sdiv i32 %i.dq, %i.q                    ; 3 uses
  %i.ds = tail call i32 @llvm.smin.i32(i32 %.214571902, i32 5800) ; 2 uses
  %i.dt = tail call i32 @llvm.smin.i32(i32 %.014531906, i32 5800) ; 6 uses
  %i.du = icmp sgt i32 %i.cf, 0
  br i1 %i.du, label %.preheader1999.lr.ph, label %.loopexit

.preheader1999.lr.ph:                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !71 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 38160 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 38232 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 7308
  br i1 %i.dx, label %.preheader1999.lr.ph.split.us, label %.preheader1994.lr.ph

.preheader1999.lr.ph.split.us:                    ; preds = %.preheader1999.lr.ph
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ee = load ptr, ptr %i.ed, align 16, !tbaa !72
  %wide.trip.count2356 = zext nneg i32 %i.dw to i64
  br label %.preheader1999.us

.preheader1999.us:                                ; preds = %._crit_edge2040.us, %.preheader1999.lr.ph.split.us
  %.013462046.us = phi i32 [ 0, %.preheader1999.lr.ph.split.us ], [ %i.hh, %._crit_edge2040.us ] ; 3 uses
  %.014202045.us = phi i32 [ 0, %.preheader1999.lr.ph.split.us ], [ %i.gm, %._crit_edge2040.us ]
  %.014472044.us = phi float [ -1.000000e+00, %.preheader1999.lr.ph.split.us ], [ %.21449.us, %._crit_edge2040.us ]
  %.014502043.us = phi float [ -1.000000e+00, %.preheader1999.lr.ph.split.us ], [ %.21452.us, %._crit_edge2040.us ]
  %i.ef = zext nneg i32 %.013462046.us to i64     ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ef ; 4 uses
  %i.eh = shl nsw i32 %.013462046.us, 4
  %i.ei = zext nneg i32 %i.eh to i64
  br label %.preheader1998.us

.preheader1998.us:                                ; preds = %.preheader1999.us, %bb.ab
  %indvars.iv2353 = phi i64 [ 0, %.preheader1999.us ], [ %indvars.iv.next2354, %bb.ab ] ; 6 uses
  %.02039.us = phi i32 [ 0, %.preheader1999.us ], [ %i.ha, %bb.ab ] ; 2 uses
  %.114212038.us = phi i32 [ %.014202045.us, %.preheader1999.us ], [ %i.gm, %bb.ab ]
  %.114482037.us = phi float [ %.014472044.us, %.preheader1999.us ], [ %.21449.us, %bb.ab ] ; 4 uses
  %.114512036.us = phi float [ %.014502043.us, %.preheader1999.us ], [ %.21452.us, %bb.ab ] ; 5 uses
  %i.ej = load i8, ptr %i.eg, align 1, !tbaa !73  ; 2 uses
  %.not2287 = icmp eq i8 %i.ej, 0
  br i1 %.not2287, label %.loopexit1997.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader1998.us
  %.not1698.us = icmp slt i32 %.02039.us, %i.dp
  br i1 %.not1698.us, label %.lr.ph.split.us.us, label %.lr.ph.split.us2050.preheader

.lr.ph.split.us2050.preheader:                    ; preds = %.lr.ph.us
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv2353
  br label %.lr.ph.split.us2050

.lr.ph.split.us2050:                              ; preds = %.lr.ph.split.us2050.preheader, %.lr.ph.split.us2050
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us2050.preheader ], [ %indvars.iv.next, %.lr.ph.split.us2050 ] ; 2 uses
  %i.ek = add nuw nsw i64 %indvars.iv, %i.ef
  %i.el = shl nuw nsw i64 %i.ek, 4
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.el
  store i8 1, ptr %gep, align 1, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.em = load i8, ptr %i.eg, align 1, !tbaa !73
  %i.en = zext i8 %i.em to i64
  %i.eo = icmp samesign ult i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %.lr.ph.split.us2050, label %.loopexit1997.us, !llvm.loop !107

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.u
  %i.ep = phi i8 [ %i.fg, %bb.u ], [ %i.ej, %.lr.ph.us ]
  %indvars.iv2347 = phi i64 [ %indvars.iv.next2348, %bb.u ], [ 0, %.lr.ph.us ] ; 2 uses
  %.013882021.us.us = phi i32 [ %.11389.us.us, %bb.u ], [ 0, %.lr.ph.us ]
  %i.eq = add nuw nsw i64 %indvars.iv2347, %i.ef
  %i.er = shl nuw nsw i64 %i.eq, 4
  %i.es = add nuw nsw i64 %i.er, %indvars.iv2353  ; 2 uses
  %i.et = load ptr, ptr %i.dz, align 16, !tbaa !75
  %i.eu = load i32, ptr %i.ea, align 8, !tbaa !76
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [2052 x i8], ptr %i.et, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.es ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !78
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !79 ; 2 uses
  %i.fc = fmul nsz float %.01395, %i.fb
  %i.fd = fcmp nsz ole float %i.ez, %i.fc
  %i.fe = fcmp nsz oeq float %i.fb, 0.000000e+00
  %or.cond1730.us.us = or i1 %i.fe, %i.fd
  br i1 %or.cond1730.us.us, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.us
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.es
  store i8 1, ptr %i.ff, align 1, !tbaa !73
  %.pre = load i8, ptr %i.eg, align 1, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.us.us
  %i.fg = phi i8 [ %.pre, %bb.t ], [ %i.ep, %.lr.ph.split.us.us ] ; 4 uses
  %.11389.us.us = phi i32 [ %.013882021.us.us, %bb.t ], [ 1, %.lr.ph.split.us.us ] ; 2 uses
  %indvars.iv.next2348 = add nuw nsw i64 %indvars.iv2347, 1 ; 2 uses
  %i.fh = zext i8 %i.fg to i64
  %i.fi = icmp samesign ult i64 %indvars.iv.next2348, %i.fh
  br i1 %i.fi, label %.lr.ph.split.us.us, label %._crit_edge.us, !llvm.loop !107

._crit_edge.us:                                   ; preds = %bb.u
  %i.fj = icmp ne i32 %.11389.us.us, 0
  %i.fk = icmp ne i8 %i.fg, 0
  %or.cond2286 = and i1 %i.fj, %i.fk
  br i1 %or.cond2286, label %.lr.ph2029.us, label %.loopexit1997.us

bb.v:                                             ; preds = %.lr.ph2029.us, %bb.x
  %indvars.iv2350 = phi i64 [ 0, %.lr.ph2029.us ], [ %indvars.iv.next2351, %bb.x ] ; 2 uses
  %.013792028.us = phi float [ 0.000000e+00, %.lr.ph2029.us ], [ %.11380.us, %bb.x ] ; 2 uses
  %.213902025.us = phi i32 [ 0, %.lr.ph2029.us ], [ %.31391.us, %bb.x ] ; 2 uses
  %i.fl = phi <2 x float> [ zeroinitializer, %.lr.ph2029.us ], [ %i.fz, %bb.x ] ; 2 uses
  %i.fm = add nuw nsw i64 %indvars.iv2350, %i.ef
  %.idx = shl nuw nsw i64 %i.fm, 8
  %gep2752 = getelementptr inbounds nuw i8, ptr %invariant.gep2751, i64 %.idx ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %gep2752, i64 4
  %i.fo = load <2 x float>, ptr %i.fn, align 4, !tbaa !80 ; 3 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 1 ; 2 uses
  %i.fq = fmul nsz float %.01395, %i.fp
  %i.fr = extractelement <2 x float> %i.fo, i64 0
  %i.fs = fcmp nsz ole float %i.fr, %i.fq
  %i.ft = fcmp nsz oeq float %i.fp, 0.000000e+00
  %or.cond1731.us = or i1 %i.ft, %i.fs
  br i1 %or.cond1731.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fu = fadd nsz <2 x float> %i.fl, %i.fo
  %i.fv = getelementptr inbounds nuw i8, ptr %gep2752, i64 12
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !81
  %i.fx = fadd nsz float %.013792028.us, %i.fw
  %i.fy = add nsw i32 %.213902025.us, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.31391.us = phi i32 [ %i.fy, %bb.w ], [ %.213902025.us, %bb.v ] ; 2 uses
  %.11380.us = phi nsz float [ %i.fx, %bb.w ], [ %.013792028.us, %bb.v ] ; 2 uses
  %i.fz = phi <2 x float> [ %i.fu, %bb.w ], [ %i.fl, %bb.v ] ; 3 uses
  %indvars.iv.next2351 = add nuw nsw i64 %indvars.iv2350, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2351, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1997.us.loopexit, label %bb.v, !llvm.loop !108

.loopexit1997.us.loopexit:                        ; preds = %bb.x
  %i.ga = extractelement <2 x float> %i.fz, i64 1
  %i.gb = fmul nsz float %i.ga, %.11380.us
  br label %.loopexit1997.us

.loopexit1997.us:                                 ; preds = %.lr.ph.split.us2050, %.preheader1998.us, %.loopexit1997.us.loopexit, %._crit_edge.us
  %.41392.us = phi i32 [ 0, %._crit_edge.us ], [ %.31391.us, %.loopexit1997.us.loopexit ], [ 0, %.preheader1998.us ], [ 0, %.lr.ph.split.us2050 ] ; 4 uses
  %.21381.us = phi float [ 0.000000e+00, %._crit_edge.us ], [ %i.gb, %.loopexit1997.us.loopexit ], [ 0.000000e+00, %.preheader1998.us ], [ 0.000000e+00, %.lr.ph.split.us2050 ]
  %i.gc = phi <2 x float> [ zeroinitializer, %._crit_edge.us ], [ %i.fz, %.loopexit1997.us.loopexit ], [ zeroinitializer, %.preheader1998.us ], [ zeroinitializer, %.lr.ph.split.us2050 ] ; 2 uses
  %i.gd = add nuw nsw i64 %indvars.iv2353, %i.ei  ; 6 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gd
  %i.gf = extractelement <2 x float> %i.gc, i64 1
  store float %i.gf, ptr %i.ge, align 4, !tbaa !80
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gd
  %i.gh = extractelement <2 x float> %i.gc, i64 0 ; 2 uses
  store float %i.gh, ptr %i.gg, align 4, !tbaa !80
  %i.gi = trunc i32 %.41392.us to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gd
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !73
  %.not1696.us = icmp eq i32 %.41392.us, 0        ; 2 uses
  %i.gk = zext i1 %.not1696.us to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.gd
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !73
  %i.gm = or i32 %.41392.us, %.114212038.us       ; 3 uses
  br i1 %.not1696.us, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.loopexit1997.us
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.gd
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !73
  %.not1697.us = icmp eq i8 %i.go, 0
  br i1 %.not1697.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gp = sitofp nsz i32 %.41392.us to float
  %i.gq = fmul nsz float %i.gh, %i.gp
  %i.gr = fdiv nsz float %i.gq, %.21381.us        ; 7 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.gd
  store float %i.gr, ptr %i.gs, align 4, !tbaa !80
  %i.gt = fcmp nsz olt float %.114512036.us, 0.000000e+00
  br i1 %i.gt, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gu = fcmp nsz ogt float %.114512036.us, %i.gr
  %..11451.us = select nsz i1 %i.gu, float %i.gr, float %.114512036.us
  %i.gv = fcmp nsz ogt float %.114482037.us, %i.gr
  %i.gw = select nsz i1 %i.gv, float %.114482037.us, float %i.gr
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %.loopexit1997.us
  %.21452.us = phi nsz float [ %.114512036.us, %.loopexit1997.us ], [ %..11451.us, %bb.aa ], [ %.114512036.us, %bb.y ], [ %i.gr, %bb.z ] ; 3 uses
  %.21449.us = phi nsz float [ %.114482037.us, %.loopexit1997.us ], [ %i.gw, %bb.aa ], [ %.114482037.us, %bb.y ], [ %i.gr, %bb.z ] ; 3 uses
  %indvars.iv.next2354 = add nuw nsw i64 %indvars.iv2353, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv2353
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !73
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add nuw nsw i32 %.02039.us, %i.gz
  %exitcond2357.not = icmp eq i64 %indvars.iv.next2354, %wide.trip.count2356
  br i1 %exitcond2357.not, label %._crit_edge2040.us, label %.preheader1998.us, !llvm.loop !109

.lr.ph2029.us:                                    ; preds = %._crit_edge.us
  %i.hb = load ptr, ptr %i.dz, align 16, !tbaa !75
  %i.hc = load i32, ptr %i.ea, align 8, !tbaa !76
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [2052 x i8], ptr %i.hb, i64 %i.hd
  %wide.trip.count = zext i8 %i.fg to i64
  %invariant.gep2751 = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %indvars.iv2353
  br label %bb.v

._crit_edge2040.us:                               ; preds = %bb.ab
  %i.hf = load i8, ptr %i.eg, align 1, !tbaa !73
  %i.hg = zext i8 %i.hf to i32
  %i.hh = add nuw nsw i32 %.013462046.us, %i.hg   ; 2 uses
  %i.hi = icmp slt i32 %i.hh, %i.cf
  br i1 %i.hi, label %.preheader1999.us, label %.preheader1995, !llvm.loop !110

.preheader1995:                                   ; preds = %._crit_edge2040.us
  %i.hj = icmp eq i32 %i.gm, 0
  br label %.preheader1994.lr.ph

.preheader1994.lr.ph:                             ; preds = %.preheader1995, %.preheader1999.lr.ph
  %.01420.lcssa2636 = phi i1 [ %i.hj, %.preheader1995 ], [ true, %.preheader1999.lr.ph ]
  %.01447.lcssa2634 = phi float [ %.21449.us, %.preheader1995 ], [ -1.000000e+00, %.preheader1999.lr.ph ] ; 3 uses
  %.01450.lcssa2632 = phi float [ %.21452.us, %.preheader1995 ], [ -1.000000e+00, %.preheader1999.lr.ph ] ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !71 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 7180
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 6668 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 14
  br i1 %i.hm, label %.preheader1994.us.preheader, label %.preheader1993.lr.ph
end_hunk_0
begin_hunk_1_@search_for_quantizers_twoloop:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader1994.us, %bb.af
  %indvars.iv2358 = phi i64 [ 0, %.preheader1994.us ], [ %indvars.iv.next2359, %bb.af ] ; 3 uses
  %.114282059.us = phi i32 [ %.014272060.us, %.preheader1994.us ], [ %.21429.us, %bb.af ] ; 2 uses
  %i.ht = add nuw nsw i64 %indvars.iv2358, %i.hs  ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !73
  %.not1694.us = icmp eq i8 %i.hv, 0
  br i1 %.not1694.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ht
  store i32 140, ptr %i.hw, align 4, !tbaa !82
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ht
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !80 ; 2 uses
  %i.hz = fcmp nsz olt float %i.hy, 1.250000e-03
  %i.ia = select nsz i1 %i.hz, float 1.250000e-03, float %i.hy
  %i.ib = load ptr, ptr %i.hp, align 16, !tbaa !72
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv2358
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !73
  %i.ie = uitofp i8 %i.id to float
  %i.if = fdiv nsz float %i.ia, %i.ie
  %i.ig = tail call nsz float @llvm.log2.f32(float %i.if)
  %i.ih = fpext nsz float %i.ig to double
  %i.ii = tail call nsz double @llvm.fmuladd.f64(double %i.ih, double 1.750000e+00, double 1.400000e+02)
  %i.ij = fadd nsz double %.014451910, %i.ii
  %i.ik = fptosi double %i.ij to i32
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 60)
  %i.im = tail call i32 @llvm.umin.i32(i32 %i.il, i32 255) ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ht
  store i32 %i.im, ptr %i.in, align 4, !tbaa !82
  %i.io = tail call i32 @llvm.smin.i32(i32 %.114282059.us, i32 %i.im)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.21429.us = phi i32 [ %.114282059.us, %bb.ad ], [ %i.io, %bb.ae ] ; 3 uses
  %indvars.iv.next2359 = add nuw nsw i64 %indvars.iv2358, 1 ; 2 uses
  %exitcond2362.not = icmp eq i64 %indvars.iv.next2359, %wide.trip.count2361
  br i1 %exitcond2362.not, label %._crit_edge.us2065, label %bb.ac, !llvm.loop !111

._crit_edge.us2065:                               ; preds = %bb.af
  %i.ip = zext nneg i32 %.113472061.us to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !73
  %i.is = zext i8 %i.ir to i32
  %i.it = add nuw nsw i32 %.113472061.us, %i.is   ; 2 uses
  %i.iu = icmp slt i32 %i.it, %i.cf
  br i1 %i.iu, label %.preheader1994.us, label %._crit_edge2062, !llvm.loop !112

._crit_edge2062:                                  ; preds = %._crit_edge.us2065
  %i.iv = tail call i32 @llvm.smax.i32(i32 %.21429.us, i32 104)
  %i.iw = tail call i32 @llvm.umin.i32(i32 %i.iv, i32 219)
  br label %.preheader1993.lr.ph

.preheader1993.lr.ph:                             ; preds = %._crit_edge2062, %.preheader1994.lr.ph
  %.01427.lcssa2656 = phi i32 [ %i.iw, %._crit_edge2062 ], [ 219, %.preheader1994.lr.ph ] ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !71 ; 4 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 6668 ; 3 uses
  %i.jc = add nuw nsw i32 %.01427.lcssa2656, 59   ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 14
  br i1 %i.iz, label %.preheader1993.us.preheader, label %._crit_edge2068

.preheader1993.us.preheader:                      ; preds = %.preheader1993.lr.ph
  %wide.trip.count2366 = zext nneg i32 %i.iy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count2366, 1
  %i.je = icmp eq i32 %i.iy, 1
  %unroll_iter = and i64 %wide.trip.count2366, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2945 = trunc i32 %i.iy to i1
  br label %.preheader1993.us

.preheader1993.us:                                ; preds = %.preheader1993.us.preheader, %._crit_edge.us2070
  %.213482067.us = phi i32 [ %i.kd, %._crit_edge.us2070 ], [ 0, %.preheader1993.us.preheader ] ; 3 uses
  %i.jf = shl nuw nsw i32 %.213482067.us, 4
  %i.jg = zext nneg i32 %i.jf to i64              ; 3 uses
  br i1 %i.je, label %.epil.preheader, label %.preheader1993.us.new

.preheader1993.us.new:                            ; preds = %.preheader1993.us, %bb.aj
  %indvars.iv2363 = phi i64 [ %indvars.iv.next2364.1, %bb.aj ], [ 0, %.preheader1993.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.aj ], [ 0, %.preheader1993.us ]
  %i.jh = add nuw nsw i64 %indvars.iv2363, %i.jg  ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !73
  %.not1693.us = icmp eq i8 %i.jj, 0
  br i1 %.not1693.us, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.preheader1993.us.new
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jh ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !82 ; 2 uses
  %i.jm = icmp slt i32 %i.jl, %.01427.lcssa2656
  %..i1773.us = tail call i32 @llvm.smin.i32(i32 %i.jl, i32 %i.jc)
  %.0.i1774.us = select i1 %i.jm, i32 %.01427.lcssa2656, i32 %..i1773.us
  store i32 %.0.i1774.us, ptr %i.jk, align 4, !tbaa !82
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.preheader1993.us.new
  %indvars.iv.next2364 = or disjoint i64 %indvars.iv2363, 1
  %i.jn = add nuw nsw i64 %indvars.iv.next2364, %i.jg ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !73
  %.not1693.us.1 = icmp eq i8 %i.jp, 0
  br i1 %.not1693.us.1, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jn ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !82 ; 2 uses
  %i.js = icmp slt i32 %i.jr, %.01427.lcssa2656
  %..i1773.us.1 = tail call i32 @llvm.smin.i32(i32 %i.jr, i32 %i.jc)
  %.0.i1774.us.1 = select i1 %i.js, i32 %.01427.lcssa2656, i32 %..i1773.us.1
  store i32 %.0.i1774.us.1, ptr %i.jq, align 4, !tbaa !82
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next2364.1 = add nuw nsw i64 %indvars.iv2363, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us2070.unr-lcssa, label %.preheader1993.us.new, !llvm.loop !113

._crit_edge.us2070.unr-lcssa:                     ; preds = %bb.aj
  br i1 %lcmp.mod.not, label %._crit_edge.us2070, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us2070.unr-lcssa, %.preheader1993.us
  %indvars.iv2363.epil.init = phi i64 [ 0, %.preheader1993.us ], [ %indvars.iv.next2364.1, %._crit_edge.us2070.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2945)
  %i.jt = add nuw nsw i64 %indvars.iv2363.epil.init, %i.jg ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !73
  %.not1693.us.epil = icmp eq i8 %i.jv, 0
  br i1 %.not1693.us.epil, label %bb.ak, label %._crit_edge.us2070

bb.ak:                                            ; preds = %.epil.preheader
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jt ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !82 ; 2 uses
  %i.jy = icmp slt i32 %i.jx, %.01427.lcssa2656
  %..i1773.us.epil = tail call i32 @llvm.smin.i32(i32 %i.jx, i32 %i.jc)
  %.0.i1774.us.epil = select i1 %i.jy, i32 %.01427.lcssa2656, i32 %..i1773.us.epil
  store i32 %.0.i1774.us.epil, ptr %i.jw, align 4, !tbaa !82
  br label %._crit_edge.us2070

._crit_edge.us2070:                               ; preds = %.epil.preheader, %bb.ak, %._crit_edge.us2070.unr-lcssa
  %i.jz = zext nneg i32 %.213482067.us to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !73
  %i.kc = zext i8 %i.kb to i32
  %i.kd = add nuw nsw i32 %.213482067.us, %i.kc   ; 2 uses
  %i.ke = icmp slt i32 %i.kd, %i.cf
  br i1 %i.ke, label %.preheader1993.us, label %._crit_edge2068, !llvm.loop !114

._crit_edge2068:                                  ; preds = %._crit_edge.us2070, %.preheader1993.lr.ph
  br i1 %.01420.lcssa2636, label %.loopexit, label %.preheader1992

.preheader1992:                                   ; preds = %._crit_edge2068
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 567080
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !83
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 38688 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 12560 ; 5 uses
  tail call void %i.kg(ptr noundef nonnull %i.kh, ptr noundef nonnull %i.ki, i32 noundef 1024) #13
  tail call void @ff_quantize_band_cost_cache_init(ptr noundef %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !tbaa !82
  %i.kj = load i32, ptr %i.cg, align 4, !tbaa !69 ; 5 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph2078, label %._crit_edge2079.thread2659

._crit_edge2079.thread2659:                       ; preds = %.preheader1992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.h, ptr noundef nonnull align 16 dereferenceable(512) %i.g, i64 512, i1 false)
  br label %vector.body.preheader

.lr.ph2078:                                       ; preds = %.preheader1992
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !71 ; 2 uses
  %i.kn = icmp sgt i32 %i.km, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 14
  br i1 %i.kn, label %.lr.ph2078.split.us, label %.lr.ph2094

.lr.ph2078.split.us:                              ; preds = %.lr.ph2078
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.kq = load ptr, ptr %i.kp, align 16, !tbaa !72
  %i.kr = zext nneg i32 %i.km to i64              ; 2 uses
  %i.ks = shl nuw nsw i64 %i.kr, 2
  br label %.lr.ph2076.us

.lr.ph2076.us:                                    ; preds = %._crit_edge.us2087, %.lr.ph2078.split.us
  %.313492077.us = phi i32 [ 0, %.lr.ph2078.split.us ], [ %i.mj, %._crit_edge.us2087 ] ; 4 uses
  %i.kt = zext nneg i32 %.313492077.us to i64     ; 6 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !73
  %.fr = freeze i8 %i.kv                          ; 4 uses
  %.not.i.us = icmp eq i8 %.fr, 0
  %wide.trip.count29.i.us = zext i8 %.fr to i64   ; 3 uses
  %i.kw = shl i32 %.313492077.us, 4               ; 2 uses
  br i1 %.not.i.us, label %find_max_val.exit.thread.us.us.preheader, label %.lr.ph2076.split.us2080.preheader

.lr.ph2076.split.us2080.preheader:                ; preds = %.lr.ph2076.us
  %i.kx = shl nsw i32 %.313492077.us, 7
  %4 = sext i32 %i.kw to i64                      ; 2 uses
  %invariant.gep2755 = getelementptr [4 x i8], ptr %i.j, i64 %4
  %invariant.gep2757 = getelementptr [4 x i8], ptr %i.j, i64 %4
  %xtraiter2953 = and i64 %wide.trip.count29.i.us, 3 ; 3 uses
  %i.ky = icmp ult i8 %.fr, 4
  %unroll_iter2957 = and i64 %wide.trip.count29.i.us, 252
  %lcmp.mod2955.not = icmp eq i64 %xtraiter2953, 0
  %lcmp.mod2956 = icmp ne i64 %xtraiter2953, 0
  br label %.lr.ph2076.split.us2080

find_max_val.exit.thread.us.us.preheader:         ; preds = %.lr.ph2076.us
  %i.kz = zext i32 %i.kw to i64
  %i.la = shl nuw nsw i64 %i.kz, 2
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.la
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %i.ks, i1 false), !tbaa !80
  br label %._crit_edge.us2087

.lr.ph2076.split.us2080:                          ; preds = %.lr.ph2076.split.us2080.preheader, %.loopexit1991.us
  %indvars.iv2376 = phi i64 [ 0, %.lr.ph2076.split.us2080.preheader ], [ %indvars.iv.next2377, %.loopexit1991.us ] ; 5 uses
  %.12075.us2081 = phi i32 [ %i.kx, %.lr.ph2076.split.us2080.preheader ], [ %i.mh, %.loopexit1991.us ] ; 2 uses
  %i.lb = zext nneg i32 %.12075.us2081 to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kq, i64 %indvars.iv2376
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !73  ; 4 uses
  %i.lf = zext i8 %i.le to i32
  %.not23.i.us = icmp eq i8 %i.le, 0
  br i1 %.not23.i.us, label %find_max_val.exit.thread.us2084, label %.preheader.us.preheader.i.us

.preheader.us.preheader.i.us:                     ; preds = %.lr.ph2076.split.us2080
  %wide.trip.count.i.us = zext i8 %i.le to i64    ; 2 uses
  %xtraiter2947 = and i64 %wide.trip.count.i.us, 3 ; 3 uses
  %i.lg = icmp ult i8 %i.le, 4
  %unroll_iter2951 = and i64 %wide.trip.count.i.us, 252
  %lcmp.mod2948.not = icmp eq i64 %xtraiter2947, 0
  %lcmp.mod2950 = icmp ne i64 %xtraiter2947, 0
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %._crit_edge.us.i.us, %.preheader.us.preheader.i.us
  %indvars.iv26.i.us = phi i64 [ 0, %.preheader.us.preheader.i.us ], [ %indvars.iv.next27.i.us, %._crit_edge.us.i.us ] ; 2 uses
  %.01519.us.i.us = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us ], [ %.1..us.i.us.lcssa, %._crit_edge.us.i.us ] ; 2 uses
  %.idx.i.us = shl nuw nsw i64 %indvars.iv26.i.us, 9
  %invariant.gep.i.us = getelementptr inbounds nuw i8, ptr %i.lc, i64 %.idx.i.us ; 5 uses
  br i1 %i.lg, label %.epil.preheader2946, label %.preheader.us.i.us.new

.preheader.us.i.us.new:                           ; preds = %.preheader.us.i.us, %.preheader.us.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ] ; 5 uses
  %.117.us.i.us = phi float [ %.1..us.i.us.3, %.preheader.us.i.us.new ], [ %.01519.us.i.us, %.preheader.us.i.us ] ; 2 uses
  %niter2952 = phi i64 [ %niter2952.next.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ]
  %gep.i.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %i.lh = load float, ptr %gep.i.us, align 4, !tbaa !80 ; 2 uses
  %i.li = fcmp nsz ogt float %.117.us.i.us, %i.lh
  %.1..us.i.us = select nsz i1 %i.li, float %.117.us.i.us, float %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.1 = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.lk = load float, ptr %gep.i.us.1, align 4, !tbaa !80 ; 2 uses
  %i.ll = fcmp nsz ogt float %.1..us.i.us, %i.lk
  %.1..us.i.us.1 = select nsz i1 %i.ll, float %.1..us.i.us, float %i.lk ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.2 = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.ln = load float, ptr %gep.i.us.2, align 4, !tbaa !80 ; 2 uses
  %i.lo = fcmp nsz ogt float %.1..us.i.us.1, %i.ln
  %.1..us.i.us.2 = select nsz i1 %i.lo, float %.1..us.i.us.1, float %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.3 = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  %i.lq = load float, ptr %gep.i.us.3, align 4, !tbaa !80 ; 2 uses
  %i.lr = fcmp nsz ogt float %.1..us.i.us.2, %i.lq
  %.1..us.i.us.3 = select nsz i1 %i.lr, float %.1..us.i.us.2, float %i.lq ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter2952.next.3 = add i64 %niter2952, 4       ; 2 uses
  %niter2952.ncmp.3 = icmp eq i64 %niter2952.next.3, %unroll_iter2951
  br i1 %niter2952.ncmp.3, label %._crit_edge.us.i.us.unr-lcssa, label %.preheader.us.i.us.new, !llvm.loop !0

._crit_edge.us.i.us.unr-lcssa:                    ; preds = %.preheader.us.i.us.new
  br i1 %lcmp.mod2948.not, label %._crit_edge.us.i.us, label %.epil.preheader2946

.epil.preheader2946:                              ; preds = %._crit_edge.us.i.us.unr-lcssa, %.preheader.us.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader.us.i.us ], [ %indvars.iv.next.i.us.3, %._crit_edge.us.i.us.unr-lcssa ]
  %.117.us.i.us.epil.init = phi float [ %.01519.us.i.us, %.preheader.us.i.us ], [ %.1..us.i.us.3, %._crit_edge.us.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2950)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader2946
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.epil.preheader2946 ], [ %indvars.iv.next.i.us.epil, %bb.al ] ; 2 uses
  %.117.us.i.us.epil = phi float [ %.117.us.i.us.epil.init, %.epil.preheader2946 ], [ %.1..us.i.us.epil, %bb.al ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader2946 ], [ %epil.iter.next, %bb.al ]
  %gep.i.us.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil
  %i.ls = load float, ptr %gep.i.us.epil, align 4, !tbaa !80 ; 2 uses
  %i.lt = fcmp nsz ogt float %.117.us.i.us.epil, %i.ls
  %.1..us.i.us.epil = select nsz i1 %i.lt, float %.117.us.i.us.epil, float %i.ls ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2947
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.us, label %bb.al, !llvm.loop !115

._crit_edge.us.i.us:                              ; preds = %bb.al, %._crit_edge.us.i.us.unr-lcssa
  %.1..us.i.us.lcssa = phi float [ %.1..us.i.us.3, %._crit_edge.us.i.us.unr-lcssa ], [ %.1..us.i.us.epil, %bb.al ] ; 4 uses
  %indvars.iv.next27.i.us = add nuw nsw i64 %indvars.iv26.i.us, 1 ; 2 uses
  %exitcond30.not.i.us = icmp eq i64 %indvars.iv.next27.i.us, %wide.trip.count29.i.us
  br i1 %exitcond30.not.i.us, label %find_max_val.exit.us, label %.preheader.us.i.us, !llvm.loop !1

find_max_val.exit.us:                             ; preds = %._crit_edge.us.i.us
  %gep2756 = getelementptr [4 x i8], ptr %invariant.gep2755, i64 %indvars.iv2376
  store float %.1..us.i.us.lcssa, ptr %gep2756, align 4, !tbaa !80
  %i.lu = fcmp nsz ogt float %.1..us.i.us.lcssa, 0.000000e+00
  br i1 %i.lu, label %.lr.ph.us2083.preheader, label %.loopexit1991.us

.lr.ph.us2083.preheader:                          ; preds = %find_max_val.exit.us
  %i.lv = tail call nsz float @llvm.log2.f32(float %.1..us.i.us.lcssa)
  %i.lw = tail call nsz float @llvm.fmuladd.f32(float %i.lv, float 4.000000e+00, float -6.900000e+01)
  %i.lx = fadd nsz float %i.lw, 1.400000e+02
  %i.ly = fadd nsz float %i.lx, -3.600000e+01
  %i.lz = fptosi float %i.ly to i32
  %i.ma = tail call i32 @llvm.smax.i32(i32 %i.lz, i32 0)
  %i.mb = tail call i32 @llvm.umin.i32(i32 %i.ma, i32 255) ; 5 uses
  %invariant.gep2753 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv2376 ; 5 uses
  br i1 %i.ky, label %.lr.ph.us2083.epil.preheader, label %.lr.ph.us2083

.lr.ph.us2083:                                    ; preds = %.lr.ph.us2083.preheader, %.lr.ph.us2083
  %indvars.iv2371 = phi i64 [ %indvars.iv.next2372.3, %.lr.ph.us2083 ], [ 0, %.lr.ph.us2083.preheader ] ; 5 uses
  %niter2958 = phi i64 [ %niter2958.next.3, %.lr.ph.us2083 ], [ 0, %.lr.ph.us2083.preheader ]
  %i.mc = add nuw nsw i64 %indvars.iv2371, %i.kt
  %.idx2619 = shl nuw nsw i64 %i.mc, 6
  %gep2754 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619
  store i32 %i.mb, ptr %gep2754, align 4, !tbaa !82
  %indvars.iv.next2372 = or disjoint i64 %indvars.iv2371, 1
  %i.md = add nuw nsw i64 %indvars.iv.next2372, %i.kt
  %.idx2619.1 = shl nuw nsw i64 %i.md, 6
  %gep2754.1 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.1
  store i32 %i.mb, ptr %gep2754.1, align 4, !tbaa !82
  %indvars.iv.next2372.1 = or disjoint i64 %indvars.iv2371, 2
  %i.me = add nuw nsw i64 %indvars.iv.next2372.1, %i.kt
  %.idx2619.2 = shl nuw nsw i64 %i.me, 6
  %gep2754.2 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.2
  store i32 %i.mb, ptr %gep2754.2, align 4, !tbaa !82
  %indvars.iv.next2372.2 = or disjoint i64 %indvars.iv2371, 3
  %i.mf = add nuw nsw i64 %indvars.iv.next2372.2, %i.kt
  %.idx2619.3 = shl nuw nsw i64 %i.mf, 6
  %gep2754.3 = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.3
  store i32 %i.mb, ptr %gep2754.3, align 4, !tbaa !82
  %indvars.iv.next2372.3 = add nuw nsw i64 %indvars.iv2371, 4 ; 2 uses
  %niter2958.next.3 = add i64 %niter2958, 4       ; 2 uses
  %niter2958.ncmp.3 = icmp eq i64 %niter2958.next.3, %unroll_iter2957
  br i1 %niter2958.ncmp.3, label %.loopexit1991.us.loopexit.unr-lcssa, label %.lr.ph.us2083, !llvm.loop !116

find_max_val.exit.thread.us2084:                  ; preds = %.lr.ph2076.split.us2080
  %gep2758 = getelementptr [4 x i8], ptr %invariant.gep2757, i64 %indvars.iv2376
  store float 0.000000e+00, ptr %gep2758, align 4, !tbaa !80
  br label %.loopexit1991.us

.loopexit1991.us.loopexit.unr-lcssa:              ; preds = %.lr.ph.us2083
  br i1 %lcmp.mod2955.not, label %.loopexit1991.us, label %.lr.ph.us2083.epil.preheader

.lr.ph.us2083.epil.preheader:                     ; preds = %.loopexit1991.us.loopexit.unr-lcssa, %.lr.ph.us2083.preheader
  %indvars.iv2371.epil.init = phi i64 [ 0, %.lr.ph.us2083.preheader ], [ %indvars.iv.next2372.3, %.loopexit1991.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2956)
  br label %.lr.ph.us2083.epil

.lr.ph.us2083.epil:                               ; preds = %.lr.ph.us2083.epil, %.lr.ph.us2083.epil.preheader
  %indvars.iv2371.epil = phi i64 [ %indvars.iv2371.epil.init, %.lr.ph.us2083.epil.preheader ], [ %indvars.iv.next2372.epil, %.lr.ph.us2083.epil ] ; 2 uses
  %epil.iter2954 = phi i64 [ 0, %.lr.ph.us2083.epil.preheader ], [ %epil.iter2954.next, %.lr.ph.us2083.epil ]
  %i.mg = add nuw nsw i64 %indvars.iv2371.epil, %i.kt
  %.idx2619.epil = shl nuw nsw i64 %i.mg, 6
  %gep2754.epil = getelementptr inbounds nuw i8, ptr %invariant.gep2753, i64 %.idx2619.epil
  store i32 %i.mb, ptr %gep2754.epil, align 4, !tbaa !82
  %indvars.iv.next2372.epil = add nuw nsw i64 %indvars.iv2371.epil, 1
  %epil.iter2954.next = add i64 %epil.iter2954, 1 ; 2 uses
  %epil.iter2954.cmp.not = icmp eq i64 %epil.iter2954.next, %xtraiter2953
  br i1 %epil.iter2954.cmp.not, label %.loopexit1991.us, label %.lr.ph.us2083.epil, !llvm.loop !117

.loopexit1991.us:                                 ; preds = %.loopexit1991.us.loopexit.unr-lcssa, %.lr.ph.us2083.epil, %find_max_val.exit.thread.us2084, %find_max_val.exit.us
  %i.mh = add nuw nsw i32 %.12075.us2081, %i.lf
  %indvars.iv.next2377 = add nuw nsw i64 %indvars.iv2376, 1 ; 2 uses
  %exitcond2380.not = icmp eq i64 %indvars.iv.next2377, %i.kr
  br i1 %exitcond2380.not, label %._crit_edge.us2087, label %.lr.ph2076.split.us2080, !llvm.loop !118

._crit_edge.us2087:                               ; preds = %.loopexit1991.us, %find_max_val.exit.thread.us.us.preheader
  %i.mi = zext i8 %.fr to i32
  %i.mj = add nuw nsw i32 %.313492077.us, %i.mi   ; 2 uses
  %i.mk = icmp slt i32 %i.mj, %i.kj
  br i1 %i.mk, label %.lr.ph2076.us, label %.lr.ph2094, !llvm.loop !119

.lr.ph2094:                                       ; preds = %._crit_edge.us2087, %.lr.ph2078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.h, ptr noundef nonnull align 16 dereferenceable(512) %i.g, i64 512, i1 false)
  %.not2289 = icmp eq i32 %i.kj, 1
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !71 ; 2 uses
  %i.mo = icmp sgt i32 %i.mn, 0
  %i.mp = sitofp nsz i32 %i.dp to float
  %i.mq = fmul nnan nsz float %i.mp, 7.500000e-01
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count2387 = zext nneg i32 %i.mn to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph2094, %._crit_edge
  %.413502092 = phi i32 [ 0, %.lr.ph2094 ], [ %i.vx, %._crit_edge ] ; 6 uses
  br i1 %.not2289, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ms = zext nneg i32 %.413502092 to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !73
  %i.mv = uitofp i8 %i.mu to float
  %i.mw = fdiv nsz float 8.000000e+00, %i.mv
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.mx = phi nsz float [ %i.mw, %bb.an ], [ 1.000000e+00, %bb.am ] ; 2 uses
  br i1 %i.mo, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.ao
  %.pre2491 = zext nneg i32 %.413502092 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.ao
  %i.my = shl nsw i32 %.413502092, 7
  %i.mz = zext nneg i32 %.413502092 to i64        ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mz
  %i.nb = shl nsw i32 %.413502092, 4
  %i.nc = load ptr, ptr %i.mr, align 16, !tbaa !72 ; 3 uses
  %i.nd = zext nneg i32 %i.nb to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mz
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.av
  %indvars.iv2384 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next2385, %bb.av ] ; 5 uses
  %.22091 = phi i32 [ %i.my, %.lr.ph ], [ %i.vt, %bb.av ] ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv2384
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !73  ; 2 uses
  %i.nh = icmp sgt i8 %i.ng, 0
  br i1 %i.nh, label %bb.aq, label %._crit_edge2452

._crit_edge2452:                                  ; preds = %bb.ap
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv2384
  %.pre2453 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !73
  %.pre2488 = zext i8 %.pre2453 to i32
  br label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.ni = zext nneg i8 %i.ng to i32
  %i.nj = uitofp nneg i32 %.22091 to float
  %i.nk = fdiv nsz float %i.nj, %i.mq             ; 2 uses
  %i.nl = fcmp nsz ogt float %i.nk, 1.000000e+00
  %i.nm = select nsz i1 %i.nl, float %i.nk, float 1.000000e+00 ; 2 uses
  %i.nn = fcmp nsz ogt float %i.nm, 2.000000e+00
  %..i1781 = select nsz i1 %i.nn, float 2.000000e+00, float %i.nm ; 2 uses
  %i.no = fmul nsz float %..i1781, %..i1781
  %i.np = load i8, ptr %i.na, align 1, !tbaa !73  ; 7 uses
  %i.nq = zext i8 %i.np to i32                    ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv2384
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !73  ; 10 uses
  %i.nt = zext i8 %i.ns to i32                    ; 2 uses
  %i.nu = add nuw nsw i64 %indvars.iv2384, %i.nd  ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nu ; 2 uses
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %i.nx = load i8, ptr %i.ne, align 1, !tbaa !73
  %i.ny = zext i8 %i.nx to i32
  %i.nz = mul nuw nsw i32 %i.ny, %i.ni
  %i.oa = uitofp nneg i32 %i.nz to float          ; 2 uses
  %i.ob = fdiv nsz float %i.nw, %i.oa             ; 6 uses
  %i.oc = zext nneg i32 %.22091 to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.oc ; 2 uses
  %i.oe = fmul nsz float %i.no, 1.500000e+00      ; 2 uses
  %i.of = uitofp i8 %i.ns to float
  %i.og = fdiv nsz float 1.000000e+00, %i.of      ; 6 uses
  %i.oh = add nsw i32 %i.nt, -1
  %i.oi = sitofp nsz i32 %i.oh to float
  %i.oj = fdiv nnan nsz float 1.000000e+00, %i.oi ; 4 uses
  %.not.i1784 = icmp eq i8 %i.np, 0               ; 2 uses
  br i1 %.not.i1784, label %find_form_factor.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.aq
  %.not142.i = icmp eq i8 %i.ns, 0
  %i.ok = fcmp nsz oeq float %i.oe, 2.000000e+00
  br i1 %.not142.i, label %.preheader.lr.ph.split.i, label %.preheader.us.preheader.i1785

.preheader.us.preheader.i1785:                    ; preds = %.preheader.lr.ph.i
  %wide.trip.count173.i = zext i8 %i.np to i64
  %wide.trip.count.i1786 = zext i8 %i.ns to i64   ; 4 uses
  %xtraiter2960 = and i64 %wide.trip.count.i1786, 1
  %i.ol = icmp eq i8 %i.ns, 1
  %unroll_iter2965 = and i64 %wide.trip.count.i1786, 254
  %lcmp.mod2962.not = icmp eq i64 %xtraiter2960, 0
  %lcmp.mod2964 = trunc i8 %i.ns to i1
  br label %.preheader.us.i1787

.preheader.us.i1787:                              ; preds = %bb.at, %.preheader.us.preheader.i1785
  %indvars.iv170.i = phi i64 [ 0, %.preheader.us.preheader.i1785 ], [ %indvars.iv.next171.i, %bb.at ] ; 2 uses
  %.077104.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i1785 ], [ %.178.us.i, %bb.at ] ; 2 uses
  %.079103.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i1785 ], [ %.180.us.i, %bb.at ] ; 2 uses
  %invariant.gep201.i.idx = shl nuw nsw i64 %indvars.iv170.i, 9
  %invariant.gep201.i = getelementptr inbounds nuw i8, ptr %i.od, i64 %invariant.gep201.i.idx ; 5 uses
  br i1 %i.ok, label %.lr.ph.split.us.us.i, label %.lr.ph.split.us110.i

.lr.ph.split.us110.i:                             ; preds = %.preheader.us.i1787, %bb.as
  %indvars.iv.i1788 = phi i64 [ %indvars.iv.next.i1790, %bb.as ], [ 0, %.preheader.us.i1787 ] ; 2 uses
  %.06990.us111.i = phi float [ %i.pa, %bb.as ], [ 0.000000e+00, %.preheader.us.i1787 ]
  %.07089.us112.i = phi float [ %i.oq, %bb.as ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %i.om = phi <2 x float> [ %i.ou, %bb.as ], [ zeroinitializer, %.preheader.us.i1787 ]
  %gep.i1789 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv.i1788
  %i.on = load float, ptr %gep.i1789, align 4, !tbaa !80 ; 3 uses
  %i.oo = tail call nsz float @llvm.fabs.f32(float %i.on) ; 3 uses
  %i.op = fcmp nsz ogt float %.07089.us112.i, %i.oo
  %i.oq = select nsz i1 %i.op, float %.07089.us112.i, float %i.oo ; 2 uses
  %i.or = fmul nsz float %i.on, %i.on             ; 3 uses
  %i.os = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %i.or, i64 1
  %i.ou = fadd nsz <2 x float> %i.om, %i.ot       ; 2 uses
  %i.ov = fcmp nsz ult float %i.or, %i.ob
  br i1 %i.ov, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split.us110.i
  %i.ow = fdiv nsz float %i.or, %i.ob
  %i.ox = tail call nsz float @llvm.log.f32(float %i.ow)
  %i.oy = fmul nsz float %i.oe, %i.ox
  %i.oz = tail call nsz float @llvm.exp.f32(float %i.oy)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split.us110.i
  %.sink.i = phi float [ %i.oz, %bb.ar ], [ 1.000000e+00, %.lr.ph.split.us110.i ]
  %i.pa = fadd nsz float %.06990.us111.i, %.sink.i ; 2 uses
  %indvars.iv.next.i1790 = add nuw nsw i64 %indvars.iv.i1788, 1 ; 2 uses
  %exitcond.not.i1791 = icmp eq i64 %indvars.iv.next.i1790, %wide.trip.count.i1786
  br i1 %exitcond.not.i1791, label %._crit_edge.us.i1792, label %.lr.ph.split.us110.i, !llvm.loop !120

.lr.ph.split.us.us.i:                             ; preds = %.preheader.us.i1787, %.lr.ph.split.us.us.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %.lr.ph.split.us.us.i ], [ 0, %.preheader.us.i1787 ] ; 2 uses
  %.06990.us.us.i = phi float [ %.1.us.us.i, %.lr.ph.split.us.us.i ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %.07089.us.us.i = phi float [ %i.pf, %.lr.ph.split.us.us.i ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %i.pb = phi <2 x float> [ %i.pj, %.lr.ph.split.us.us.i ], [ zeroinitializer, %.preheader.us.i1787 ]
  %gep202.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv160.i
  %i.pc = load float, ptr %gep202.i, align 4, !tbaa !80 ; 3 uses
  %i.pd = tail call nsz float @llvm.fabs.f32(float %i.pc) ; 3 uses
  %i.pe = fcmp nsz ogt float %.07089.us.us.i, %i.pd
  %i.pf = select nsz i1 %i.pe, float %.07089.us.us.i, float %i.pd ; 2 uses
  %i.pg = fmul nsz float %i.pc, %i.pc             ; 3 uses
  %i.ph = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pi = insertelement <2 x float> %i.ph, float %i.pg, i64 1
  %i.pj = fadd nsz <2 x float> %i.pb, %i.pi       ; 2 uses
  %i.pk = fcmp nsz ult float %i.pg, %i.ob
  %i.pl = fadd nsz float %.06990.us.us.i, 1.000000e+00
  %i.pm = fdiv nsz float %i.pg, %i.ob             ; 2 uses
  %i.pn = tail call nsz float @llvm.fmuladd.f32(float %i.pm, float %i.pm, float %.06990.us.us.i)
  %.1.us.us.i = select nsz i1 %i.pk, float %i.pn, float %i.pl ; 2 uses
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count.i1786
  br i1 %exitcond164.not.i, label %._crit_edge.us.i1792, label %.lr.ph.split.us.us.i, !llvm.loop !120

._crit_edge.us.i1792:                             ; preds = %bb.as, %.lr.ph.split.us.us.i
  %.us-phi95.us.i = phi float [ %i.pf, %.lr.ph.split.us.us.i ], [ %i.oq, %bb.as ] ; 2 uses
  %.us-phi96.us.i = phi float [ %.1.us.us.i, %.lr.ph.split.us.us.i ], [ %i.pa, %bb.as ] ; 2 uses
  %i.po = phi <2 x float> [ %i.pj, %.lr.ph.split.us.us.i ], [ %i.ou, %bb.as ] ; 2 uses
  %i.pp = extractelement <2 x float> %i.po, i64 1 ; 2 uses
  %i.pq = fcmp nsz ogt float %i.pp, %i.ob
  br i1 %i.pq, label %.lr.ph100.us.i, label %bb.at

.lr.ph100.us.i.new:                               ; preds = %.lr.ph100.us.i, %.lr.ph100.us.i.new
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i.1, %.lr.ph100.us.i.new ], [ 0, %.lr.ph100.us.i ] ; 3 uses
  %.07198.us.i = phi float [ %i.pz, %.lr.ph100.us.i.new ], [ 0.000000e+00, %.lr.ph100.us.i ]
  %niter2966 = phi i64 [ %niter2966.next.1, %.lr.ph100.us.i.new ], [ 0, %.lr.ph100.us.i ]
  %gep204.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i
  %i.pr = load float, ptr %gep204.i, align 4, !tbaa !80
  %i.ps = tail call nsz float @llvm.fabs.f32(float %i.pr)
  %i.pt = fsub nsz float %i.ps, %i.qs             ; 2 uses
  %i.pu = tail call nsz float @llvm.fmuladd.f32(float %i.pt, float %i.pt, float %.07198.us.i)
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i
  %gep204.i.1 = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.pw = load float, ptr %gep204.i.1, align 4, !tbaa !80
  %i.px = tail call nsz float @llvm.fabs.f32(float %i.pw)
  %i.py = fsub nsz float %i.px, %i.qs             ; 2 uses
  %i.pz = tail call nsz float @llvm.fmuladd.f32(float %i.py, float %i.py, float %i.pu) ; 3 uses
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %niter2966.next.1 = add i64 %niter2966, 2       ; 2 uses
  %niter2966.ncmp.1 = icmp eq i64 %niter2966.next.1, %unroll_iter2965
  br i1 %niter2966.ncmp.1, label %._crit_edge101.us.i.unr-lcssa, label %.lr.ph100.us.i.new, !llvm.loop !121

._crit_edge101.us.i.unr-lcssa:                    ; preds = %.lr.ph100.us.i.new
  br i1 %lcmp.mod2962.not, label %._crit_edge101.us.i, label %.epil.preheader2959

.epil.preheader2959:                              ; preds = %._crit_edge101.us.i.unr-lcssa, %.lr.ph100.us.i
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.lr.ph100.us.i ], [ %indvars.iv.next166.i.1, %._crit_edge101.us.i.unr-lcssa ]
  %.07198.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph100.us.i ], [ %i.pz, %._crit_edge101.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2964)
  %gep204.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i.epil.init
  %i.qa = load float, ptr %gep204.i.epil, align 4, !tbaa !80
  %i.qb = tail call nsz float @llvm.fabs.f32(float %i.qa)
  %i.qc = fsub nsz float %i.qb, %i.qs             ; 2 uses
  %i.qd = tail call nsz float @llvm.fmuladd.f32(float %i.qc, float %i.qc, float %.07198.us.i.epil.init)
  br label %._crit_edge101.us.i

._crit_edge101.us.i:                              ; preds = %._crit_edge101.us.i.unr-lcssa, %.epil.preheader2959
  %.lcssa2932 = phi float [ %i.pz, %._crit_edge101.us.i.unr-lcssa ], [ %i.qd, %.epil.preheader2959 ]
  %i.qe = fmul nsz float %i.oj, %.lcssa2932
  %i.qf = tail call nsz float @llvm.sqrt.f32(float %i.qe)
  %i.qg = fmul nsz float %i.og, %i.pp             ; 2 uses
  %i.qh = tail call nsz float @llvm.fmuladd.f32(float %i.qf, float 4.000000e+00, float %i.qs) ; 2 uses
  %i.qi = fcmp nsz ogt float %i.qh, %.us-phi95.us.i
  %.070..us.i = select nsz i1 %i.qi, float %.us-phi95.us.i, float %i.qh
  %i.qj = fdiv nsz float %i.qs, %.070..us.i
  %i.qk = tail call nsz float @llvm.sqrt.f32(float %i.qj)
  %i.ql = fmul nsz float %i.qg, %i.qk
  %i.qm = fcmp nsz olt float %.us-phi96.us.i, 5.000000e-01
  %i.qn = select nsz i1 %i.qm, float 5.000000e-01, float %.us-phi96.us.i
  %i.qo = fdiv nsz float %i.ql, %i.qn
  %i.qp = fadd nsz float %.079103.us.i, %i.qo
  %i.qq = fadd nsz float %.077104.us.i, %i.qg
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge101.us.i, %._crit_edge.us.i1792
  %.180.us.i = phi nsz float [ %i.qp, %._crit_edge101.us.i ], [ %.079103.us.i, %._crit_edge.us.i1792 ] ; 2 uses
  %.178.us.i = phi nsz float [ %i.qq, %._crit_edge101.us.i ], [ %.077104.us.i, %._crit_edge.us.i1792 ] ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count173.i
  br i1 %exitcond174.not.i, label %find_form_factor.exit, label %.preheader.us.i1787, !llvm.loop !122

.lr.ph100.us.i:                                   ; preds = %._crit_edge.us.i1792
  %i.qr = extractelement <2 x float> %i.po, i64 0
  %i.qs = fmul nsz float %i.og, %i.qr             ; 5 uses
  br i1 %i.ol, label %.epil.preheader2959, label %.lr.ph100.us.i.new
end_hunk_1
begin_hunk_2_@search_for_quantizers_twoloop:bb.a
  %i.ur = fadd nsz <2 x float> %i.um, %i.uq
  %i.us = fadd nsz <2 x float> %i.um, %i.ur
  %i.ut = fadd nsz <2 x float> %i.um, %i.us
  %i.uu = fadd nsz <2 x float> %i.um, %i.ut
  %i.uv = fadd nsz <2 x float> %i.um, %i.uu
  %i.uw = fadd nsz <2 x float> %i.um, %i.uv       ; 4 uses
  %niter2992.next.7 = add i32 %niter2992, 8       ; 2 uses
  %niter2992.ncmp.7 = icmp eq i32 %niter2992.next.7, %unroll_iter2991
  br i1 %niter2992.ncmp.7, label %find_form_factor.exit1846.loopexit.unr-lcssa, label %.preheader.us124.i1841, !llvm.loop !122

find_form_factor.exit1846.loopexit.unr-lcssa:     ; preds = %.preheader.us124.i1841
  %i.ux = extractelement <2 x float> %i.uw, i64 1
  %i.uy = extractelement <2 x float> %i.uw, i64 0
  %lcmp.mod2987.not = icmp eq i32 %xtraiter2983, 0
  br i1 %lcmp.mod2987.not, label %find_form_factor.exit1846, label %.preheader.us124.i1841.epil.preheader

.preheader.us124.i1841.epil.preheader:            ; preds = %find_form_factor.exit1846.loopexit.unr-lcssa, %.preheader.lr.ph.split.split.us.split.i1839
  %.epil.init2986 = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.split.us.split.i1839 ], [ %i.uw, %find_form_factor.exit1846.loopexit.unr-lcssa ]
  %lcmp.mod2990 = icmp ne i32 %xtraiter2983, 0
  tail call void @llvm.assume(i1 %lcmp.mod2990)
  br label %.preheader.us124.i1841.epil

.preheader.us124.i1841.epil:                      ; preds = %.preheader.us124.i1841.epil, %.preheader.us124.i1841.epil.preheader
  %i.uz = phi <2 x float> [ %.epil.init2986, %.preheader.us124.i1841.epil.preheader ], [ %i.va, %.preheader.us124.i1841.epil ]
  %epil.iter2984 = phi i32 [ 0, %.preheader.us124.i1841.epil.preheader ], [ %epil.iter2984.next, %.preheader.us124.i1841.epil ]
  %i.va = fadd nsz <2 x float> %i.um, %i.uz       ; 3 uses
  %epil.iter2984.next = add i32 %epil.iter2984, 1 ; 2 uses
  %epil.iter2984.cmp.not = icmp eq i32 %epil.iter2984.next, %xtraiter2983
  br i1 %epil.iter2984.cmp.not, label %find_form_factor.exit1846.loopexit.epilog-lcssa, label %.preheader.us124.i1841.epil, !llvm.loop !124

find_form_factor.exit1846.loopexit.epilog-lcssa:  ; preds = %.preheader.us124.i1841.epil
  %i.vb = extractelement <2 x float> %i.va, i64 1
  %i.vc = extractelement <2 x float> %i.va, i64 0
  br label %find_form_factor.exit1846

find_form_factor.exit1846:                        ; preds = %bb.au, %find_form_factor.exit1846.loopexit.epilog-lcssa, %find_form_factor.exit1846.loopexit.unr-lcssa, %find_form_factor.exit, %.preheader.lr.ph.split.i1838
  %.079.lcssa.i1826 = phi float [ 0.000000e+00, %find_form_factor.exit ], [ 0.000000e+00, %.preheader.lr.ph.split.i1838 ], [ %i.vb, %find_form_factor.exit1846.loopexit.epilog-lcssa ], [ %i.ux, %find_form_factor.exit1846.loopexit.unr-lcssa ], [ %.180.us.i1822, %bb.au ]
  %.077.lcssa.i1827 = phi float [ 0.000000e+00, %find_form_factor.exit ], [ 0.000000e+00, %.preheader.lr.ph.split.i1838 ], [ %i.vc, %find_form_factor.exit1846.loopexit.epilog-lcssa ], [ %i.uy, %find_form_factor.exit1846.loopexit.unr-lcssa ], [ %.178.us.i1823, %bb.au ] ; 2 uses
  %i.vd = fcmp nsz ogt float %.077.lcssa.i1827, 0.000000e+00
  %i.ve = fdiv nsz float %.079.lcssa.i1826, %.077.lcssa.i1827
  %.0.i1828 = select nsz i1 %i.vd, float %i.ve, float 1.000000e+00
  %i.vf = fmul nsz float %i.mx, %.0.i1828         ; 2 uses
  %i.vg = tail call nsz float @llvm.sqrt.f32(float %i.vf)
  %.11376 = select nsz i1 %.not1691, float %i.vg, float %i.vf ; 2 uses
  %i.vh = fcmp nsz olt float %.11376, 1.000000e+00
  %i.vi = select nsz i1 %i.vh, float %.11376, float 1.000000e+00 ; 2 uses
  %i.vj = fcmp nsz olt float %i.vi, 1.562500e-02
  %i.vk = select nsz i1 %i.vj, float 1.562500e-02, float %i.vi
  %i.vl = fmul nsz float %.014461908, %i.vk
  %i.vm = fmul nsz float %i.vl, %i.sj             ; 2 uses
  %i.vn = fcmp nsz ogt float %i.vm, 5.000000e-01
  %i.vo = select nsz i1 %i.vn, float %i.vm, float 5.000000e-01 ; 2 uses
  %i.vp = fcmp nsz ogt float %i.vo, 1.000000e+00
  %..i1779 = select nsz i1 %i.vp, float 1.000000e+00, float %i.vo
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.nu ; 2 uses
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !80
  %i.vs = fmul nsz float %i.vr, %..i1779
  store float %i.vs, ptr %i.vq, align 4, !tbaa !80
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge2452, %find_form_factor.exit1846
  %.pre-phi = phi i32 [ %.pre2488, %._crit_edge2452 ], [ %i.nt, %find_form_factor.exit1846 ]
  %i.vt = add nuw nsw i32 %.22091, %.pre-phi
  %indvars.iv.next2385 = add nuw nsw i64 %indvars.iv2384, 1 ; 2 uses
  %exitcond2388.not = icmp eq i64 %indvars.iv.next2385, %wide.trip.count2387
  br i1 %exitcond2388.not, label %._crit_edge, label %bb.ap, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.av, %.._crit_edge_crit_edge
  %.pre-phi2492 = phi i64 [ %.pre2491, %.._crit_edge_crit_edge ], [ %i.mz, %bb.av ]
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.pre-phi2492
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !73
  %i.vw = zext i8 %i.vv to i32
  %i.vx = add nuw nsw i32 %.413502092, %i.vw      ; 2 uses
  %i.vy = icmp slt i32 %i.vx, %i.kj
  br i1 %i.vy, label %bb.am, label %vector.body.preheader, !llvm.loop !126

vector.body.preheader:                            ; preds = %._crit_edge, %._crit_edge2079.thread2659
  %i.vz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x i32> splat (i32 255), ptr %i.c, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.vz, align 16, !tbaa !82
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x i32> splat (i32 255), ptr %i.wa, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wb, align 16, !tbaa !82
  %i.wc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x i32> splat (i32 255), ptr %i.wc, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wd, align 16, !tbaa !82
  %i.we = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store <4 x i32> splat (i32 255), ptr %i.we, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wf, align 16, !tbaa !82
  %i.wg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store <4 x i32> splat (i32 255), ptr %i.wg, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wh, align 16, !tbaa !82
  %i.wi = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.wj = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store <4 x i32> splat (i32 255), ptr %i.wi, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wj, align 16, !tbaa !82
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store <4 x i32> splat (i32 255), ptr %i.wk, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wl, align 16, !tbaa !82
  %i.wm = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store <4 x i32> splat (i32 255), ptr %i.wm, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wn, align 16, !tbaa !82
  %i.wo = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wp = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store <4 x i32> splat (i32 255), ptr %i.wo, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wp, align 16, !tbaa !82
  %i.wq = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store <4 x i32> splat (i32 255), ptr %i.wq, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wr, align 16, !tbaa !82
  %i.ws = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.wt = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store <4 x i32> splat (i32 255), ptr %i.ws, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wt, align 16, !tbaa !82
  %i.wu = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.wv = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store <4 x i32> splat (i32 255), ptr %i.wu, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wv, align 16, !tbaa !82
  %i.ww = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store <4 x i32> splat (i32 255), ptr %i.ww, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wx, align 16, !tbaa !82
  %i.wy = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.wz = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store <4 x i32> splat (i32 255), ptr %i.wy, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wz, align 16, !tbaa !82
  %i.xa = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.xb = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store <4 x i32> splat (i32 255), ptr %i.xa, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xb, align 16, !tbaa !82
  %i.xc = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.xd = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store <4 x i32> splat (i32 255), ptr %i.xc, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xd, align 16, !tbaa !82
  %i.xe = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 12 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 15 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %2, i64 6668 ; 22 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 13 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 10 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 42788 ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 42784 ; 8 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %2, i64 7308 ; 7 uses
  %invariant.op = add nsw i32 %.014541904, 1
  %i.xm = lshr exact i32 %.014221912, 1
  %i.xn = uitofp nneg i32 %.014221912 to float    ; 2 uses
  %i.xo = fmul nsz float %.01450.lcssa2632, 8.000000e+00 ; 2 uses
  %.reass = sub i32 %invariant.op, %i.dt
  %i.xp = sitofp nsz i32 %.reass to float
  %i.xq = add nsw i32 %.014221912, -1
  %i.xr = shl nuw nsw i32 %.014221912, 1          ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 5644 ; 10 uses
  %i.xu = udiv i32 %i.xr, 3
  %i.xv = fmul nnan nsz float %i.xn, 2.500000e-01
  %i.xw = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 1)
  %i.xx = uitofp nneg i32 %i.xw to float
  %i.xy = insertelement <2 x float> <float 1.250000e-02, float poison>, float %.01450.lcssa2632, i64 1
  br label %bb.aw

bb.aw:                                            ; preds = %vector.body.preheader, %._crit_edge2268
  %i.xz = phi i32 [ %i.bgw, %._crit_edge2268 ], [ %i.kj, %vector.body.preheader ] ; 3 uses
  %.01423 = phi i32 [ %i.bgx, %._crit_edge2268 ], [ 0, %vector.body.preheader ] ; 7 uses
  %.not1649 = icmp eq i32 %.01423, 0
  %i.ya = select i1 %.not1649, i32 32, i32 1
  br label %bb.ax

bb.ax:                                            ; preds = %select.unfold, %bb.aw
  %i.yb = phi i32 [ %i.xz, %bb.aw ], [ %i.adc, %select.unfold ] ; 3 uses
  %i.yc = phi i32 [ %i.xz, %bb.aw ], [ %i.add, %select.unfold ] ; 3 uses
  %i.yd = phi i32 [ %i.xz, %bb.aw ], [ %i.ade, %select.unfold ] ; 2 uses
  %.01367 = phi i32 [ %i.ya, %bb.aw ], [ %.11368, %select.unfold ] ; 4 uses
  %i.ye = icmp sgt i32 %i.yd, 0
  br i1 %i.ye, label %.lr.ph2119, label %._crit_edge2120

.lr.ph2119:                                       ; preds = %bb.ax
  %i.yf = load i32, ptr %i.xe, align 8, !tbaa !71 ; 3 uses
  %i.yg = icmp sgt i32 %i.yf, 0
  br i1 %i.yg, label %.lr.ph2119.split, label %._crit_edge2120

.lr.ph2119.split:                                 ; preds = %.lr.ph2119, %._crit_edge2112
  %i.yh = phi i32 [ %i.acu, %._crit_edge2112 ], [ %i.yb, %.lr.ph2119 ]
  %i.yi = phi i32 [ %i.acv, %._crit_edge2112 ], [ %i.yf, %.lr.ph2119 ] ; 2 uses
  %i.yj = phi i32 [ %i.acw, %._crit_edge2112 ], [ %i.yf, %.lr.ph2119 ] ; 2 uses
  %.513512117 = phi i32 [ %i.ada, %._crit_edge2112 ], [ 0, %.lr.ph2119 ] ; 5 uses
  %.013962116 = phi i32 [ %.11397.lcssa, %._crit_edge2112 ], [ -1, %.lr.ph2119 ] ; 2 uses
  %.014102115 = phi i32 [ %.11411.lcssa, %._crit_edge2112 ], [ 0, %.lr.ph2119 ] ; 2 uses
  %i.yk = icmp sgt i32 %i.yj, 0
  br i1 %i.yk, label %.lr.ph2111, label %.lr.ph2119.split.._crit_edge2112_crit_edge

.lr.ph2119.split.._crit_edge2112_crit_edge:       ; preds = %.lr.ph2119.split
  %.pre2493 = zext nneg i32 %.513512117 to i64
  br label %._crit_edge2112

.lr.ph2111:                                       ; preds = %.lr.ph2119.split
  %i.yl = shl nsw i32 %.513512117, 7
  %i.ym = shl nsw i32 %.513512117, 4              ; 2 uses
  %i.yn = zext nneg i32 %.513512117 to i64        ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.yn ; 2 uses
  %i.yp = add nsw i32 %i.ym, -1
  %i.yq = zext nneg i32 %i.ym to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph2111, %bb.bm
  %i.yr = phi i32 [ %i.yi, %.lr.ph2111 ], [ %i.acr, %bb.bm ] ; 2 uses
  %indvars.iv2396 = phi i64 [ 0, %.lr.ph2111 ], [ %indvars.iv.next2397, %bb.bm ] ; 8 uses
  %.32109 = phi i32 [ %i.yl, %.lr.ph2111 ], [ %.4, %bb.bm ] ; 2 uses
  %.113972108 = phi i32 [ %.013962116, %.lr.ph2111 ], [ %.21398, %bb.bm ] ; 4 uses
  %.114112107 = phi i32 [ %.014102115, %.lr.ph2111 ], [ %.31413, %bb.bm ] ; 3 uses
  %i.ys = zext nneg i32 %.32109 to i64            ; 2 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.ys
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.ys
  %i.yv = add nuw nsw i64 %indvars.iv2396, %i.yq  ; 6 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.yv
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !73
  %.not1687 = icmp eq i8 %i.yx, 0
  br i1 %.not1687, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.yv ; 3 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !82 ; 3 uses
  %i.za = icmp sgt i32 %i.yz, 217
  br i1 %i.za, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.zb = load ptr, ptr %i.xi, align 16, !tbaa !72
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 %indvars.iv2396
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !73  ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.yv
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !73
  %.not1689 = icmp eq i8 %i.zf, 0
  br i1 %.not1689, label %bb.bm, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i1847 = icmp eq i64 %indvars.iv2396, 0
  br i1 %.not.i1847, label %ff_pns_bits.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.zg = trunc nuw nsw i64 %indvars.iv2396 to i32
  %i.zh = add i32 %i.yp, %i.zg
  %i.zi = sext i32 %i.zh to i64                   ; 2 uses
  %i.zj = getelementptr inbounds i8, ptr %i.xf, i64 %i.zi
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !73
  %.not6.i = icmp eq i8 %i.zk, 0
  br i1 %.not6.i, label %ff_pns_bits.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.zl = getelementptr inbounds i8, ptr %i.xl, i64 %i.zi
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !73
  %.not7.i = icmp eq i8 %i.zm, 0
  %i.zn = select i1 %.not7.i, i32 9, i32 5
  br label %ff_pns_bits.exit

ff_pns_bits.exit:                                 ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.zo = phi i32 [ 9, %bb.bc ], [ 9, %bb.bb ], [ %i.zn, %bb.bd ]
  %i.zp = add nsw i32 %i.zo, %.114112107
  br label %bb.bm

bb.be:                                            ; preds = %bb.az
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.yv
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !80
  %i.zs = sub i32 304, %i.yz
  %i.zt = sext i32 %i.zs to i64
  %i.zu = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.zt
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !80
  %i.zw = tail call nsz float @llvm.fmuladd.f32(float %i.zr, float %i.zv, float 4.054000e-01)
  %i.zx = fptosi float %i.zw to i32               ; 2 uses
  %i.zy = icmp ugt i32 %i.zx, 13
  br i1 %i.zy, label %find_min_book.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.zz = zext nneg i32 %i.zx to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.zz
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !73
  %i.aac = zext i8 %i.aab to i32
  br label %find_min_book.exit

find_min_book.exit:                               ; preds = %bb.be, %bb.bf
  %.0.i1848 = phi i32 [ %i.aac, %bb.bf ], [ 11, %bb.be ] ; 4 uses
  %i.aad = load i8, ptr %i.yo, align 1, !tbaa !73 ; 2 uses
  %.not2290 = icmp eq i8 %i.aad, 0
  br i1 %.not2290, label %._crit_edge2101, label %.lr.ph2100

.lr.ph2100:                                       ; preds = %find_min_book.exit
  %i.aae = zext nneg i32 %.0.i1848 to i64
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.aae
  %i.aag = trunc nuw i32 %.0.i1848 to i8
  %.pre2454 = load i16, ptr %i.xk, align 16, !tbaa !85
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph2100, %quantize_band_cost_cached.exit
  %i.aah = phi i8 [ %i.aad, %.lr.ph2100 ], [ %i.abl, %quantize_band_cost_cached.exit ]
  %i.aai = phi i16 [ %.pre2454, %.lr.ph2100 ], [ %i.abn, %quantize_band_cost_cached.exit ] ; 2 uses
  %indvars.iv2393 = phi i64 [ 0, %.lr.ph2100 ], [ %indvars.iv.next2394, %quantize_band_cost_cached.exit ] ; 3 uses
  %.013582097 = phi i32 [ 0, %.lr.ph2100 ], [ %i.abs, %quantize_band_cost_cached.exit ]
  %i.aaj = phi <2 x float> [ zeroinitializer, %.lr.ph2100 ], [ %i.abv, %quantize_band_cost_cached.exit ]
  %i.aak = add nuw nsw i64 %indvars.iv2393, %i.yn
  %i.aal = shl nuw nsw i64 %indvars.iv2393, 7     ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %i.aal
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.aal
  %i.aao = load ptr, ptr %i.xi, align 16, !tbaa !72
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 %indvars.iv2396
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !73
  %i.aar = zext i8 %i.aaq to i32
  %i.aas = load i32, ptr %i.yy, align 4, !tbaa !82 ; 2 uses
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [2048 x i8], ptr %i.xj, i64 %i.aat
  %.idx2620 = shl nuw nsw i64 %i.aak, 8
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 %.idx2620
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aav, i64 %indvars.iv2396 ; 11 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 14 ; 2 uses
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !87
  %.not.i1849 = icmp eq i16 %i.aay, %i.aai
  br i1 %.not.i1849, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 12
  %i.aba = load i8, ptr %i.aaz, align 4, !tbaa !88
  %i.abb = sext i8 %i.aba to i32
  %.not34.i = icmp eq i32 %.0.i1848, %i.abb
  br i1 %.not34.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaw, i64 13
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !89
  %.not35.i = icmp eq i8 %i.abd, 0
  br i1 %.not35.i, label %.quantize_band_cost_cached.exit_crit_edge, label %bb.bj

.quantize_band_cost_cached.exit_crit_edge:        ; preds = %bb.bi
  %.pre2455 = load float, ptr %i.aaw, align 4, !tbaa !90
  br label %quantize_band_cost_cached.exit

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  %i.abg = load ptr, ptr %i.aaf, align 8, !tbaa !19
  %i.abh = tail call nsz float %i.abg(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.aam, ptr noundef null, ptr noundef nonnull %i.aan, i32 noundef range(i32 0, 256) %i.aar, i32 noundef %i.aas, i32 noundef range(i32 0, 256) %.0.i1848, float noundef 1.000000e+00, float noundef +inf, ptr noundef nonnull %i.abe, ptr noundef nonnull %i.abf) #13, !inline_history !2 ; 2 uses
  store float %i.abh, ptr %i.aaw, align 4, !tbaa !90
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaw, i64 12
  store i8 %i.aag, ptr %i.abi, align 4, !tbaa !88
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 13
  store i8 0, ptr %i.abj, align 1, !tbaa !89
  %i.abk = load i16, ptr %i.xk, align 16, !tbaa !85 ; 2 uses
  store i16 %i.abk, ptr %i.aax, align 2, !tbaa !87
  %.pre2456 = load i8, ptr %i.yo, align 1, !tbaa !73
  br label %quantize_band_cost_cached.exit

quantize_band_cost_cached.exit:                   ; preds = %.quantize_band_cost_cached.exit_crit_edge, %bb.bj
  %i.abl = phi i8 [ %i.aah, %.quantize_band_cost_cached.exit_crit_edge ], [ %.pre2456, %bb.bj ] ; 2 uses
  %i.abm = phi float [ %.pre2455, %.quantize_band_cost_cached.exit_crit_edge ], [ %i.abh, %bb.bj ]
  %i.abn = phi i16 [ %i.aai, %.quantize_band_cost_cached.exit_crit_edge ], [ %i.abk, %bb.bj ]
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !91
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !161
  %i.abs = add nsw i32 %i.abp, %.013582097        ; 2 uses
  %i.abt = insertelement <2 x float> poison, float %i.abm, i64 0
  %i.abu = insertelement <2 x float> %i.abt, float %i.abr, i64 1
  %i.abv = fadd nsz <2 x float> %i.aaj, %i.abu    ; 2 uses
  %indvars.iv.next2394 = add nuw nsw i64 %indvars.iv2393, 1 ; 2 uses
  %i.abw = zext i8 %i.abl to i64
  %i.abx = icmp samesign ult i64 %indvars.iv.next2394, %i.abw
  br i1 %i.abx, label %bb.bg, label %._crit_edge2101.loopexit, !llvm.loop !127

._crit_edge2101.loopexit:                         ; preds = %quantize_band_cost_cached.exit
  %.pre2457.pre = load i32, ptr %i.yy, align 4, !tbaa !82
  br label %._crit_edge2101

._crit_edge2101:                                  ; preds = %._crit_edge2101.loopexit, %find_min_book.exit
  %.pre2457 = phi i32 [ %i.yz, %find_min_book.exit ], [ %.pre2457.pre, %._crit_edge2101.loopexit ] ; 2 uses
  %.01358.lcssa = phi i32 [ 0, %find_min_book.exit ], [ %i.abs, %._crit_edge2101.loopexit ] ; 3 uses
  %i.aby = phi <2 x float> [ zeroinitializer, %find_min_book.exit ], [ %i.abv, %._crit_edge2101.loopexit ] ; 2 uses
  %i.abz = sitofp nsz i32 %.01358.lcssa to float
  %i.aca = extractelement <2 x float> %i.aby, i64 0
  %i.acb = fsub nsz float %i.aca, %i.abz
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yv
  store float %i.acb, ptr %i.acc, align 4, !tbaa !80
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.yv
  %i.ace = extractelement <2 x float> %i.aby, i64 1
  store float %i.ace, ptr %i.acd, align 4, !tbaa !80
  %.not1688 = icmp eq i32 %.113972108, -1
  br i1 %.not1688, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge2101
  %i.acf = sub nsw i32 %.pre2457, %.113972108     ; 2 uses
  %i.acg = icmp slt i32 %i.acf, -60
  %i.ach = tail call i32 @llvm.smin.i32(i32 %i.acf, i32 60)
  %..i1771 = add nsw i32 %i.ach, 60
  %.0.i1772 = select i1 %i.acg, i32 0, i32 %..i1771
  %i.aci = sext i32 %.0.i1772 to i64
  %i.acj = getelementptr inbounds i8, ptr @ff_aac_scalefactor_bits, i64 %i.aci
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !73
  %i.acl = zext i8 %i.ack to i32
  %i.acm = add nsw i32 %.01358.lcssa, %i.acl
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge2101
end_hunk_2
begin_hunk_3_@search_for_quantizers_twoloop:bb.a
pred.store.continue2863:                          ; preds = %pred.store.if2862, %pred.store.continue2861
  %i.adw = extractelement <4 x i1> %i.adp, i64 2
  br i1 %i.adw, label %pred.store.if2864, label %pred.store.continue2865

pred.store.if2864:                                ; preds = %pred.store.continue2863
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %index2856
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.adz = extractelement <4 x i32> %i.adm, i64 2
  store i32 %i.adz, ptr %i.ady, align 4, !tbaa !82
  br label %pred.store.continue2865

pred.store.continue2865:                          ; preds = %pred.store.if2864, %pred.store.continue2863
  %i.aea = extractelement <4 x i1> %i.adp, i64 3
  br i1 %i.aea, label %pred.store.if2866, label %pred.store.continue2867

pred.store.if2866:                                ; preds = %pred.store.continue2865
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %index2856
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 12
  %i.aed = extractelement <4 x i32> %i.adm, i64 3
  store i32 %i.aed, ptr %i.aec, align 4, !tbaa !82
  br label %pred.store.continue2867

pred.store.continue2867:                          ; preds = %pred.store.if2866, %pred.store.continue2865
  %i.aee = bitcast <4 x i1> %i.adp to i4
  %.not2875 = icmp eq i4 %i.aee, 0                ; 2 uses
  %i.aef = select i1 %.not2875, <4 x i1> %i.adh, <4 x i1> %i.adp ; 2 uses
  %i.aeg = select i1 %.not2875, <4 x i32> %vec.phi2857, <4 x i32> splat (i32 1) ; 2 uses
  %index.next2868 = add nuw i64 %index2856, 4     ; 2 uses
  %i.aeh = icmp eq i64 %index.next2868, 128
  br i1 %i.aeh, label %.loopexit1982.loopexit2768, label %vector.body2855, !llvm.loop !130

bb.bn:                                            ; preds = %._crit_edge2120
  %i.aei = icmp slt i32 %.01410.lcssa, %i.dt
  br i1 %i.aei, label %vector.ph2840, label %.thread1923

vector.ph2840:                                    ; preds = %bb.bn
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.01367, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body2841

vector.body2841:                                  ; preds = %pred.store.continue2849, %vector.ph2840
  %index2842 = phi i64 [ 0, %vector.ph2840 ], [ %index.next2850, %pred.store.continue2849 ] ; 6 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph2840 ], [ %i.afm, %pred.store.continue2849 ]
  %i.aej = phi <4 x i1> [ zeroinitializer, %vector.ph2840 ], [ %i.afl, %pred.store.continue2849 ]
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %index2842 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aek, align 4, !tbaa !82 ; 3 uses
  %i.ael = icmp sgt <4 x i32> %wide.load, splat (i32 140)
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index2842
  %wide.load2843 = load <4 x i32>, ptr %i.aem, align 16, !tbaa !82
  %i.aen = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.aeo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load2843, <4 x i32> %i.aen) ; 5 uses
  %i.aep = icmp ne <4 x i32> %i.aeo, %wide.load
  %i.aeq = select <4 x i1> %i.ael, <4 x i1> %i.aep, <4 x i1> zeroinitializer
  %i.aer = freeze <4 x i1> %i.aeq                 ; 6 uses
  %i.aes = extractelement <4 x i1> %i.aer, i64 0
  br i1 %i.aes, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body2841
  %i.aet = extractelement <4 x i32> %i.aeo, i64 0
  %i.aeu = tail call i32 @llvm.smax.i32(i32 %i.aet, i32 140)
  store i32 %i.aeu, ptr %i.aek, align 4, !tbaa !82
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body2841
  %i.aev = extractelement <4 x i1> %i.aer, i64 1
  br i1 %i.aev, label %pred.store.if2844, label %pred.store.continue2845

pred.store.if2844:                                ; preds = %pred.store.continue
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %index2842
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  %i.aey = extractelement <4 x i32> %i.aeo, i64 1
  %i.aez = tail call i32 @llvm.smax.i32(i32 %i.aey, i32 140)
  store i32 %i.aez, ptr %i.aex, align 4, !tbaa !82
  br label %pred.store.continue2845

pred.store.continue2845:                          ; preds = %pred.store.if2844, %pred.store.continue
  %i.afa = extractelement <4 x i1> %i.aer, i64 2
  br i1 %i.afa, label %pred.store.if2846, label %pred.store.continue2847

pred.store.if2846:                                ; preds = %pred.store.continue2845
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %index2842
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afd = extractelement <4 x i32> %i.aeo, i64 2
  %i.afe = tail call i32 @llvm.smax.i32(i32 %i.afd, i32 140)
  store i32 %i.afe, ptr %i.afc, align 4, !tbaa !82
  br label %pred.store.continue2847

pred.store.continue2847:                          ; preds = %pred.store.if2846, %pred.store.continue2845
  %i.aff = extractelement <4 x i1> %i.aer, i64 3
  br i1 %i.aff, label %pred.store.if2848, label %pred.store.continue2849

pred.store.if2848:                                ; preds = %pred.store.continue2847
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %index2842
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 12
  %i.afi = extractelement <4 x i32> %i.aeo, i64 3
  %i.afj = tail call i32 @llvm.smax.i32(i32 %i.afi, i32 140)
  store i32 %i.afj, ptr %i.afh, align 4, !tbaa !82
  br label %pred.store.continue2849

pred.store.continue2849:                          ; preds = %pred.store.if2848, %pred.store.continue2847
  %i.afk = bitcast <4 x i1> %i.aer to i4
  %.not2876 = icmp eq i4 %i.afk, 0                ; 2 uses
  %i.afl = select i1 %.not2876, <4 x i1> %i.aej, <4 x i1> %i.aer ; 2 uses
  %i.afm = select i1 %.not2876, <4 x i32> %vec.phi, <4 x i32> splat (i32 1) ; 2 uses
  %index.next2850 = add nuw i64 %index2842, 4     ; 2 uses
  %i.afn = icmp eq i64 %index.next2850, 128
  br i1 %i.afn, label %.loopexit1982.loopexit, label %vector.body2841, !llvm.loop !131

.thread1923:                                      ; preds = %bb.bn
  %i.afo = ashr i32 %.01367, 1                    ; 2 uses
  %.not16511926.not = icmp eq i32 %i.afo, 0
  br i1 %.not16511926.not, label %.thread1934, label %select.unfold

.loopexit1982.loopexit:                           ; preds = %pred.store.continue2849
  %i.afp = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.afm, <4 x i1> %i.afl, i32 0)
  br label %.loopexit1982

.loopexit1982.loopexit2768:                       ; preds = %pred.store.continue2867
  %i.afq = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.aeg, <4 x i1> %i.aef, i32 0)
  br label %.loopexit1982

.loopexit1982:                                    ; preds = %.loopexit1982.loopexit2768, %.loopexit1982.loopexit
  %.61366 = phi i32 [ %i.afp, %.loopexit1982.loopexit ], [ %i.afq, %.loopexit1982.loopexit2768 ]
  %i.afr = ashr i32 %.01367, 1                    ; 2 uses
  %.not1651 = icmp ne i32 %i.afr, 0
  %brmerge = or i1 %.not1651, %i.adf
  br i1 %brmerge, label %select.unfold, label %bb.bo

bb.bo:                                            ; preds = %.loopexit1982
  %i.afs = load i32, ptr %i.xg, align 4, !tbaa !82
  %i.aft = icmp slt i32 %i.afs, 217
  %i.afu = icmp ne i32 %.61366, 0
  %or.cond = select i1 %i.aft, i1 %i.afu, i1 false
  br i1 %or.cond, label %select.unfold, label %.thread1934

select.unfold:                                    ; preds = %.thread1923, %bb.bo, %.loopexit1982
  %.014581931 = phi i32 [ 1, %.loopexit1982 ], [ 1, %bb.bo ], [ 0, %.thread1923 ]
  %.11368 = phi i32 [ %i.afr, %.loopexit1982 ], [ 1, %bb.bo ], [ %i.afo, %.thread1923 ] ; 2 uses
  %.not1652 = icmp eq i32 %.11368, 0
  br i1 %.not1652, label %.thread1934, label %bb.ax, !llvm.loop !132

.thread1934:                                      ; preds = %.thread1923, %bb.bo, %select.unfold
  %.0145819311938 = phi i32 [ %.014581931, %select.unfold ], [ 0, %.thread1923 ], [ 1, %bb.bo ] ; 2 uses
  %i.afv = icmp slt i32 %.01410.lcssa, %i.dt
  %i.afw = zext i1 %i.afv to i32
  %i.afx = icmp samesign ugt i32 %.01423, %i.xm   ; 2 uses
  %i.afy = sub nsw i32 %.014221912, %.01423
  %i.afz = sitofp nsz i32 %i.afy to float
  %i.aga = fmul nnan nsz float %i.afz, 1.600000e+01
  %i.agb = fdiv nsz float %i.aga, %i.xn
  %i.agc = fadd nsz float %i.agb, 1.000000e+00    ; 2 uses
  %i.agd = icmp ne i32 %.0145819311938, 0
  br label %bb.bp

bb.bp:                                            ; preds = %.thread1934, %._crit_edge2162.thread
  %i.age = phi i1 [ %i.agd, %.thread1934 ], [ %i.avh, %._crit_edge2162.thread ]
  %.1145922012838 = phi i32 [ %.0145819311938, %.thread1934 ], [ %.41462, %._crit_edge2162.thread ]
  %.0143322022837 = phi i32 [ %i.afw, %.thread1934 ], [ %.31436, %._crit_edge2162.thread ] ; 6 uses
  %.4141422032836 = phi i32 [ %.01410.lcssa, %.thread1934 ], [ %.91419, %._crit_edge2162.thread ]
  %.0136922042835 = phi i32 [ 1, %.thread1934 ], [ %.51374, %._crit_edge2162.thread ]
  %.not16712834 = phi i1 [ true, %.thread1934 ], [ false, %._crit_edge2162.thread ]
  %i.agf = phi i32 [ %i.adc, %.thread1934 ], [ %i.avf, %._crit_edge2162.thread ] ; 3 uses
  %i.agg = phi i32 [ %i.adc, %.thread1934 ], [ %i.ave, %._crit_edge2162.thread ] ; 4 uses
  %i.agh = phi i32 [ %i.adc, %.thread1934 ], [ %i.avd, %._crit_edge2162.thread ] ; 4 uses
  %i.agi = phi i32 [ %i.adc, %.thread1934 ], [ %i.avc, %._crit_edge2162.thread ] ; 4 uses
  %i.agj = phi i32 [ %i.adc, %.thread1934 ], [ %i.avb, %._crit_edge2162.thread ] ; 4 uses
  %i.agk = phi i32 [ %i.adc, %.thread1934 ], [ %i.ava, %._crit_edge2162.thread ] ; 4 uses
  %i.agl = phi i32 [ %i.adc, %.thread1934 ], [ %i.auz, %._crit_edge2162.thread ] ; 4 uses
  %i.agm = phi i32 [ %i.adc, %.thread1934 ], [ %i.auy, %._crit_edge2162.thread ] ; 4 uses
  br i1 %i.age, label %.preheader1979, label %.loopexit1980

.preheader1979:                                   ; preds = %bb.bp
  %i.agn = icmp sgt i32 %i.agf, 0
  br i1 %i.agn, label %.lr.ph2149, label %.loopexit1980

.lr.ph2149:                                       ; preds = %.preheader1979
  %i.ago = load i32, ptr %i.xe, align 8, !tbaa !71 ; 3 uses
  %i.agp = icmp sgt i32 %i.ago, 0
  br i1 %i.agp, label %.lr.ph2149.split, label %.loopexit1980

.lr.ph2149.split:                                 ; preds = %.lr.ph2149, %._crit_edge2143
  %i.agq = phi i32 [ %i.ali, %._crit_edge2143 ], [ %i.agm, %.lr.ph2149 ]
  %i.agr = phi i32 [ %i.alj, %._crit_edge2143 ], [ %i.agl, %.lr.ph2149 ]
  %i.ags = phi i32 [ %i.alk, %._crit_edge2143 ], [ %i.agk, %.lr.ph2149 ]
  %i.agt = phi i32 [ %i.all, %._crit_edge2143 ], [ %i.agj, %.lr.ph2149 ]
  %i.agu = phi i32 [ %i.alm, %._crit_edge2143 ], [ %i.agi, %.lr.ph2149 ]
  %i.agv = phi i32 [ %i.aln, %._crit_edge2143 ], [ %i.agh, %.lr.ph2149 ]
  %i.agw = phi i32 [ %i.alo, %._crit_edge2143 ], [ %i.ago, %.lr.ph2149 ] ; 2 uses
  %i.agx = phi i32 [ %i.alp, %._crit_edge2143 ], [ %i.ago, %.lr.ph2149 ] ; 2 uses
  %.613522148 = phi i32 [ %i.alt, %._crit_edge2143 ], [ 0, %.lr.ph2149 ] ; 5 uses
  %.313992147 = phi i32 [ %.41400.lcssa, %._crit_edge2143 ], [ -1, %.lr.ph2149 ] ; 2 uses
  %.514152146 = phi i32 [ %.61416.lcssa, %._crit_edge2143 ], [ 0, %.lr.ph2149 ] ; 2 uses
  %i.agy = icmp sgt i32 %i.agx, 0
  br i1 %i.agy, label %.lr.ph2142, label %.lr.ph2149.split.._crit_edge2143_crit_edge

.lr.ph2149.split.._crit_edge2143_crit_edge:       ; preds = %.lr.ph2149.split
  %.pre2495 = zext nneg i32 %.613522148 to i64
  br label %._crit_edge2143

.lr.ph2142:                                       ; preds = %.lr.ph2149.split
  %i.agz = shl nsw i32 %.613522148, 7
  %i.aha = shl nsw i32 %.613522148, 4             ; 2 uses
  %i.ahb = zext nneg i32 %.613522148 to i64       ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.ahb ; 2 uses
  %i.ahd = add nsw i32 %i.aha, -1
  %i.ahe = zext nneg i32 %i.aha to i64
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph2142, %bb.ce
  %i.ahf = phi i32 [ %i.agw, %.lr.ph2142 ], [ %i.alf, %bb.ce ] ; 2 uses
  %indvars.iv2410 = phi i64 [ 0, %.lr.ph2142 ], [ %indvars.iv.next2411, %bb.ce ] ; 8 uses
  %.52140 = phi i32 [ %i.agz, %.lr.ph2142 ], [ %.6, %bb.ce ] ; 2 uses
  %.414002139 = phi i32 [ %.313992147, %.lr.ph2142 ], [ %.51401, %bb.ce ] ; 4 uses
  %.614162138 = phi i32 [ %.514152146, %.lr.ph2142 ], [ %.81418, %bb.ce ] ; 3 uses
  %i.ahg = zext nneg i32 %.52140 to i64           ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.ahg
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.ahg
  %i.ahj = add nuw nsw i64 %indvars.iv2410, %i.ahe ; 6 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !73
  %.not1683 = icmp eq i8 %i.ahl, 0
  br i1 %.not1683, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.ahj ; 3 uses
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !82 ; 3 uses
  %i.aho = icmp sgt i32 %i.ahn, 217
  br i1 %i.aho, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ahp = load ptr, ptr %i.xi, align 16, !tbaa !72
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 %indvars.iv2410
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !73 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.ahj
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !73
  %.not1685 = icmp eq i8 %i.aht, 0
  br i1 %.not1685, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not.i1850 = icmp eq i64 %indvars.iv2410, 0
  br i1 %.not.i1850, label %ff_pns_bits.exit1853, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ahu = trunc nuw nsw i64 %indvars.iv2410 to i32
  %i.ahv = add i32 %i.ahd, %i.ahu
  %i.ahw = sext i32 %i.ahv to i64                 ; 2 uses
  %i.ahx = getelementptr inbounds i8, ptr %i.xf, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !73
  %.not6.i1851 = icmp eq i8 %i.ahy, 0
  br i1 %.not6.i1851, label %ff_pns_bits.exit1853, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ahz = getelementptr inbounds i8, ptr %i.xl, i64 %i.ahw
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !73
  %.not7.i1852 = icmp eq i8 %i.aia, 0
  %i.aib = select i1 %.not7.i1852, i32 9, i32 5
  br label %ff_pns_bits.exit1853

ff_pns_bits.exit1853:                             ; preds = %bb.bt, %bb.bu, %bb.bv
  %i.aic = phi i32 [ 9, %bb.bu ], [ 9, %bb.bt ], [ %i.aib, %bb.bv ]
  %i.aid = add nsw i32 %i.aic, %.614162138
  br label %bb.ce

bb.bw:                                            ; preds = %bb.br
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ahj
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !80
  %i.aig = sub i32 304, %i.ahn
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.aih
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !80
  %i.aik = tail call nsz float @llvm.fmuladd.f32(float %i.aif, float %i.aij, float 4.054000e-01)
  %i.ail = fptosi float %i.aik to i32             ; 2 uses
  %i.aim = icmp ugt i32 %i.ail, 13
  br i1 %i.aim, label %find_min_book.exit1855, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ain = zext nneg i32 %i.ail to i64
  %i.aio = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !73
  %i.aiq = zext i8 %i.aip to i32
  br label %find_min_book.exit1855

find_min_book.exit1855:                           ; preds = %bb.bw, %bb.bx
  %.0.i1854 = phi i32 [ %i.aiq, %bb.bx ], [ 11, %bb.bw ] ; 4 uses
  %i.air = load i8, ptr %i.ahc, align 1, !tbaa !73 ; 2 uses
  %.not2291 = icmp eq i8 %i.air, 0
  br i1 %.not2291, label %._crit_edge2132, label %.lr.ph2131

.lr.ph2131:                                       ; preds = %find_min_book.exit1855
  %i.ais = zext nneg i32 %.0.i1854 to i64
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.ais
  %i.aiu = trunc nuw i32 %.0.i1854 to i8
  %.pre2460 = load i16, ptr %i.xk, align 16, !tbaa !85
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph2131, %quantize_band_cost_cached.exit1859
  %i.aiv = phi i8 [ %i.air, %.lr.ph2131 ], [ %i.ajz, %quantize_band_cost_cached.exit1859 ]
  %i.aiw = phi i16 [ %.pre2460, %.lr.ph2131 ], [ %i.akb, %quantize_band_cost_cached.exit1859 ] ; 2 uses
  %indvars.iv2407 = phi i64 [ 0, %.lr.ph2131 ], [ %indvars.iv.next2408, %quantize_band_cost_cached.exit1859 ] ; 3 uses
  %.013442128 = phi i32 [ 0, %.lr.ph2131 ], [ %i.akg, %quantize_band_cost_cached.exit1859 ]
  %i.aix = phi <2 x float> [ zeroinitializer, %.lr.ph2131 ], [ %i.akj, %quantize_band_cost_cached.exit1859 ]
  %i.aiy = add nuw nsw i64 %indvars.iv2407, %i.ahb
  %i.aiz = shl nuw nsw i64 %indvars.iv2407, 7     ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.aiz
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.aiz
  %i.ajc = load ptr, ptr %i.xi, align 16, !tbaa !72
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %indvars.iv2410
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !73
  %i.ajf = zext i8 %i.aje to i32
  %i.ajg = load i32, ptr %i.ahm, align 4, !tbaa !82 ; 2 uses
  %i.ajh = sext i32 %i.ajg to i64
  %i.aji = getelementptr inbounds [2048 x i8], ptr %i.xj, i64 %i.ajh
  %.idx2621 = shl nuw nsw i64 %i.aiy, 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 %.idx2621
  %i.ajk = getelementptr inbounds nuw [16 x i8], ptr %i.ajj, i64 %indvars.iv2410 ; 11 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 14 ; 2 uses
  %i.ajm = load i16, ptr %i.ajl, align 2, !tbaa !87
  %.not.i1856 = icmp eq i16 %i.ajm, %i.aiw
  br i1 %.not.i1856, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 12
  %i.ajo = load i8, ptr %i.ajn, align 4, !tbaa !88
  %i.ajp = sext i8 %i.ajo to i32
  %.not34.i1857 = icmp eq i32 %.0.i1854, %i.ajp
  br i1 %.not34.i1857, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajk, i64 13
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !89
  %.not35.i1858 = icmp eq i8 %i.ajr, 0
  br i1 %.not35.i1858, label %.quantize_band_cost_cached.exit1859_crit_edge, label %bb.cb

.quantize_band_cost_cached.exit1859_crit_edge:    ; preds = %bb.ca
  %.pre2461 = load float, ptr %i.ajk, align 4, !tbaa !90
  br label %quantize_band_cost_cached.exit1859

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  %i.aju = load ptr, ptr %i.ait, align 8, !tbaa !19
  %i.ajv = tail call nsz float %i.aju(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.aja, ptr noundef null, ptr noundef nonnull %i.ajb, i32 noundef range(i32 0, 256) %i.ajf, i32 noundef %i.ajg, i32 noundef range(i32 0, 256) %.0.i1854, float noundef 1.000000e+00, float noundef +inf, ptr noundef nonnull %i.ajs, ptr noundef nonnull %i.ajt) #13, !inline_history !2 ; 2 uses
  store float %i.ajv, ptr %i.ajk, align 4, !tbaa !90
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajk, i64 12
  store i8 %i.aiu, ptr %i.ajw, align 4, !tbaa !88
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajk, i64 13
  store i8 0, ptr %i.ajx, align 1, !tbaa !89
  %i.ajy = load i16, ptr %i.xk, align 16, !tbaa !85 ; 2 uses
  store i16 %i.ajy, ptr %i.ajl, align 2, !tbaa !87
  %.pre2462 = load i8, ptr %i.ahc, align 1, !tbaa !73
  br label %quantize_band_cost_cached.exit1859

quantize_band_cost_cached.exit1859:               ; preds = %.quantize_band_cost_cached.exit1859_crit_edge, %bb.cb
  %i.ajz = phi i8 [ %i.aiv, %.quantize_band_cost_cached.exit1859_crit_edge ], [ %.pre2462, %bb.cb ] ; 2 uses
  %i.aka = phi float [ %.pre2461, %.quantize_band_cost_cached.exit1859_crit_edge ], [ %i.ajv, %bb.cb ]
  %i.akb = phi i16 [ %i.aiw, %.quantize_band_cost_cached.exit1859_crit_edge ], [ %i.ajy, %bb.cb ]
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !91
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !161
  %i.akg = add nsw i32 %i.akd, %.013442128        ; 2 uses
  %i.akh = insertelement <2 x float> poison, float %i.aka, i64 0
  %i.aki = insertelement <2 x float> %i.akh, float %i.akf, i64 1
  %i.akj = fadd nsz <2 x float> %i.aix, %i.aki    ; 2 uses
  %indvars.iv.next2408 = add nuw nsw i64 %indvars.iv2407, 1 ; 2 uses
  %i.akk = zext i8 %i.ajz to i64
  %i.akl = icmp samesign ult i64 %indvars.iv.next2408, %i.akk
  br i1 %i.akl, label %bb.by, label %._crit_edge2132.loopexit, !llvm.loop !133

._crit_edge2132.loopexit:                         ; preds = %quantize_band_cost_cached.exit1859
  %.pre2463.pre = load i32, ptr %i.ahm, align 4, !tbaa !82
  br label %._crit_edge2132

._crit_edge2132:                                  ; preds = %._crit_edge2132.loopexit, %find_min_book.exit1855
  %.pre2463 = phi i32 [ %i.ahn, %find_min_book.exit1855 ], [ %.pre2463.pre, %._crit_edge2132.loopexit ] ; 2 uses
  %.01344.lcssa = phi i32 [ 0, %find_min_book.exit1855 ], [ %i.akg, %._crit_edge2132.loopexit ] ; 3 uses
  %i.akm = phi <2 x float> [ zeroinitializer, %find_min_book.exit1855 ], [ %i.akj, %._crit_edge2132.loopexit ] ; 2 uses
  %i.akn = sitofp nsz i32 %.01344.lcssa to float
  %i.ako = extractelement <2 x float> %i.akm, i64 0
  %i.akp = fsub nsz float %i.ako, %i.akn
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ahj
  store float %i.akp, ptr %i.akq, align 4, !tbaa !80
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ahj
  %i.aks = extractelement <2 x float> %i.akm, i64 1
  store float %i.aks, ptr %i.akr, align 4, !tbaa !80
  %.not1684 = icmp eq i32 %.414002139, -1
  br i1 %.not1684, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge2132
  %i.akt = sub nsw i32 %.pre2463, %.414002139     ; 2 uses
  %i.aku = icmp slt i32 %i.akt, -60
  %i.akv = tail call i32 @llvm.smin.i32(i32 %i.akt, i32 60)
  %..i1769 = add nsw i32 %i.akv, 60
  %.0.i1770 = select i1 %i.aku, i32 0, i32 %..i1769
  %i.akw = sext i32 %.0.i1770 to i64
  %i.akx = getelementptr inbounds i8, ptr @ff_aac_scalefactor_bits, i64 %i.akw
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !73
  %i.akz = zext i8 %i.aky to i32
  %i.ala = add nsw i32 %.01344.lcssa, %i.akz
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge2132
  %.11345 = phi i32 [ %i.ala, %bb.cc ], [ %.01344.lcssa, %._crit_edge2132 ]
  %i.alb = add nsw i32 %.11345, %.614162138
  %i.alc = load ptr, ptr %i.xi, align 16, !tbaa !72
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 %indvars.iv2410
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !73
  %.pre2464 = load i32, ptr %i.xe, align 8, !tbaa !71
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bs, %ff_pns_bits.exit1853, %bb.cd
  %i.alf = phi i32 [ %.pre2464, %bb.cd ], [ %i.ahf, %ff_pns_bits.exit1853 ], [ %i.ahf, %bb.bs ] ; 4 uses
  %.81418 = phi i32 [ %i.alb, %bb.cd ], [ %i.aid, %ff_pns_bits.exit1853 ], [ %.614162138, %bb.bs ] ; 2 uses
  %.51401 = phi i32 [ %.pre2463, %bb.cd ], [ %.414002139, %ff_pns_bits.exit1853 ], [ %.414002139, %bb.bs ] ; 2 uses
  %.pn.in = phi i8 [ %i.ale, %bb.cd ], [ %i.ahr, %ff_pns_bits.exit1853 ], [ %i.ahr, %bb.bs ]
  %.pn = zext i8 %.pn.in to i32
  %.6 = add nuw nsw i32 %.52140, %.pn
  %indvars.iv.next2411 = add nuw nsw i64 %indvars.iv2410, 1 ; 2 uses
  %i.alg = sext i32 %i.alf to i64
  %i.alh = icmp slt i64 %indvars.iv.next2411, %i.alg
  br i1 %i.alh, label %bb.bq, label %._crit_edge2143.loopexit, !llvm.loop !134

._crit_edge2143.loopexit:                         ; preds = %bb.ce
  %.pre2465 = load i32, ptr %i.cg, align 4, !tbaa !69 ; 6 uses
  br label %._crit_edge2143

._crit_edge2143:                                  ; preds = %.lr.ph2149.split.._crit_edge2143_crit_edge, %._crit_edge2143.loopexit
  %.pre-phi2496 = phi i64 [ %.pre2495, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %i.ahb, %._crit_edge2143.loopexit ]
  %i.ali = phi i32 [ %i.agq, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.pre2465, %._crit_edge2143.loopexit ] ; 2 uses
  %i.alj = phi i32 [ %i.agr, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.pre2465, %._crit_edge2143.loopexit ] ; 2 uses
  %i.alk = phi i32 [ %i.ags, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.pre2465, %._crit_edge2143.loopexit ] ; 2 uses
  %i.all = phi i32 [ %i.agt, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.pre2465, %._crit_edge2143.loopexit ] ; 2 uses
  %i.alm = phi i32 [ %i.agu, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.pre2465, %._crit_edge2143.loopexit ] ; 2 uses
  %i.aln = phi i32 [ %i.agv, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.pre2465, %._crit_edge2143.loopexit ] ; 5 uses
  %i.alo = phi i32 [ %i.agw, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %i.alf, %._crit_edge2143.loopexit ]
  %i.alp = phi i32 [ %i.agx, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %i.alf, %._crit_edge2143.loopexit ]
  %.61416.lcssa = phi i32 [ %.514152146, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.81418, %._crit_edge2143.loopexit ] ; 2 uses
  %.41400.lcssa = phi i32 [ %.313992147, %.lr.ph2149.split.._crit_edge2143_crit_edge ], [ %.51401, %._crit_edge2143.loopexit ]
  %i.alq = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.pre-phi2496
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !73
  %i.als = zext i8 %i.alr to i32
  %i.alt = add nuw nsw i32 %.613522148, %i.als    ; 2 uses
  %i.alu = icmp slt i32 %i.alt, %i.aln
  br i1 %i.alu, label %.lr.ph2149.split, label %.loopexit1980, !llvm.loop !135

.loopexit1980:                                    ; preds = %._crit_edge2143, %.lr.ph2149, %.preheader1979, %bb.bp
  %i.alv = phi i32 [ %i.agm, %bb.bp ], [ %i.agm, %.preheader1979 ], [ %i.agm, %.lr.ph2149 ], [ %i.ali, %._crit_edge2143 ] ; 6 uses
  %i.alw = phi i32 [ %i.agl, %bb.bp ], [ %i.agl, %.preheader1979 ], [ %i.agl, %.lr.ph2149 ], [ %i.alj, %._crit_edge2143 ] ; 6 uses
  %i.alx = phi i32 [ %i.agk, %bb.bp ], [ %i.agk, %.preheader1979 ], [ %i.agk, %.lr.ph2149 ], [ %i.alk, %._crit_edge2143 ] ; 6 uses
  %i.aly = phi i32 [ %i.agj, %bb.bp ], [ %i.agj, %.preheader1979 ], [ %i.agj, %.lr.ph2149 ], [ %i.all, %._crit_edge2143 ] ; 6 uses
  %i.alz = phi i32 [ %i.agi, %bb.bp ], [ %i.agi, %.preheader1979 ], [ %i.agi, %.lr.ph2149 ], [ %i.alm, %._crit_edge2143 ] ; 20 uses
  %i.ama = phi i32 [ %i.agh, %bb.bp ], [ %i.agh, %.preheader1979 ], [ %i.agh, %.lr.ph2149 ], [ %i.aln, %._crit_edge2143 ]
  %i.amb = phi i32 [ %i.agg, %bb.bp ], [ %i.agg, %.preheader1979 ], [ %i.agg, %.lr.ph2149 ], [ %i.aln, %._crit_edge2143 ]
  %i.amc = phi i32 [ %i.agf, %bb.bp ], [ %i.agf, %.preheader1979 ], [ %i.agg, %.lr.ph2149 ], [ %i.aln, %._crit_edge2143 ]
  %.91419 = phi i32 [ %.4141422032836, %bb.bp ], [ 0, %.preheader1979 ], [ 0, %.lr.ph2149 ], [ %.61416.lcssa, %._crit_edge2143 ] ; 7 uses
  br i1 %.not16712834, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %.loopexit1980
  %i.amd = load i32, ptr %i.ck, align 4, !tbaa !158
  %.not1672 = icmp ne i32 %i.amd, 0
  %or.cond1738 = select i1 %.not1672, i1 %i.afx, i1 false
  %i.ame = icmp sgt i32 %.91419, %i.dt
  %or.cond1739 = select i1 %or.cond1738, i1 %i.ame, i1 false
  br i1 %or.cond1739, label %bb.cg, label %._crit_edge2162.thread

bb.cg:                                            ; preds = %bb.cf
  %i.amf = icmp sgt i32 %i.alz, 0
  br i1 %i.amf, label %.preheader1975.lr.ph, label %._crit_edge2162.thread

.preheader1975.lr.ph:                             ; preds = %bb.cg
  %i.amg = load i32, ptr %i.xe, align 8, !tbaa !71 ; 2 uses
  %i.amh = icmp sgt i32 %i.amg, 0
  br i1 %i.amh, label %.preheader1975.us.preheader, label %._crit_edge2162.thread

.preheader1975.us.preheader:                      ; preds = %.preheader1975.lr.ph
  %wide.trip.count2416 = zext nneg i32 %i.amg to i64
  br label %.preheader1975.us

.preheader1975.us:                                ; preds = %.preheader1975.us.preheader, %._crit_edge2156.us
  %.713532160.us = phi i32 [ %i.anb, %._crit_edge2156.us ], [ 0, %.preheader1975.us.preheader ] ; 3 uses
  %.113702159.us = phi i32 [ %.31372.us, %._crit_edge2156.us ], [ 0, %.preheader1975.us.preheader ]
  %i.ami = shl nuw nsw i32 %.713532160.us, 4
  %i.amj = zext nneg i32 %i.ami to i64
  br label %bb.ch

bb.ch:                                            ; preds = %.preheader1975.us, %bb.ck
  %indvars.iv2413 = phi i64 [ 0, %.preheader1975.us ], [ %indvars.iv.next2414, %bb.ck ] ; 2 uses
  %.213712153.us = phi i32 [ %.113702159.us, %.preheader1975.us ], [ %.31372.us, %bb.ck ] ; 3 uses
  %i.amk = add nuw nsw i64 %indvars.iv2413, %i.amj ; 4 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.amk
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !73
  %.not1682.us = icmp eq i8 %i.amm, 0
  br i1 %.not1682.us, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.amk
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !82
  %i.amp = icmp sgt i32 %i.amo, 140
  br i1 %i.amp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.amk
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !80
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.amk
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !80
  %i.amu = fmul nsz float %i.agc, %i.amt
  %i.amv = fcmp nsz ogt float %i.amr, %i.amu
  %i.amw = zext i1 %i.amv to i32
  %spec.select2763 = add nsw i32 %.213712153.us, %i.amw
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %.31372.us = phi i32 [ %.213712153.us, %bb.ch ], [ %.213712153.us, %bb.ci ], [ %spec.select2763, %bb.cj ] ; 4 uses
  %indvars.iv.next2414 = add nuw nsw i64 %indvars.iv2413, 1 ; 2 uses
  %exitcond2417.not = icmp eq i64 %indvars.iv.next2414, %wide.trip.count2416
  br i1 %exitcond2417.not, label %._crit_edge2156.us, label %bb.ch, !llvm.loop !136

._crit_edge2156.us:                               ; preds = %bb.ck
  %i.amx = zext nneg i32 %.713532160.us to i64
  %i.amy = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.amx
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !73
  %i.ana = zext i8 %i.amz to i32
  %i.anb = add nuw nsw i32 %.713532160.us, %i.ana ; 2 uses
  %i.anc = icmp slt i32 %i.anb, %i.alz
  br i1 %i.anc, label %.preheader1975.us, label %._crit_edge2162, !llvm.loop !137

._crit_edge2162:                                  ; preds = %._crit_edge2156.us
  %.not1673 = icmp eq i32 %.31372.us, 0
  br i1 %.not1673, label %._crit_edge2162.thread, label %.preheader1978

.preheader1978:                                   ; preds = %._crit_edge2162
  %.pre2466 = load i32, ptr %i.xe, align 8, !tbaa !71 ; 5 uses
  %i.and = icmp sgt i32 %.pre2466, 0
  br i1 %i.and, label %.preheader1974.lr.ph.split.us, label %._crit_edge2181

.preheader1974.lr.ph.split.us:                    ; preds = %.preheader1978
  %i.ane = load ptr, ptr %i.xi, align 16, !tbaa !72
  %wide.trip.count2421 = zext nneg i32 %.pre2466 to i64
  br label %.preheader1974.us

.preheader1974.us:                                ; preds = %._crit_edge2173.us, %.preheader1974.lr.ph.split.us
  %.013232180.us = phi i32 [ 0, %.preheader1974.lr.ph.split.us ], [ %.21325.us, %._crit_edge2173.us ]
  %.013262179.us = phi float [ %.01450.lcssa2632, %.preheader1974.lr.ph.split.us ], [ %.21328.us, %._crit_edge2173.us ]
  %.013292178.us = phi float [ %.01447.lcssa2634, %.preheader1974.lr.ph.split.us ], [ %.21331.us, %._crit_edge2173.us ]
  %.813542177.us = phi i32 [ 0, %.preheader1974.lr.ph.split.us ], [ %i.aoa, %._crit_edge2173.us ] ; 3 uses
  %i.anf = shl nsw i32 %.813542177.us, 4
  %i.ang = zext nneg i32 %i.anf to i64
  br label %bb.cl

bb.cl:                                            ; preds = %.preheader1974.us, %bb.cp
  %indvars.iv2418 = phi i64 [ 0, %.preheader1974.us ], [ %indvars.iv.next2419, %bb.cp ] ; 3 uses
  %.82171.us = phi i32 [ 0, %.preheader1974.us ], [ %i.anv, %bb.cp ] ; 2 uses
  %.113242170.us = phi i32 [ %.013232180.us, %.preheader1974.us ], [ %.21325.us, %bb.cp ] ; 4 uses
  %.113272169.us = phi float [ %.013262179.us, %.preheader1974.us ], [ %.21328.us, %bb.cp ] ; 5 uses
  %.113302168.us = phi float [ %.013292178.us, %.preheader1974.us ], [ %.21331.us, %bb.cp ] ; 5 uses
  %.not1679.us = icmp slt i32 %.82171.us, %i.dr
  br i1 %.not1679.us, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.anh = add nuw nsw i64 %indvars.iv2418, %i.ang ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.anh
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !73
  %.not1680.us = icmp eq i8 %i.anj, 0
  br i1 %.not1680.us, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ank = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.anh
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !73
  %.not1681.us = icmp eq i8 %i.anl, 0
  br i1 %.not1681.us, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.anh
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !80 ; 4 uses
  %i.ano = fcmp nsz ogt float %.113302168.us, %i.ann
  %..11330.us = select nsz i1 %i.ano, float %i.ann, float %.113302168.us
  %i.anp = fcmp nsz ogt float %.113272169.us, %i.ann
  %i.anq = select nsz i1 %i.anp, float %.113272169.us, float %i.ann
  %i.anr = add nsw i32 %.113242170.us, 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %.21331.us = phi nsz float [ %.113302168.us, %bb.cm ], [ %..11330.us, %bb.co ], [ %.113302168.us, %bb.cn ], [ %.113302168.us, %bb.cl ] ; 3 uses
  %.21328.us = phi nsz float [ %.113272169.us, %bb.cm ], [ %i.anq, %bb.co ], [ %.113272169.us, %bb.cn ], [ %.113272169.us, %bb.cl ] ; 3 uses
  %.21325.us = phi i32 [ %.113242170.us, %bb.cm ], [ %i.anr, %bb.co ], [ %.113242170.us, %bb.cn ], [ %.113242170.us, %bb.cl ] ; 3 uses
  %indvars.iv.next2419 = add nuw nsw i64 %indvars.iv2418, 1 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ane, i64 %indvars.iv2418
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !73
  %i.anu = zext i8 %i.ant to i32
  %i.anv = add nuw nsw i32 %.82171.us, %i.anu
  %exitcond2422.not = icmp eq i64 %indvars.iv.next2419, %wide.trip.count2421
  br i1 %exitcond2422.not, label %._crit_edge2173.us, label %bb.cl, !llvm.loop !138

._crit_edge2173.us:                               ; preds = %bb.cp
  %i.anw = zext nneg i32 %.813542177.us to i64
  %i.anx = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.anw
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !73
  %i.anz = zext i8 %i.any to i32
  %i.aoa = add nuw nsw i32 %.813542177.us, %i.anz ; 2 uses
  %i.aob = icmp slt i32 %i.aoa, %i.alz
  br i1 %i.aob, label %.preheader1974.us, label %._crit_edge2181, !llvm.loop !139

._crit_edge2181:                                  ; preds = %._crit_edge2173.us, %.preheader1978
  %.01329.lcssa = phi float [ %.01447.lcssa2634, %.preheader1978 ], [ %.21331.us, %._crit_edge2173.us ] ; 2 uses
  %.01326.lcssa = phi float [ %.01450.lcssa2632, %.preheader1978 ], [ %.21328.us, %._crit_edge2173.us ]
  %.01323.lcssa = phi i32 [ 0, %.preheader1978 ], [ %.21325.us, %._crit_edge2173.us ] ; 3 uses
  %i.aoc = fsub nsz float %.01326.lcssa, %.01329.lcssa
  %i.aod = sub nsw i32 %.014541904, %.91419
  %i.aoe = sitofp nsz i32 %i.aod to float
  %i.aof = sub nsw i32 %.91419, %i.dt
  %i.aog = sitofp nsz i32 %i.aof to float
  %i.aoh = fmul nsz float %.01447.lcssa2634, %i.aog
  %i.aoi = insertelement <2 x float> poison, float %i.aoc, i64 0
  %i.aoj = insertelement <2 x float> %i.aoi, float %i.aoe, i64 1
  %i.aok = insertelement <2 x float> poison, float %.01329.lcssa, i64 0
  %i.aol = insertelement <2 x float> %i.aok, float %i.aoh, i64 1
  %i.aom = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aoj, <2 x float> %i.xy, <2 x float> %i.aol) ; 2 uses
  %i.aon = extractelement <2 x float> %i.aom, i64 0 ; 2 uses
  %i.aoo = fcmp nsz ogt float %i.xo, %i.aon
  %i.aop = select nsz i1 %i.aoo, float %i.aon, float %i.xo ; 2 uses
  %i.aoq = extractelement <2 x float> %i.aom, i64 1
  %i.aor = fdiv nsz float %i.aoq, %i.xp           ; 2 uses
  %i.aos = fcmp nsz ogt float %i.aop, %i.aor
  %.1741 = select nsz i1 %i.aos, float %i.aor, float %i.aop ; 2 uses
  %i.aot = mul nsw i32 %.01323.lcssa, %.01423
  %i.aou = add i32 %i.xq, %i.aot
  %i.aov = sdiv i32 %i.aou, %i.xr
  %i.aow = tail call i32 @llvm.smax.i32(i32 %i.aov, i32 1)
  %i.aox = tail call i32 @llvm.smin.i32(i32 %.01323.lcssa, i32 %i.aow) ; 3 uses
  %i.aoy = icmp sgt i32 %.pre2466, 1
  %i.aoz = icmp sgt i32 %.01323.lcssa, 0
  %i.apa = select i1 %i.aoy, i1 %i.aoz, i1 false
  br i1 %i.apa, label %.lr.ph2196.preheader, label %._crit_edge2197

.lr.ph2196.preheader:                             ; preds = %._crit_edge2181
  %i.apb = zext nneg i32 %.pre2466 to i64
  br label %.lr.ph2196

.lr.ph2196:                                       ; preds = %.lr.ph2196.preheader, %.loopexit1970
  %i.apc = phi i32 [ %i.alv, %.lr.ph2196.preheader ], [ %i.arl, %.loopexit1970 ] ; 3 uses
  %i.apd = phi i32 [ %i.alw, %.lr.ph2196.preheader ], [ %i.arm, %.loopexit1970 ] ; 3 uses
  %i.ape = phi i32 [ %i.alx, %.lr.ph2196.preheader ], [ %i.arn, %.loopexit1970 ] ; 3 uses
  %i.apf = phi i32 [ %i.aly, %.lr.ph2196.preheader ], [ %i.aro, %.loopexit1970 ] ; 5 uses
  %i.apg = phi i32 [ %i.alz, %.lr.ph2196.preheader ], [ %i.arp, %.loopexit1970 ]
  %i.aph = phi i32 [ %i.alz, %.lr.ph2196.preheader ], [ %i.arq, %.loopexit1970 ]
  %indvars.iv2423 = phi i64 [ %i.apb, %.lr.ph2196.preheader ], [ %indvars.iv.next2424, %.loopexit1970 ] ; 2 uses
  %.113192193 = phi i32 [ 0, %.lr.ph2196.preheader ], [ %.41322, %.loopexit1970 ] ; 3 uses
  %indvars.iv.next2424 = add nsw i64 %indvars.iv2423, -1 ; 3 uses
  %i.api = load ptr, ptr %i.xs, align 8, !tbaa !95
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.api, i64 %indvars.iv.next2424
  %i.apk = load i16, ptr %i.apj, align 2, !tbaa !96
  %i.apl = zext i16 %i.apk to i32
  %i.apm = icmp sgt i32 %i.dr, %i.apl
  br i1 %i.apm, label %.loopexit1970, label %.preheader1969

.preheader1969:                                   ; preds = %.lr.ph2196
  %i.apn = icmp sgt i32 %i.apf, 0
  br i1 %i.apn, label %.lr.ph2190, label %.loopexit1970

.lr.ph2190:                                       ; preds = %.preheader1969, %find_min_book.exit1861.thread
  %i.apo = phi i32 [ %i.arc, %find_min_book.exit1861.thread ], [ %i.apc, %.preheader1969 ] ; 7 uses
  %i.app = phi i32 [ %i.ard, %find_min_book.exit1861.thread ], [ %i.apd, %.preheader1969 ] ; 7 uses
  %i.apq = phi i32 [ %i.are, %find_min_book.exit1861.thread ], [ %i.ape, %.preheader1969 ] ; 7 uses
  %.213202189 = phi i32 [ %.31321, %find_min_book.exit1861.thread ], [ %.113192193, %.preheader1969 ] ; 8 uses
  %.913552188 = phi i32 [ %i.arj, %find_min_book.exit1861.thread ], [ 0, %.preheader1969 ] ; 3 uses
  %i.apr = shl nuw nsw i32 %.913552188, 4
  %i.aps = zext nneg i32 %i.apr to i64
  %i.apt = add nsw i64 %indvars.iv.next2424, %i.aps ; 9 uses
  %i.apu = getelementptr inbounds i8, ptr %i.xf, i64 %i.apt ; 2 uses
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !73
  %.not1676 = icmp eq i8 %i.apv, 0
  br i1 %.not1676, label %bb.cq, label %find_min_book.exit1861.thread

bb.cq:                                            ; preds = %.lr.ph2190
  %i.apw = getelementptr inbounds i8, ptr %i.xl, i64 %i.apt
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !73
  %.not1677 = icmp eq i8 %i.apx, 0
  br i1 %.not1677, label %find_min_book.exit1861.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.apt
  %i.apz = load float, ptr %i.apy, align 4, !tbaa !80
  %i.aqa = fcmp nsz ugt float %i.apz, %.1741
  br i1 %i.aqa, label %find_min_book.exit1861.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aqb = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.apt
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !82 ; 2 uses
  %i.aqd = icmp sgt i32 %i.aqc, 140
  br i1 %i.aqd, label %bb.ct, label %find_min_book.exit1861.thread

bb.ct:                                            ; preds = %bb.cs
  %i.aqe = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.apt
  %i.aqf = load float, ptr %i.aqe, align 4, !tbaa !80 ; 2 uses
  %i.aqg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.apt
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !80 ; 3 uses
  %i.aqi = fmul nsz float %i.agc, %i.aqh
  %i.aqj = fcmp nsz ogt float %i.aqf, %i.aqi
  br i1 %i.aqj, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aqk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.apt
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !80
  %i.aqm = sub nsw i32 304, %i.aqc
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.aqn
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !80
  %i.aqq = tail call nsz float @llvm.fmuladd.f32(float %i.aql, float %i.aqp, float 4.054000e-01)
  %i.aqr = fptosi float %i.aqq to i32             ; 2 uses
  %i.aqs = icmp ugt i32 %i.aqr, 13
  br i1 %i.aqs, label %find_min_book.exit1861.thread, label %find_min_book.exit1861

find_min_book.exit1861:                           ; preds = %bb.cu
  %i.aqt = zext nneg i32 %i.aqr to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !73
  switch i8 %i.aqv, label %find_min_book.exit1861.thread [
    i8 0, label %bb.cw
    i8 1, label %bb.cv
  ]

bb.cv:                                            ; preds = %find_min_book.exit1861
  %i.aqw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.apt
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !80 ; 2 uses
  %i.aqy = fcmp nsz ogt float %i.aqh, %i.aqx
  %.1743 = select nsz i1 %i.aqy, float %i.aqx, float %i.aqh
  %i.aqz = fcmp nsz ogt float %i.aqf, %.1743
  br i1 %i.aqz, label %bb.cw, label %find_min_book.exit1861.thread

bb.cw:                                            ; preds = %find_min_book.exit1861, %bb.cv, %bb.ct
  store i8 1, ptr %i.apu, align 1, !tbaa !73
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.apt
  store i32 0, ptr %i.ara, align 4, !tbaa !82
  %i.arb = add nsw i32 %.213202189, 1
  %.pre2467 = load i32, ptr %i.cg, align 4, !tbaa !69 ; 3 uses
  br label %find_min_book.exit1861.thread

find_min_book.exit1861.thread:                    ; preds = %bb.cu, %find_min_book.exit1861, %.lr.ph2190, %bb.cq, %bb.cr, %bb.cs, %bb.cv, %bb.cw
  %i.arc = phi i32 [ %i.apo, %.lr.ph2190 ], [ %.pre2467, %bb.cw ], [ %i.apo, %bb.cv ], [ %i.apo, %find_min_book.exit1861 ], [ %i.apo, %bb.cs ], [ %i.apo, %bb.cr ], [ %i.apo, %bb.cq ], [ %i.apo, %bb.cu ] ; 2 uses
  %i.ard = phi i32 [ %i.app, %.lr.ph2190 ], [ %.pre2467, %bb.cw ], [ %i.app, %bb.cv ], [ %i.app, %find_min_book.exit1861 ], [ %i.app, %bb.cs ], [ %i.app, %bb.cr ], [ %i.app, %bb.cq ], [ %i.app, %bb.cu ] ; 2 uses
  %i.are = phi i32 [ %i.apq, %.lr.ph2190 ], [ %.pre2467, %bb.cw ], [ %i.apq, %bb.cv ], [ %i.apq, %find_min_book.exit1861 ], [ %i.apq, %bb.cs ], [ %i.apq, %bb.cr ], [ %i.apq, %bb.cq ], [ %i.apq, %bb.cu ] ; 6 uses
  %.31321 = phi i32 [ %.213202189, %.lr.ph2190 ], [ %i.arb, %bb.cw ], [ %.213202189, %bb.cv ], [ %.213202189, %find_min_book.exit1861 ], [ %.213202189, %bb.cs ], [ %.213202189, %bb.cr ], [ %.213202189, %bb.cq ], [ %.213202189, %bb.cu ] ; 2 uses
  %i.arf = zext nneg i32 %.913552188 to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.arf
  %i.arh = load i8, ptr %i.arg, align 1, !tbaa !73
  %i.ari = zext i8 %i.arh to i32
  %i.arj = add nuw nsw i32 %.913552188, %i.ari    ; 2 uses
  %i.ark = icmp slt i32 %i.arj, %i.are
  br i1 %i.ark, label %.lr.ph2190, label %.loopexit1970, !llvm.loop !140

.loopexit1970:                                    ; preds = %find_min_book.exit1861.thread, %.preheader1969, %.lr.ph2196
  %i.arl = phi i32 [ %i.apc, %.lr.ph2196 ], [ %i.apc, %.preheader1969 ], [ %i.arc, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arm = phi i32 [ %i.apd, %.lr.ph2196 ], [ %i.apd, %.preheader1969 ], [ %i.ard, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arn = phi i32 [ %i.ape, %.lr.ph2196 ], [ %i.ape, %.preheader1969 ], [ %i.are, %find_min_book.exit1861.thread ] ; 2 uses
  %i.aro = phi i32 [ %i.apf, %.lr.ph2196 ], [ %i.apf, %.preheader1969 ], [ %i.are, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arp = phi i32 [ %i.apg, %.lr.ph2196 ], [ %i.apf, %.preheader1969 ], [ %i.are, %find_min_book.exit1861.thread ] ; 2 uses
  %i.arq = phi i32 [ %i.aph, %.lr.ph2196 ], [ %i.apf, %.preheader1969 ], [ %i.are, %find_min_book.exit1861.thread ] ; 2 uses
  %.41322 = phi i32 [ %.113192193, %.lr.ph2196 ], [ %.113192193, %.preheader1969 ], [ %.31321, %find_min_book.exit1861.thread ] ; 3 uses
  %i.arr = icmp sgt i64 %indvars.iv2423, 2
  %i.ars = icmp slt i32 %.41322, %i.aox
  %i.art = select i1 %i.arr, i1 %i.ars, i1 false
  br i1 %i.art, label %.lr.ph2196, label %._crit_edge2197.loopexit, !llvm.loop !141

._crit_edge2197.loopexit:                         ; preds = %.loopexit1970
  %.pre2468 = load i32, ptr %i.xe, align 8, !tbaa !71
  br label %._crit_edge2197

._crit_edge2197:                                  ; preds = %._crit_edge2197.loopexit, %._crit_edge2181
  %i.aru = phi i32 [ %i.alv, %._crit_edge2181 ], [ %i.arl, %._crit_edge2197.loopexit ] ; 2 uses
  %i.arv = phi i32 [ %i.alw, %._crit_edge2181 ], [ %i.arm, %._crit_edge2197.loopexit ] ; 2 uses
  %i.arw = phi i32 [ %.pre2466, %._crit_edge2181 ], [ %.pre2468, %._crit_edge2197.loopexit ] ; 2 uses
  %i.arx = phi i32 [ %i.alx, %._crit_edge2181 ], [ %i.arn, %._crit_edge2197.loopexit ] ; 2 uses
  %i.ary = phi i32 [ %i.aly, %._crit_edge2181 ], [ %i.aro, %._crit_edge2197.loopexit ] ; 2 uses
  %i.arz = phi i32 [ %i.alz, %._crit_edge2181 ], [ %i.arp, %._crit_edge2197.loopexit ] ; 2 uses
  %i.asa = phi i32 [ %i.alz, %._crit_edge2181 ], [ %i.arq, %._crit_edge2197.loopexit ] ; 2 uses
  %.11319.lcssa = phi i32 [ 0, %._crit_edge2181 ], [ %.41322, %._crit_edge2197.loopexit ] ; 3 uses
  %i.asb = icmp sgt i32 %i.arw, 1
  %i.asc = icmp slt i32 %.11319.lcssa, %i.aox
  %i.asd = select i1 %i.asb, i1 %i.asc, i1 false
  br i1 %i.asd, label %.lr.ph2196.preheader.1, label %._crit_edge2197.1

.lr.ph2196.preheader.1:                           ; preds = %._crit_edge2197
  %i.ase = zext nneg i32 %i.arw to i64
  br label %.lr.ph2196.1

.lr.ph2196.1:                                     ; preds = %.loopexit1970.1, %.lr.ph2196.preheader.1
  %i.asf = phi i32 [ %i.aru, %.lr.ph2196.preheader.1 ], [ %i.auj, %.loopexit1970.1 ] ; 3 uses
  %i.asg = phi i32 [ %i.arv, %.lr.ph2196.preheader.1 ], [ %i.auk, %.loopexit1970.1 ] ; 7 uses
  %i.ash = phi i32 [ %i.arx, %.lr.ph2196.preheader.1 ], [ %i.aul, %.loopexit1970.1 ]
  %i.asi = phi i32 [ %i.ary, %.lr.ph2196.preheader.1 ], [ %i.aum, %.loopexit1970.1 ]
  %i.asj = phi i32 [ %i.arz, %.lr.ph2196.preheader.1 ], [ %i.aun, %.loopexit1970.1 ]
  %i.ask = phi i32 [ %i.asa, %.lr.ph2196.preheader.1 ], [ %i.auo, %.loopexit1970.1 ]
  %indvars.iv2423.1 = phi i64 [ %i.ase, %.lr.ph2196.preheader.1 ], [ %indvars.iv.next2424.1, %.loopexit1970.1 ] ; 2 uses
  %.113192193.1 = phi i32 [ %.11319.lcssa, %.lr.ph2196.preheader.1 ], [ %.41322.1, %.loopexit1970.1 ] ; 3 uses
  %indvars.iv.next2424.1 = add nsw i64 %indvars.iv2423.1, -1 ; 3 uses
  %i.asl = load ptr, ptr %i.xs, align 8, !tbaa !95
  %i.asm = getelementptr inbounds nuw [2 x i8], ptr %i.asl, i64 %indvars.iv.next2424.1
  %i.asn = load i16, ptr %i.asm, align 2, !tbaa !96
  %i.aso = zext i16 %i.asn to i32
  %i.asp = icmp sgt i32 %i.dr, %i.aso
  br i1 %i.asp, label %.loopexit1970.1, label %.preheader1969.1

.preheader1969.1:                                 ; preds = %.lr.ph2196.1
  %i.asq = icmp sgt i32 %i.asg, 0
  br i1 %i.asq, label %.lr.ph2190.1, label %.loopexit1970.1

.lr.ph2190.1:                                     ; preds = %.preheader1969.1, %find_min_book.exit1861.thread.1
  %i.asr = phi i32 [ %i.auc, %find_min_book.exit1861.thread.1 ], [ %i.asf, %.preheader1969.1 ] ; 7 uses
  %.213202189.1 = phi i32 [ %.31321.1, %find_min_book.exit1861.thread.1 ], [ %.113192193.1, %.preheader1969.1 ] ; 8 uses
  %.913552188.1 = phi i32 [ %i.auh, %find_min_book.exit1861.thread.1 ], [ 0, %.preheader1969.1 ] ; 3 uses
  %i.ass = shl nuw nsw i32 %.913552188.1, 4
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = add nsw i64 %indvars.iv.next2424.1, %i.ast ; 9 uses
  %i.asv = getelementptr inbounds i8, ptr %i.xf, i64 %i.asu ; 2 uses
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !73
  %.not1676.1 = icmp eq i8 %i.asw, 0
  br i1 %.not1676.1, label %bb.cx, label %find_min_book.exit1861.thread.1

bb.cx:                                            ; preds = %.lr.ph2190.1
  %i.asx = getelementptr inbounds i8, ptr %i.xl, i64 %i.asu
  %i.asy = load i8, ptr %i.asx, align 1, !tbaa !73
  %.not1677.1 = icmp eq i8 %i.asy, 0
  br i1 %.not1677.1, label %find_min_book.exit1861.thread.1, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.asu
  %i.ata = load float, ptr %i.asz, align 4, !tbaa !80
  %i.atb = fcmp nsz ugt float %i.ata, %.1741
  br i1 %i.atb, label %find_min_book.exit1861.thread.1, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.asu
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !82 ; 2 uses
  %i.ate = icmp sgt i32 %i.atd, 104
  br i1 %i.ate, label %bb.da, label %find_min_book.exit1861.thread.1

bb.da:                                            ; preds = %bb.cz
  %i.atf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.asu
  %i.atg = load float, ptr %i.atf, align 4, !tbaa !80 ; 2 uses
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.asu
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !80 ; 3 uses
  %i.atj = fcmp nsz ogt float %i.atg, %i.ati
  br i1 %i.atj, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.atk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.asu
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !80
  %i.atm = sub nsw i32 304, %i.atd
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.atn
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !80
  %i.atq = tail call nsz float @llvm.fmuladd.f32(float %i.atl, float %i.atp, float 4.054000e-01)
  %i.atr = fptosi float %i.atq to i32             ; 2 uses
  %i.ats = icmp ugt i32 %i.atr, 13
  br i1 %i.ats, label %find_min_book.exit1861.thread.1, label %find_min_book.exit1861.1

find_min_book.exit1861.1:                         ; preds = %bb.db
  %i.att = zext nneg i32 %i.atr to i64
  %i.atu = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !73
  switch i8 %i.atv, label %find_min_book.exit1861.thread.1 [
    i8 0, label %bb.dd
    i8 1, label %bb.dc
  ]

bb.dc:                                            ; preds = %find_min_book.exit1861.1
  %i.atw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.asu
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !80 ; 2 uses
  %i.aty = fcmp nsz ogt float %i.ati, %i.atx
  %.1743.1 = select nsz i1 %i.aty, float %i.atx, float %i.ati
  %i.atz = fcmp nsz ogt float %i.atg, %.1743.1
  br i1 %i.atz, label %bb.dd, label %find_min_book.exit1861.thread.1

bb.dd:                                            ; preds = %bb.dc, %find_min_book.exit1861.1, %bb.da
  store i8 1, ptr %i.asv, align 1, !tbaa !73
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.asu
  store i32 0, ptr %i.aua, align 4, !tbaa !82
  %i.aub = add nsw i32 %.213202189.1, 1
  %.pre2469 = load i32, ptr %i.cg, align 4, !tbaa !69
  br label %find_min_book.exit1861.thread.1

find_min_book.exit1861.thread.1:                  ; preds = %bb.dd, %bb.dc, %find_min_book.exit1861.1, %bb.db, %bb.cz, %bb.cy, %bb.cx, %.lr.ph2190.1
  %i.auc = phi i32 [ %i.asr, %.lr.ph2190.1 ], [ %.pre2469, %bb.dd ], [ %i.asr, %bb.dc ], [ %i.asr, %find_min_book.exit1861.1 ], [ %i.asr, %bb.cz ], [ %i.asr, %bb.cy ], [ %i.asr, %bb.cx ], [ %i.asr, %bb.db ] ; 8 uses
  %.31321.1 = phi i32 [ %.213202189.1, %.lr.ph2190.1 ], [ %i.aub, %bb.dd ], [ %.213202189.1, %bb.dc ], [ %.213202189.1, %find_min_book.exit1861.1 ], [ %.213202189.1, %bb.cz ], [ %.213202189.1, %bb.cy ], [ %.213202189.1, %bb.cx ], [ %.213202189.1, %bb.db ] ; 2 uses
  %i.aud = zext nneg i32 %.913552188.1 to i64
  %i.aue = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.aud
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !73
  %i.aug = zext i8 %i.auf to i32
  %i.auh = add nuw nsw i32 %.913552188.1, %i.aug  ; 2 uses
  %i.aui = icmp slt i32 %i.auh, %i.auc
  br i1 %i.aui, label %.lr.ph2190.1, label %.loopexit1970.1, !llvm.loop !140

.loopexit1970.1:                                  ; preds = %find_min_book.exit1861.thread.1, %.preheader1969.1, %.lr.ph2196.1
  %i.auj = phi i32 [ %i.asf, %.lr.ph2196.1 ], [ %i.asf, %.preheader1969.1 ], [ %i.auc, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.auk = phi i32 [ %i.asg, %.lr.ph2196.1 ], [ %i.asg, %.preheader1969.1 ], [ %i.auc, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.aul = phi i32 [ %i.ash, %.lr.ph2196.1 ], [ %i.asg, %.preheader1969.1 ], [ %i.auc, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.aum = phi i32 [ %i.asi, %.lr.ph2196.1 ], [ %i.asg, %.preheader1969.1 ], [ %i.auc, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.aun = phi i32 [ %i.asj, %.lr.ph2196.1 ], [ %i.asg, %.preheader1969.1 ], [ %i.auc, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %i.auo = phi i32 [ %i.ask, %.lr.ph2196.1 ], [ %i.asg, %.preheader1969.1 ], [ %i.auc, %find_min_book.exit1861.thread.1 ] ; 2 uses
  %.41322.1 = phi i32 [ %.113192193.1, %.lr.ph2196.1 ], [ %.113192193.1, %.preheader1969.1 ], [ %.31321.1, %find_min_book.exit1861.thread.1 ] ; 3 uses
  %i.aup = icmp sgt i64 %indvars.iv2423.1, 2
  %i.auq = icmp slt i32 %.41322.1, %i.aox
  %i.aur = select i1 %i.aup, i1 %i.auq, i1 false
  br i1 %i.aur, label %.lr.ph2196.1, label %._crit_edge2197.1, !llvm.loop !141

._crit_edge2197.1:                                ; preds = %.loopexit1970.1, %._crit_edge2197
  %i.aus = phi i32 [ %i.aru, %._crit_edge2197 ], [ %i.auj, %.loopexit1970.1 ]
  %i.aut = phi i32 [ %i.arv, %._crit_edge2197 ], [ %i.auk, %.loopexit1970.1 ]
  %i.auu = phi i32 [ %i.arx, %._crit_edge2197 ], [ %i.aul, %.loopexit1970.1 ]
  %i.auv = phi i32 [ %i.ary, %._crit_edge2197 ], [ %i.aum, %.loopexit1970.1 ]
  %i.auw = phi i32 [ %i.arz, %._crit_edge2197 ], [ %i.aun, %.loopexit1970.1 ]
  %i.aux = phi i32 [ %i.asa, %._crit_edge2197 ], [ %i.auo, %.loopexit1970.1 ] ; 3 uses
  %.11319.lcssa.1 = phi i32 [ %.11319.lcssa, %._crit_edge2197 ], [ %.41322.1, %.loopexit1970.1 ]
  %.not1674 = icmp ne i32 %.11319.lcssa.1, 0      ; 2 uses
  %spec.select1744 = zext i1 %.not1674 to i32
  %spec.select1745 = select i1 %.not1674, i32 1, i32 %.0143322022837
  br label %._crit_edge2162.thread

._crit_edge2162.thread:                           ; preds = %.preheader1975.lr.ph, %bb.cg, %._crit_edge2197.1, %._crit_edge2162, %bb.cf
  %i.auy = phi i32 [ %i.alv, %._crit_edge2162 ], [ %i.alv, %bb.cf ], [ %i.aus, %._crit_edge2197.1 ], [ %i.alv, %bb.cg ], [ %i.alv, %.preheader1975.lr.ph ]
  %i.auz = phi i32 [ %i.alw, %._crit_edge2162 ], [ %i.alw, %bb.cf ], [ %i.aut, %._crit_edge2197.1 ], [ %i.alw, %bb.cg ], [ %i.alw, %.preheader1975.lr.ph ]
  %i.ava = phi i32 [ %i.alx, %._crit_edge2162 ], [ %i.alx, %bb.cf ], [ %i.auu, %._crit_edge2197.1 ], [ %i.alx, %bb.cg ], [ %i.alx, %.preheader1975.lr.ph ]
  %i.avb = phi i32 [ %i.aly, %._crit_edge2162 ], [ %i.aly, %bb.cf ], [ %i.auv, %._crit_edge2197.1 ], [ %i.aly, %bb.cg ], [ %i.aly, %.preheader1975.lr.ph ]
  %i.avc = phi i32 [ %i.alz, %._crit_edge2162 ], [ %i.alz, %bb.cf ], [ %i.auw, %._crit_edge2197.1 ], [ %i.alz, %bb.cg ], [ %i.alz, %.preheader1975.lr.ph ]
  %i.avd = phi i32 [ %i.alz, %._crit_edge2162 ], [ %i.ama, %bb.cf ], [ %i.aux, %._crit_edge2197.1 ], [ %i.alz, %bb.cg ], [ %i.alz, %.preheader1975.lr.ph ]
  %i.ave = phi i32 [ %i.alz, %._crit_edge2162 ], [ %i.amb, %bb.cf ], [ %i.aux, %._crit_edge2197.1 ], [ %i.alz, %bb.cg ], [ %i.alz, %.preheader1975.lr.ph ]
  %i.avf = phi i32 [ %i.alz, %._crit_edge2162 ], [ %i.amc, %bb.cf ], [ %i.aux, %._crit_edge2197.1 ], [ %i.alz, %bb.cg ], [ %i.alz, %.preheader1975.lr.ph ]
  %.41462 = phi i32 [ 0, %._crit_edge2162 ], [ %.1145922012838, %bb.cf ], [ %spec.select1744, %._crit_edge2197.1 ], [ 0, %bb.cg ], [ 0, %.preheader1975.lr.ph ] ; 2 uses
  %.31436 = phi i32 [ %.0143322022837, %._crit_edge2162 ], [ %.0143322022837, %bb.cf ], [ %spec.select1745, %._crit_edge2197.1 ], [ %.0143322022837, %bb.cg ], [ %.0143322022837, %.preheader1975.lr.ph ] ; 2 uses
  %.51374 = phi i32 [ 0, %._crit_edge2162 ], [ %.0136922042835, %bb.cf ], [ %.31372.us, %._crit_edge2197.1 ], [ 0, %bb.cg ], [ 0, %.preheader1975.lr.ph ] ; 2 uses
  %i.avg = icmp ne i32 %.51374, 0
  %i.avh = icmp ne i32 %.41462, 0                 ; 2 uses
  %i.avi = select i1 %i.avg, i1 true, i1 %i.avh
  br i1 %i.avi, label %bb.bp, label %.critedge, !llvm.loop !142

.critedge:                                        ; preds = %.loopexit1980, %._crit_edge2162.thread
  %.014332202.lcssa = phi i32 [ %.0143322022837, %.loopexit1980 ], [ %.31436, %._crit_edge2162.thread ] ; 2 uses
  %i.avj = load i32, ptr %i.cg, align 4, !tbaa !69 ; 3 uses
  %i.avk = icmp sgt i32 %i.avj, 0
  br i1 %i.avk, label %.lr.ph2255, label %._crit_edge2268

.lr.ph2255:                                       ; preds = %.critedge
  %i.avl = icmp samesign ugt i32 %.01423, %i.xu
  %i.avm = select i1 %i.avl, i32 1, i32 3
  %i.avn = uitofp nneg i32 %.01423 to float
  %i.avo = fdiv nsz float %i.avn, %i.xv
  %i.avp = fadd nsz float %i.avo, 1.000000e+00
  %.not2292 = icmp sgt i32 %.91419, %i.ds
  %i.avq = sitofp nsz i32 %.91419 to float
  %i.avr = fdiv nsz float %i.avq, %i.xx           ; 2 uses
  %i.avs = icmp sgt i32 %.91419, %i.dt
  %.pre2470 = load i32, ptr %i.xe, align 8, !tbaa !71 ; 2 uses
  %spec.select2279 = select i1 %i.afx, i32 %i.avm, i32 10 ; 3 uses
  %i.avt = add nuw nsw i32 %spec.select2279, 2    ; 2 uses
  %.inv = fcmp nsz olt float %i.avr, 2.000000e+00
  %.mux = select i1 %.inv, float %i.avr, float 2.000000e+00
  %i.avu = select i1 %.not2292, float %.mux, float 1.000000e+00
  %i.avv = fmul nsz float %i.avp, %i.avu
  br label %bb.dj

.preheader1985:                                   ; preds = %._crit_edge2246
  %i.avw = icmp sgt i32 %i.bgn, 0
  br i1 %i.avw, label %.preheader1976.lr.ph, label %._crit_edge2268

.preheader1976.lr.ph:                             ; preds = %.preheader1985
  %i.avx = load i32, ptr %i.xe, align 8, !tbaa !71 ; 2 uses
  %i.avy = icmp sgt i32 %i.avx, 0
  br i1 %i.avy, label %.preheader1976.us.preheader, label %._crit_edge2268

.preheader1976.us.preheader:                      ; preds = %.preheader1976.lr.ph
  %wide.trip.count2444 = zext nneg i32 %i.avx to i64
  br label %.preheader1976.us

.preheader1976.us:                                ; preds = %.preheader1976.us.preheader, %._crit_edge2262.us
  %.122267.us = phi i32 [ %i.axc, %._crit_edge2262.us ], [ 0, %.preheader1976.us.preheader ] ; 3 uses
  %.1014062266.us = phi i32 [ %.131409.us, %._crit_edge2262.us ], [ -1, %.preheader1976.us.preheader ]
  %.814412265.us = phi i32 [ %.111444.us, %._crit_edge2262.us ], [ %.51438.lcssa, %.preheader1976.us.preheader ]
  %i.avz = shl nuw nsw i32 %.122267.us, 4
  %i.awa = zext nneg i32 %i.avz to i64
  br label %bb.de

bb.de:                                            ; preds = %.preheader1976.us, %bb.di
  %indvars.iv2441 = phi i64 [ 0, %.preheader1976.us ], [ %indvars.iv.next2442, %bb.di ] ; 2 uses
  %.1114072260.us = phi i32 [ %.1014062266.us, %.preheader1976.us ], [ %.131409.us, %bb.di ] ; 3 uses
  %.914422259.us = phi i32 [ %.814412265.us, %.preheader1976.us ], [ %.111444.us, %bb.di ] ; 2 uses
  %i.awb = add nuw nsw i64 %indvars.iv2441, %i.awa ; 4 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.awb
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !73
  %.not1658.us = icmp eq i8 %i.awd, 0
  br i1 %.not1658.us, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.awb ; 2 uses
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !82 ; 4 uses
  %i.awg = icmp slt i32 %.1114072260.us, 0
  %spec.select1755.us = select i1 %i.awg, i32 %i.awf, i32 %.1114072260.us ; 2 uses
  %i.awh = add nsw i32 %spec.select1755.us, -60   ; 2 uses
  %i.awi = add nsw i32 %spec.select1755.us, 60
  %i.awj = icmp slt i32 %i.awf, %i.awh
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.awf, i32 %i.awi)
  %.0.i.us = select i1 %i.awj, i32 %i.awh, i32 %..i.us ; 5 uses
  store i32 %.0.i.us, ptr %i.awe, align 4, !tbaa !82
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.awb
  %i.awl = load float, ptr %i.awk, align 4, !tbaa !80
  %i.awm = sub i32 304, %.0.i.us
  %i.awn = sext i32 %i.awm to i64
  %i.awo = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.awn
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !80
  %i.awq = tail call nsz float @llvm.fmuladd.f32(float %i.awl, float %i.awp, float 4.054000e-01)
  %i.awr = fptosi float %i.awq to i32             ; 2 uses
  %i.aws = icmp ugt i32 %i.awr, 13
  br i1 %i.aws, label %find_min_book.exit1881.us, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.awt = zext nneg i32 %i.awr to i64
  %i.awu = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.awt
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !73
  %i.aww = zext i8 %i.awv to i32
  br label %find_min_book.exit1881.us

find_min_book.exit1881.us:                        ; preds = %bb.dg, %bb.df
  %.0.i1880.us = phi i32 [ %i.aww, %bb.dg ], [ 11, %bb.df ]
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.awb
  store i32 %.0.i1880.us, ptr %i.awx, align 4, !tbaa !82
  %.not1659.us = icmp eq i32 %.914422259.us, 0
  br i1 %.not1659.us, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %find_min_book.exit1881.us
  %.not1660.us = icmp ne i32 %i.awf, %.0.i.us
  %spec.select1756.us = zext i1 %.not1660.us to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %find_min_book.exit1881.us, %bb.de
  %.111444.us = phi i32 [ %.914422259.us, %bb.de ], [ 1, %find_min_book.exit1881.us ], [ %spec.select1756.us, %bb.dh ] ; 3 uses
  %.131409.us = phi i32 [ %.1114072260.us, %bb.de ], [ %.0.i.us, %find_min_book.exit1881.us ], [ %.0.i.us, %bb.dh ] ; 2 uses
  %indvars.iv.next2442 = add nuw nsw i64 %indvars.iv2441, 1 ; 2 uses
  %exitcond2445.not = icmp eq i64 %indvars.iv.next2442, %wide.trip.count2444
  br i1 %exitcond2445.not, label %._crit_edge2262.us, label %bb.de, !llvm.loop !143

._crit_edge2262.us:                               ; preds = %bb.di
  %i.awy = zext nneg i32 %.122267.us to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.awy
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !73
  %i.axb = zext i8 %i.axa to i32
  %i.axc = add nuw nsw i32 %.122267.us, %i.axb    ; 2 uses
  %i.axd = icmp slt i32 %i.axc, %i.bgn
  br i1 %i.axd, label %.preheader1976.us, label %._crit_edge2268, !llvm.loop !144

bb.dj:                                            ; preds = %.lr.ph2255, %._crit_edge2246
  %i.axe = phi i32 [ %i.avj, %.lr.ph2255 ], [ %i.bgn, %._crit_edge2246 ]
  %i.axf = phi i32 [ %.pre2470, %.lr.ph2255 ], [ %i.bgo, %._crit_edge2246 ] ; 2 uses
  %i.axg = phi i32 [ %.pre2470, %.lr.ph2255 ], [ %i.bgp, %._crit_edge2246 ] ; 2 uses
  %.112253 = phi i32 [ 0, %.lr.ph2255 ], [ %i.bgt, %._crit_edge2246 ] ; 5 uses
  %.614022252 = phi i32 [ -1, %.lr.ph2255 ], [ %.71403.lcssa, %._crit_edge2246 ] ; 2 uses
  %.414372250 = phi i32 [ %.014332202.lcssa, %.lr.ph2255 ], [ %.51438.lcssa, %._crit_edge2246 ] ; 2 uses
  %i.axh = icmp sgt i32 %i.axg, 0
  br i1 %i.axh, label %.lr.ph2245, label %.._crit_edge2246_crit_edge

.._crit_edge2246_crit_edge:                       ; preds = %bb.dj
  %.pre2497 = zext nneg i32 %.112253 to i64
  br label %._crit_edge2246

.lr.ph2245:                                       ; preds = %bb.dj
  %i.axi = shl nsw i32 %.112253, 7
  %i.axj = shl nsw i32 %.112253, 4
  %i.axk = zext nneg i32 %.112253 to i64          ; 4 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.axk ; 4 uses
  %i.axm = zext nneg i32 %i.axj to i64
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph2245, %.thread2671
  %i.axn = phi i32 [ %i.axf, %.lr.ph2245 ], [ %i.bgf, %.thread2671 ] ; 2 uses
  %indvars.iv2438 = phi i64 [ 0, %.lr.ph2245 ], [ %indvars.iv.next2439, %.thread2671 ] ; 8 uses
  %.92243 = phi i32 [ %i.axi, %.lr.ph2245 ], [ %i.bgk, %.thread2671 ] ; 2 uses
  %.714032242 = phi i32 [ %.614022252, %.lr.ph2245 ], [ %.91405, %.thread2671 ] ; 4 uses
  %.514382240 = phi i32 [ %.414372250, %.lr.ph2245 ], [ %.71440, %.thread2671 ] ; 3 uses
  %i.axo = add nuw nsw i64 %indvars.iv2438, %i.axm ; 19 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.axo ; 8 uses
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !82 ; 10 uses
  %i.axr = icmp slt i32 %.714032242, 0
  %i.axs = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.axo
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !73
  %.not1661 = icmp eq i8 %i.axt, 0                ; 2 uses
  br i1 %i.axr, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  br i1 %.not1661, label %.thread2667, label %.thread2671

.thread2667:                                      ; preds = %bb.dl
  %i.axu = load i32, ptr %i.xg, align 4, !tbaa !82
  br label %find_min_book.exit1863

bb.dm:                                            ; preds = %bb.dk
  br i1 %.not1661, label %find_min_book.exit1863, label %.thread2671

find_min_book.exit1863:                           ; preds = %.thread2667, %bb.dm
  %.814042670 = phi i32 [ %i.axu, %.thread2667 ], [ %.714032242, %bb.dm ] ; 2 uses
  %i.axv = zext nneg i32 %.92243 to i64           ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.axv ; 2 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.axv ; 2 uses
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.axo
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !80 ; 4 uses
  %i.aya = sub i32 304, %i.axq
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.ayb
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !80
  %i.aye = tail call nsz float @llvm.fmuladd.f32(float %i.axz, float %i.ayd, float 4.054000e-01)
  %i.ayf = fptosi float %i.aye to i32
  %i.ayg = icmp eq i32 %i.ayf, 0
  %i.ayh = tail call i32 @llvm.smax.i32(i32 %.814042670, i32 60)
  %i.ayi = add nsw i32 %i.ayh, -60                ; 5 uses
  %i.ayj = tail call i32 @llvm.smin.i32(i32 %.814042670, i32 159)
  %i.ayk = add nsw i32 %i.ayj, 60                 ; 3 uses
  br i1 %i.ayg, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %find_min_book.exit1863
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.axo
  %i.aym = load float, ptr %i.ayl, align 4, !tbaa !80
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axo
  %i.ayo = load float, ptr %i.ayn, align 4, !tbaa !80
  %i.ayp = fcmp nsz ogt float %i.aym, %i.ayo
  br i1 %i.ayp, label %bb.do, label %bb.ee

bb.do:                                            ; preds = %bb.dn, %find_min_book.exit1863
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.axo
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !82
  %.1746 = tail call i32 @llvm.smax.i32(i32 %i.ayi, i32 %i.ayr)
  %i.ays = icmp sgt i32 %i.axq, %.1746
  br i1 %i.ays, label %.preheader1971, label %bb.ee

.preheader1971:                                   ; preds = %bb.do
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.axo ; 3 uses
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.axo
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axo ; 4 uses
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.axo ; 3 uses
  %.not1667 = icmp eq i64 %indvars.iv2438, 0
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.axo
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axo
  %i.ayz = insertelement <2 x float> poison, float %i.axz, i64 0
  %i.aza = shufflevector <2 x float> %i.ayz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %find_min_book.exit1865

find_min_book.exit1865:                           ; preds = %.preheader1971, %.backedge
  %.5134022362839 = phi i32 [ 0, %.preheader1971 ], [ %.513402236.be, %.backedge ] ; 3 uses
  %i.azb = phi i32 [ %i.axq, %.preheader1971 ], [ %.pre-phi2490, %.backedge ] ; 5 uses
  %i.azc = add nsw i32 %i.azb, -1                 ; 2 uses
  %i.azd = sub nsw i32 304, %i.azb
  %i.aze = sext i32 %i.azd to i64
  %i.azf = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.aze
  %i.azg = load <2 x float>, ptr %i.azf, align 4, !tbaa !80
  %i.azh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aza, <2 x float> %i.azg, <2 x float> splat (float 4.054000e-01)) ; 2 uses
  %i.azi = extractelement <2 x float> %i.azh, i64 1
  %i.azj = fptosi float %i.azi to i32
  %i.azk = icmp eq i32 %i.azj, 0
  %i.azl = extractelement <2 x float> %i.azh, i64 0
  %i.azm = fptosi float %i.azl to i32             ; 3 uses
  %i.azn = icmp ugt i32 %i.azm, 13
  br i1 %i.azn, label %find_min_book.exit1867.thread, label %find_min_book.exit1867

find_min_book.exit1867:                           ; preds = %find_min_book.exit1865
  %i.azo = zext nneg i32 %i.azm to i64
  %i.azp = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.azo
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !73
  %i.azr = zext i8 %i.azq to i32
  %.not1665 = icmp eq i32 %i.azm, 0
  br i1 %.not1665, label %bb.dp, label %find_min_book.exit1867.thread

bb.dp:                                            ; preds = %find_min_book.exit1867
  %i.azs = load i32, ptr %i.ayv, align 4, !tbaa !82
  %.1747 = tail call i32 @llvm.smin.i32(i32 %i.azc, i32 %i.azs)
  store i32 %.1747, ptr %i.ayv, align 4, !tbaa !82
  br label %bb.dr

find_min_book.exit1867.thread:                    ; preds = %find_min_book.exit1865, %find_min_book.exit1867
  %.0.i18661943 = phi i32 [ %i.azr, %find_min_book.exit1867 ], [ 11, %find_min_book.exit1865 ] ; 2 uses
  %.not1666 = icmp samesign ult i32 %.5134022362839, %spec.select2279
  br i1 %.not1666, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %find_min_book.exit1867.thread
  %i.azt = load float, ptr %i.ayt, align 4, !tbaa !80
  %i.azu = load float, ptr %i.ayw, align 4, !tbaa !80
  %i.azv = fcmp nsz olt float %i.azt, %i.azu
  br i1 %i.azv, label %.critedge3, label %bb.dr

bb.dr:                                            ; preds = %find_min_book.exit1867.thread, %bb.dq, %bb.dp
  %.0.i18661942 = phi i32 [ %.0.i18661943, %find_min_book.exit1867.thread ], [ %.0.i18661943, %bb.dq ], [ 0, %bb.dp ] ; 4 uses
  br i1 %.not1667, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.azw = load i32, ptr %i.cg, align 4, !tbaa !69
  %i.azx = icmp sgt i32 %i.azw, 1
  br i1 %i.azx, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.azy = load float, ptr %i.ayt, align 4, !tbaa !80
  %i.azz = load float, ptr %i.ayw, align 4, !tbaa !80
  %i.baa = fcmp nsz ult float %i.azy, %i.azz
  br i1 %i.baa, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bab = load i32, ptr %i.ayv, align 4, !tbaa !82
  %.1748 = tail call i32 @llvm.smin.i32(i32 %i.azb, i32 %i.bab)
  store i32 %.1748, ptr %i.ayv, align 4, !tbaa !82
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr
  %i.bac = load i8, ptr %i.axl, align 1, !tbaa !73 ; 2 uses
  %.not2294 = icmp eq i8 %i.bac, 0
  br i1 %.not2294, label %._crit_edge2232, label %.lr.ph2231

.lr.ph2231:                                       ; preds = %bb.dv
  %i.bad = zext nneg i32 %.0.i18661942 to i64
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.bad
  %i.baf = trunc nuw i32 %.0.i18661942 to i8
  %.pre2477 = load i16, ptr %i.xk, align 16, !tbaa !85
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph2231, %quantize_band_cost_cached.exit1871
  %i.bag = phi i8 [ %i.bac, %.lr.ph2231 ], [ %i.bbk, %quantize_band_cost_cached.exit1871 ]
  %i.bah = phi i16 [ %.pre2477, %.lr.ph2231 ], [ %i.bbm, %quantize_band_cost_cached.exit1871 ] ; 2 uses
  %indvars.iv2435 = phi i64 [ 0, %.lr.ph2231 ], [ %indvars.iv.next2436, %quantize_band_cost_cached.exit1871 ] ; 3 uses
  %.013142229 = phi float [ 0.000000e+00, %.lr.ph2231 ], [ %i.bbt, %quantize_band_cost_cached.exit1871 ]
  %.013152228 = phi float [ 0.000000e+00, %.lr.ph2231 ], [ %i.bbr, %quantize_band_cost_cached.exit1871 ]
  %.013162227 = phi i32 [ 0, %.lr.ph2231 ], [ %i.bbs, %quantize_band_cost_cached.exit1871 ]
  %i.bai = add nuw nsw i64 %indvars.iv2435, %i.axk
  %i.baj = shl nuw nsw i64 %indvars.iv2435, 7     ; 2 uses
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.axw, i64 %i.baj
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %i.baj
  %i.bam = load ptr, ptr %i.xi, align 16, !tbaa !72
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 %indvars.iv2438
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !73
  %i.bap = zext i8 %i.bao to i32
  %i.baq = load i32, ptr %i.axp, align 4, !tbaa !82
  %i.bar = add nsw i32 %i.baq, -1                 ; 2 uses
  %i.bas = sext i32 %i.bar to i64
  %i.bat = getelementptr inbounds [2048 x i8], ptr %i.xj, i64 %i.bas
  %.idx2623 = shl nuw nsw i64 %i.bai, 8
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 %.idx2623
  %i.bav = getelementptr inbounds nuw [16 x i8], ptr %i.bau, i64 %indvars.iv2438 ; 11 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 14 ; 2 uses
  %i.bax = load i16, ptr %i.baw, align 2, !tbaa !87
  %.not.i1868 = icmp eq i16 %i.bax, %i.bah
  br i1 %.not.i1868, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bav, i64 12
  %i.baz = load i8, ptr %i.bay, align 4, !tbaa !88
  %i.bba = sext i8 %i.baz to i32
  %.not34.i1869 = icmp eq i32 %.0.i18661942, %i.bba
  br i1 %.not34.i1869, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bav, i64 13
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !89
  %.not35.i1870 = icmp eq i8 %i.bbc, 0
  br i1 %.not35.i1870, label %.quantize_band_cost_cached.exit1871_crit_edge, label %bb.dz

.quantize_band_cost_cached.exit1871_crit_edge:    ; preds = %bb.dy
  %.pre2478 = load float, ptr %i.bav, align 4, !tbaa !90
  br label %quantize_band_cost_cached.exit1871

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bav, i64 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bav, i64 4
  %i.bbf = load ptr, ptr %i.bae, align 8, !tbaa !19
end_hunk_3
begin_hunk_4_@codebook_trellis_rate:.preheader242
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 7180
  %i.lx = shl nsw i32 %2, 4
  %i.ly = sext i32 %i.lx to i64                   ; 2 uses
  %i.lz = getelementptr inbounds i8, ptr %i.lw, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 5644
  %reass.sub.i229 = select i1 %i.g, i32 27, i32 29 ; 2 uses
  %.pre325 = load i32, ptr %i.ls, align 8, !tbaa !98
  %.pre326 = load i32, ptr %i.lt, align 4, !tbaa !99
  %invariant.gep = getelementptr [4 x i8], ptr %i.ma, i64 %i.ly ; 2 uses
  br label %bb.n

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %.lr.ph266
  %indvars.iv313 = phi i64 [ 0, %.lr.ph266.preheader ], [ %indvars.iv.next314, %.lr.ph266 ] ; 3 uses
  %.0201264 = phi i32 [ %i.bg, %.lr.ph266.preheader ], [ %i.mj, %.lr.ph266 ] ; 2 uses
  %.2204263 = phi i32 [ %spec.select.13, %.lr.ph266.preheader ], [ %i.mo, %.lr.ph266 ] ; 2 uses
  %i.mb = zext nneg i32 %.0201264 to i64
  %i.mc = getelementptr inbounds nuw [180 x i8], ptr %5, i64 %i.mb
  %i.md = sext i32 %.2204263 to i64               ; 2 uses
  %i.me = getelementptr inbounds [12 x i8], ptr %i.mc, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !177 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv313
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !82
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv313
  store i32 %.2204263, ptr %i.mi, align 4, !tbaa !82
  %i.mj = sub nsw i32 %.0201264, %i.mg            ; 3 uses
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr [180 x i8], ptr %5, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 180
  %i.mn = getelementptr inbounds [12 x i8], ptr %i.mm, i64 %i.md
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !176
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 3 uses
  %i.mp = icmp sgt i32 %i.mj, 0
  br i1 %i.mp, label %.lr.ph266, label %.preheader237, !llvm.loop !168

bb.n:                                             ; preds = %.lr.ph280, %put_bits.exit236
  %i.mq = phi i32 [ %.pre326, %.lr.ph280 ], [ %.0.i.i235, %put_bits.exit236 ] ; 4 uses
  %i.mr = phi i32 [ %.pre325, %.lr.ph280 ], [ %.026.i.i234, %put_bits.exit236 ] ; 2 uses
  %indvars.iv320 = phi i64 [ %indvars.iv.next314, %.lr.ph280 ], [ %indvars.iv.next321, %put_bits.exit236 ] ; 2 uses
  %.1208278 = phi i32 [ 0, %.lr.ph280 ], [ %.2209.lcssa, %put_bits.exit236 ] ; 2 uses
  %indvars.iv.next321 = add nsw i64 %indvars.iv320, -1 ; 3 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next321
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !82 ; 2 uses
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds i8, ptr @aac_cb_out_map, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !73
  %i.mx = zext i8 %i.mw to i32                    ; 6 uses
  %i.my = icmp sgt i32 %i.mq, 4
  br i1 %i.my, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mz = shl i32 %i.mr, 4
  %i.na = or i32 %i.mz, %i.mx
  br label %put_bits.exit

bb.p:                                             ; preds = %bb.n
  %i.nb = load ptr, ptr %i.lu, align 8, !tbaa !100
  %i.nc = load ptr, ptr %i.lv, align 8, !tbaa !101 ; 2 uses
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = icmp ugt i64 %i.nf, 3
  br i1 %i.ng, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nh = shl i32 %i.mr, %i.mq
  %i.ni = sub nsw i32 4, %i.mq
  %i.nj = lshr i32 %i.mx, %i.ni
  %i.nk = or i32 %i.nj, %i.nh
  %i.nl = call i32 @llvm.bswap.i32(i32 %i.nk)
  store i32 %i.nl, ptr %i.nc, align 1, !tbaa !73
  %i.nm = load ptr, ptr %i.lv, align 8, !tbaa !101
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  store ptr %i.nn, ptr %i.lv, align 8, !tbaa !101
  br label %put_bits.exit

bb.r:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.q, %bb.r, %bb.o
  %.sink352 = phi i32 [ -4, %bb.o ], [ 28, %bb.r ], [ 28, %bb.q ]
  %.026.i.i = phi i32 [ %i.na, %bb.o ], [ %i.mx, %bb.r ], [ %i.mx, %bb.q ]
  %i.no = add nsw i32 %i.mq, %.sink352
  store i32 %.026.i.i, ptr %i.ls, align 8, !tbaa !98
  store i32 %i.no, ptr %i.lt, align 4, !tbaa !99
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next321
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !82 ; 8 uses
  %i.nr = sext i32 %.1208278 to i64               ; 4 uses
  %i.ns = getelementptr inbounds i8, ptr %i.lz, i64 %i.nr
  %.not = icmp eq i32 %i.mt, 0
  %i.nt = zext i1 %.not to i8
  %i.nu = sext i32 %i.nq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ns, i8 %i.nt, i64 %i.nu, i1 false)
  %i.nv = icmp sgt i32 %i.nq, 0
  br i1 %i.nv, label %.lr.ph270.preheader, label %.preheader

.lr.ph270.preheader:                              ; preds = %put_bits.exit
  %i.nw = zext nneg i32 %i.nq to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.nq, 8
  br i1 %min.iters.check, label %.lr.ph270.preheader355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph270.preheader
  %n.vec = and i64 %i.nw, 2147483640              ; 4 uses
  %i.nx = add nsw i64 %n.vec, %i.nr               ; 2 uses
  %i.ny = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.mx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep363 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.nr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep364 = getelementptr [4 x i8], ptr %invariant.gep363, i64 %index ; 2 uses
  %i.nz = getelementptr i8, ptr %gep364, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep364, align 4, !tbaa !82
  store <4 x i32> %broadcast.splat, ptr %i.nz, align 4, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oa = icmp eq i64 %index.next, %n.vec
  br i1 %i.oa, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.nw
  br i1 %cmp.n, label %.preheader.loopexit, label %.lr.ph270.preheader355

.lr.ph270.preheader355:                           ; preds = %.lr.ph270.preheader, %middle.block
  %indvars.iv316.ph = phi i64 [ %i.nr, %.lr.ph270.preheader ], [ %i.nx, %middle.block ]
  %.0205269.ph = phi i32 [ 0, %.lr.ph270.preheader ], [ %i.ny, %middle.block ]
  br label %.lr.ph270

.preheader.loopexit:                              ; preds = %.lr.ph270, %middle.block
  %indvars.iv.next317.lcssa = phi i64 [ %i.nx, %middle.block ], [ %indvars.iv.next317, %.lr.ph270 ]
  %i.ob = trunc nsw i64 %indvars.iv.next317.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %put_bits.exit
  %.2209.lcssa = phi i32 [ %.1208278, %put_bits.exit ], [ %i.ob, %.preheader.loopexit ]
  %.not224272 = icmp slt i32 %i.nq, %i.bh
  %.pre329 = load i32, ptr %i.ls, align 8, !tbaa !98 ; 2 uses
  %.pre330 = load i32, ptr %i.lt, align 4, !tbaa !99 ; 2 uses
  br i1 %.not224272, label %._crit_edge275, label %.lr.ph274

.lr.ph270:                                        ; preds = %.lr.ph270.preheader355, %.lr.ph270
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %.lr.ph270 ], [ %indvars.iv316.ph, %.lr.ph270.preheader355 ] ; 2 uses
  %.0205269 = phi i32 [ %i.oc, %.lr.ph270 ], [ %.0205269.ph, %.lr.ph270.preheader355 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv316
  store i32 %i.mx, ptr %gep, align 4, !tbaa !82
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.oc = add nuw nsw i32 %.0205269, 1            ; 2 uses
  %exitcond319.not = icmp eq i32 %i.oc, %i.nq
  br i1 %exitcond319.not, label %.preheader.loopexit, label %.lr.ph270, !llvm.loop !170

.lr.ph274:                                        ; preds = %.preheader, %put_bits.exit232
  %i.od = phi i32 [ %.0.i.i231, %put_bits.exit232 ], [ %.pre330, %.preheader ] ; 5 uses
  %i.oe = phi i32 [ %.026.i.i230, %put_bits.exit232 ], [ %.pre329, %.preheader ] ; 2 uses
  %.0200273 = phi i32 [ %i.ox, %put_bits.exit232 ], [ %i.nq, %.preheader ]
  %i.of = icmp slt i32 %i.h, %i.od
  br i1 %i.of, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph274
  %i.og = shl i32 %i.oe, %i.h
  %i.oh = or i32 %i.og, %i.bh
  %i.oi = sub nuw nsw i32 %i.od, %i.h
  br label %put_bits.exit232

bb.t:                                             ; preds = %.lr.ph274
  %i.oj = load ptr, ptr %i.lu, align 8, !tbaa !100
  %i.ok = load ptr, ptr %i.lv, align 8, !tbaa !101 ; 2 uses
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = icmp ugt i64 %i.on, 3
  br i1 %i.oo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.op = shl i32 %i.oe, %i.od
  %i.oq = sub nsw i32 %i.h, %i.od
  %i.or = lshr i32 %i.bh, %i.oq
  %i.os = or i32 %i.or, %i.op
  %i.ot = call i32 @llvm.bswap.i32(i32 %i.os)
  store i32 %i.ot, ptr %i.ok, align 1, !tbaa !73
  %i.ou = load ptr, ptr %i.lv, align 8, !tbaa !101
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  store ptr %i.ov, ptr %i.lv, align 8, !tbaa !101
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ow = add nsw i32 %reass.sub.i229, %i.od
  br label %put_bits.exit232

put_bits.exit232:                                 ; preds = %bb.s, %bb.w
  %.026.i.i230 = phi i32 [ %i.oh, %bb.s ], [ %i.bh, %bb.w ] ; 3 uses
  %.0.i.i231 = phi i32 [ %i.oi, %bb.s ], [ %i.ow, %bb.w ] ; 3 uses
  store i32 %.026.i.i230, ptr %i.ls, align 8, !tbaa !98
  store i32 %.0.i.i231, ptr %i.lt, align 4, !tbaa !99
  %i.ox = sub nsw i32 %.0200273, %i.bh            ; 3 uses
  %.not224 = icmp slt i32 %i.ox, %i.bh
  br i1 %.not224, label %._crit_edge275, label %.lr.ph274, !llvm.loop !171

._crit_edge275:                                   ; preds = %put_bits.exit232, %.preheader
  %i.oy = phi i32 [ %.pre330, %.preheader ], [ %.0.i.i231, %put_bits.exit232 ] ; 5 uses
  %i.oz = phi i32 [ %.pre329, %.preheader ], [ %.026.i.i230, %put_bits.exit232 ] ; 2 uses
  %.0200.lcssa = phi i32 [ %i.nq, %.preheader ], [ %i.ox, %put_bits.exit232 ] ; 3 uses
  %i.pa = icmp slt i32 %i.h, %i.oy
  br i1 %i.pa, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge275
  %i.pb = shl i32 %i.oz, %i.h
  %i.pc = or i32 %i.pb, %.0200.lcssa
  %i.pd = sub nuw nsw i32 %i.oy, %i.h
  br label %put_bits.exit236

bb.y:                                             ; preds = %._crit_edge275
  %i.pe = load ptr, ptr %i.lu, align 8, !tbaa !100
  %i.pf = load ptr, ptr %i.lv, align 8, !tbaa !101 ; 2 uses
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph
  %i.pj = icmp ugt i64 %i.pi, 3
  br i1 %i.pj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.pk = shl i32 %i.oz, %i.oy
  %i.pl = sub nsw i32 %i.h, %i.oy
  %i.pm = lshr i32 %.0200.lcssa, %i.pl
  %i.pn = or i32 %i.pm, %i.pk
  %i.po = call i32 @llvm.bswap.i32(i32 %i.pn)
  store i32 %i.po, ptr %i.pf, align 1, !tbaa !73
  %i.pp = load ptr, ptr %i.lv, align 8, !tbaa !101
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  store ptr %i.pq, ptr %i.lv, align 8, !tbaa !101
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.pr = add nsw i32 %reass.sub.i229, %i.oy
  br label %put_bits.exit236

put_bits.exit236:                                 ; preds = %bb.x, %bb.ab
  %.026.i.i234 = phi i32 [ %i.pc, %bb.x ], [ %.0200.lcssa, %bb.ab ] ; 2 uses
  %.0.i.i235 = phi i32 [ %i.pd, %bb.x ], [ %i.pr, %bb.ab ] ; 2 uses
  store i32 %.026.i.i234, ptr %i.ls, align 8, !tbaa !98
  store i32 %.0.i.i235, ptr %i.lt, align 4, !tbaa !99
  %i.ps = icmp sgt i64 %indvars.iv320, 1
  br i1 %i.ps, label %bb.n, label %._crit_edge281, !llvm.loop !172

._crit_edge281:                                   ; preds = %put_bits.exit236, %.preheader242, %.preheader237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @quantize_and_encode_band(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, i32 noundef %8) #1 {
bb.a:
  %.not = icmp eq i32 %8, 0
  %i.a = select i1 %.not, ptr @quantize_and_encode_band_cost_arr, ptr @quantize_and_encode_band_cost_rtz_arr
  %i.b = sext i32 %6 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = tail call nsz float %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef +inf, ptr noundef null, ptr noundef null) #13 ; 0 uses
  ret void
}

declare void @ff_aac_encode_tns_info(ptr noundef, ptr noundef) #2

declare void @ff_aac_apply_tns(ptr noundef, ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @set_special_band_scalefactors(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader95.lr.ph, label %.loopexit

.preheader95.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7180
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5644
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 7948
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 6668 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7436
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 14
  br i1 %i.f, label %.preheader95.us.preheader, label %.loopexit

.preheader95.us.preheader:                        ; preds = %.preheader95.lr.ph
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.preheader95.us

.preheader95.us:                                  ; preds = %.preheader95.us.preheader, %._crit_edge.us
  %.0102.us = phi i32 [ %.2.us, %._crit_edge.us ], [ 0, %.preheader95.us.preheader ]
  %.077101.us = phi i32 [ %.3.us, %._crit_edge.us ], [ -255, %.preheader95.us.preheader ]
  %.082100.us = phi i32 [ %i.ar, %._crit_edge.us ], [ 0, %.preheader95.us.preheader ] ; 3 uses
  %i.m = shl nuw nsw i32 %.082100.us, 4
  %i.n = zext nneg i32 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader95.us, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader95.us ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.198.us = phi i32 [ %.0102.us, %.preheader95.us ], [ %.2.us, %bb.f ] ; 4 uses
  %.17897.us = phi i32 [ %.077101.us, %.preheader95.us ], [ %.3.us, %bb.f ] ; 5 uses
  %i.o = add nuw nsw i64 %indvars.iv, %i.n        ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !73
  %.not87.us = icmp eq i8 %i.q, 0
  br i1 %.not87.us, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.o
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82
  switch i32 %i.s, label %bb.f [
    i32 15, label %bb.e
    i32 14, label %bb.e
    i32 13, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.o
  %i.u = load float, ptr %i.t, align 4, !tbaa !80
  %i.v = tail call nsz float @llvm.log2.f32(float %i.u)
  %i.w = fmul nsz float %i.v, 2.000000e+00
  %i.x = tail call nsz float @llvm.ceil.f32(float %i.w)
  %i.y = fadd nsz float %i.x, 3.000000e+00
  %i.z = fptosi float %i.y to i32
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.z, i32 -100)
  %.0.i91.us = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 155) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.o
  store i32 %.0.i91.us, ptr %i.ab, align 4, !tbaa !82
  %i.ac = icmp eq i32 %.17897.us, -255
  %spec.select.us = select i1 %i.ac, i32 %.0.i91.us, i32 %.17897.us
  %i.ad = add nsw i32 %.198.us, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.o
  %i.af = load float, ptr %i.ae, align 4, !tbaa !80
  %i.ag = tail call nsz float @llvm.log2.f32(float %i.af)
  %i.ah = fmul nsz float %i.ag, 2.000000e+00
  %i.ai = tail call nsz float @llvm.round.f32(float %i.ah)
  %i.aj = fptosi float %i.ai to i32
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 -155)
  %.0.i93.us = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 100)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.o
  store i32 %.0.i93.us, ptr %i.al, align 4, !tbaa !82
  %i.am = add nsw i32 %.198.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.3.us = phi i32 [ %.17897.us, %bb.b ], [ %.17897.us, %bb.e ], [ %spec.select.us, %bb.d ], [ %.17897.us, %bb.c ] ; 3 uses
  %.2.us = phi i32 [ %.198.us, %bb.b ], [ %i.am, %bb.e ], [ %i.ad, %bb.d ], [ %.198.us, %bb.c ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !178

._crit_edge.us:                                   ; preds = %bb.f
  %i.an = zext nneg i32 %.082100.us to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !73
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.082100.us, %i.aq      ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.b
  br i1 %i.as, label %.preheader95.us, label %._crit_edge103, !llvm.loop !179

._crit_edge103:                                   ; preds = %._crit_edge.us
  %.not = icmp eq i32 %.2.us, 0
  br i1 %.not, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge103
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !71 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7180
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 5644
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 6668 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 14
  br i1 %i.av, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count124 = zext nneg i32 %i.au to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us116
  %.074115.us = phi i32 [ %.276.us, %._crit_edge.us116 ], [ 0, %.preheader.us.preheader ]
  %.4114.us = phi i32 [ %.6.us, %._crit_edge.us116 ], [ %.3.us, %.preheader.us.preheader ]
  %.183113.us = phi i32 [ %i.bv, %._crit_edge.us116 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.ba = shl nuw nsw i32 %.183113.us, 4
  %i.bb = zext nneg i32 %i.ba to i64
  br label %bb.g

end_hunk_4
begin_hunk_5_@search_for_pns:bb.a
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.bw) ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 22000
  br i1 %i.by, label %.thread630, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = sdiv i32 %i.k, 2
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.bz)
  %i.ca = icmp slt i32 %spec.select, 3000
  br i1 %i.ca, label %.thread637, label %.thread633

.thread630:                                       ; preds = %bb.f
  %i.cb = icmp slt i32 %i.k, 6000
  br i1 %i.cb, label %.thread637, label %.thread636

.thread634:                                       ; preds = %bb.e
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.k, i32 6000)
  %spec.select756 = lshr i32 %i.cc, 1
  br label %.thread637

.thread633:                                       ; preds = %bb.g
  %i.cd = sdiv i32 %i.k, 2
  %spec.select650 = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.cd)
  br label %.thread637

.thread636:                                       ; preds = %.thread630
  %i.ce = lshr i32 %i.k, 1
  %spec.select648 = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 22000)
  br label %.thread637

.thread637:                                       ; preds = %.thread634, %.thread630, %.thread633, %.thread636, %bb.g, %bb.d
  %.0466 = phi i32 [ %i.bm, %bb.d ], [ 3000, %bb.g ], [ 3000, %.thread630 ], [ %spec.select756, %.thread634 ], [ %spec.select648, %.thread636 ], [ %spec.select650, %.thread633 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 6156 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 5644 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.cf, ptr noundef nonnull align 4 dereferenceable(512) %i.cg, i64 512, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !73
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.ch, align 16, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.ci, align 16, !tbaa !73
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.cj, align 16, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.ck, align 16, !tbaa !73
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.cl, align 16, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.cm, align 16, !tbaa !73
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.cn, align 16, !tbaa !73
  %i.co = shl nsw i32 %i.d, 1
  %i.cp = mul i32 %i.co, %.0466
  %i.cq = sdiv i32 %i.cp, %i.k
  %i.cr = icmp sgt i32 %i.c, 0
  br i1 %i.cr, label %.preheader.lr.ph.i, label %._crit_edge700

.preheader.lr.ph.i:                               ; preds = %.thread637
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !71 ; 4 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.preheader.i.preheader, label %ff_init_nextband_map.exit.thread

ff_init_nextband_map.exit.thread:                 ; preds = %.preheader.lr.ph.i
  store i8 0, ptr %i.a, align 16, !tbaa !73
  br label %.preheader654.lr.ph

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.cx = zext nneg i32 %i.cv to i64              ; 2 uses
  %xtraiter = and i64 %i.cx, 1
  %i.cy = icmp eq i32 %i.cv, 1
  %unroll_iter = and i64 %i.cx, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod770 = trunc i32 %i.cv to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.02533.i = phi i32 [ %i.eg, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.02632.i = phi i8 [ %.2.i.lcssa, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.cz = shl nuw nsw i32 %.02533.i, 4
  %i.da = zext nneg i32 %i.cz to i64              ; 3 uses
  br i1 %i.cy, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %bb.m
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i.1, %bb.m ], [ 0, %.preheader.i ] ; 3 uses
  %.12730.i = phi i8 [ %.2.i.1, %bb.m ], [ %.02632.i, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.m ], [ 0, %.preheader.i ]
  %i.db = add nuw nsw i64 %indvars.iv38.i, %i.da  ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !73
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader.i.new
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.db
  %i.df = load i32, ptr %i.de, align 4, !tbaa !82
  %i.dg = icmp ult i32 %i.df, 12
  br i1 %i.dg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dh = trunc i64 %i.db to i8                   ; 2 uses
  %i.di = zext i8 %.12730.i to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.preheader.i.new
  %.2.i = phi i8 [ %.12730.i, %.preheader.i.new ], [ %i.dh, %bb.i ], [ %.12730.i, %bb.h ] ; 3 uses
  %indvars.iv.next39.i = or disjoint i64 %indvars.iv38.i, 1
  %i.dk = add nuw nsw i64 %indvars.iv.next39.i, %i.da ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !73
  %.not.i.1 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.1, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dk
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !82
  %i.dp = icmp ult i32 %i.do, 12
  br i1 %i.dp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dq = trunc i64 %i.dk to i8                   ; 2 uses
  %i.dr = zext i8 %.2.i to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dr
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !73
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.2.i.1 = phi i8 [ %.2.i, %bb.j ], [ %i.dq, %bb.l ], [ %.2.i, %bb.k ] ; 3 uses
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !3

._crit_edge.i.unr-lcssa:                          ; preds = %bb.m
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv38.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next39.i.1, %._crit_edge.i.unr-lcssa ]
  %.12730.i.epil.init = phi i8 [ %.02632.i, %.preheader.i ], [ %.2.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod770)
  %i.dt = add nuw nsw i64 %indvars.iv38.i.epil.init, %i.da ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !73
  %.not.i.epil = icmp eq i8 %i.dv, 0
  br i1 %.not.i.epil, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %.epil.preheader
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dt
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !82
  %i.dy = icmp ult i32 %i.dx, 12
  br i1 %i.dy, label %bb.o, label %._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %i.dz = trunc i64 %i.dt to i8                   ; 2 uses
  %i.ea = zext i8 %.12730.i.epil.init to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !73
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.n, %bb.o, %._crit_edge.i.unr-lcssa
  %.2.i.lcssa = phi i8 [ %.2.i.1, %._crit_edge.i.unr-lcssa ], [ %.12730.i.epil.init, %.epil.preheader ], [ %i.dz, %bb.o ], [ %.12730.i.epil.init, %bb.n ] ; 3 uses
  %i.ec = zext nneg i32 %.02533.i to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !73
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nuw nsw i32 %.02533.i, %i.ef        ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %i.c
  br i1 %i.eh, label %.preheader.i, label %ff_init_nextband_map.exit, !llvm.loop !4

ff_init_nextband_map.exit:                        ; preds = %._crit_edge.i
  %i.ei = zext i8 %.2.i.lcssa to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei
  store i8 %.2.i.lcssa, ptr %i.ej, align 1, !tbaa !73
  br label %.preheader654.lr.ph

.preheader654.lr.ph:                              ; preds = %ff_init_nextband_map.exit, %ff_init_nextband_map.exit.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 6668 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 38160 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 38232 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 38236 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 567080 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 12560
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 7948 ; 3 uses
  %i.ex = load i32, ptr %i.ek, align 8, !tbaa !71 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.preheader654, label %._crit_edge700

.preheader654:                                    ; preds = %.preheader654.lr.ph, %._crit_edge695
  %i.ez = phi i32 [ %i.ne, %._crit_edge695 ], [ %i.c, %.preheader654.lr.ph ]
  %i.fa = phi i32 [ %i.nf, %._crit_edge695 ], [ %i.ex, %.preheader654.lr.ph ] ; 2 uses
  %.0460699 = phi i32 [ %.1461.lcssa, %._crit_edge695 ], [ -1, %.preheader654.lr.ph ] ; 2 uses
  %.0462698 = phi i32 [ %.1463.lcssa, %._crit_edge695 ], [ -1000, %.preheader654.lr.ph ] ; 2 uses
  %.0471697 = phi i32 [ %i.nj, %._crit_edge695 ], [ 0, %.preheader654.lr.ph ] ; 5 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph694, label %.preheader654.._crit_edge695_crit_edge

.preheader654.._crit_edge695_crit_edge:           ; preds = %.preheader654
  %.pre725 = zext nneg i32 %.0471697 to i64
  br label %._crit_edge695

.lr.ph694:                                        ; preds = %.preheader654
  %i.fc = shl nsw i32 %.0471697, 4
  %i.fd = zext nneg i32 %.0471697 to i64          ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fd ; 2 uses
  %i.ff = zext nneg i32 %i.fc to i64              ; 2 uses
  %.idx = shl nuw nsw i64 %i.fd, 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph694, %.thread644
  %indvars.iv719 = phi i64 [ 0, %.lr.ph694 ], [ %indvars.iv.next720, %.thread644 ] ; 15 uses
  %.1461689 = phi i32 [ %.0460699, %.lr.ph694 ], [ %.8, %.thread644 ] ; 7 uses
  %.1463687 = phi i32 [ %.0462698, %.lr.ph694 ], [ %.3465, %.thread644 ] ; 9 uses
  %i.fg = load ptr, ptr %i.el, align 8, !tbaa !95
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv719
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !96 ; 2 uses
  %i.fj = uitofp i16 %i.fi to float
  %i.fk = fmul nsz float %i.o, %i.fj              ; 3 uses
  %i.fl = fmul nsz float %i.fk, f0x3F6147AE
  %i.fm = fdiv nsz float %i.fl, 4.000000e+03      ; 2 uses
  %i.fn = fcmp nsz ogt float %i.fm, 1.000000e+00
  %i.fo = select nsz i1 %i.fn, float %i.fm, float 1.000000e+00 ; 2 uses
  %i.fp = fcmp nsz uge float %i.fk, 4.000000e+03
  %i.fq = zext i16 %i.fi to i32
  %.not566 = icmp sgt i32 %i.cq, %i.fq
  %or.cond613 = select i1 %i.fp, i1 %.not566, i1 false
  br i1 %or.cond613, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.p
  %i.fr = load i8, ptr %i.fe, align 1, !tbaa !73  ; 3 uses
  %.not701 = icmp eq i8 %i.fr, 0                  ; 2 uses
  br i1 %.not701, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.fs = load ptr, ptr %i.ep, align 16, !tbaa !75
  %i.ft = load i32, ptr %i.eq, align 8, !tbaa !76
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [2052 x i8], ptr %i.fs, i64 %i.fu ; 2 uses
  %wide.trip.count = zext i8 %i.fr to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %indvars.iv719 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !81 ; 2 uses
  %i.gb = fcmp nsz olt float %i.ga, 2.000000e+00
  %..0453.peel = select nsz i1 %i.gb, float %i.ga, float 2.000000e+00 ; 2 uses
  %i.gc = load <2 x float>, ptr %i.fy, align 4, !tbaa !80 ; 3 uses
  %exitcond711.peel.not = icmp eq i8 %i.fr, 1
  %i.gd = extractelement <2 x float> %i.gc, i64 0 ; 4 uses
  br i1 %exitcond711.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.q
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv719
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ge = add nuw nsw i64 %indvars.iv719, %i.ff   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !73
  %.not581 = icmp eq i8 %i.gg, 0
  br i1 %.not581, label %bb.s, label %.thread644

bb.s:                                             ; preds = %bb.r
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ge
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !82
  br label %.thread644

bb.t:                                             ; preds = %.peel.next, %bb.t
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %.0450664 = phi float [ %i.gd, %.peel.next ], [ %i.gu, %bb.t ] ; 2 uses
  %.0451663 = phi float [ %i.gd, %.peel.next ], [ %..0451, %bb.t ] ; 2 uses
  %.0453662 = phi float [ %..0453.peel, %.peel.next ], [ %..0453, %bb.t ] ; 2 uses
  %i.gj = phi <2 x float> [ %i.gc, %.peel.next ], [ %i.gq, %bb.t ]
  %i.gk = add nuw nsw i64 %indvars.iv, %i.fd
  %.idx741 = shl nuw nsw i64 %i.gk, 8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx741 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !81 ; 2 uses
  %i.go = fcmp nsz ogt float %.0453662, %i.gn
  %..0453 = select nsz i1 %i.go, float %i.gn, float %.0453662 ; 2 uses
  %i.gp = load <2 x float>, ptr %i.gl, align 4, !tbaa !80 ; 2 uses
  %i.gq = fadd nsz <2 x float> %i.gj, %i.gp       ; 2 uses
  %i.gr = extractelement <2 x float> %i.gp, i64 0 ; 4 uses
  %i.gs = fcmp nsz ogt float %.0451663, %i.gr
  %..0451 = select nsz i1 %i.gs, float %i.gr, float %.0451663 ; 2 uses
  %i.gt = fcmp nsz ogt float %.0450664, %i.gr
  %i.gu = select nsz i1 %i.gt, float %.0450664, float %i.gr ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond711.not, label %._crit_edge, label %bb.t, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.t, %bb.q, %.preheader
  %.0453.lcssa = phi float [ 2.000000e+00, %.preheader ], [ %..0453.peel, %bb.q ], [ %..0453, %bb.t ] ; 4 uses
  %.0451.lcssa = phi float [ -1.000000e+00, %.preheader ], [ %i.gd, %bb.q ], [ %..0451, %bb.t ] ; 2 uses
  %.0450.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.gd, %bb.q ], [ %i.gu, %bb.t ] ; 2 uses
  %i.gv = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.gc, %bb.q ], [ %i.gq, %bb.t ] ; 6 uses
  %i.gw = fdiv nsz float 1.000000e+04, %i.fk      ; 2 uses
  %i.gx = fcmp nsz ogt float %i.gw, 5.000000e-01
  %i.gy = select nsz i1 %i.gx, float %i.gw, float 5.000000e-01 ; 2 uses
  %i.gz = fcmp nsz ogt float %i.gy, 2.500000e+00
  %..i627 = select nsz i1 %i.gz, float 2.500000e+00, float %i.gy
  %i.ha = fmul nsz float %..i628, %..i627
  %i.hb = add nuw nsw i64 %indvars.iv719, %i.ff   ; 13 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.hb ; 3 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !73
  %.not567 = icmp eq i8 %i.hd, 0                  ; 4 uses
  br i1 %.not567, label %bb.u, label %bb.x

bb.u:                                             ; preds = %._crit_edge
  %i.he = icmp sgt i32 %.1461689, -1
  br i1 %i.he, label %bb.v, label %.thread642

bb.v:                                             ; preds = %bb.u
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hb
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !73
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !82 ; 2 uses
  %i.hk = add nsw i32 %.1461689, -60
  %.not.i629 = icmp slt i32 %i.hj, %i.hk
  %i.hl = add nuw nsw i32 %.1461689, 60
  %.not651 = icmp sgt i32 %i.hj, %i.hl
  %or.cond653 = select i1 %.not.i629, i1 true, i1 %.not651
  br i1 %or.cond653, label %.thread642, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hb
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !82
  %.not570 = icmp eq i32 %i.hn, 0
  br i1 %.not570, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge, %bb.w
  %i.ho = fdiv nsz float 1.000000e+00, %i.fo
  %i.hp = tail call nsz float @llvm.sqrt.f32(float %i.ho)
  %i.hq = extractelement <2 x float> %i.gv, i64 1
  %i.hr = fmul nsz float %i.hp, %i.hq
  %i.hs = extractelement <2 x float> %i.gv, i64 0 ; 2 uses
  %i.ht = fcmp nsz olt float %i.hs, %i.hr
  %i.hu = fcmp nsz olt float %.0453.lcssa, %i.af
  %or.cond614 = select i1 %i.ht, i1 true, i1 %i.hu
  br i1 %or.cond614, label %bb.ab, label %bb.z

bb.y:                                             ; preds = %bb.w
  %.old = fcmp nsz olt float %.0453.lcssa, %i.af
  br i1 %.old, label %.thread642, label %.thread640.thread

bb.z:                                             ; preds = %bb.x
  br i1 %.not567, label %.thread640, label %bb.aa

.thread640:                                       ; preds = %bb.z
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hb
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !82
  %i.hv = icmp eq i32 %.pre, 0
  br i1 %i.hv, label %bb.aa, label %.thread640.thread

.thread640.thread:                                ; preds = %bb.y, %.thread640
  %i.hw = extractelement <2 x float> %i.gv, i64 1
  %i.hx = fmul nsz float %i.t, %i.hw
  %i.hy = fmul nsz float %i.fo, %i.hx
  %i.hz = extractelement <2 x float> %i.gv, i64 0
  %i.ia = fcmp nsz ogt float %i.hz, %i.hy
  %i.ib = fmul nsz float %i.ai, %.0450.lcssa
  %i.ic = fcmp nsz olt float %.0451.lcssa, %i.ib
  %or.cond617 = select i1 %i.ia, i1 true, i1 %i.ic
  br i1 %or.cond617, label %.thread642, label %bb.ad

bb.aa:                                            ; preds = %.thread640, %bb.z
  %.old615 = fmul nsz float %i.ai, %.0450.lcssa
  %.old616 = fcmp nsz olt float %.0451.lcssa, %.old615
  br i1 %.old616, label %bb.ab, label %bb.ad

.thread642:                                       ; preds = %.thread640.thread, %bb.y, %bb.v, %bb.u
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.hb
  %i.ie = extractelement <2 x float> %i.gv, i64 0
  store float %i.ie, ptr %i.id, align 4, !tbaa !80
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.hb
  store float %i.hs, ptr %i.if, align 4, !tbaa !80
  br i1 %.not567, label %bb.ac, label %.thread644

bb.ac:                                            ; preds = %.thread642, %bb.ab
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.hb
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !82
  br label %.thread644

bb.ad:                                            ; preds = %.thread640.thread, %bb.aa
  %i.ii = fmul nsz float %.0453.lcssa, %.0453.lcssa ; 2 uses
  %i.ij = fcmp nsz olt float %i.ii, 1.000000e+00
  %i.ik = select nsz i1 %i.ij, float %i.ii, float 1.000000e+00
  %i.il = extractelement <2 x float> %i.gv, i64 0
  %i.im = fmul nsz float %i.il, %i.ik             ; 3 uses
  %i.in = tail call nsz float @llvm.log2.f32(float %i.im)
  %i.io = fmul nsz float %i.in, 2.000000e+00
  %i.ip = tail call nsz float @llvm.round.f32(float %i.io)
  %i.iq = fptosi float %i.ip to i32
  %i.ir = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 -100)
  %.0.i = tail call i32 @llvm.smin.i32(i32 %i.ir, i32 155) ; 3 uses
  %i.is = sext i32 %.0.i to i64
  %i.it = getelementptr [4 x i8], ptr @ff_aac_pow2sf_tab, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 800
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !80
  %i.iw = fneg nsz float %i.iv
  %.not573 = icmp eq i32 %.1463687, -1000
  br i1 %.not573, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %reass.sub = sub nsw i32 %.0.i, %.1463687
  %i.ix = add nsw i32 %reass.sub, 60
  %or.cond = icmp ult i32 %i.ix, 121
  br i1 %or.cond, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not567, label %bb.ag, label %.thread644

bb.ag:                                            ; preds = %bb.af
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.hb
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !82
  br label %.thread644

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not701, label %._crit_edge682, label %.lr.ph681.preheader

.lr.ph681.preheader:                              ; preds = %bb.ah
  %3 = trunc nuw nsw i64 %indvars.iv719 to i32
  br label %.lr.ph681

.lr.ph681:                                        ; preds = %.lr.ph681.preheader, %._crit_edge674
  %indvars.iv716 = phi i64 [ 0, %.lr.ph681.preheader ], [ %indvars.iv.next717, %._crit_edge674 ] ; 2 uses
  %.0459677 = phi float [ 0.000000e+00, %.lr.ph681.preheader ], [ %i.lq, %._crit_edge674 ]
  %i.ja = phi <2 x float> [ zeroinitializer, %.lr.ph681.preheader ], [ %i.md, %._crit_edge674 ]
  %4 = trunc nuw nsw i64 %indvars.iv716 to i32
  %5 = add i32 %.0471697, %4                      ; 2 uses
  %6 = shl nsw i32 %5, 7
  %i.jb = load ptr, ptr %i.el, align 8, !tbaa !95
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %indvars.iv719
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !96
  %7 = zext i16 %i.jd to i32
  %8 = add nuw nsw i32 %6, %7
  %i.je = load ptr, ptr %i.ep, align 16, !tbaa !75
  %i.jf = load i32, ptr %i.eq, align 8, !tbaa !76
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [2052 x i8], ptr %i.je, i64 %i.jg
  %9 = shl nsw i32 %5, 4
  %10 = add nuw nsw i32 %9, %3
  %11 = zext nneg i32 %10 to i64                  ; 3 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %11 ; 3 uses
  %i.jj = load ptr, ptr %i.er, align 16, !tbaa !72
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv719 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !73
  %.not703 = icmp eq i8 %i.jl, 0
  br i1 %.not703, label %._crit_edge674, label %.lr.ph673.preheader

.lr.ph673.preheader:                              ; preds = %.lr.ph681
  %.pre723 = load i32, ptr %i.es, align 4, !tbaa !187
  br label %.lr.ph673

.lr.ph673:                                        ; preds = %.lr.ph673.preheader, %.lr.ph673
  %i.jm = phi i32 [ %.pre723, %.lr.ph673.preheader ], [ %i.jo, %.lr.ph673 ]
  %indvars.iv713 = phi i64 [ 0, %.lr.ph673.preheader ], [ %indvars.iv.next714, %.lr.ph673 ] ; 2 uses
  %i.jn = mul i32 %i.jm, 1664525
  %i.jo = add i32 %i.jn, 1013904223               ; 3 uses
  store i32 %i.jo, ptr %i.es, align 4, !tbaa !187
  %i.jp = sitofp nsz i32 %i.jo to float
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv713
  store float %i.jp, ptr %i.jq, align 4, !tbaa !80
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %i.jr = load i8, ptr %i.jk, align 1, !tbaa !73  ; 2 uses
  %i.js = zext i8 %i.jr to i64
  %i.jt = icmp samesign ult i64 %indvars.iv.next714, %i.js
  br i1 %i.jt, label %.lr.ph673, label %._crit_edge674.loopexit, !llvm.loop !183

._crit_edge674.loopexit:                          ; preds = %.lr.ph673
  %i.ju = zext i8 %i.jr to i32
  br label %._crit_edge674

._crit_edge674:                                   ; preds = %._crit_edge674.loopexit, %.lr.ph681
  %.lcssa655.in = phi i32 [ 0, %.lr.ph681 ], [ %i.ju, %._crit_edge674.loopexit ]
  %i.jv = load ptr, ptr %i.et, align 16, !tbaa !188
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !190
  %i.jy = tail call nsz float %i.jx(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i32 noundef %.lcssa655.in) #13
  %i.jz = tail call nsz float @llvm.sqrt.f32(float %i.jy)
  %i.ka = fdiv nsz float %i.iw, %i.jz
  %i.kb = load ptr, ptr %i.et, align 16, !tbaa !188
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !191
  %i.ke = load ptr, ptr %i.er, align 16, !tbaa !72
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %indvars.iv719
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !73
  %i.kh = zext i8 %i.kg to i32
  tail call void %i.kd(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, float noundef %i.ka, i32 noundef %i.kh) #13
  %i.ki = load ptr, ptr %i.et, align 16, !tbaa !188
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 72
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !190
  %i.kl = load ptr, ptr %i.er, align 16, !tbaa !72
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %indvars.iv719
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !73
  %i.ko = zext i8 %i.kn to i32
  %i.kp = tail call nsz float %i.kk(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i32 noundef %i.ko) #13
  %i.kq = load ptr, ptr %i.eu, align 8, !tbaa !83
  %12 = zext nneg i32 %8 to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %12 ; 2 uses
  %i.ks = load ptr, ptr %i.er, align 16, !tbaa !72
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %indvars.iv719
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !73
  %i.kv = zext i8 %i.ku to i32
  tail call void %i.kq(ptr noundef nonnull %i.g, ptr noundef nonnull %i.kr, i32 noundef %i.kv) #13
  %i.kw = load ptr, ptr %i.eu, align 8, !tbaa !83
  %i.kx = load ptr, ptr %i.er, align 16, !tbaa !72
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %indvars.iv719
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !73
  %i.la = zext i8 %i.kz to i32
  tail call void %i.kw(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i32 noundef %i.la) #13
  %i.lb = load ptr, ptr %i.er, align 16, !tbaa !72
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv719
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !73
  %i.le = zext i8 %i.ld to i32
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %11
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !82
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %11
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !82 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !79
  %i.ll = fdiv nsz float %i.i, %i.lk
  %i.lm = sext i32 %i.li to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !19
  %i.lp = tail call nsz float %i.lo(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.kr, ptr noundef null, ptr noundef nonnull %i.g, i32 noundef range(i32 0, 256) %i.le, i32 noundef %i.lg, i32 noundef %i.li, float noundef %i.ll, float noundef +inf, ptr noundef null, ptr noundef null) #13, !inline_history !5
  %i.lq = fadd nsz float %.0459677, %i.lp         ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !78
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !81 ; 2 uses
  %i.lv = fmul nsz float %i.lu, %i.lu
  %i.lw = fdiv nsz float %i.ls, %i.lv
  %i.lx = fmul nsz float %i.i, %i.lw
  %i.ly = fmul nsz float %i.ha, %i.lx
  %i.lz = load float, ptr %i.lj, align 4, !tbaa !79
  %i.ma = fdiv nsz float %i.ly, %i.lz
  %i.mb = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mc = insertelement <2 x float> %i.mb, float %i.kp, i64 1
  %i.md = fadd nsz <2 x float> %i.ja, %i.mc       ; 2 uses
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 2 uses
  %i.me = load i8, ptr %i.fe, align 1, !tbaa !73
  %i.mf = zext i8 %i.me to i64
  %i.mg = icmp samesign ult i64 %indvars.iv.next717, %i.mf
  br i1 %i.mg, label %.lr.ph681, label %._crit_edge682, !llvm.loop !184

._crit_edge682:                                   ; preds = %._crit_edge674, %bb.ah
  %.0459.lcssa = phi float [ 0.000000e+00, %bb.ah ], [ %i.lq, %._crit_edge674 ]
  %i.mh = phi <2 x float> [ zeroinitializer, %bb.ah ], [ %i.md, %._crit_edge674 ] ; 2 uses
  %.not575 = icmp eq i64 %indvars.iv719, 0
  br i1 %.not575, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge682
  %i.mi = getelementptr [4 x i8], ptr %i.cg, i64 %i.hb
  %i.mj = getelementptr i8, ptr %i.mi, i64 -4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !82
  %i.ml = icmp eq i32 %i.mk, 13
  br i1 %i.ml, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge682
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sink = phi float [ 9.000000e+00, %bb.aj ], [ 5.000000e+00, %bb.ai ]
  %i.mm = extractelement <2 x float> %i.mh, i64 0
  %i.mn = fadd nsz float %i.mm, %.sink
  %i.mo = extractelement <2 x float> %i.mh, i64 1
  %i.mp = fdiv nsz float %i.im, %i.mo             ; 3 uses
  %i.mq = fmul nsz float %i.im, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.hb
  store float %i.mq, ptr %i.mr, align 4, !tbaa !80
  %i.ms = load i8, ptr %i.hc, align 1, !tbaa !73
  %.not576 = icmp eq i8 %i.ms, 0
  br i1 %.not576, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.hb
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !82
  %.not577 = icmp eq i32 %i.mu, 0
  br i1 %.not577, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mv = fcmp nsz ogt float %i.mp, 8.500000e-01
  %i.mw = fcmp nsz olt float %i.mp, 1.250000e+00
  %or.cond3 = and i1 %i.mv, %i.mw
  %i.mx = fcmp nsz olt float %i.mn, %.0459.lcssa
  %or.cond619 = select i1 %or.cond3, i1 %i.mx, i1 false
  br i1 %or.cond619, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hb
  store i32 13, ptr %i.my, align 4, !tbaa !82
  store i8 0, ptr %i.hc, align 1, !tbaa !73
  br label %.thread644

bb.ao:                                            ; preds = %bb.am
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.hb
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !82
  br label %.thread644

.thread644:                                       ; preds = %bb.ag, %bb.af, %bb.an, %bb.ao, %bb.ab, %bb.ac, %bb.r, %bb.s
  %.3465 = phi i32 [ %.1463687, %bb.ao ], [ %.1463687, %bb.r ], [ %.1463687, %bb.ab ], [ %.1463687, %bb.s ], [ %.1463687, %bb.ac ], [ %.0.i, %bb.an ], [ %.1463687, %bb.af ], [ %.1463687, %bb.ag ] ; 2 uses
  %.8 = phi i32 [ %i.na, %bb.ao ], [ %.1461689, %bb.r ], [ %.1461689, %bb.ab ], [ %i.gi, %bb.s ], [ %i.ih, %bb.ac ], [ %.1461689, %bb.an ], [ %.1461689, %bb.af ], [ %i.iz, %bb.ag ] ; 2 uses
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1 ; 2 uses
  %i.nb = load i32, ptr %i.ek, align 8, !tbaa !71 ; 2 uses
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp slt i64 %indvars.iv.next720, %i.nc
  br i1 %i.nd, label %bb.p, label %._crit_edge695.loopexit, !llvm.loop !185

._crit_edge695.loopexit:                          ; preds = %.thread644
  %.pre724 = load i32, ptr %i.b, align 4, !tbaa !69
  br label %._crit_edge695

._crit_edge695:                                   ; preds = %.preheader654.._crit_edge695_crit_edge, %._crit_edge695.loopexit
  %.pre-phi = phi i64 [ %.pre725, %.preheader654.._crit_edge695_crit_edge ], [ %i.fd, %._crit_edge695.loopexit ]
  %i.ne = phi i32 [ %i.ez, %.preheader654.._crit_edge695_crit_edge ], [ %.pre724, %._crit_edge695.loopexit ] ; 2 uses
  %i.nf = phi i32 [ %i.fa, %.preheader654.._crit_edge695_crit_edge ], [ %i.nb, %._crit_edge695.loopexit ]
  %.1463.lcssa = phi i32 [ %.0462698, %.preheader654.._crit_edge695_crit_edge ], [ %.3465, %._crit_edge695.loopexit ]
  %.1461.lcssa = phi i32 [ %.0460699, %.preheader654.._crit_edge695_crit_edge ], [ %.8, %._crit_edge695.loopexit ]
  %i.ng = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.pre-phi
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !73
  %i.ni = zext i8 %i.nh to i32
  %i.nj = add nuw nsw i32 %.0471697, %i.ni        ; 2 uses
  %i.nk = icmp slt i32 %i.nj, %i.ne
  br i1 %i.nk, label %.preheader654, label %._crit_edge700, !llvm.loop !186

._crit_edge700:                                   ; preds = %._crit_edge695, %.thread637, %.preheader654.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mark_pns(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69   ; 3 uses
  %i.c = sdiv i32 1024, %i.b                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 38240
  %i.e = load float, ptr %i.d, align 16, !tbaa !102 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39   ; 8 uses
  %i.h = sitofp nsz i32 %i.g to float             ; 2 uses
  %i.i = fmul nnan nsz float %i.h, 5.000000e-01
  %i.j = sitofp nsz i32 %i.c to float
  %i.k = fdiv nsz float %i.i, %i.j
  %i.l = insertelement <2 x float> poison, float %i.e, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv nsz <2 x float> %i.m, <float 1.400000e+02, float 1.000000e+02> ; 3 uses
  %i.o = fcmp nsz olt <2 x float> %i.n, <float f0x3F333333, float 5.000000e-01> ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 1
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fmul nsz float %i.q, f0x3F666666
  %i.s = select i1 %i.p, float 4.500000e-01, float %i.r ; 2 uses
  %i.t = fcmp nsz olt float %i.s, 7.500000e-01
  %i.u = select nsz i1 %i.t, float %i.s, float 7.500000e-01
  %i.v = extractelement <2 x i1> %i.o, i64 0
  %i.w = extractelement <2 x float> %i.n, i64 0
  %i.x = select nsz i1 %i.v, float %i.w, float f0x3F333333
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !40
  %i.ac = and i32 %i.ab, 2
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = sitofp nsz i64 %i.z to double
  %i.ae = fmul nnan nsz double %i.ad, 1.024000e+03
  %i.af = sitofp nsz i32 %i.g to double
  %i.ag = fdiv nsz double %i.ae, %i.af
  %i.ah = fmul nsz double %i.ag, 5.000000e-01
  %i.ai = fdiv nsz float %i.e, 1.200000e+02
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = fmul nsz double %i.ah, %i.aj
  %i.al = fptosi double %i.ak to i32
  %i.am = sitofp nsz i32 %i.al to float
  %i.an = fmul nnan nsz float %i.am, 1.500000e+00
  %i.ao = fmul nsz float %i.an, %i.h
  %i.ap = fmul nsz float %i.ao, f0x3A800000
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41
  %i.as = sext i32 %i.ar to i64
  %i.at = sdiv i64 %i.z, %i.as
  %i.au = sitofp nsz i64 %i.at to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.av = phi nsz float [ %i.ap, %bb.b ], [ %i.au, %bb.c ]
  %i.aw = fptosi float %i.av to i32
  %i.ax = sitofp nsz i32 %i.aw to float
  %i.ay = fmul nnan nsz float %i.ax, 1.150000e+00
  %i.az = fptosi float %i.ay to i32               ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !70 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.thread421, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not370 = icmp eq i32 %i.az, 0
  br i1 %.not370, label %.thread418, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = sdiv i32 %i.az, 5
  %i.be = mul nsw i32 %i.az, 15
  %i.bf = sdiv i32 %i.be, 32
  %i.bg = add nsw i32 %i.bf, -5500
  %. = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 %i.bg)
  %i.bh = sdiv i32 %i.az, 4
  %i.bi = add nsw i32 %i.bh, 3000
  %i.bj = tail call i32 @llvm.smin.i32(i32 %., i32 %i.bi)
  %i.bk = sdiv i32 %i.az, 16
  %i.bl = add nsw i32 %i.bk, 12000
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl) ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 22000
  br i1 %i.bn, label %.thread414, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = sdiv i32 %i.g, 2
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bo)
  %i.bp = icmp slt i32 %spec.select, 3000
  br i1 %i.bp, label %.thread421, label %.thread417

.thread414:                                       ; preds = %bb.f
  %i.bq = icmp slt i32 %i.g, 6000
  br i1 %i.bq, label %.thread421, label %.thread420

.thread418:                                       ; preds = %bb.e
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.g, i32 6000)
  %spec.select466 = lshr i32 %i.br, 1
  br label %.thread421

.thread417:                                       ; preds = %bb.g
  %i.bs = sdiv i32 %i.g, 2
  %spec.select426 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bs)
  br label %.thread421

.thread420:                                       ; preds = %.thread414
  %i.bt = lshr i32 %i.g, 1
  %spec.select424 = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 22000)
  br label %.thread421

.thread421:                                       ; preds = %.thread418, %.thread414, %.thread417, %.thread420, %bb.g, %bb.d
  %.0282 = phi i32 [ %i.bb, %bb.d ], [ 3000, %bb.g ], [ 3000, %.thread414 ], [ %spec.select466, %.thread418 ], [ %spec.select424, %.thread420 ], [ %spec.select426, %.thread417 ]
  %i.bu = shl nsw i32 %i.c, 1
  %i.bv = mul i32 %i.bu, %.0282
  %i.bw = sdiv i32 %i.bv, %i.g
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 6156
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 5644
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.bx, ptr noundef nonnull align 4 dereferenceable(512) %i.by, i64 512, i1 false)
  %i.bz = icmp sgt i32 %i.b, 0
  br i1 %i.bz, label %.preheader427.lr.ph, label %._crit_edge442

.preheader427.lr.ph:                              ; preds = %.thread421
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !71 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 7308 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 38160
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 38232
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 7948
  br i1 %i.cc, label %.preheader427.lr.ph.split.us, label %._crit_edge442

.preheader427.lr.ph.split.us:                     ; preds = %.preheader427.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !95
  %wide.trip.count451 = zext nneg i32 %i.cb to i64
  br label %.preheader427.us

.preheader427.us:                                 ; preds = %._crit_edge440.us, %.preheader427.lr.ph.split.us
  %.0285441.us = phi i32 [ 0, %.preheader427.lr.ph.split.us ], [ %i.em, %._crit_edge440.us ] ; 3 uses
  %i.ck = shl nsw i32 %.0285441.us, 4
  %i.cl = zext nneg i32 %.0285441.us to i64       ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cl ; 2 uses
  %i.cn = zext nneg i32 %i.ck to i64              ; 2 uses
  %invariant.gep464 = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  %.idx = shl nuw nsw i64 %i.cl, 8
  br label %bb.h

bb.h:                                             ; preds = %.preheader427.us, %bb.m
  %indvars.iv448 = phi i64 [ 0, %.preheader427.us ], [ %indvars.iv.next449, %bb.m ] ; 6 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv448
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !96 ; 2 uses
  %i.cq = uitofp i16 %i.cp to float
  %i.cr = fmul nsz float %i.k, %i.cq              ; 2 uses
  %i.cs = fmul nsz float %i.cr, f0x3F6147AE
  %i.ct = fdiv nsz float %i.cs, 4.000000e+03      ; 2 uses
  %i.cu = fcmp nsz ogt float %i.ct, 1.000000e+00
  %i.cv = select nsz i1 %i.cu, float %i.ct, float 1.000000e+00
  %i.cw = fcmp nsz uge float %i.cr, 4.000000e+03
  %i.cx = zext i16 %i.cp to i32
  %.not371.us = icmp sgt i32 %i.bw, %i.cx
  %or.cond.us = select i1 %i.cw, i1 %.not371.us, i1 false
  br i1 %or.cond.us, label %.preheader.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %gep465 = getelementptr inbounds nuw i8, ptr %invariant.gep464, i64 %indvars.iv448
  store i8 0, ptr %gep465, align 1, !tbaa !73
  br label %bb.m

bb.j:                                             ; preds = %.peel.next, %bb.j
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.0433.us = phi float [ %i.ej, %.peel.next ], [ %i.dj, %bb.j ] ; 2 uses
  %.0277432.us = phi float [ %i.ej, %.peel.next ], [ %..0277.us, %bb.j ] ; 2 uses
  %.0279431.us = phi float [ %..0279.us.peel, %.peel.next ], [ %..0279.us, %bb.j ] ; 2 uses
  %i.cy = phi <2 x float> [ %i.ei, %.peel.next ], [ %i.df, %bb.j ]
  %i.cz = add nuw nsw i64 %indvars.iv, %i.cl
  %.idx460 = shl nuw nsw i64 %i.cz, 8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx460 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !81 ; 2 uses
  %i.dd = fcmp nsz ogt float %.0279431.us, %i.dc
  %..0279.us = select nsz i1 %i.dd, float %i.dc, float %.0279431.us ; 2 uses
  %i.de = load <2 x float>, ptr %i.da, align 4, !tbaa !80 ; 2 uses
  %i.df = fadd nsz <2 x float> %i.cy, %i.de       ; 2 uses
  %i.dg = extractelement <2 x float> %i.de, i64 0 ; 4 uses
  %i.dh = fcmp nsz ogt float %.0277432.us, %i.dg
  %..0277.us = select nsz i1 %i.dh, float %i.dg, float %.0277432.us ; 2 uses
  %i.di = fcmp nsz ogt float %.0433.us, %i.dg
  %i.dj = select nsz i1 %i.di, float %.0433.us, float %i.dg ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.j, !llvm.loop !192

._crit_edge.us:                                   ; preds = %bb.j, %bb.n, %.preheader.us
  %.0279.lcssa.us = phi float [ 2.000000e+00, %.preheader.us ], [ %..0279.us.peel, %bb.n ], [ %..0279.us, %bb.j ]
  %.0277.lcssa.us = phi float [ -1.000000e+00, %.preheader.us ], [ %i.ej, %bb.n ], [ %..0277.us, %bb.j ]
  %.0.lcssa.us = phi float [ 0.000000e+00, %.preheader.us ], [ %i.ej, %bb.n ], [ %i.dj, %bb.j ]
  %i.dk = phi <2 x float> [ zeroinitializer, %.preheader.us ], [ %i.ei, %bb.n ], [ %i.df, %bb.j ] ; 2 uses
  %i.dl = add nuw nsw i64 %indvars.iv448, %i.cn   ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dl
  %i.dn = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  store float %i.dn, ptr %i.dm, align 4, !tbaa !80
  %i.do = fdiv nsz float 1.500000e+00, %i.cv
  %i.dp = tail call nsz float @llvm.sqrt.f32(float %i.do)
  %i.dq = extractelement <2 x float> %i.dk, i64 1
  %i.dr = fmul nsz float %i.dp, %i.dq
  %i.ds = fcmp nsz olt float %i.dn, %i.dr
  %i.dt = fcmp nsz olt float %.0279.lcssa.us, %i.u
  %or.cond404.us = select i1 %i.ds, i1 true, i1 %i.dt
  %i.du = fmul nsz float %i.x, %.0.lcssa.us
  %i.dv = fcmp nsz olt float %.0277.lcssa.us, %i.du
  %or.cond406.us = select i1 %or.cond404.us, i1 true, i1 %i.dv
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dl ; 2 uses
  br i1 %or.cond406.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.us
  store i8 1, ptr %i.dw, align 1, !tbaa !73
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.us
  store i8 0, ptr %i.dw, align 1, !tbaa !73
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count451
  br i1 %exitcond452.not, label %._crit_edge440.us, label %bb.h, !llvm.loop !193

.preheader.us:                                    ; preds = %bb.h
  %i.dx = load i8, ptr %i.cm, align 1, !tbaa !73  ; 3 uses
  %.not443 = icmp eq i8 %i.dx, 0
  br i1 %.not443, label %._crit_edge.us, label %bb.n

bb.n:                                             ; preds = %.preheader.us
  %i.dy = load ptr, ptr %i.cf, align 16, !tbaa !75
  %i.dz = load i32, ptr %i.cg, align 8, !tbaa !76
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [2052 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  %wide.trip.count = zext i8 %i.dx to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv448 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !81 ; 2 uses
  %i.eh = fcmp nsz olt float %i.eg, 2.000000e+00
  %..0279.us.peel = select nsz i1 %i.eh, float %i.eg, float 2.000000e+00 ; 2 uses
  %i.ei = load <2 x float>, ptr %i.ee, align 4, !tbaa !80 ; 3 uses
  %exitcond.peel.not = icmp eq i8 %i.dx, 1
  %i.ej = extractelement <2 x float> %i.ei, i64 0 ; 4 uses
  br i1 %exitcond.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %bb.n
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %indvars.iv448
  br label %bb.j

._crit_edge440.us:                                ; preds = %bb.m
  %i.ek = load i8, ptr %i.cm, align 1, !tbaa !73
  %i.el = zext i8 %i.ek to i32
  %i.em = add nuw nsw i32 %.0285441.us, %i.el     ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.b
  br i1 %i.en, label %.preheader427.us, label %._crit_edge442, !llvm.loop !194

._crit_edge442:                                   ; preds = %._crit_edge440.us, %.preheader427.lr.ph, %.thread421
  ret void
}

declare void @ff_aac_search_for_tns(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @search_for_ms(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 15 uses
  %i.b = alloca [128 x i8], align 16              ; 15 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 38688 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 39200 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 39712 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40224 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40736 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 41248 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 38240
  %i.n = load float, ptr %i.m, align 16, !tbaa !102 ; 4 uses
  %i.o = fdiv nsz float %i.n, 1.200000e+02        ; 2 uses
  %i.p = fcmp nsz olt float %i.o, 1.000000e+00
  %i.q = select nsz i1 %i.p, float %i.o, float 1.000000e+00
  %i.r = load i32, ptr %1, align 16, !tbaa !204
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !73
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.s, align 16, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.t, align 16, !tbaa !73
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.u, align 16, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.v, align 16, !tbaa !73
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.w, align 16, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.x, align 16, !tbaa !73
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.y, align 16, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !69  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0                   ; 2 uses
  br i1 %i.ab, label %.preheader.lr.ph.i, label %ff_init_nextband_map.exit

.preheader.lr.ph.i:                               ; preds = %vector.body
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 7452 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 5916 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 286
  %i.ag = load i32, ptr %i.ac, align 8, !tbaa !71 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.preheader.i.preheader, label %ff_init_nextband_map.exit

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.ai = zext nneg i32 %i.ag to i64              ; 2 uses
  %xtraiter = and i64 %i.ai, 1
  %i.aj = icmp eq i32 %i.ag, 1
  %unroll_iter = and i64 %i.ai, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod587 = trunc i32 %i.ag to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.02533.i = phi i32 [ %i.br, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.02632.i = phi i8 [ %.2.i.lcssa, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ak = shl nuw nsw i32 %.02533.i, 4
  %i.al = zext nneg i32 %i.ak to i64              ; 3 uses
  br i1 %i.aj, label %.epil.preheader, label %.preheader.i.new

end_hunk_5
begin_hunk_6_@search_for_ms:bb.a
bb.h:                                             ; preds = %.epil.preheader
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.be
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !82
  %i.bj = icmp ult i32 %i.bi, 12
  br i1 %i.bj, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.bk = trunc i64 %i.be to i8                   ; 2 uses
  %i.bl = zext i8 %.12730.i.epil.init to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !73
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.h, %bb.i, %._crit_edge.i.unr-lcssa
  %.2.i.lcssa = phi i8 [ %.2.i.1, %._crit_edge.i.unr-lcssa ], [ %.12730.i.epil.init, %.epil.preheader ], [ %i.bk, %bb.i ], [ %.12730.i.epil.init, %bb.h ] ; 2 uses
  %i.bn = zext nneg i32 %.02533.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !73
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %.02533.i, %i.bq        ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.aa
  br i1 %i.bs, label %.preheader.i, label %ff_init_nextband_map.exit, !llvm.loop !4

ff_init_nextband_map.exit:                        ; preds = %._crit_edge.i, %vector.body, %.preheader.lr.ph.i
  %.026.lcssa.i = phi i8 [ 0, %vector.body ], [ 0, %.preheader.lr.ph.i ], [ %.2.i.lcssa, %._crit_edge.i ] ; 2 uses
  %i.bt = zext i8 %.026.lcssa.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  store i8 %.026.lcssa.i, ptr %i.bu, align 1, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.b, align 16, !tbaa !73
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.bv, align 16, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.bw, align 16, !tbaa !73
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bx, align 16, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.by, align 16, !tbaa !73
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bz, align 16, !tbaa !73
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.ca, align 16, !tbaa !73
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.cb, align 16, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 46668
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !69 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader.lr.ph.i384, label %ff_init_nextband_map.exit399

.preheader.lr.ph.i384:                            ; preds = %ff_init_nextband_map.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 46664
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 53804 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 52268 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 46638
  %i.cj = load i32, ptr %i.cf, align 8, !tbaa !71 ; 4 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.preheader.i385.preheader, label %ff_init_nextband_map.exit399

.preheader.i385.preheader:                        ; preds = %.preheader.lr.ph.i384
  %i.cl = zext nneg i32 %i.cj to i64              ; 2 uses
  %xtraiter589 = and i64 %i.cl, 1
  %i.cm = icmp eq i32 %i.cj, 1
  %unroll_iter593 = and i64 %i.cl, 2147483646
  %lcmp.mod590.not = icmp eq i64 %xtraiter589, 0
  %lcmp.mod592 = trunc i32 %i.cj to i1
  br label %.preheader.i385

.preheader.i385:                                  ; preds = %.preheader.i385.preheader, %._crit_edge.i388
  %.02533.i386 = phi i32 [ %i.du, %._crit_edge.i388 ], [ 0, %.preheader.i385.preheader ] ; 3 uses
  %.02632.i387 = phi i8 [ %.2.i394.lcssa, %._crit_edge.i388 ], [ 0, %.preheader.i385.preheader ] ; 2 uses
  %i.cn = shl nuw nsw i32 %.02533.i386, 4
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  br i1 %i.cm, label %.epil.preheader588, label %.preheader.i385.new

.preheader.i385.new:                              ; preds = %.preheader.i385, %bb.o
  %indvars.iv38.i391 = phi i64 [ %indvars.iv.next39.i395.1, %bb.o ], [ 0, %.preheader.i385 ] ; 3 uses
  %.12730.i392 = phi i8 [ %.2.i394.1, %bb.o ], [ %.02632.i387, %.preheader.i385 ] ; 3 uses
  %niter594 = phi i64 [ %niter594.next.1, %bb.o ], [ 0, %.preheader.i385 ]
  %i.cp = add nuw nsw i64 %indvars.iv38.i391, %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !73
  %.not.i393 = icmp eq i8 %i.cr, 0
  br i1 %.not.i393, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.preheader.i385.new
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cp
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !82
  %i.cu = icmp ult i32 %i.ct, 12
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cv = trunc i64 %i.cp to i8                   ; 2 uses
  %i.cw = zext i8 %.12730.i392 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cw
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !73
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.preheader.i385.new
  %.2.i394 = phi i8 [ %.12730.i392, %.preheader.i385.new ], [ %i.cv, %bb.k ], [ %.12730.i392, %bb.j ] ; 3 uses
  %indvars.iv.next39.i395 = or disjoint i64 %indvars.iv38.i391, 1
  %i.cy = add nuw nsw i64 %indvars.iv.next39.i395, %i.co ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !73
  %.not.i393.1 = icmp eq i8 %i.da, 0
  br i1 %.not.i393.1, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cy
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !82
  %i.dd = icmp ult i32 %i.dc, 12
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.de = trunc i64 %i.cy to i8                   ; 2 uses
  %i.df = zext i8 %.2.i394 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.df
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !73
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.2.i394.1 = phi i8 [ %.2.i394, %bb.l ], [ %i.de, %bb.n ], [ %.2.i394, %bb.m ] ; 3 uses
  %indvars.iv.next39.i395.1 = add nuw nsw i64 %indvars.iv38.i391, 2 ; 2 uses
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge.i388.unr-lcssa, label %.preheader.i385.new, !llvm.loop !3

._crit_edge.i388.unr-lcssa:                       ; preds = %bb.o
  br i1 %lcmp.mod590.not, label %._crit_edge.i388, label %.epil.preheader588

.epil.preheader588:                               ; preds = %._crit_edge.i388.unr-lcssa, %.preheader.i385
  %indvars.iv38.i391.epil.init = phi i64 [ 0, %.preheader.i385 ], [ %indvars.iv.next39.i395.1, %._crit_edge.i388.unr-lcssa ]
  %.12730.i392.epil.init = phi i8 [ %.02632.i387, %.preheader.i385 ], [ %.2.i394.1, %._crit_edge.i388.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.dh = add nuw nsw i64 %indvars.iv38.i391.epil.init, %i.co ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !73
  %.not.i393.epil = icmp eq i8 %i.dj, 0
  br i1 %.not.i393.epil, label %bb.p, label %._crit_edge.i388

bb.p:                                             ; preds = %.epil.preheader588
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dh
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !82
  %i.dm = icmp ult i32 %i.dl, 12
  br i1 %i.dm, label %bb.q, label %._crit_edge.i388

bb.q:                                             ; preds = %bb.p
  %i.dn = trunc i64 %i.dh to i8                   ; 2 uses
  %i.do = zext i8 %.12730.i392.epil.init to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.do
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !73
  br label %._crit_edge.i388

._crit_edge.i388:                                 ; preds = %.epil.preheader588, %bb.p, %bb.q, %._crit_edge.i388.unr-lcssa
  %.2.i394.lcssa = phi i8 [ %.2.i394.1, %._crit_edge.i388.unr-lcssa ], [ %.12730.i392.epil.init, %.epil.preheader588 ], [ %i.dn, %bb.q ], [ %.12730.i392.epil.init, %bb.p ] ; 2 uses
  %i.dq = zext nneg i32 %.02533.i386 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !73
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %.02533.i386, %i.dt     ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.cd
  br i1 %i.dv, label %.preheader.i385, label %ff_init_nextband_map.exit399, !llvm.loop !4

ff_init_nextband_map.exit399:                     ; preds = %._crit_edge.i388, %ff_init_nextband_map.exit, %.preheader.lr.ph.i384
  %.026.lcssa.i383 = phi i8 [ 0, %ff_init_nextband_map.exit ], [ 0, %.preheader.lr.ph.i384 ], [ %.2.i394.lcssa, %._crit_edge.i388 ] ; 2 uses
  %i.dw = zext i8 %.026.lcssa.i383 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dw
  store i8 %.026.lcssa.i383, ptr %i.dx, align 1, !tbaa !73
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 6940 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 53292 ; 4 uses
  br i1 %i.ab, label %.preheader419.lr.ph, label %.loopexit

.preheader419.lr.ph:                              ; preds = %ff_init_nextband_map.exit399
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 7452
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 53804 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 286 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 12832 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 59184 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 567080 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 5916 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 52268 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 38160
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 38232
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 46656 ; 2 uses
  %i.ep = load i32, ptr %i.ea, align 8, !tbaa !71 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader419.preheader, label %.loopexit

.preheader419.preheader:                          ; preds = %.preheader419.lr.ph
  %i.er = load i32, ptr %i.dy, align 4, !tbaa !82
  %i.es = load i32, ptr %i.dz, align 4, !tbaa !82
  br label %.preheader419

.preheader419:                                    ; preds = %.preheader419.preheader, %._crit_edge476
  %i.et = phi i32 [ %i.pt, %._crit_edge476 ], [ %i.aa, %.preheader419.preheader ]
  %i.eu = phi i32 [ %i.pu, %._crit_edge476 ], [ %i.ep, %.preheader419.preheader ] ; 3 uses
  %.0339480 = phi i32 [ %.1340.lcssa, %._crit_edge476 ], [ %i.es, %.preheader419.preheader ] ; 2 uses
  %.0341479 = phi i32 [ %.1342.lcssa, %._crit_edge476 ], [ %i.er, %.preheader419.preheader ] ; 2 uses
  %.0348478 = phi i32 [ %i.py, %._crit_edge476 ], [ 0, %.preheader419.preheader ] ; 5 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph475, label %.preheader419.._crit_edge476_crit_edge

.preheader419.._crit_edge476_crit_edge:           ; preds = %.preheader419
  %.pre519.a = zext nneg i32 %.0348478 to i64
  br label %._crit_edge476

.lr.ph475:                                        ; preds = %.preheader419
  %i.ew = shl nsw i32 %.0348478, 4
  %i.ex = zext nneg i32 %.0348478 to i64          ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ex ; 4 uses
  %i.ez = zext nneg i32 %i.ew to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph475, %bb.ar
  %indvars.iv513 = phi i64 [ 0, %.lr.ph475 ], [ %indvars.iv.next514, %bb.ar ] ; 17 uses
  %i.fa = phi i32 [ %i.eu, %.lr.ph475 ], [ %i.pq, %bb.ar ]
  %.1340473 = phi i32 [ %.0339480, %.lr.ph475 ], [ %.2, %bb.ar ] ; 5 uses
  %.1342472 = phi i32 [ %.0341479, %.lr.ph475 ], [ %.2343, %bb.ar ] ; 5 uses
  %.0352468 = phi i32 [ 0, %.lr.ph475 ], [ %i.pp, %bb.ar ] ; 4 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv513 to i32
  %i.fc = uitofp nneg i32 %i.fb to float
  %i.fd = fmul nnan nsz float %i.fc, 1.700000e+01
  %i.fe = sitofp nsz i32 %i.fa to float
  %i.ff = fdiv nsz float %i.fd, %i.fe             ; 3 uses
  %i.fg = fmul nsz float %i.ff, %i.ff
  %i.fh = fmul nsz float %i.ff, %i.fg
  %i.fi = fmul nsz float %i.fh, 3.500000e-03
  %i.fj = fdiv nsz float %i.fi, f0x4568BE00
  %i.fk = fadd nsz float %i.fj, 1.000000e-03
  %i.fl = fdiv nsz float %i.fk, 4.500000e-03
  %i.fm = add nuw nsw i64 %indvars.iv513, %i.ez   ; 16 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fm ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !73  ; 2 uses
  %.not362.not = icmp eq i8 %i.fo, 0
  br i1 %.not362.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.fm
  store i8 0, ptr %i.fp, align 1, !tbaa !73
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fm ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !73
  %.not363 = icmp eq i8 %i.fr, 0
  br i1 %.not363, label %bb.u, label %.thread412

bb.u:                                             ; preds = %bb.t
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fm
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !73
  %i.fu = or i8 %i.ft, %i.fo
  %brmerge.not = icmp eq i8 %i.fu, 0
  br i1 %brmerge.not, label %.preheader418, label %select.unfold

.preheader418:                                    ; preds = %bb.u
  %i.fv = load i8, ptr %i.ey, align 1, !tbaa !73
  %.not483 = icmp eq i8 %i.fv, 0
  br i1 %.not483, label %.preheader417, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader418
  %.pre = load ptr, ptr %i.eg, align 16, !tbaa !72 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv513
  %.pre516 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !73
  br label %.preheader

.preheader417:                                    ; preds = %._crit_edge438, %.preheader418
  %.0336.lcssa = phi float [ 0.000000e+00, %.preheader418 ], [ %.1337.lcssa, %._crit_edge438 ]
  %.0335.lcssa = phi float [ 0.000000e+00, %.preheader418 ], [ %.1.lcssa, %._crit_edge438 ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fm ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fm ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fm ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fm ; 4 uses
  %i.ga = add nsw i32 %.1342472, -60
  %i.gb = add nsw i32 %.1342472, 60
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fm
  %i.gd = add nsw i32 %.1340473, -60
  %i.ge = add nsw i32 %.1340473, 60
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fm
  %2 = zext nneg i32 %.0352468 to i64             ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %2
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.fm ; 3 uses
  %3 = zext nneg i32 %.0352468 to i64
  br label %bb.w

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge438
  %i.gj = phi i8 [ %.pre516, %.preheader.lr.ph ], [ %i.hj, %._crit_edge438 ]
  %i.gk = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.hh, %._crit_edge438 ]
  %indvars.iv504 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next505, %._crit_edge438 ] ; 2 uses
  %.0335445 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge438 ] ; 3 uses
  %.0336444 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1337.lcssa, %._crit_edge438 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %indvars.iv513
  %.not484 = icmp eq i8 %i.gj, 0
  br i1 %.not484, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %4 = trunc nuw nsw i64 %indvars.iv504 to i32
  %5 = add i32 %.0348478, %4
  %6 = shl nsw i32 %5, 7
  %7 = add nuw nsw i32 %6, %.0352468
  %8 = zext i32 %7 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %i.gm = add nuw nsw i64 %indvars.iv, %8         ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !80
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gm ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !80
  %i.gr = fadd nsz float %i.go, %i.gq
  %i.gs = fmul nsz float %i.gr, 5.000000e-01      ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.gs, ptr %i.gt, align 4, !tbaa !80
  %i.gu = load float, ptr %i.gp, align 4, !tbaa !80
  %i.gv = fsub nsz float %i.gs, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store float %i.gv, ptr %i.gw, align 4, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gx = load i8, ptr %i.gl, align 1, !tbaa !73  ; 2 uses
  %i.gy = zext i8 %i.gx to i64
  %i.gz = icmp samesign ult i64 %indvars.iv.next, %i.gy
  br i1 %i.gz, label %bb.v, label %._crit_edge.loopexit, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.ha = zext i8 %i.gx to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa.in = phi i32 [ 0, %.preheader ], [ %i.ha, %._crit_edge.loopexit ]
  %i.hb = load ptr, ptr %i.ej, align 8, !tbaa !83
  call void %i.hb(ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, i32 noundef %.lcssa.in) #13
  %i.hc = load ptr, ptr %i.ej, align 8, !tbaa !83
  %i.hd = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv513
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !73
  %i.hg = zext i8 %i.hf to i32
  call void %i.hc(ptr noundef nonnull %i.l, ptr noundef nonnull %i.h, i32 noundef %i.hg) #13
  %i.hh = load ptr, ptr %i.eg, align 16, !tbaa !72 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv513
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !73  ; 5 uses
  %.not485 = icmp eq i8 %i.hj, 0
  br i1 %.not485, label %._crit_edge438, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = zext i8 %i.hj to i64         ; 2 uses
  %xtraiter595 = and i64 %wide.trip.count, 1
  %i.hk = icmp eq i8 %i.hj, 1
  br i1 %i.hk, label %.lr.ph437.epil.preheader, label %.lr.ph437.preheader.new

.lr.ph437.preheader.new:                          ; preds = %.lr.ph437.preheader
  %unroll_iter600 = and i64 %wide.trip.count, 254
  br label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437, %.lr.ph437.preheader.new
  %indvars.iv500 = phi i64 [ 0, %.lr.ph437.preheader.new ], [ %indvars.iv.next501.1, %.lr.ph437 ] ; 4 uses
  %.1435 = phi float [ %.0335445, %.lr.ph437.preheader.new ], [ %i.hy, %.lr.ph437 ] ; 2 uses
  %.1337434 = phi float [ %.0336444, %.lr.ph437.preheader.new ], [ %.1337..1, %.lr.ph437 ] ; 2 uses
  %niter601 = phi i64 [ 0, %.lr.ph437.preheader.new ], [ %niter601.next.1, %.lr.ph437 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv500
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !80 ; 2 uses
  %i.hn = fcmp nsz ogt float %.1337434, %i.hm
  %.1337. = select nsz i1 %i.hn, float %.1337434, float %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv500
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !80 ; 2 uses
  %i.hq = fcmp nsz ogt float %.1435, %i.hp
  %i.hr = select nsz i1 %i.hq, float %.1435, float %i.hp ; 2 uses
  %indvars.iv.next501 = or disjoint i64 %indvars.iv500, 1 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next501
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !80 ; 2 uses
  %i.hu = fcmp nsz ogt float %.1337., %i.ht
  %.1337..1 = select nsz i1 %i.hu, float %.1337., float %i.ht ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next501
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !80 ; 2 uses
  %i.hx = fcmp nsz ogt float %i.hr, %i.hw
  %i.hy = select nsz i1 %i.hx, float %i.hr, float %i.hw ; 3 uses
  %indvars.iv.next501.1 = add nuw nsw i64 %indvars.iv500, 2 ; 2 uses
  %niter601.next.1 = add i64 %niter601, 2         ; 2 uses
  %niter601.ncmp.1 = icmp eq i64 %niter601.next.1, %unroll_iter600
  br i1 %niter601.ncmp.1, label %._crit_edge438.loopexit.unr-lcssa, label %.lr.ph437, !llvm.loop !196

._crit_edge438.loopexit.unr-lcssa:                ; preds = %.lr.ph437
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  br i1 %lcmp.mod596.not, label %._crit_edge438, label %.lr.ph437.epil.preheader

.lr.ph437.epil.preheader:                         ; preds = %._crit_edge438.loopexit.unr-lcssa, %.lr.ph437.preheader
  %indvars.iv500.epil.init = phi i64 [ 0, %.lr.ph437.preheader ], [ %indvars.iv.next501.1, %._crit_edge438.loopexit.unr-lcssa ] ; 2 uses
  %.1435.epil.init = phi float [ %.0335445, %.lr.ph437.preheader ], [ %i.hy, %._crit_edge438.loopexit.unr-lcssa ] ; 2 uses
  %.1337434.epil.init = phi float [ %.0336444, %.lr.ph437.preheader ], [ %.1337..1, %._crit_edge438.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod599 = trunc i8 %i.hj to i1
  call void @llvm.assume(i1 %lcmp.mod599)
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv500.epil.init
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !80 ; 2 uses
  %i.ib = fcmp nsz ogt float %.1337434.epil.init, %i.ia
  %.1337..epil = select nsz i1 %i.ib, float %.1337434.epil.init, float %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv500.epil.init
  %i.id = load float, ptr %i.ic, align 4, !tbaa !80 ; 2 uses
  %i.ie = fcmp nsz ogt float %.1435.epil.init, %i.id
  %i.if = select nsz i1 %i.ie, float %.1435.epil.init, float %i.id
  br label %._crit_edge438

._crit_edge438:                                   ; preds = %.lr.ph437.epil.preheader, %._crit_edge438.loopexit.unr-lcssa, %._crit_edge
  %.1337.lcssa = phi float [ %.0336444, %._crit_edge ], [ %.1337..1, %._crit_edge438.loopexit.unr-lcssa ], [ %.1337..epil, %.lr.ph437.epil.preheader ] ; 2 uses
  %.1.lcssa = phi float [ %.0335445, %._crit_edge ], [ %i.hy, %._crit_edge438.loopexit.unr-lcssa ], [ %i.if, %.lr.ph437.epil.preheader ] ; 2 uses
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %i.ig = load i8, ptr %i.ey, align 1, !tbaa !73
  %i.ih = zext i8 %i.ig to i64
  %i.ii = icmp samesign ult i64 %indvars.iv.next505, %i.ih
  br i1 %i.ii, label %.preheader, label %.preheader417, !llvm.loop !197

bb.w:                                             ; preds = %.backedge, %.preheader417
  %.0344467 = phi i32 [ 0, %.preheader417 ], [ %.0344467.be, %.backedge ] ; 4 uses
  %i.ij = load i32, ptr %i.fw, align 4, !tbaa !82
  %i.ik = load i32, ptr %i.fx, align 4, !tbaa !82
  %. = call i32 @llvm.smin.i32(i32 %i.ij, i32 %i.ik) ; 2 uses
  %i.il = call i32 @llvm.smax.i32(i32 %., i32 0)
  %i.im = call i32 @llvm.umin.i32(i32 %i.il, i32 219) ; 7 uses
  %.neg = mul nsw i32 %.0344467, -3
  %i.in = add i32 %., %.neg
  %i.io = call i32 @llvm.smax.i32(i32 %i.in, i32 0)
  %i.ip = call i32 @llvm.umin.i32(i32 %i.io, i32 219) ; 7 uses
  %i.iq = load i32, ptr %i.fy, align 4, !tbaa !82
  %.not366 = icmp eq i32 %i.iq, 13
  br i1 %.not366, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ir = load i32, ptr %i.fz, align 4, !tbaa !82
  %.not367 = icmp eq i32 %i.ir, 13
  br i1 %.not367, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i400 = icmp slt i32 %i.im, %i.ga
  %.not12.i = icmp sgt i32 %i.im, %i.gb
  %or.cond.i = select i1 %.not.i400, i1 true, i1 %.not12.i
  br i1 %or.cond.i, label %ff_sfdelta_can_replace.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.is = load i8, ptr %i.gc, align 1, !tbaa !73
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !82 ; 2 uses
  %i.iw = add nsw i32 %i.im, -60
  %.not13.i = icmp slt i32 %i.iv, %i.iw
  %i.ix = add nuw nsw i32 %i.im, 60
  %.not414 = icmp sgt i32 %i.iv, %i.ix
  %or.cond = select i1 %.not13.i, i1 true, i1 %.not414
  br i1 %or.cond, label %ff_sfdelta_can_replace.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i401 = icmp slt i32 %i.ip, %i.gd
  %.not12.i402 = icmp sgt i32 %i.ip, %i.ge
  %or.cond.i403 = select i1 %.not.i401, i1 true, i1 %.not12.i402
  br i1 %or.cond.i403, label %ff_sfdelta_can_replace.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iy = load i8, ptr %i.gf, align 1, !tbaa !73
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !82 ; 2 uses
  %i.jc = add nsw i32 %i.ip, -60
  %.not13.i404 = icmp slt i32 %i.jb, %i.jc
  %i.jd = add nuw nsw i32 %i.ip, 60
  %.not415 = icmp sgt i32 %i.jb, %i.jd
  %or.cond416 = select i1 %.not13.i404, i1 true, i1 %.not415
  br i1 %or.cond416, label %ff_sfdelta_can_replace.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x, %bb.w
  %i.je = sub nuw nsw i32 304, %i.im
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.jf
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !80
  %i.ji = call nsz float @llvm.fmuladd.f32(float %.0336.lcssa, float %i.jh, float 4.054000e-01)
  %i.jj = fptosi float %i.ji to i32               ; 2 uses
  %i.jk = icmp ugt i32 %i.jj, 13
  br i1 %i.jk, label %find_min_book.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jl = zext nneg i32 %i.jj to i64
  %i.jm = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !73
  %i.jo = call i8 @llvm.umax.i8(i8 %i.jn, i8 1)
  %i.jp = zext i8 %i.jo to i32
  br label %find_min_book.exit

find_min_book.exit:                               ; preds = %bb.ac, %bb.ad
  %.0.i406 = phi i32 [ %i.jp, %bb.ad ], [ 11, %bb.ac ] ; 3 uses
  %i.jq = sub nuw nsw i32 304, %i.ip
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !80
  %i.ju = call nsz float @llvm.fmuladd.f32(float %.0335.lcssa, float %i.jt, float 4.054000e-01)
  %i.jv = fptosi float %i.ju to i32               ; 2 uses
  %i.jw = icmp ugt i32 %i.jv, 13
  br i1 %i.jw, label %find_min_book.exit408, label %bb.ae

bb.ae:                                            ; preds = %find_min_book.exit
  %i.jx = zext nneg i32 %i.jv to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !73
  %i.ka = call i8 @llvm.umax.i8(i8 %i.jz, i8 1)
  %i.kb = zext i8 %i.ka to i32
  br label %find_min_book.exit408

find_min_book.exit408:                            ; preds = %find_min_book.exit, %bb.ae
  %.0.i407 = phi i32 [ %i.kb, %bb.ae ], [ 11, %find_min_book.exit ] ; 3 uses
  %i.kc = load i8, ptr %i.ey, align 1, !tbaa !73
  %.not486 = icmp eq i8 %i.kc, 0
  br i1 %.not486, label %._crit_edge461.thread, label %.lr.ph460

._crit_edge461.thread:                            ; preds = %find_min_book.exit408
  store i8 0, ptr %i.gi, align 1, !tbaa !73
  br label %bb.al

.lr.ph460:                                        ; preds = %find_min_book.exit408
  %i.kd = zext nneg i32 %.0.i406 to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.kd
  %i.kf = zext nneg i32 %.0.i407 to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.kf
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph460, %._crit_edge452
  %indvars.iv510 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next511, %._crit_edge452 ] ; 2 uses
  %.0459 = phi i32 [ 0, %.lr.ph460 ], [ %i.og, %._crit_edge452 ]
  %.0332458 = phi i32 [ 0, %.lr.ph460 ], [ %i.oc, %._crit_edge452 ]
  %.0333457 = phi float [ 0.000000e+00, %.lr.ph460 ], [ %i.ok, %._crit_edge452 ]
  %.0334456 = phi float [ 0.000000e+00, %.lr.ph460 ], [ %i.oi, %._crit_edge452 ]
  %i.kh = load ptr, ptr %i.em, align 16, !tbaa !75
  %i.ki = load i32, ptr %i.en, align 8, !tbaa !76
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [2052 x i8], ptr %i.kh, i64 %i.kj
  %i.kl = add nuw nsw i64 %indvars.iv510, %i.ex   ; 2 uses
  %.idx = shl nuw nsw i64 %i.kl, 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.km, i64 %indvars.iv513 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !79 ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kn, i64 2060   ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !79 ; 2 uses
  %i.ks = fcmp nsz ogt float %i.kp, %i.kr
  %.375 = select nsz i1 %i.ks, float %i.kr, float %i.kp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.kt = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv513 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !73
  %.not487 = icmp eq i8 %i.kv, 0
  %.pre520 = shl nuw nsw i64 %i.kl, 7             ; 3 uses
  %.pre522 = add nuw nsw i64 %.pre520, %3         ; 3 uses
  br i1 %.not487, label %._crit_edge452, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.af
  %9 = and i64 %.pre522, 4294967295
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph451, %bb.ag
  %indvars.iv507 = phi i64 [ 0, %.lr.ph451 ], [ %indvars.iv.next508, %bb.ag ] ; 4 uses
  %i.kw = add nuw nsw i64 %9, %indvars.iv507      ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.kw
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !80
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.kw ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !80
  %i.lb = fadd nsz float %i.ky, %i.la
  %i.lc = fmul nsz float %i.lb, 5.000000e-01      ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv507
  store float %i.lc, ptr %i.ld, align 4, !tbaa !80
  %i.le = load float, ptr %i.kz, align 4, !tbaa !80
  %i.lf = fsub nsz float %i.lc, %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv507
  store float %i.lf, ptr %i.lg, align 4, !tbaa !80
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %i.lh = load i8, ptr %i.ku, align 1, !tbaa !73  ; 2 uses
  %i.li = zext i8 %i.lh to i64
  %i.lj = icmp samesign ult i64 %indvars.iv.next508, %i.li
  br i1 %i.lj, label %bb.ag, label %._crit_edge452.loopexit, !llvm.loop !198

._crit_edge452.loopexit:                          ; preds = %bb.ag
  %i.lk = zext i8 %i.lh to i32
  br label %._crit_edge452

._crit_edge452:                                   ; preds = %._crit_edge452.loopexit, %bb.af
  %.lcssa424.in = phi i32 [ 0, %bb.af ], [ %i.lk, %._crit_edge452.loopexit ]
  %i.ll = load ptr, ptr %i.ej, align 8, !tbaa !83
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.pre520
  call void %i.ll(ptr noundef nonnull %i.i, ptr noundef nonnull %i.lm, i32 noundef %.lcssa424.in) #13
  %i.ln = load ptr, ptr %i.ej, align 8, !tbaa !83
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.pre520
  %i.lp = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv513
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !73
  %i.ls = zext i8 %i.lr to i32
  call void %i.ln(ptr noundef nonnull %i.j, ptr noundef nonnull %i.lo, i32 noundef %i.ls) #13
  %i.lt = load ptr, ptr %i.ej, align 8, !tbaa !83
  %i.lu = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv513
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !73
  %i.lx = zext i8 %i.lw to i32
  call void %i.lt(ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, i32 noundef %i.lx) #13
  %i.ly = load ptr, ptr %i.ej, align 8, !tbaa !83
  %i.lz = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %indvars.iv513
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !73
  %i.mc = zext i8 %i.mb to i32
  call void %i.ly(ptr noundef nonnull %i.l, ptr noundef nonnull %i.h, i32 noundef %i.mc) #13
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.pre522
  %i.me = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %indvars.iv513
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !73
  %i.mh = zext i8 %i.mg to i32
  %i.mi = load i32, ptr %i.fw, align 4, !tbaa !82
  %i.mj = load i32, ptr %i.fy, align 4, !tbaa !82 ; 2 uses
  %i.mk = load float, ptr %i.ko, align 4, !tbaa !79
  %i.ml = fadd nsz float %i.mk, f0x00800000
  %i.mm = fdiv nsz float %i.n, %i.ml
  %i.mn = sext i32 %i.mj to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !19
  %i.mq = call nsz float %i.mp(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.md, ptr noundef null, ptr noundef nonnull %i.i, i32 noundef range(i32 0, 256) %i.mh, i32 noundef %i.mi, i32 noundef %i.mj, float noundef %i.mm, float noundef +inf, ptr noundef nonnull %i.c, ptr noundef null) #13, !inline_history !5
  %i.mr = fadd nsz float %.0334456, %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.pre522
  %i.mt = load ptr, ptr %i.eo, align 16, !tbaa !72
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %indvars.iv513
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !73
  %i.mw = zext i8 %i.mv to i32
  %i.mx = load i32, ptr %i.fx, align 4, !tbaa !82
  %i.my = load i32, ptr %i.fz, align 4, !tbaa !82 ; 2 uses
  %i.mz = load float, ptr %i.kq, align 4, !tbaa !79
  %i.na = fadd nsz float %i.mz, f0x00800000
  %i.nb = fdiv nsz float %i.n, %i.na
  %i.nc = sext i32 %i.my to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.nc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !19
  %i.nf = call nsz float %i.ne(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.ms, ptr noundef null, ptr noundef nonnull %i.j, i32 noundef range(i32 0, 256) %i.mw, i32 noundef %i.mx, i32 noundef %i.my, float noundef %i.nb, float noundef +inf, ptr noundef nonnull %i.d, ptr noundef null) #13, !inline_history !5
  %i.ng = fadd nsz float %i.mr, %i.nf
  %i.nh = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %indvars.iv513
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !73
  %i.nk = zext i8 %i.nj to i32
  %i.nl = fadd nsz float %.375, f0x00800000
  %i.nm = fdiv nsz float %i.n, %i.nl
  %i.nn = load ptr, ptr %i.ke, align 8, !tbaa !19
  %i.no = call nsz float %i.nn(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef nonnull %i.k, i32 noundef range(i32 0, 256) %i.nk, i32 noundef %i.im, i32 noundef %.0.i406, float noundef %i.nm, float noundef +inf, ptr noundef nonnull %i.e, ptr noundef null) #13, !inline_history !5
  %i.np = fadd nsz float %.0333457, %i.no
  %i.nq = load ptr, ptr %i.eo, align 16, !tbaa !72
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %indvars.iv513
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !73
  %i.nt = zext i8 %i.ns to i32
  %i.nu = call nsz float @llvm.fmuladd.f32(float %.375, float %i.fl, float f0x00800000)
  %i.nv = fdiv nsz float %i.q, %i.nu
  %i.nw = load ptr, ptr %i.kg, align 8, !tbaa !19
  %i.nx = call nsz float %i.nw(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef nonnull %i.l, i32 noundef range(i32 0, 256) %i.nt, i32 noundef %i.ip, i32 noundef %.0.i407, float noundef %i.nv, float noundef +inf, ptr noundef nonnull %i.f, ptr noundef null) #13, !inline_history !5
  %i.ny = fadd nsz float %i.np, %i.nx
  %i.nz = load i32, ptr %i.c, align 4, !tbaa !82
  %i.oa = load i32, ptr %i.d, align 4, !tbaa !82
  %i.ob = add nsw i32 %i.oa, %i.nz                ; 2 uses
  %i.oc = add nsw i32 %i.ob, %.0332458            ; 3 uses
  %i.od = load i32, ptr %i.e, align 4, !tbaa !82
  %i.oe = load i32, ptr %i.f, align 4, !tbaa !82
  %i.of = add nsw i32 %i.oe, %i.od                ; 2 uses
  %i.og = add nsw i32 %i.of, %.0459               ; 3 uses
  %i.oh = sitofp nsz i32 %i.ob to float
  %i.oi = fsub nsz float %i.ng, %i.oh             ; 2 uses
  %i.oj = sitofp nsz i32 %i.of to float
  %i.ok = fsub nsz float %i.ny, %i.oj             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.ol = load i8, ptr %i.ey, align 1, !tbaa !73
  %i.om = zext i8 %i.ol to i64
  %i.on = icmp samesign ult i64 %indvars.iv.next511, %i.om
  br i1 %i.on, label %bb.af, label %._crit_edge461, !llvm.loop !199

._crit_edge461:                                   ; preds = %._crit_edge452
  %i.oo = fcmp nsz ole float %i.ok, %i.oi
  %i.op = icmp slt i32 %i.og, %i.oc
  %i.oq = select i1 %i.oo, i1 %i.op, i1 false     ; 2 uses
  %i.or = zext i1 %i.oq to i8
  store i8 %i.or, ptr %i.gi, align 1, !tbaa !73
  br i1 %i.oq, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %._crit_edge461
  %i.os = load i32, ptr %i.fy, align 4, !tbaa !82 ; 2 uses
  %.not370 = icmp eq i32 %i.os, 13
  %.pre517 = load i32, ptr %i.fz, align 4, !tbaa !82 ; 2 uses
  %.not371 = icmp eq i32 %.pre517, 13
  %or.cond554 = select i1 %.not370, i1 true, i1 %.not371
  br i1 %or.cond554, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.im, ptr %i.fw, align 4, !tbaa !82
  store i32 %i.ip, ptr %i.fx, align 4, !tbaa !82
  store i32 %.0.i406, ptr %i.fy, align 4, !tbaa !82
  store i32 %.0.i407, ptr %i.fz, align 4, !tbaa !82
  br label %select.unfold

bb.aj:                                            ; preds = %bb.ah
  %i.ot = icmp ne i32 %i.os, 13
  %i.ou = icmp ne i32 %.pre517, 13
  %i.ov = xor i1 %i.ot, %i.ou
  br i1 %i.ov, label %bb.ak, label %select.unfold

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.gi, align 1, !tbaa !73
  br label %select.unfold

bb.al:                                            ; preds = %._crit_edge461.thread, %._crit_edge461
  %.0.lcssa541 = phi i32 [ 0, %._crit_edge461.thread ], [ %i.og, %._crit_edge461 ]
  %.0332.lcssa540 = phi i32 [ 0, %._crit_edge461.thread ], [ %i.oc, %._crit_edge461 ]
  %i.ow = icmp sle i32 %.0.lcssa541, %.0332.lcssa540
  %i.ox = icmp samesign ult i32 %.0344467, 3
  %or.cond482 = select i1 %i.ow, i1 %i.ox, i1 false
  br i1 %or.cond482, label %.backedge, label %select.unfold

ff_sfdelta_can_replace.exit.thread:               ; preds = %bb.aa, %bb.ab, %bb.y, %bb.z
  %.old481 = icmp samesign ult i32 %.0344467, 3
  br i1 %.old481, label %.backedge, label %select.unfold

.backedge:                                        ; preds = %ff_sfdelta_can_replace.exit.thread, %bb.al
  %.0344467.be = add nuw nsw i32 %.0344467, 1
  br label %bb.w, !llvm.loop !200

select.unfold:                                    ; preds = %bb.al, %ff_sfdelta_can_replace.exit.thread, %bb.u, %bb.aj, %bb.ak, %bb.ai
  %.pr = load i8, ptr %i.fq, align 1, !tbaa !73
  %.not372 = icmp eq i8 %.pr, 0
  br i1 %.not372, label %bb.am, label %.thread412

bb.am:                                            ; preds = %select.unfold
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.fm
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !82
  %i.pa = icmp ult i32 %i.oz, 12
  br i1 %i.pa, label %bb.an, label %.thread412

bb.an:                                            ; preds = %bb.am
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fm
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !82
  br label %.thread412

.thread412:                                       ; preds = %bb.t, %bb.an, %bb.am, %select.unfold
  %.2343 = phi i32 [ %.1342472, %select.unfold ], [ %i.pc, %bb.an ], [ %.1342472, %bb.am ], [ %.1342472, %bb.t ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fm
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !73
  %.not373 = icmp eq i8 %i.pe, 0
  br i1 %.not373, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %.thread412
  %i.pf = load i8, ptr %i.fn, align 1, !tbaa !73
  %.not374 = icmp eq i8 %i.pf, 0
  br i1 %.not374, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fm
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !82
  %i.pi = icmp ult i32 %i.ph, 12
  br i1 %i.pi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fm
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !82
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %.thread412
  %.2 = phi i32 [ %.1340473, %.thread412 ], [ %.1340473, %bb.ao ], [ %i.pk, %bb.aq ], [ %.1340473, %bb.ap ] ; 2 uses
  %i.pl = load ptr, ptr %i.eg, align 16, !tbaa !72
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %indvars.iv513
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !73
  %i.po = zext i8 %i.pn to i32
  %i.pp = add nuw nsw i32 %.0352468, %i.po
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %i.pq = load i32, ptr %i.ea, align 8, !tbaa !71 ; 3 uses
  %i.pr = sext i32 %i.pq to i64
  %i.ps = icmp slt i64 %indvars.iv.next514, %i.pr
  br i1 %i.ps, label %bb.r, label %._crit_edge476.loopexit, !llvm.loop !201

._crit_edge476.loopexit:                          ; preds = %bb.ar
  %.pre518 = load i32, ptr %i.z, align 4, !tbaa !69
  br label %._crit_edge476

._crit_edge476:                                   ; preds = %.preheader419.._crit_edge476_crit_edge, %._crit_edge476.loopexit
  %.pre-phi = phi i64 [ %.pre519.a, %.preheader419.._crit_edge476_crit_edge ], [ %i.ex, %._crit_edge476.loopexit ]
  %i.pt = phi i32 [ %i.et, %.preheader419.._crit_edge476_crit_edge ], [ %.pre518, %._crit_edge476.loopexit ] ; 2 uses
  %i.pu = phi i32 [ %i.eu, %.preheader419.._crit_edge476_crit_edge ], [ %i.pq, %._crit_edge476.loopexit ]
  %.1342.lcssa = phi i32 [ %.0341479, %.preheader419.._crit_edge476_crit_edge ], [ %.2343, %._crit_edge476.loopexit ]
  %.1340.lcssa = phi i32 [ %.0339480, %.preheader419.._crit_edge476_crit_edge ], [ %.2, %._crit_edge476.loopexit ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.pre-phi
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !73
  %i.px = zext i8 %i.pw to i32
  %i.py = add nuw nsw i32 %.0348478, %i.px        ; 2 uses
  %i.pz = icmp slt i32 %i.py, %i.pt
  br i1 %i.pz, label %.preheader419, label %.loopexit, !llvm.loop !202

.loopexit:                                        ; preds = %._crit_edge476, %.preheader419.lr.ph, %ff_init_nextband_map.exit399, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @ff_aac_search_for_is(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @search_for_quantizers_fast(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, float noundef %3) #0 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 5 uses
  %i.b = alloca [128 x float], align 16           ; 6 uses
  %i.c = alloca [128 x float], align 16           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = sitofp nsz i64 %i.e to double
  %i.g = fmul nnan nsz double %i.f, 1.024000e+03
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = sitofp nsz i32 %i.i to double
  %i.k = fdiv nsz double %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41
  %i.n = sitofp nsz i32 %i.m to double
  %i.o = fdiv nsz double %i.k, %i.n
  %i.p = fdiv nsz float %3, 1.200000e+02
  %i.q = fpext nsz float %i.p to double
  %i.r = fmul nsz double %i.o, %i.q
  %i.s = fptosi double %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 5800) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader343.lr.ph, label %.loopexit339

.preheader343.lr.ph:                              ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !71   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 38160
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 38232
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 5644
  br i1 %i.z, label %.preheader343.us.preheader, label %.preheader340.lr.ph

.preheader343.us.preheader:                       ; preds = %.preheader343.lr.ph
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.preheader343.us

.preheader343.us:                                 ; preds = %.preheader343.us.preheader, %._crit_edge353.us
  %.0275358.us = phi float [ %.2277.us, %._crit_edge353.us ], [ +inf, %.preheader343.us.preheader ]
  %.0278357.us = phi i32 [ %i.bm, %._crit_edge353.us ], [ 0, %.preheader343.us.preheader ]
  %.0294356.us = phi i32 [ %i.bq, %._crit_edge353.us ], [ 0, %.preheader343.us.preheader ] ; 3 uses
  %i.af = zext nneg i32 %.0294356.us to i64       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af ; 3 uses
  %i.ah = shl nsw i32 %.0294356.us, 4
  %i.ai = zext nneg i32 %i.ah to i64
  br label %.preheader342.us

.lr.ph.us:                                        ; preds = %.preheader342.us, %bb.c
  %i.aj = phi i8 [ %i.ba, %bb.c ], [ %i.bn, %.preheader342.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader342.us ] ; 2 uses
  %.0272348.us = phi float [ %i.au, %bb.c ], [ 0.000000e+00, %.preheader342.us ]
  %.0273347.us = phi i32 [ %.1274.us, %bb.c ], [ 0, %.preheader342.us ]
  %i.ak = load ptr, ptr %i.ab, align 16, !tbaa !75
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !76
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [2052 x i8], ptr %i.ak, i64 %i.am
  %i.ao = add nuw nsw i64 %indvars.iv, %i.af
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, %indvars.iv436   ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !79 ; 3 uses
  %i.au = fadd nsz float %.0272348.us, %i.at      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !78
  %i.ax = fcmp nsz ole float %i.aw, %i.at
  %i.ay = fcmp nsz oeq float %i.at, 0.000000e+00
  %or.cond.us = or i1 %i.ay, %i.ax
  br i1 %or.cond.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aq
  store i8 1, ptr %i.az, align 1, !tbaa !73
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.us
  %i.ba = phi i8 [ %.pre, %bb.b ], [ %i.aj, %.lr.ph.us ] ; 2 uses
  %.1274.us = phi i32 [ %.0273347.us, %bb.b ], [ 1, %.lr.ph.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !205

._crit_edge.us:                                   ; preds = %bb.c, %.preheader342.us
  %.0273.lcssa.us = phi i32 [ 0, %.preheader342.us ], [ %.1274.us, %bb.c ] ; 3 uses
  %.0272.lcssa.us = phi float [ 0.000000e+00, %.preheader342.us ], [ %i.au, %bb.c ] ; 3 uses
  %i.bd = fmul nsz float %.0272.lcssa.us, 5.120000e+02
  %i.be = add nuw nsw i64 %indvars.iv436, %i.ai   ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.be
  store float %i.bd, ptr %i.bf, align 4, !tbaa !80
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.be
  store i32 0, ptr %i.bg, align 4, !tbaa !82
  %.not319.us = icmp eq i32 %.0273.lcssa.us, 0
  %i.bh = trunc nuw nsw i32 %.0273.lcssa.us to i8
  %i.bi = xor i8 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.be
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !73
  %i.bk = fcmp nsz ule float %.1276352.us, %.0272.lcssa.us
  %i.bl = select i1 %.not319.us, i1 true, i1 %i.bk
  %.2277.us = select nsz i1 %i.bl, float %.1276352.us, float %.0272.lcssa.us ; 3 uses
  %i.bm = or i32 %.0273.lcssa.us, %.1279351.us    ; 3 uses
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next437, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge353.us, label %.preheader342.us, !llvm.loop !206

.preheader342.us:                                 ; preds = %.preheader343.us, %._crit_edge.us
  %indvars.iv436 = phi i64 [ 0, %.preheader343.us ], [ %indvars.iv.next437, %._crit_edge.us ] ; 3 uses
  %.1276352.us = phi float [ %.0275358.us, %.preheader343.us ], [ %.2277.us, %._crit_edge.us ] ; 2 uses
  %.1279351.us = phi i32 [ %.0278357.us, %.preheader343.us ], [ %i.bm, %._crit_edge.us ]
  %i.bn = load i8, ptr %i.ag, align 1, !tbaa !73  ; 2 uses
  %.not421 = icmp eq i8 %i.bn, 0
  br i1 %.not421, label %._crit_edge.us, label %.lr.ph.us

._crit_edge353.us:                                ; preds = %._crit_edge.us
  %i.bo = load i8, ptr %i.ag, align 1, !tbaa !73
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %.0294356.us, %i.bp     ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.v
  br i1 %i.br, label %.preheader343.us, label %.preheader341, !llvm.loop !207

.preheader341:                                    ; preds = %._crit_edge353.us
  %i.bs = icmp eq i32 %i.bm, 0
  br label %.preheader340.lr.ph

.preheader340.lr.ph:                              ; preds = %.preheader341, %.preheader343.lr.ph
  %.0275.lcssa514 = phi float [ %.2277.us, %.preheader341 ], [ +inf, %.preheader343.lr.ph ]
  %.0278.lcssa513 = phi i1 [ %i.bs, %.preheader341 ], [ true, %.preheader343.lr.ph ]
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 7180
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 6668
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 14
  br i1 %i.bv, label %.preheader340.us.preheader, label %._crit_edge366

.preheader340.us.preheader:                       ; preds = %.preheader340.lr.ph
  %wide.trip.count442 = zext nneg i32 %i.bu to i64
  br label %.preheader340.us

.preheader340.us:                                 ; preds = %.preheader340.us.preheader, %._crit_edge.us368
  %.1295365.us = phi i32 [ %i.cs, %._crit_edge.us368 ], [ 0, %.preheader340.us.preheader ] ; 3 uses
  %i.bz = shl nuw nsw i32 %.1295365.us, 4
  %i.ca = zext nneg i32 %i.bz to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader340.us, %bb.f
  %indvars.iv439 = phi i64 [ 0, %.preheader340.us ], [ %indvars.iv.next440, %bb.f ] ; 2 uses
  %i.cb = add nuw nsw i64 %indvars.iv439, %i.ca   ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !73
  %.not318.us = icmp eq i8 %i.cd, 0
  br i1 %.not318.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !80
  %i.cg = fdiv nsz float %i.cf, %.0275.lcssa514
  %i.ch = tail call nsz float @llvm.log2.f32(float %i.cg)
  %i.ci = fmul nsz float %i.ch, 4.000000e+00      ; 2 uses
  %i.cj = fcmp nsz ogt float %i.ci, 5.900000e+01
  %i.ck = fadd nsz float %i.ci, 1.400000e+02
  %i.cl = fptosi float %i.ck to i32
  %i.cm = select i1 %i.cj, i32 199, i32 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ %i.cm, %bb.e ], [ 140, %bb.d ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cb
  store i32 %.sink, ptr %i.cn, align 4, !tbaa !82
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %._crit_edge.us368, label %bb.d, !llvm.loop !208

._crit_edge.us368:                                ; preds = %bb.f
  %i.co = zext nneg i32 %.1295365.us to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !73
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %.1295365.us, %i.cr     ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.v
  br i1 %i.ct, label %.preheader340.us, label %._crit_edge366, !llvm.loop !209

._crit_edge366:                                   ; preds = %._crit_edge.us368, %.preheader340.lr.ph
  br i1 %.0278.lcssa513, label %.loopexit339, label %bb.g

bb.g:                                             ; preds = %._crit_edge366
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 567080
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 38688 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 12560 ; 2 uses
  tail call void %i.cv(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cx, i32 noundef 1024) #13
  tail call void @ff_quantize_band_cost_cache_init(ptr noundef %1) #13
  %i.cy = load i32, ptr %i.u, align 4, !tbaa !69  ; 5 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph373, label %.preheader338

.lr.ph373:                                        ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.db = load i32, ptr %i.da, align 8, !tbaa !71 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 14
  br i1 %i.dc, label %.lr.ph373.split.us, label %.preheader338

.lr.ph373.split.us:                               ; preds = %.lr.ph373
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !72
  %i.dg = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2
  br label %.lr.ph.us374

.lr.ph.us374:                                     ; preds = %._crit_edge.us380, %.lr.ph373.split.us
  %.2296371.us = phi i32 [ 0, %.lr.ph373.split.us ], [ %i.el, %._crit_edge.us380 ] ; 4 uses
  %i.di = zext nneg i32 %.2296371.us to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !73
  %.fr = freeze i8 %i.dk                          ; 3 uses
  %.not.i.us = icmp eq i8 %.fr, 0
  %wide.trip.count29.i.us = zext i8 %.fr to i64
  %i.dl = shl i32 %.2296371.us, 4                 ; 2 uses
  br i1 %.not.i.us, label %find_max_val.exit.us.us.preheader, label %.lr.ph.split.us375.preheader

.lr.ph.split.us375.preheader:                     ; preds = %.lr.ph.us374
  %i.dm = shl nsw i32 %.2296371.us, 7
  %i.dn = zext i32 %i.dl to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dn
  br label %.lr.ph.split.us375

find_max_val.exit.us.us.preheader:                ; preds = %.lr.ph.us374
  %i.do = zext i32 %i.dl to i64
  %i.dp = shl nuw nsw i64 %i.do, 2
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.dp
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 0, i64 %i.dh, i1 false), !tbaa !80
  br label %._crit_edge.us380

.lr.ph.split.us375:                               ; preds = %.lr.ph.split.us375.preheader, %find_max_val.exit.us378
  %indvars.iv444 = phi i64 [ 0, %.lr.ph.split.us375.preheader ], [ %indvars.iv.next445, %find_max_val.exit.us378 ] ; 3 uses
  %.1270370.us376 = phi i32 [ %i.dm, %.lr.ph.split.us375.preheader ], [ %i.ej, %find_max_val.exit.us378 ] ; 2 uses
  %i.dq = zext nneg i32 %.1270370.us376 to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv444
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !73  ; 4 uses
  %i.du = zext i8 %i.dt to i32
  %.not23.i.us = icmp eq i8 %i.dt, 0
  br i1 %.not23.i.us, label %find_max_val.exit.us378, label %.preheader.us.preheader.i.us

.preheader.us.preheader.i.us:                     ; preds = %.lr.ph.split.us375
  %wide.trip.count.i.us = zext i8 %i.dt to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.us, 3    ; 3 uses
  %i.dv = icmp ult i8 %i.dt, 4
  %unroll_iter = and i64 %wide.trip.count.i.us, 252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod589 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %._crit_edge.us.i.us, %.preheader.us.preheader.i.us
  %indvars.iv26.i.us = phi i64 [ 0, %.preheader.us.preheader.i.us ], [ %indvars.iv.next27.i.us, %._crit_edge.us.i.us ] ; 2 uses
  %.01519.us.i.us = phi float [ 0.000000e+00, %.preheader.us.preheader.i.us ], [ %.1..us.i.us.lcssa, %._crit_edge.us.i.us ] ; 2 uses
  %.idx.i.us = shl nuw nsw i64 %indvars.iv26.i.us, 9
  %invariant.gep.i.us = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i.us ; 5 uses
  br i1 %i.dv, label %.epil.preheader, label %.preheader.us.i.us.new

.preheader.us.i.us.new:                           ; preds = %.preheader.us.i.us, %.preheader.us.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ] ; 5 uses
  %.117.us.i.us = phi float [ %.1..us.i.us.3, %.preheader.us.i.us.new ], [ %.01519.us.i.us, %.preheader.us.i.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ]
  %gep.i.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %i.dw = load float, ptr %gep.i.us, align 4, !tbaa !80 ; 2 uses
  %i.dx = fcmp nsz ogt float %.117.us.i.us, %i.dw
  %.1..us.i.us = select nsz i1 %i.dx, float %.117.us.i.us, float %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.1 = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.dz = load float, ptr %gep.i.us.1, align 4, !tbaa !80 ; 2 uses
  %i.ea = fcmp nsz ogt float %.1..us.i.us, %i.dz
  %.1..us.i.us.1 = select nsz i1 %i.ea, float %.1..us.i.us, float %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.2 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ec = load float, ptr %gep.i.us.2, align 4, !tbaa !80 ; 2 uses
  %i.ed = fcmp nsz ogt float %.1..us.i.us.1, %i.ec
  %.1..us.i.us.2 = select nsz i1 %i.ed, float %.1..us.i.us.1, float %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %gep.i.us.3 = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ef = load float, ptr %gep.i.us.3, align 4, !tbaa !80 ; 2 uses
  %i.eg = fcmp nsz ogt float %.1..us.i.us.2, %i.ef
  %.1..us.i.us.3 = select nsz i1 %i.eg, float %.1..us.i.us.2, float %i.ef ; 3 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.us.unr-lcssa, label %.preheader.us.i.us.new, !llvm.loop !0

._crit_edge.us.i.us.unr-lcssa:                    ; preds = %.preheader.us.i.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.us.unr-lcssa, %.preheader.us.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader.us.i.us ], [ %indvars.iv.next.i.us.3, %._crit_edge.us.i.us.unr-lcssa ]
  %.117.us.i.us.epil.init = phi float [ %.01519.us.i.us, %.preheader.us.i.us ], [ %.1..us.i.us.3, %._crit_edge.us.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod589)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.us.epil, %bb.h ] ; 2 uses
  %.117.us.i.us.epil = phi float [ %.117.us.i.us.epil.init, %.epil.preheader ], [ %.1..us.i.us.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %gep.i.us.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil
  %i.eh = load float, ptr %gep.i.us.epil, align 4, !tbaa !80 ; 2 uses
  %i.ei = fcmp nsz ogt float %.117.us.i.us.epil, %i.eh
  %.1..us.i.us.epil = select nsz i1 %i.ei, float %.117.us.i.us.epil, float %i.eh ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.us, label %bb.h, !llvm.loop !210

._crit_edge.us.i.us:                              ; preds = %bb.h, %._crit_edge.us.i.us.unr-lcssa
  %.1..us.i.us.lcssa = phi float [ %.1..us.i.us.3, %._crit_edge.us.i.us.unr-lcssa ], [ %.1..us.i.us.epil, %bb.h ] ; 2 uses
  %indvars.iv.next27.i.us = add nuw nsw i64 %indvars.iv26.i.us, 1 ; 2 uses
  %exitcond30.not.i.us = icmp eq i64 %indvars.iv.next27.i.us, %wide.trip.count29.i.us
  br i1 %exitcond30.not.i.us, label %find_max_val.exit.us378, label %.preheader.us.i.us, !llvm.loop !1

find_max_val.exit.us378:                          ; preds = %._crit_edge.us.i.us, %.lr.ph.split.us375
  %.015.lcssa.i.us = phi float [ 0.000000e+00, %.lr.ph.split.us375 ], [ %.1..us.i.us.lcssa, %._crit_edge.us.i.us ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv444
  store float %.015.lcssa.i.us, ptr %gep, align 4, !tbaa !80
  %i.ej = add nuw nsw i32 %.1270370.us376, %i.du
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next445, %i.dg
  br i1 %exitcond448.not, label %._crit_edge.us380, label %.lr.ph.split.us375, !llvm.loop !211

._crit_edge.us380:                                ; preds = %find_max_val.exit.us378, %find_max_val.exit.us.us.preheader
  %i.ek = zext i8 %.fr to i32
  %i.el = add nuw nsw i32 %.2296371.us, %i.ek     ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.cy
  br i1 %i.em, label %.lr.ph.us374, label %.preheader338, !llvm.loop !212

.preheader338:                                    ; preds = %._crit_edge.us380, %.lr.ph373, %bb.g
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 6668 ; 20 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 7180
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 42788
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 42784 ; 2 uses
  %i.eu = sitofp nsz i32 %i.t to double
  %i.ev = fmul nnan nsz double %i.eu, 1.020000e+00
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 5644
  br label %bb.i

bb.i:                                             ; preds = %.preheader338, %._crit_edge418
  %i.ex = phi i32 [ %i.ja, %._crit_edge418 ], [ %i.cy, %.preheader338 ]
  %i.ey = phi i32 [ %i.jb, %._crit_edge418 ], [ %i.cy, %.preheader338 ]
  %i.ez = phi i32 [ %i.jc, %._crit_edge418 ], [ %i.cy, %.preheader338 ]
  %.0280 = phi i32 [ %i.oq, %._crit_edge418 ], [ 0, %.preheader338 ] ; 3 uses
  %i.fa = load i32, ptr %i.en, align 4, !tbaa !82
  %.not311 = icmp eq i32 %.0280, 0
  %i.fb = select i1 %.not311, i32 32, i32 1
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.backedge, %bb.i
  %i.fc = phi i32 [ %i.ex, %bb.i ], [ %i.ja, %select.unfold.backedge ] ; 3 uses
  %i.fd = phi i32 [ %i.ey, %bb.i ], [ %i.jb, %select.unfold.backedge ] ; 3 uses
  %i.fe = phi i32 [ %i.ez, %bb.i ], [ %i.jc, %select.unfold.backedge ] ; 2 uses
  %.0281 = phi i32 [ %i.fa, %bb.i ], [ %.1282.lcssa, %select.unfold.backedge ] ; 3 uses
  %.0264 = phi i32 [ %i.fb, %bb.i ], [ %.0264.be, %select.unfold.backedge ] ; 19 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph401, label %._crit_edge402

.lr.ph401:                                        ; preds = %select.unfold
  %i.fg = load i32, ptr %i.eo, align 8, !tbaa !71 ; 3 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph401.split, label %._crit_edge402

.lr.ph401.split:                                  ; preds = %.lr.ph401, %._crit_edge392
  %i.fi = phi i32 [ %i.is, %._crit_edge392 ], [ %i.fc, %.lr.ph401 ]
  %i.fj = phi i32 [ %i.it, %._crit_edge392 ], [ %i.fg, %.lr.ph401 ] ; 2 uses
  %i.fk = phi i32 [ %i.iu, %._crit_edge392 ], [ %i.fg, %.lr.ph401 ] ; 2 uses
  %.0262399 = phi i32 [ %.1263.lcssa, %._crit_edge392 ], [ -1, %.lr.ph401 ] ; 2 uses
  %.0266398 = phi i32 [ %.1267.lcssa, %._crit_edge392 ], [ 0, %.lr.ph401 ] ; 2 uses
  %.1282397 = phi i32 [ %.2283.lcssa, %._crit_edge392 ], [ %.0281, %.lr.ph401 ] ; 2 uses
  %.3297396 = phi i32 [ %i.iy, %._crit_edge392 ], [ 0, %.lr.ph401 ] ; 5 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph391, label %.lr.ph401.split.._crit_edge392_crit_edge

.lr.ph401.split.._crit_edge392_crit_edge:         ; preds = %.lr.ph401.split
  %.pre480 = zext nneg i32 %.3297396 to i64
  br label %._crit_edge392

.lr.ph391:                                        ; preds = %.lr.ph401.split
  %i.fm = shl nsw i32 %.3297396, 7
  %i.fn = shl nsw i32 %.3297396, 4
  %i.fo = zext nneg i32 %.3297396 to i64          ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fo ; 2 uses
  %i.fq = zext nneg i32 %i.fn to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph391, %bb.t
  %i.fr = phi i32 [ %i.fj, %.lr.ph391 ], [ %i.ip, %bb.t ] ; 2 uses
  %indvars.iv455 = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next456, %bb.t ] ; 5 uses
  %.1263389 = phi i32 [ %.0262399, %.lr.ph391 ], [ %.2, %bb.t ] ; 4 uses
  %.1267388 = phi i32 [ %.0266398, %.lr.ph391 ], [ %.2268, %bb.t ] ; 3 uses
  %.2271387 = phi i32 [ %i.fm, %.lr.ph391 ], [ %.3, %bb.t ] ; 2 uses
  %.2283386 = phi i32 [ %.1282397, %.lr.ph391 ], [ %.3284, %bb.t ] ; 3 uses
  %i.fs = zext nneg i32 %.2271387 to i64          ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.fs
  %i.fv = add nuw nsw i64 %indvars.iv455, %i.fq   ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !73
  %.not316 = icmp eq i8 %i.fx, 0
  br i1 %.not316, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.fv ; 3 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !82 ; 4 uses
  %i.ga = icmp sgt i32 %i.fz, 217
  br i1 %i.ga, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %..2283 = tail call i32 @llvm.smin.i32(i32 %.2283386, i32 %i.fz)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fv
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !80
  %i.gd = sub i32 304, %i.fz
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr @ff_aac_pow34sf_tab, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !80
  %i.gh = tail call nsz float @llvm.fmuladd.f32(float %i.gc, float %i.gg, float 4.054000e-01)
  %i.gi = fptosi float %i.gh to i32               ; 2 uses
  %i.gj = icmp ugt i32 %i.gi, 13
  br i1 %i.gj, label %find_min_book.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gk = zext nneg i32 %i.gi to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @aac_maxval_cb, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !73
  %i.gn = zext i8 %i.gm to i32
  br label %find_min_book.exit

find_min_book.exit:                               ; preds = %bb.l, %bb.m
  %.0.i324 = phi i32 [ %i.gn, %bb.m ], [ 11, %bb.l ] ; 4 uses
  %i.go = load i8, ptr %i.fp, align 1, !tbaa !73  ; 2 uses
  %.not422 = icmp eq i8 %i.go, 0
  br i1 %.not422, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %find_min_book.exit
  %i.gp = zext nneg i32 %.0.i324 to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr @quantize_and_encode_band_cost_arr, i64 %i.gp
  %i.gr = trunc nuw i32 %.0.i324 to i8
  %.pre471 = load i16, ptr %i.et, align 16, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %quantize_band_cost_cached.exit
  %i.gs = phi i8 [ %i.go, %.lr.ph ], [ %i.hv, %quantize_band_cost_cached.exit ]
  %i.gt = phi i16 [ %.pre471, %.lr.ph ], [ %i.hx, %quantize_band_cost_cached.exit ] ; 2 uses
  %indvars.iv452 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next453, %quantize_band_cost_cached.exit ] ; 3 uses
  %.0383 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ia, %quantize_band_cost_cached.exit ]
  %.0261382 = phi i32 [ 0, %.lr.ph ], [ %i.ib, %quantize_band_cost_cached.exit ]
  %i.gu = add nuw nsw i64 %indvars.iv452, %i.fo
  %i.gv = shl nuw nsw i64 %indvars.iv452, 7       ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gv
  %i.gy = load ptr, ptr %i.er, align 16, !tbaa !72
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv455
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !73
  %i.hb = zext i8 %i.ha to i32
  %i.hc = load i32, ptr %i.fy, align 4, !tbaa !82 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [2048 x i8], ptr %i.es, i64 %i.hd
  %.idx = shl nuw nsw i64 %i.gu, 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %indvars.iv455 ; 10 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 14 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !87
  %.not.i325 = icmp eq i16 %i.hi, %i.gt
  br i1 %.not.i325, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hk = load i8, ptr %i.hj, align 4, !tbaa !88
  %i.hl = sext i8 %i.hk to i32
  %.not34.i = icmp eq i32 %.0.i324, %i.hl
  br i1 %.not34.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 13
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !89
  %.not35.i = icmp eq i8 %i.hn, 0
  br i1 %.not35.i, label %.quantize_band_cost_cached.exit_crit_edge, label %bb.q

.quantize_band_cost_cached.exit_crit_edge:        ; preds = %bb.p
  %.pre472 = load float, ptr %i.hg, align 4, !tbaa !90
  br label %quantize_band_cost_cached.exit

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hq = load ptr, ptr %i.gq, align 8, !tbaa !19
  %i.hr = tail call nsz float %i.hq(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.gw, ptr noundef null, ptr noundef nonnull %i.gx, i32 noundef range(i32 0, 256) %i.hb, i32 noundef %i.hc, i32 noundef range(i32 0, 256) %.0.i324, float noundef 1.000000e+00, float noundef +inf, ptr noundef nonnull %i.ho, ptr noundef nonnull %i.hp) #13, !inline_history !2 ; 2 uses
  store float %i.hr, ptr %i.hg, align 4, !tbaa !90
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i8 %i.gr, ptr %i.hs, align 4, !tbaa !88
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 13
  store i8 0, ptr %i.ht, align 1, !tbaa !89
  %i.hu = load i16, ptr %i.et, align 16, !tbaa !85 ; 2 uses
  store i16 %i.hu, ptr %i.hh, align 2, !tbaa !87
  %.pre473 = load i8, ptr %i.fp, align 1, !tbaa !73
  br label %quantize_band_cost_cached.exit

quantize_band_cost_cached.exit:                   ; preds = %.quantize_band_cost_cached.exit_crit_edge, %bb.q
  %i.hv = phi i8 [ %i.gs, %.quantize_band_cost_cached.exit_crit_edge ], [ %.pre473, %bb.q ] ; 2 uses
  %i.hw = phi float [ %.pre472, %.quantize_band_cost_cached.exit_crit_edge ], [ %i.hr, %bb.q ]
  %i.hx = phi i16 [ %i.gt, %.quantize_band_cost_cached.exit_crit_edge ], [ %i.hu, %bb.q ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !91
  %i.ia = fadd nsz float %.0383, %i.hw            ; 2 uses
  %i.ib = add nsw i32 %i.hz, %.0261382            ; 2 uses
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.ic = zext i8 %i.hv to i64
  %i.id = icmp samesign ult i64 %indvars.iv.next453, %i.ic
  br i1 %i.id, label %bb.n, label %._crit_edge.loopexit, !llvm.loop !213

._crit_edge.loopexit:                             ; preds = %quantize_band_cost_cached.exit
  %.pre474.pre = load i32, ptr %i.fy, align 4, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %find_min_book.exit
  %.pre474 = phi i32 [ %i.fz, %find_min_book.exit ], [ %.pre474.pre, %._crit_edge.loopexit ] ; 2 uses
  %.0261.lcssa = phi i32 [ 0, %find_min_book.exit ], [ %i.ib, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi float [ 0.000000e+00, %find_min_book.exit ], [ %i.ia, %._crit_edge.loopexit ]
  %i.ie = sitofp nsz i32 %.0261.lcssa to float
  %i.if = fsub nsz float %.0.lcssa, %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fv
  store float %i.if, ptr %i.ig, align 4, !tbaa !80
  %.not317 = icmp eq i32 %.1263389, -1
  br i1 %.not317, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.ih = sub nsw i32 %.pre474, %.1263389
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr i8, ptr @ff_aac_scalefactor_bits, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 60
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !73
  %i.im = zext i8 %i.il to i32
  %i.in = add nsw i32 %.0261.lcssa, %i.im
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %.1 = phi i32 [ %i.in, %bb.r ], [ %.0261.lcssa, %._crit_edge ]
  %i.io = add nsw i32 %.1, %.1267388
  %.pre475 = load i32, ptr %i.eo, align 8, !tbaa !71
  br label %bb.t

bb.t:                                             ; preds = %bb.j, %bb.k, %bb.s
  %i.ip = phi i32 [ %.pre475, %bb.s ], [ %i.fr, %bb.k ], [ %i.fr, %bb.j ] ; 4 uses
  %.3284 = phi i32 [ %..2283, %bb.s ], [ %.2283386, %bb.k ], [ %.2283386, %bb.j ] ; 2 uses
  %.2268 = phi i32 [ %i.io, %bb.s ], [ %.1267388, %bb.k ], [ %.1267388, %bb.j ] ; 2 uses
  %.2 = phi i32 [ %.pre474, %bb.s ], [ %.1263389, %bb.k ], [ %.1263389, %bb.j ] ; 2 uses
  %.pn509 = load ptr, ptr %i.er, align 16, !tbaa !72
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %.pn509, i64 %indvars.iv455
  %.pn.in = load i8, ptr %.pn.in.in, align 1, !tbaa !73
  %.pn = zext i8 %.pn.in to i32
  %.3 = add nuw nsw i32 %.2271387, %.pn
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = icmp slt i64 %indvars.iv.next456, %i.iq
  br i1 %i.ir, label %bb.j, label %._crit_edge392.loopexit, !llvm.loop !214

._crit_edge392.loopexit:                          ; preds = %bb.t
  %.pre476 = load i32, ptr %i.u, align 4, !tbaa !69
  br label %._crit_edge392

._crit_edge392:                                   ; preds = %.lr.ph401.split.._crit_edge392_crit_edge, %._crit_edge392.loopexit
  %.pre-phi = phi i64 [ %.pre480, %.lr.ph401.split.._crit_edge392_crit_edge ], [ %i.fo, %._crit_edge392.loopexit ]
  %i.is = phi i32 [ %i.fi, %.lr.ph401.split.._crit_edge392_crit_edge ], [ %.pre476, %._crit_edge392.loopexit ] ; 5 uses
  %i.it = phi i32 [ %i.fj, %.lr.ph401.split.._crit_edge392_crit_edge ], [ %i.ip, %._crit_edge392.loopexit ]
  %i.iu = phi i32 [ %i.fk, %.lr.ph401.split.._crit_edge392_crit_edge ], [ %i.ip, %._crit_edge392.loopexit ]
  %.2283.lcssa = phi i32 [ %.1282397, %.lr.ph401.split.._crit_edge392_crit_edge ], [ %.3284, %._crit_edge392.loopexit ] ; 2 uses
  %.1267.lcssa = phi i32 [ %.0266398, %.lr.ph401.split.._crit_edge392_crit_edge ], [ %.2268, %._crit_edge392.loopexit ] ; 2 uses
  %.1263.lcssa = phi i32 [ %.0262399, %.lr.ph401.split.._crit_edge392_crit_edge ], [ %.2, %._crit_edge392.loopexit ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.pre-phi
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !73
  %i.ix = zext i8 %i.iw to i32
  %i.iy = add nuw nsw i32 %.3297396, %i.ix        ; 2 uses
  %i.iz = icmp slt i32 %i.iy, %i.is
  br i1 %i.iz, label %.lr.ph401.split, label %._crit_edge402, !llvm.loop !215

._crit_edge402:                                   ; preds = %._crit_edge392, %.lr.ph401, %select.unfold
  %i.ja = phi i32 [ %i.fc, %select.unfold ], [ %i.fc, %.lr.ph401 ], [ %i.is, %._crit_edge392 ] ; 2 uses
  %i.jb = phi i32 [ %i.fd, %select.unfold ], [ %i.fd, %.lr.ph401 ], [ %i.is, %._crit_edge392 ] ; 2 uses
  %i.jc = phi i32 [ %i.fe, %select.unfold ], [ %i.fd, %.lr.ph401 ], [ %i.is, %._crit_edge392 ] ; 4 uses
  %.1282.lcssa = phi i32 [ %.0281, %select.unfold ], [ %.0281, %.lr.ph401 ], [ %.2283.lcssa, %._crit_edge392 ] ; 2 uses
end_hunk_6
