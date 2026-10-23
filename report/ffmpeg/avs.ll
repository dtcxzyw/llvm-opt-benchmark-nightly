Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avs?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@avs_decode_frame:bb.a
  %i.ag = icmp ugt i16 %i.aa, 255
  %i.ah = icmp samesign ugt i32 %i.af, 256
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gepdiff = add nsw i64 %i.j, -4
  %i.ai = mul nuw nsw i32 %i.ae, 3
  %i.aj = add nuw nsw i32 %i.ai, 8
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %gepdiff, %i.ak
  br i1 %i.al, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.b, i64 8       ; 9 uses
  %.not191 = icmp eq i16 %i.ad, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.an = zext nneg i16 %i.aa to i64              ; 8 uses
  %i.ao = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ap = add nuw nsw i64 %i.an, 1
  %i.aq = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.ao) ; 3 uses
  %i.ar = sub nsw i64 %i.aq, %i.an                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 12
  br i1 %min.iters.check, label %.lr.ph.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.as = shl nuw nsw i64 %i.an, 2
  %i.at = getelementptr i8, ptr %i.z, i64 %i.as
  %i.au = shl nuw nsw i64 %i.aq, 2
  %i.av = getelementptr i8, ptr %i.z, i64 %i.au
  %i.aw = mul nuw nsw i64 %i.aq, 3
  %.neg = mul nsw i64 %i.an, -3
  %i.ax = getelementptr i8, ptr %i.b, i64 %.neg
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %bound0 = icmp ult ptr %i.at, %i.az
  %bound1 = icmp ult ptr %i.am, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader324, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, -4                      ; 4 uses
  %i.ba = add nsw i64 %n.vec, %i.an
  %i.bb = mul nsw i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.am, i64 %i.bb  ; 2 uses
  %invariant.gep329 = getelementptr [4 x i8], ptr %i.z, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = mul i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.bd ; 3 uses
  %i.be = getelementptr i8, ptr %i.am, i64 %i.bd  ; 3 uses
  %next.gep314 = getelementptr i8, ptr %i.be, i64 3
  %i.bf = getelementptr i8, ptr %i.am, i64 %i.bd  ; 3 uses
  %next.gep315 = getelementptr i8, ptr %i.bf, i64 6
  %i.bg = getelementptr i8, ptr %i.am, i64 %i.bd  ; 3 uses
  %next.gep316 = getelementptr i8, ptr %i.bg, i64 9
  %i.bh = load i8, ptr %next.gep, align 1, !tbaa !51, !alias.scope !52
  %i.bi = load i8, ptr %next.gep314, align 1, !tbaa !51, !alias.scope !52
  %i.bj = load i8, ptr %next.gep315, align 1, !tbaa !51, !alias.scope !52
  %i.bk = load i8, ptr %next.gep316, align 1, !tbaa !51, !alias.scope !52
  %i.bl = insertelement <4 x i8> poison, i8 %i.bh, i64 0
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 1
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bj, i64 2
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.bk, i64 3
  %i.bp = zext <4 x i8> %i.bo to <4 x i32>
  %i.bq = shl nuw nsw <4 x i32> %i.bp, splat (i32 18)
  %i.br = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.bs = getelementptr i8, ptr %i.be, i64 4
  %i.bt = getelementptr i8, ptr %i.bf, i64 7
  %i.bu = getelementptr i8, ptr %i.bg, i64 10
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !51, !alias.scope !52
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !51, !alias.scope !52
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !51, !alias.scope !52
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !51, !alias.scope !52
  %i.bz = insertelement <4 x i8> poison, i8 %i.bv, i64 0
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bw, i64 1
  %i.cb = insertelement <4 x i8> %i.ca, i8 %i.bx, i64 2
  %i.cc = insertelement <4 x i8> %i.cb, i8 %i.by, i64 3
  %i.cd = zext <4 x i8> %i.cc to <4 x i32>
  %i.ce = shl nuw nsw <4 x i32> %i.cd, splat (i32 10)
  %i.cf = or disjoint <4 x i32> %i.ce, %i.bq
  %i.cg = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ch = getelementptr i8, ptr %i.be, i64 5
  %i.ci = getelementptr i8, ptr %i.bf, i64 8
  %i.cj = getelementptr i8, ptr %i.bg, i64 11
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !51, !alias.scope !52
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !51, !alias.scope !52
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !51, !alias.scope !52
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !51, !alias.scope !52
  %i.co = insertelement <4 x i8> poison, i8 %i.ck, i64 0
  %i.cp = insertelement <4 x i8> %i.co, i8 %i.cl, i64 1
  %i.cq = insertelement <4 x i8> %i.cp, i8 %i.cm, i64 2
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 3
  %i.cs = zext <4 x i8> %i.cr to <4 x i32>
  %i.ct = shl nuw nsw <4 x i32> %i.cs, splat (i32 2)
  %i.cu = or disjoint <4 x i32> %i.cf, %i.ct      ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep329, i64 %index
  %i.cv = lshr <4 x i32> %i.cu, splat (i32 6)
  %i.cw = and <4 x i32> %i.cv, splat (i32 197379)
  %i.cx = or <4 x i32> %i.cu, %i.cw
  %i.cy = or <4 x i32> %i.cx, splat (i32 -16777216)
  store <4 x i32> %i.cy, ptr %gep, align 4, !tbaa !50, !alias.scope !53, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader324

