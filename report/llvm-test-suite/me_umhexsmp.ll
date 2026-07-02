inline.NumInlined: 63
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@smpUMHEXFullSubPelBlockMotionSearch:bb.a
  %i.h = icmp eq i32 %5, 1
  %or.cond4 = and i1 %i.h, %or.cond
  br i1 %or.cond4, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %8, align 2, !tbaa !8
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i16, ptr %9, align 2, !tbaa !8
  %i.l = icmp eq i16 %i.k, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ %i.l, %bb.d ], [ false, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.o = sext i32 %5 to i64                       ; 4 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 3 uses
  %i.t = shl i32 %3, 2
  %i.u = add i32 %i.t, 80                         ; 4 uses
  %i.v = shl i32 %4, 2
  %i.w = add i32 %i.v, 80                         ; 4 uses
  %i.x = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !4 ; 3 uses
  %.not185 = icmp eq i32 %i.x, 0
  %i.y = tail call range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %10, i32 1)
  %i.z = select i1 %.not185, i32 %i.y, i32 %10    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 14224
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [536 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 432
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !79
  %i.ai = load ptr, ptr @active_pps, align 8, !tbaa !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !41
  %.not186 = icmp eq i32 %i.ak, 0
  br i1 %.not186, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !43
  switch i32 %i.am, label %bb.g [
    i32 0, label %bb.i
    i32 3, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 196
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !44
  %.not187 = icmp eq i32 %i.ao, 0
  br i1 %.not187, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2936
  %i.at = load i32, ptr %i.as, align 8, !tbaa !45
  %.fr = freeze i32 %i.at
  %i.au = icmp ne i32 %.fr, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %cond.fr = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ %i.au, %bb.i ] ; 3 uses
  %i.av = add nsw i32 %i.ah, %2
  %i.aw = sext i32 %i.av to i64                   ; 5 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = sext i16 %1 to i64                      ; 5 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 6392
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !61 ; 2 uses
  %i.be = sub nsw i32 %i.bd, %i.q
  %i.bf = shl i32 %i.be, 2                        ; 2 uses
  %i.bg = add i32 %i.bf, 160
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 6396
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !62 ; 2 uses
  %i.bj = sub nsw i32 %i.bi, %i.s
  %i.bk = shl i32 %i.bj, 2                        ; 2 uses
  %i.bl = add i32 %i.bk, 160
  %spec.select257 = select i1 %cond.fr, i32 5, i32 2
  store i32 %spec.select257, ptr @dist_method, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 6448
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !51
  store ptr %i.bn, ptr @ref_pic_sub, align 8, !tbaa !59
  %i.bo = trunc i32 %i.bd to i16
  store i16 %i.bo, ptr @img_width, align 2, !tbaa !8
  %i.bp = trunc i32 %i.bi to i16
  store i16 %i.bp, ptr @img_height, align 2, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 6408
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !63
  store i32 %i.br, ptr @width_pad, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 6412
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !64
  store i32 %i.bt, ptr @height_pad, align 4, !tbaa !4
  br i1 %cond.fr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr @wp_weight, align 8, !tbaa !33
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.aw
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.az
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  store i32 %i.bz, ptr @weight_luma, align 4, !tbaa !4
  %i.ca = load ptr, ptr @wp_offset, align 8, !tbaa !33
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.aw
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.az
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  store i32 %i.cf, ptr @offset_luma, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cg = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not188 = icmp eq i32 %i.cg, 0
  br i1 %.not188, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 6464
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !68 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !69
  store ptr %i.cj, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !69
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !69
  store ptr %i.cl, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !69
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bb, i64 6416
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !70
  store i32 %i.cn, ptr @width_pad_cr, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 6420
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !71
  store i32 %i.cp, ptr @height_pad_cr, align 4, !tbaa !4
  br i1 %cond.fr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr @wp_weight, align 8, !tbaa !33
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.aw
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !65
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.az
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load <2 x i32>, ptr %i.cv, align 4, !tbaa !4
  store <2 x i32> %i.cw, ptr @weight_cr, align 4, !tbaa !4
  %i.cx = load ptr, ptr @wp_offset, align 8, !tbaa !33
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.aw
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !65
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.az
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load <2 x i32>, ptr %i.dc, align 4, !tbaa !4
  store <2 x i32> %i.dd, ptr @offset_cr, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.de = load i16, ptr %8, align 2, !tbaa !8     ; 2 uses
  %i.df = sext i16 %i.de to i32
  %i.dg = add nsw i32 %i.u, %i.df                 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  %i.di = add i32 %i.bf, 159
  %i.dj = icmp slt i32 %i.dg, %i.di
  %or.cond196 = select i1 %i.dh, i1 %i.dj, i1 false
  br i1 %or.cond196, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dk = load i16, ptr %9, align 2, !tbaa !8
  %i.dl = sext i16 %i.dk to i32
  %i.dm = add nsw i32 %i.w, %i.dl                 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  %i.do = add i32 %i.bk, 159
  %i.dp = icmp slt i32 %i.dm, %i.do
  %or.cond198 = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond198, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %storemerge = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]
  store i32 %storemerge, ptr @ref_access_method, align 4, !tbaa !4
  %i.dq = icmp slt i32 %i.x, %i.z
  br i1 %i.dq, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.r
  %i.dr = sext i16 %6 to i32
  %i.ds = sext i16 %7 to i32
  %i.dt = ashr i32 %13, 12
  %i.du = getelementptr inbounds [2 x i8], ptr @block_type_shift_factor, i64 %i.o
  %i.dv = sext i32 %i.x to i64
  %.pre229.a = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.u
  %i.dw = phi ptr [ %.pre229.a, %.lr.ph ], [ %i.fn, %bb.u ] ; 2 uses
  %indvars.iv = phi i64 [ %i.dv, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %.0165206 = phi i32 [ %12, %.lr.ph ], [ %.2, %bb.u ] ; 5 uses
  %.0168204 = phi i32 [ 0, %.lr.ph ], [ %.2170, %bb.u ] ; 2 uses
  %i.dx = load i16, ptr %8, align 2, !tbaa !8
  %i.dy = sext i16 %i.dx to i32
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %indvars.iv
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !8
  %i.eb = sext i16 %i.ea to i32
  %i.ec = add nsw i32 %i.eb, %i.dy                ; 2 uses
  %i.ed = load i16, ptr %9, align 2, !tbaa !8
  %i.ee = sext i16 %i.ed to i32
  %14 = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !80
  %i.ef = getelementptr inbounds [2 x i8], ptr %14, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !8
  %i.eh = sext i16 %i.eg to i32
  %i.ei = add nsw i32 %i.eh, %i.ee                ; 2 uses
  %15 = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.ej = sub nsw i32 %i.ec, %i.dr
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %15, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = sub nsw i32 %i.ei, %i.ds
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %15, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = add nsw i32 %i.eq, %i.em
  %i.es = mul nsw i32 %i.er, %13
  %i.et = ashr i32 %i.es, 16                      ; 3 uses
  %.not189 = icmp slt i32 %i.et, %.0165206
  br i1 %.not189, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eu = add nsw i32 %i.ec, %i.u
  %i.ev = add nsw i32 %i.ei, %i.w
  %i.ew = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !10
  %i.fa = sub nsw i32 %.0165206, %i.et
  %i.fb = tail call i32 %i.ez(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.q, i32 noundef %i.fa, i32 noundef %i.eu, i32 noundef %i.ev) #11
  %i.fc = icmp eq i64 %indvars.iv, 0
  %or.cond6 = select i1 %i.fc, i1 %i.m, i1 false
  %i.fd = select i1 %or.cond6, i32 %i.dt, i32 0
  %i.fe = sub nsw i32 %i.et, %i.fd
  %.0176 = add i32 %i.fe, %i.fb                   ; 2 uses
  %i.ff = icmp slt i32 %.0176, %.0165206
  %i.fg = trunc nsw i64 %indvars.iv to i32
  %.1169 = select i1 %i.ff, i32 %i.fg, i32 %.0168204 ; 2 uses
  %.1 = tail call i32 @llvm.smin.i32(i32 %.0176, i32 %.0165206) ; 3 uses
  %i.fh = load i16, ptr @SubPelThreshold3, align 2, !tbaa !8
  %i.fi = zext i16 %i.fh to i32
  %i.fj = load i16, ptr %i.du, align 2, !tbaa !8
  %i.fk = zext nneg i16 %i.fj to i32
  %i.fl = lshr i32 %i.fi, %i.fk
  %i.fm = icmp slt i32 %.1, %i.fl
  br i1 %i.fm, label %._crit_edge, label %._crit_edge228

._crit_edge228:                                   ; preds = %bb.t
  %.pre229 = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge228, %bb.s
  %i.fn = phi ptr [ %i.dw, %bb.s ], [ %.pre229, %._crit_edge228 ]
  %.2170 = phi i32 [ %.0168204, %bb.s ], [ %.1169, %._crit_edge228 ] ; 2 uses
  %.2 = phi i32 [ %.0165206, %bb.s ], [ %.1, %._crit_edge228 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.u, %bb.t
  %.3171.ph = phi i32 [ %.2170, %bb.u ], [ %.1169, %bb.t ] ; 2 uses
  %.3.ph = phi i32 [ %.2, %bb.u ], [ %.1, %bb.t ] ; 2 uses
  %.pre235.pre = load i16, ptr %8, align 2, !tbaa !8 ; 2 uses
  %.not190 = icmp eq i32 %.3171.ph, 0
  br i1 %.not190, label %._crit_edge.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.fo = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !80
  %i.fp = sext i32 %.3171.ph to i64               ; 2 uses
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !8
  %i.fs = add i16 %.pre235.pre, %i.fr
  store i16 %i.fs, ptr %8, align 2, !tbaa !8
  %i.ft = load ptr, ptr @spiral_hpel_search_y, align 8, !tbaa !80
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.fp
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !8
  %i.fw = load i16, ptr %9, align 2, !tbaa !8
  %i.fx = add i16 %i.fw, %i.fv
  store i16 %i.fx, ptr %9, align 2, !tbaa !8
  %.pre234.a = load i16, ptr %8, align 2, !tbaa !8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.r, %bb.v, %._crit_edge
  %.3253 = phi i32 [ %.3.ph, %bb.v ], [ %.3.ph, %._crit_edge ], [ %12, %bb.r ] ; 3 uses
  %i.fy = phi i16 [ %.pre234.a, %bb.v ], [ %.pre235.pre, %._crit_edge ], [ %i.de, %bb.r ] ; 2 uses
  %i.fz = icmp eq i16 %i.fy, 0
  br i1 %i.fz, label %bb.w, label %bb.y

bb.w:                                             ; preds = %._crit_edge.thread
  %i.ga = load i16, ptr %9, align 2, !tbaa !8
  %i.gb = or i16 %6, %i.ga
  %i.gc = or i16 %i.gb, %7
  %or.cond12 = icmp eq i16 %i.gc, 0
  br i1 %or.cond12, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gd = load i16, ptr @SubPelThreshold1, align 2, !tbaa !8
  %i.ge = zext i16 %i.gd to i32
  %i.gf = getelementptr inbounds [2 x i8], ptr @block_type_shift_factor, i64 %i.o
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !8
  %i.gh = zext nneg i16 %i.gg to i32
  %i.gi = lshr i32 %i.ge, %i.gh
  %i.gj = icmp slt i32 %.3253, %i.gi
  br i1 %i.gj, label %._crit_edge216.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.thread
  %i.gk = load i32, ptr @start_me_refinement_qp, align 4, !tbaa !4 ; 3 uses
  %.not191 = icmp eq i32 %i.gk, 0
  %spec.select = select i1 %.not191, i32 2147483647, i32 %.3253 ; 2 uses
  %i.gl = sext i16 %i.fy to i32
  %i.gm = add nsw i32 %i.u, %i.gl                 ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  %i.go = icmp slt i32 %i.gm, %i.bg
  %or.cond199 = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond199, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gp = load i16, ptr %9, align 2, !tbaa !8
  %i.gq = sext i16 %i.gp to i32
  %i.gr = add nsw i32 %i.w, %i.gq                 ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  %i.gt = icmp slt i32 %i.gr, %i.bl
  %or.cond200 = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond200, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %storemerge192 = phi i32 [ 1, %bb.aa ], [ 0, %bb.z ]
  store i32 %storemerge192, ptr @ref_access_method, align 4, !tbaa !4
  %i.gu = icmp slt i32 %i.gk, %11
  br i1 %i.gu, label %.lr.ph215, label %._crit_edge216.thread

.lr.ph215:                                        ; preds = %bb.ab
  %i.gv = sext i16 %6 to i32
  %i.gw = sext i16 %7 to i32
  %i.gx = getelementptr inbounds [2 x i8], ptr @block_type_shift_factor, i64 %i.o
  %i.gy = sext i32 %i.gk to i64
  %.pre237 = load ptr, ptr @spiral_search_x, align 8, !tbaa !80
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph215, %bb.ae
  %i.gz = phi ptr [ %.pre237, %.lr.ph215 ], [ %i.io, %bb.ae ] ; 2 uses
  %indvars.iv223 = phi i64 [ %i.gy, %.lr.ph215 ], [ %indvars.iv.next224, %bb.ae ] ; 4 uses
  %.5213 = phi i32 [ %spec.select, %.lr.ph215 ], [ %.7, %bb.ae ] ; 5 uses
  %.4172211 = phi i32 [ 0, %.lr.ph215 ], [ %.6174, %bb.ae ] ; 2 uses
  %i.ha = load i16, ptr %8, align 2, !tbaa !8
  %i.hb = sext i16 %i.ha to i32
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %indvars.iv223
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !8
  %i.he = sext i16 %i.hd to i32
  %i.hf = add nsw i32 %i.he, %i.hb                ; 2 uses
  %i.hg = load i16, ptr %9, align 2, !tbaa !8
  %i.hh = sext i16 %i.hg to i32
  %16 = load ptr, ptr @spiral_search_y, align 8, !tbaa !80
  %i.hi = getelementptr inbounds [2 x i8], ptr %16, i64 %indvars.iv223
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !8
  %i.hk = sext i16 %i.hj to i32
  %i.hl = add nsw i32 %i.hk, %i.hh                ; 2 uses
  %17 = load ptr, ptr @mvbits, align 8, !tbaa !67 ; 2 uses
  %i.hm = sub nsw i32 %i.hf, %i.gv
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %17, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4
  %i.hq = sub nsw i32 %i.hl, %i.gw
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %17, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %i.hu = add nsw i32 %i.ht, %i.hp
  %i.hv = mul nsw i32 %i.hu, %13
  %i.hw = ashr i32 %i.hv, 16                      ; 3 uses
  %.not193 = icmp slt i32 %i.hw, %.5213
  br i1 %.not193, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hx = add nsw i32 %i.hf, %i.u
  %i.hy = add nsw i32 %i.hl, %i.w
  %i.hz = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !10
  %i.id = sub nsw i32 %.5213, %i.hw
  %i.ie = tail call i32 %i.ic(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.q, i32 noundef %i.id, i32 noundef %i.hx, i32 noundef %i.hy) #11
  %i.if = add nsw i32 %i.ie, %i.hw                ; 2 uses
  %i.ig = icmp slt i32 %i.if, %.5213
  %i.ih = trunc nsw i64 %indvars.iv223 to i32
  %spec.select201 = select i1 %i.ig, i32 %i.ih, i32 %.4172211 ; 2 uses
  %spec.select202 = tail call i32 @llvm.smin.i32(i32 %i.if, i32 %.5213) ; 3 uses
  %i.ii = load i16, ptr @SubPelThreshold3, align 2, !tbaa !8
  %i.ij = zext i16 %i.ii to i32
  %i.ik = load i16, ptr %i.gx, align 2, !tbaa !8
  %i.il = zext nneg i16 %i.ik to i32
  %i.im = lshr i32 %i.ij, %i.il
  %i.in = icmp slt i32 %spec.select202, %i.im
  br i1 %i.in, label %._crit_edge216, label %._crit_edge233

._crit_edge233:                                   ; preds = %bb.ad
  %.pre234 = load ptr, ptr @spiral_search_x, align 8, !tbaa !80
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge233, %bb.ac
  %i.io = phi ptr [ %i.gz, %bb.ac ], [ %.pre234, %._crit_edge233 ]
  %.6174 = phi i32 [ %.4172211, %bb.ac ], [ %spec.select201, %._crit_edge233 ] ; 2 uses
  %.7 = phi i32 [ %.5213, %bb.ac ], [ %spec.select202, %._crit_edge233 ] ; 2 uses
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, 1 ; 2 uses
  %lftr.wideiv226 = trunc i64 %indvars.iv.next224 to i32
  %exitcond227.not = icmp eq i32 %11, %lftr.wideiv226
  br i1 %exitcond227.not, label %._crit_edge216, label %bb.ac, !llvm.loop !83

._crit_edge216:                                   ; preds = %bb.ae, %bb.ad
  %.7175 = phi i32 [ %spec.select201, %bb.ad ], [ %.6174, %bb.ae ] ; 2 uses
  %.8 = phi i32 [ %spec.select202, %bb.ad ], [ %.7, %bb.ae ] ; 2 uses
  %.not194 = icmp eq i32 %.7175, 0
  br i1 %.not194, label %._crit_edge216.thread, label %bb.af

bb.af:                                            ; preds = %._crit_edge216
  %i.ip = load ptr, ptr @spiral_search_x, align 8, !tbaa !80
  %i.iq = sext i32 %.7175 to i64                  ; 2 uses
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.ip, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !8
  %i.it = load i16, ptr %8, align 2, !tbaa !8
  %i.iu = add i16 %i.it, %i.is
  store i16 %i.iu, ptr %8, align 2, !tbaa !8
  %i.iv = load ptr, ptr @spiral_search_y, align 8, !tbaa !80
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.iq
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !8
  %i.iy = load i16, ptr %9, align 2, !tbaa !8
  %i.iz = add i16 %i.iy, %i.ix
  store i16 %i.iz, ptr %9, align 2, !tbaa !8
  br label %._crit_edge216.thread

._crit_edge216.thread:                            ; preds = %bb.ab, %._crit_edge216, %bb.af, %bb.x
  %.0 = phi i32 [ %.3253, %bb.x ], [ %.8, %bb.af ], [ %.8, %._crit_edge216 ], [ %spec.select, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @smpUMHEXSubPelBlockMotionSearch(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !10   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15268
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [536 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 424
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  %.not225 = icmp eq i32 %i.k, 0
  br i1 %.not225, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.g, 1
  %.not226 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not226, i32 2, i32 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.n = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.o = add nsw i32 %i.n, %2
  %i.p = sext i32 %i.o to i64                     ; 5 uses
  %i.q = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = sext i16 %1 to i64                       ; 5 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %i.v = load ptr, ptr @input, align 8, !tbaa !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = sext i32 %5 to i64                       ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !4    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4  ; 2 uses
  %i.ac = shl i32 %3, 2
  %i.ad = add i32 %i.ac, 80                       ; 7 uses
  %i.ae = shl i32 %4, 2
  %i.af = add i32 %i.ae, 80                       ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 6392
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !61
  %sext = shl i32 %i.z, 16
  %i.ai = ashr exact i32 %sext, 16                ; 6 uses
  %i.aj = sub i32 %i.ah, %i.z
  %.tr = trunc i32 %i.aj to i16
  %i.ak = shl i16 %.tr, 2
  %i.al = add i16 %i.ak, 160
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 6396
  %i.an = load i32, ptr %i.am, align 4, !tbaa !62
  %sext227 = shl i32 %i.ab, 16
  %i.ao = ashr exact i32 %sext227, 16             ; 6 uses
  %i.ap = sub i32 %i.an, %i.ab
  %.tr228 = trunc i32 %i.ap to i16
  %i.aq = shl i16 %.tr228, 2
  %i.ar = add i16 %i.aq, 160
  %i.as = load ptr, ptr @active_pps, align 8, !tbaa !10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  %i.au = load i32, ptr %i.at, align 8, !tbaa !41
  %.not229 = icmp eq i32 %i.au, 0
  br i1 %.not229, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !43
  switch i32 %i.aw, label %bb.f [
    i32 0, label %bb.h
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 196
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !44
  %.not230 = icmp eq i32 %i.ay, 0
  br i1 %.not230, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 2936
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !45
  %i.be = icmp ne i32 %i.bd, 0                    ; 2 uses
  %spec.select235 = select i1 %i.be, i32 5, i32 2
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.f, %bb.g
  %i.bf = phi i1 [ false, %bb.f ], [ %i.be, %bb.h ], [ false, %bb.g ] ; 2 uses
  %i.bg = phi i32 [ 2, %bb.f ], [ %spec.select235, %bb.h ], [ 2, %bb.g ] ; 2 uses
  store i32 %i.bg, ptr @dist_method, align 4, !tbaa !4
  %i.bh = load ptr, ptr @ref_pic_ptr, align 8, !tbaa !49 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6448
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51
  store ptr %i.bj, ptr @ref_pic_sub, align 8, !tbaa !59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 6392
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !61
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr @img_width, align 2, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 6396
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !62
  %i.bp = trunc i32 %i.bo to i16
  store i16 %i.bp, ptr @img_height, align 2, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 6408
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !63
  store i32 %i.br, ptr @width_pad, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 6412
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !64
  store i32 %i.bt, ptr @height_pad, align 4, !tbaa !4
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.bu = load ptr, ptr @wp_weight, align 8, !tbaa !33
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.p
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  store i32 %i.bz, ptr @weight_luma, align 4, !tbaa !4
  %i.ca = load ptr, ptr @wp_offset, align 8, !tbaa !33
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.p
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.s
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  store i32 %i.cf, ptr @offset_luma, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %i.cg = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not231 = icmp eq i32 %i.cg, 0
  br i1 %.not231, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 6464
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !68 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !69
  store ptr %i.cj, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 8), align 8, !tbaa !69
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !69
  store ptr %i.cl, ptr getelementptr inbounds nuw (i8, ptr @ref_pic_sub, i64 16), align 8, !tbaa !69
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 6416
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !70
  store i32 %i.cn, ptr @width_pad_cr, align 4, !tbaa !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 6420
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !71
  store i32 %i.cp, ptr @height_pad_cr, align 4, !tbaa !4
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = load ptr, ptr @wp_weight, align 8, !tbaa !33
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !65
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.s
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load <2 x i32>, ptr %i.cv, align 4, !tbaa !4
  store <2 x i32> %i.cw, ptr @weight_cr, align 4, !tbaa !4
  %i.cx = load ptr, ptr @wp_offset, align 8, !tbaa !33
end_hunk_0