.lr.ph.preheader324:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.preheader ], [ %i.ba, %middle.block ]
  %.0131170.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader324, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader324 ] ; 2 uses
  %.0131170 = phi ptr [ %i.ds, %.lr.ph ], [ %.0131170.ph, %.lr.ph.preheader324 ] ; 4 uses
  %i.da = load i8, ptr %.0131170, align 1, !tbaa !51
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 18
  %i.dd = getelementptr inbounds nuw i8, ptr %.0131170, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !51
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 10
  %i.dh = or disjoint i32 %i.dg, %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %.0131170, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !51
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 2
  %i.dm = or disjoint i32 %i.dh, %i.dl            ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.do = lshr i32 %i.dm, 6
  %i.dp = and i32 %i.do, 197379
  %i.dq = or i32 %i.dm, %i.dp
  %i.dr = or i32 %i.dq, -16777216
  store i32 %i.dr, ptr %i.dn, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0131170, i64 3 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.f
  %.0131.lcssa = phi ptr [ %i.am, %bb.f ], [ %i.bc, %middle.block ], [ %i.ds, %.lr.ph ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0131.lcssa, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.0131.lcssa, i64 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.c
  %.2133 = phi ptr [ %i.dw, %._crit_edge ], [ %i.w, %bb.c ] ; 7 uses
  %.1122.in.in = phi ptr [ %.0131.lcssa, %._crit_edge ], [ %i.b, %bb.c ]
  %.1120.in = phi i8 [ %i.dv, %._crit_edge ], [ %i.v, %bb.c ]
  %.not = icmp eq i8 %.1120.in, 1
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.1122.in = load i8, ptr %.1122.in.in, align 1, !tbaa !51
  switch i8 %.1122.in, label %.critedge [
    i8 0, label %.thread
    i8 1, label %bb.k
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %exitcond.not.1 = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ false, %bb.h ] ; 2 uses
  %.0124 = phi i32 [ 2, %bb.j ], [ 2, %bb.i ], [ 3, %bb.h ] ; 5 uses
  %i.dx = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ true, %bb.h ]
  %.0123 = phi i32 [ 3, %bb.j ], [ 2, %bb.i ], [ 3, %bb.h ] ; 5 uses
  %i.dy = ptrtoint ptr %.2133 to i64
  %i.dz = sub i64 %i.s, %i.dy
  %i.ea = shl nuw nsw i32 %.0124, 8
  %i.eb = mul nuw nsw i32 %i.ea, %.0123
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ed = icmp slt i64 %i.dz, %i.ec
  br i1 %i.ed, label %.critedge, label %bb.l

.thread:                                          ; preds = %bb.h
  store i32 1, ptr %i.l, align 8, !tbaa !47
  %i.ee = load i32, ptr %i.m, align 4, !tbaa !48
  %i.ef = or i32 %i.ee, 2
  store i32 %i.ef, ptr %i.m, align 4, !tbaa !48
  %i.eg = ptrtoint ptr %.2133 to i64
  %i.eh = sub i64 %i.s, %i.eg
  %i.ei = icmp slt i64 %i.eh, 2304
  br i1 %i.ei, label %.critedge, label %.preheader.us.us.preheader

bb.l:                                             ; preds = %bb.k
  %i.ej = getelementptr inbounds nuw i8, ptr %.2133, i64 %i.ec ; 4 uses
  %.rhs.trunc = trunc nuw nsw i32 %.0124 to i16
  %4 = udiv i16 318, %.rhs.trunc
  %narrow = add nuw nsw i16 %4, 7
  %5 = lshr i16 %narrow, 3
  %i.ek = zext nneg i16 %5 to i32
  %.rhs.trunc166 = trunc nuw nsw i32 %.0123 to i8
  %6 = udiv i8 -58, %.rhs.trunc166
  %.zext167 = zext nneg i8 %6 to i32
  %i.el = mul nuw nsw i32 %i.ek, %.zext167        ; 2 uses
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.s, %i.em
  %i.eo = zext nneg i32 %i.el to i64              ; 2 uses
  %.not147 = icmp slt i64 %i.en, %i.eo
  br i1 %.not147, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ep = shl nuw nsw i32 %i.el, 3
  %i.eq = add nuw nsw i32 %i.ep, 8                ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eo ; 2 uses
  %i.es = mul nuw nsw i32 %.0123, %.0124          ; 2 uses
  %i.et = zext nneg i32 %.0124 to i64             ; 4 uses
  br i1 %i.dx, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.us.preheader:                          ; preds = %bb.m
  %i.eu = shl nuw nsw i32 %.0124, 1
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = zext nneg i32 %.0123 to i64
  %i.ex = sext i32 %i.r to i64                    ; 3 uses
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %.2133, i64 2304
  %i.ez = sext i32 %i.r to i64                    ; 3 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %.split177.us.us.split.us.us
  %indvars.iv242 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next243, %.split177.us.us.split.us.us ] ; 5 uses
  %.2180.us.us = phi ptr [ %i.ey, %.preheader.us.us.preheader ], [ %i.gd, %.split177.us.us.split.us.us ]
  %i.fa = mul nsw i64 %indvars.iv242, %i.ez
  %i.fb = add nuw nsw i64 %indvars.iv242, 1
  %i.fc = mul nsw i64 %i.fb, %i.ez
  %i.fd = add nuw nsw i64 %indvars.iv242, 2
  %i.fe = mul nsw i64 %i.fd, %i.ez
  %invariant.gep299 = getelementptr i8, ptr %i.p, i64 %i.fa
  %invariant.gep301 = getelementptr i8, ptr %i.p, i64 %i.fc
  %invariant.gep303 = getelementptr i8, ptr %i.p, i64 %i.fe
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split.us.us.us.us.us, %.preheader.us.us
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %.loopexit.split.us.us.us.us.us ], [ 0, %.preheader.us.us ] ; 5 uses
  %.3174.us.us.us.us = phi ptr [ %i.gd, %.loopexit.split.us.us.us.us.us ], [ %.2180.us.us, %.preheader.us.us ] ; 3 uses
  %i.ff = ptrtoint ptr %.3174.us.us.us.us to i64
  %i.fg = sub i64 %i.s, %i.ff
  %i.fh = icmp slt i64 %i.fg, 1
  br i1 %i.fh, label %.critedge, label %.loopexit.split.us.us.us.us.us

.loopexit.split.us.us.us.us.us:                   ; preds = %bb.n
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv239 ; 3 uses
  %i.fi = load i8, ptr %.3174.us.us.us.us, align 1, !tbaa !51
  %i.fj = zext i8 %i.fi to i64
  %i.fk = mul nuw nsw i64 %i.fj, 9
  %i.fl = getelementptr inbounds nuw i8, ptr %.2133, i64 %i.fk ; 9 uses
  %invariant.gep297 = getelementptr inbounds nuw i8, ptr %i.fl, i64 6
  %gep302 = getelementptr i8, ptr %invariant.gep301, i64 %indvars.iv239 ; 3 uses
  %invariant.gep295 = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %gep300 = getelementptr i8, ptr %invariant.gep299, i64 %indvars.iv239 ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !51
  store i8 %i.fm, ptr %gep300, align 1, !tbaa !51
  %i.fn = load i8, ptr %invariant.gep295, align 1, !tbaa !51
  store i8 %i.fn, ptr %gep302, align 1, !tbaa !51
  %i.fo = load i8, ptr %invariant.gep297, align 1, !tbaa !51
  store i8 %i.fo, ptr %gep304, align 1, !tbaa !51
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !51
  %i.fr = getelementptr i8, ptr %gep300, i64 1
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !51
  %gep296.1 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fs = load i8, ptr %gep296.1, align 1, !tbaa !51
  %i.ft = getelementptr i8, ptr %gep302, i64 1
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !51
  %gep298.1 = getelementptr inbounds nuw i8, ptr %i.fl, i64 7
  %i.fu = load i8, ptr %gep298.1, align 1, !tbaa !51
  %i.fv = getelementptr i8, ptr %gep304, i64 1
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !51
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !51
  %i.fy = getelementptr i8, ptr %gep300, i64 2
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !51
  %gep296.2 = getelementptr inbounds nuw i8, ptr %i.fl, i64 5
  %i.fz = load i8, ptr %gep296.2, align 1, !tbaa !51
  %i.ga = getelementptr i8, ptr %gep302, i64 2
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !51
  %gep298.2 = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.gb = load i8, ptr %gep298.2, align 1, !tbaa !51
  %i.gc = getelementptr i8, ptr %gep304, i64 2
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !51
  %i.gd = getelementptr inbounds nuw i8, ptr %.3174.us.us.us.us, i64 1 ; 2 uses
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 3
  %i.ge = icmp samesign ult i64 %indvars.iv239, 315
  br i1 %i.ge, label %bb.n, label %.split177.us.us.split.us.us, !llvm.loop !38

.split177.us.us.split.us.us:                      ; preds = %.loopexit.split.us.us.us.us.us
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 3
  %i.gf = icmp samesign ult i64 %indvars.iv242, 195
  br i1 %i.gf, label %.preheader.us.us, label %.split184.us, !llvm.loop !39

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.split177.us.us.split
  %indvars.iv231 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next232, %.split177.us.us.split ] ; 4 uses
  %.2180.us = phi ptr [ %i.er, %.preheader.us.preheader ], [ %.4.us.us, %.split177.us.us.split ]
  %.sroa.6.1179.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.sroa.6.6.us, %.split177.us.us.split ]
  %i.gg = mul nsw i64 %indvars.iv231, %i.ex
  %i.gh = add nuw nsw i64 %indvars.iv231, 1
  %i.gi = mul nsw i64 %i.gh, %i.ex
  %i.gj = add nuw nsw i64 %indvars.iv231, 2
  %i.gk = mul nsw i64 %i.gj, %i.ex
  %invariant.gep289 = getelementptr i8, ptr %i.p, i64 %i.gg
  %invariant.gep291 = getelementptr i8, ptr %i.p, i64 %i.gi
  %invariant.gep293 = getelementptr i8, ptr %i.p, i64 %i.gk
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split.us.us.us, %.preheader.us
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %.loopexit.split.us.us.us ], [ 0, %.preheader.us ] ; 4 uses
  %.3174.us.us = phi ptr [ %.4.us.us, %.loopexit.split.us.us.us ], [ %.2180.us, %.preheader.us ] ; 4 uses
  %.sroa.6.2173.us.us = phi i32 [ %spec.select.i.us.us, %.loopexit.split.us.us.us ], [ %.sroa.6.1179.us, %.preheader.us ] ; 4 uses
  %i.gl = lshr i32 %.sroa.6.2173.us.us, 3
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !51
  %i.gp = icmp slt i32 %.sroa.6.2173.us.us, %i.eq
  %i.gq = zext i1 %i.gp to i32
  %spec.select.i.us.us = add i32 %.sroa.6.2173.us.us, %i.gq ; 4 uses
  %i.gr = zext i8 %i.go to i32
  %i.gs = and i32 %.sroa.6.2173.us.us, 7
  %i.gt = lshr exact i32 128, %i.gs
  %i.gu = and i32 %i.gt, %i.gr
  %.not148.us.us = icmp eq i32 %i.gu, 0
  br i1 %.not148.us.us, label %.loopexit.split.us.us.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gv = ptrtoint ptr %.3174.us.us to i64
  %i.gw = sub i64 %i.s, %i.gv
  %i.gx = icmp slt i64 %i.gw, 1
  br i1 %i.gx, label %.critedge, label %.split.us.us.us

.split.us.us.us:                                  ; preds = %bb.p
  %i.gy = load i8, ptr %.3174.us.us, align 1, !tbaa !51
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nuw nsw i32 %i.es, %i.gz
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.2133, i64 %i.hb ; 5 uses
  %gep290 = getelementptr i8, ptr %invariant.gep289, i64 %indvars.iv228 ; 3 uses
  %invariant.gep285 = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.et ; 3 uses
  %gep292 = getelementptr i8, ptr %invariant.gep291, i64 %indvars.iv228 ; 3 uses
  %invariant.gep287 = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ev ; 3 uses
  %gep294 = getelementptr i8, ptr %invariant.gep293, i64 %indvars.iv228 ; 3 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !51
  store i8 %i.hd, ptr %gep290, align 1, !tbaa !51
  %i.he = load i8, ptr %invariant.gep285, align 1, !tbaa !51
  store i8 %i.he, ptr %gep292, align 1, !tbaa !51
  %i.hf = load i8, ptr %invariant.gep287, align 1, !tbaa !51
  store i8 %i.hf, ptr %gep294, align 1, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !51
  %i.hi = getelementptr i8, ptr %gep290, i64 1
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !51
  %gep286.1 = getelementptr inbounds nuw i8, ptr %invariant.gep285, i64 1
  %i.hj = load i8, ptr %gep286.1, align 1, !tbaa !51
  %i.hk = getelementptr i8, ptr %gep292, i64 1
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !51
  %gep288.1 = getelementptr inbounds nuw i8, ptr %invariant.gep287, i64 1
  %i.hl = load i8, ptr %gep288.1, align 1, !tbaa !51
  %i.hm = getelementptr i8, ptr %gep294, i64 1
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !51
  br i1 %exitcond.not.1, label %.loopexit.split.us.us.us.loopexit, label %bb.q

bb.q:                                             ; preds = %.split.us.us.us
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !51
  %i.hp = getelementptr i8, ptr %gep290, i64 2
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !51
  %gep286.2 = getelementptr inbounds nuw i8, ptr %invariant.gep285, i64 2
  %i.hq = load i8, ptr %gep286.2, align 1, !tbaa !51
  %i.hr = getelementptr i8, ptr %gep292, i64 2
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !51
  %gep288.2 = getelementptr inbounds nuw i8, ptr %invariant.gep287, i64 2
  %i.hs = load i8, ptr %gep288.2, align 1, !tbaa !51
  %i.ht = getelementptr i8, ptr %gep294, i64 2
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !51
  br label %.loopexit.split.us.us.us.loopexit

.loopexit.split.us.us.us.loopexit:                ; preds = %bb.q, %.split.us.us.us
  %i.hu = getelementptr inbounds nuw i8, ptr %.3174.us.us, i64 1
  br label %.loopexit.split.us.us.us

.loopexit.split.us.us.us:                         ; preds = %.loopexit.split.us.us.us.loopexit, %bb.o
  %.4.us.us = phi ptr [ %.3174.us.us, %bb.o ], [ %i.hu, %.loopexit.split.us.us.us.loopexit ] ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, %i.et ; 2 uses
  %i.hv = icmp samesign ult i64 %indvars.iv.next229, 318
  br i1 %i.hv, label %bb.o, label %.split177.us.us.split, !llvm.loop !38

.split177.us.us.split:                            ; preds = %.loopexit.split.us.us.us
  %i.hw = sub nsw i32 0, %spec.select.i.us.us
  %i.hx = and i32 %i.hw, 7                        ; 2 uses
  %.not.i.us = icmp eq i32 %i.hx, 0
  %i.hy = add i32 %i.hx, %spec.select.i.us.us
  %i.hz = tail call i32 @llvm.umin.i32(i32 %i.eq, i32 %i.hy)
  %.sroa.6.6.us = select i1 %.not.i.us, i32 %spec.select.i.us.us, i32 %i.hz
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, %i.ew ; 2 uses
end_hunk_0
