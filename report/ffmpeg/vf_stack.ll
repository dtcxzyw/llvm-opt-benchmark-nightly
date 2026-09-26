Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_stack?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@config_output:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !50
  %i.bu = sub nsw i32 0, %i.bt
  %i.bv = zext nneg i8 %i.br to i32
  %i.bw = ashr i32 %i.bu, %i.bv
  %i.bx = sub nsw i32 0, %i.bw                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !38
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !50 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 60
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !38
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !38
  %i.ce = sub nsw i32 0, %.0389554
  %i.cf = zext nneg i8 %i.br to i32
  %i.cg = ashr i32 %i.ce, %i.cf
  %i.ch = sub nsw i32 0, %i.cg                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 %i.ch, ptr %i.ck, align 4, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  store i32 %.0389554, ptr %i.cl, align 4, !tbaa !38
  store i32 %.0389554, ptr %i.ci, align 4, !tbaa !38
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !50 ; 2 uses
  %i.cr = sub nsw i32 2147483647, %i.cq
  %i.cs = icmp sgt i32 %.0389554, %i.cr
  br i1 %i.cs, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = add nsw i32 %i.cq, %.0389554            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = load i32, ptr %i.y, align 8, !tbaa !37
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %.peel.next, label %.thread464, !llvm.loop !62

bb.i:                                             ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !32
  %.not423 = icmp eq i32 %i.cy, 0
  br i1 %.not423, label %bb.q, label %.preheader498

.preheader498:                                    ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !37
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph558, label %.thread464

.lr.ph558:                                        ; preds = %.preheader498
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 288 ; 2 uses
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !49 ; 3 uses
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !40 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 44 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !50 ; 2 uses
  %.not440.peel = icmp eq i32 %i.dh, %i.p
  br i1 %.not440.peel, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph558
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 36
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !72
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !51
  %i.dn = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.di, i32 noundef %i.dk, i32 noundef %i.dm) #11 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = load i32, ptr %i.dg, align 4, !tbaa !50
  %i.dq = sub nsw i32 0, %i.dp
  %i.dr = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 10
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !75
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = ashr i32 %i.dq, %i.du
  %i.dw = sub nsw i32 0, %i.dv                    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !38
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 52
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !38
  %i.ea = load i32, ptr %i.dg, align 4, !tbaa !50 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 60
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !38
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !38
  %.pre676 = load i32, ptr %i.cz, align 8, !tbaa !37
  %i.ec = icmp sgt i32 %.pre676, 1
  br i1 %i.ec, label %.peel.next656, label %.thread464

.peel.next656:                                    ; preds = %bb.k, %bb.p
  %indvars.iv652 = phi i64 [ %indvars.iv.next653, %bb.p ], [ 1, %bb.k ] ; 5 uses
  %.0379556 = phi i32 [ %i.fp, %bb.p ], [ %i.r, %bb.k ] ; 3 uses
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv652
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !49 ; 3 uses
  %i.eg = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw [64 x i8], ptr %i.eg, i64 %indvars.iv652 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 44 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !50 ; 2 uses
  %.not440 = icmp eq i32 %i.ej, %i.p
  br i1 %.not440, label %bb.m, label %.loopexit658

.loopexit658:                                     ; preds = %.peel.next656
  %i.ek = trunc nuw nsw i64 %indvars.iv652 to i32
  br label %bb.l

bb.l:                                             ; preds = %.loopexit658, %.lr.ph558
  %.1374557.lcssa.wide = phi i32 [ 0, %.lr.ph558 ], [ %i.ek, %.loopexit658 ]
  %.lcssa639 = phi i32 [ %i.dh, %.lr.ph558 ], [ %i.ej, %.loopexit658 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %.1374557.lcssa.wide, i32 noundef %.lcssa639, i32 noundef 0, i32 noundef %i.p) #11
  br label %.thread

bb.m:                                             ; preds = %.peel.next656
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 36 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !51
  %i.eq = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.el, i32 noundef %i.en, i32 noundef %i.ep) #11 ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.es = load i32, ptr %i.ei, align 4, !tbaa !50
  %i.et = sub nsw i32 0, %i.es
  %i.eu = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 10
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !75
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = ashr i32 %i.et, %i.ex
  %i.ez = sub nsw i32 0, %i.ey                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eh, i64 52
  store i32 %i.ez, ptr %i.fc, align 4, !tbaa !38
  %i.fd = load i32, ptr %i.ei, align 4, !tbaa !50 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 60
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !38
  store i32 %i.fd, ptr %i.fa, align 4, !tbaa !38
  %i.ff = load i32, ptr %i.em, align 4, !tbaa !72
  %i.fg = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.eh, i32 noundef %i.ff, i32 noundef %.0379556) #11 ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv652
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !49
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !51 ; 2 uses
  %i.fn = sub nsw i32 2147483647, %i.fm
  %i.fo = icmp sgt i32 %.0379556, %i.fn
  br i1 %i.fo, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fp = add nsw i32 %i.fm, %.0379556            ; 2 uses
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1 ; 2 uses
  %i.fq = load i32, ptr %i.cz, align 8, !tbaa !37
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next653, %i.fr
  br i1 %i.fs, label %.peel.next656, label %.thread464, !llvm.loop !63

bb.q:                                             ; preds = %bb.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !34 ; 2 uses
  %.not424 = icmp eq i32 %i.fu, 0
  br i1 %.not424, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fv = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !35 ; 2 uses
  %.not425 = icmp eq i32 %i.fw, 0
  br i1 %.not425, label %bb.ac, label %.preheader496

.preheader496:                                    ; preds = %bb.r
  %.not439567 = icmp sgt i32 %i.fu, 0
  br i1 %.not439567, label %.lr.ph573, label %.thread464

.lr.ph573:                                        ; preds = %.preheader496
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %.pre678.a = load ptr, ptr %i.h, align 8, !tbaa !71
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph573, %bb.ab
  %i.fy = phi i32 [ %i.fw, %.lr.ph573 ], [ %i.ii, %bb.ab ] ; 3 uses
  %i.fz = phi ptr [ %.pre678.a, %.lr.ph573 ], [ %i.ij, %bb.ab ] ; 3 uses
  %.0358572 = phi i32 [ 0, %.lr.ph573 ], [ %.1359.lcssa, %bb.ab ] ; 2 uses
  %.0360571 = phi i32 [ 0, %.lr.ph573 ], [ %i.io, %bb.ab ] ; 4 uses
  %.2375570 = phi i32 [ 0, %.lr.ph573 ], [ %i.in, %bb.ab ] ; 4 uses
  %.3382569 = phi i32 [ 0, %.lr.ph573 ], [ %spec.select, %bb.ab ] ; 3 uses
  %.3392568 = phi i32 [ 0, %.lr.ph573 ], [ %i.im, %bb.ab ] ; 2 uses
  %i.ga = mul nsw i32 %i.fy, %.2375570
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !49
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 44
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !50 ; 5 uses
  %.not436560 = icmp sgt i32 %i.fy, 0
  br i1 %.not436560, label %.lr.ph564, label %._crit_edge

.lr.ph564:                                        ; preds = %bb.s
  %i.gg = sub nsw i32 0, %.0360571
  %i.gh = sext i32 %.0358572 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph564, %bb.y
  %i.gi = phi ptr [ %i.fz, %.lr.ph564 ], [ %i.hx, %bb.y ]
  %indvars.iv659 = phi i64 [ %i.gh, %.lr.ph564 ], [ %indvars.iv.next660, %bb.y ] ; 5 uses
  %.0357563 = phi i32 [ 0, %.lr.ph564 ], [ %i.if, %bb.y ]
  %.0361561 = phi i32 [ 0, %.lr.ph564 ], [ %i.ie, %bb.y ] ; 3 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %indvars.iv659
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !49 ; 3 uses
  %i.gl = load ptr, ptr %i.fx, align 8, !tbaa !40
  %i.gm = getelementptr inbounds [64 x i8], ptr %i.gl, i64 %indvars.iv659 ; 10 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 44 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !50 ; 2 uses
  %.not435 = icmp eq i32 %i.go, %i.gf
  br i1 %.not435, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gp = trunc nsw i64 %indvars.iv659 to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.gp, i32 noundef %i.go, i32 noundef %i.gf) #11
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 36 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !72
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !51
  %i.gv = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.gq, i32 noundef %i.gs, i32 noundef %i.gu) #11 ; 2 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gx = load i32, ptr %i.gn, align 4, !tbaa !50
  %i.gy = sub nsw i32 0, %i.gx
  %i.gz = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 10
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !75
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = ashr i32 %i.gy, %i.hc
  %i.he = sub nsw i32 0, %i.hd                    ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !38
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 52
  store i32 %i.he, ptr %i.hh, align 4, !tbaa !38
  %i.hi = load i32, ptr %i.gn, align 4, !tbaa !50 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 60
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !38
  store i32 %i.hi, ptr %i.hf, align 4, !tbaa !38
  %i.hk = load i32, ptr %i.gr, align 4, !tbaa !72
  %i.hl = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.gm, i32 noundef %i.hk, i32 noundef %.0361561) #11 ; 2 uses
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hn = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 10
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !75
  %i.hq = zext nneg i8 %i.hp to i32
  %i.hr = ashr i32 %i.gg, %i.hq
  %i.hs = sub nsw i32 0, %i.hr                    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !38
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  store i32 %i.hs, ptr %i.hv, align 4, !tbaa !38
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  store i32 %.0360571, ptr %i.hw, align 4, !tbaa !38
  store i32 %.0360571, ptr %i.ht, align 4, !tbaa !38
  %i.hx = load ptr, ptr %i.h, align 8, !tbaa !71  ; 3 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %indvars.iv659
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !49
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !51 ; 2 uses
  %i.ic = sub nsw i32 2147483647, %i.ib
  %i.id = icmp sgt i32 %.0361561, %i.ic
  br i1 %i.id, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ie = add nsw i32 %i.ib, %.0361561            ; 2 uses
  %i.if = add nuw nsw i32 %.0357563, 1            ; 2 uses
  %indvars.iv.next660 = add nsw i64 %indvars.iv659, 1 ; 2 uses
  %i.ig = load i32, ptr %i.fv, align 8, !tbaa !35 ; 2 uses
  %.not436 = icmp slt i32 %i.if, %i.ig
  br i1 %.not436, label %bb.t, label %._crit_edge.loopexit, !llvm.loop !64

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.ih = trunc nsw i64 %indvars.iv.next660 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %i.ii = phi i32 [ %i.fy, %bb.s ], [ %i.ig, %._crit_edge.loopexit ]
  %i.ij = phi ptr [ %i.fz, %bb.s ], [ %i.hx, %._crit_edge.loopexit ]
  %.0361.lcssa = phi i32 [ 0, %bb.s ], [ %i.ie, %._crit_edge.loopexit ] ; 3 uses
  %.1359.lcssa = phi i32 [ %.0358572, %bb.s ], [ %i.ih, %._crit_edge.loopexit ]
  %i.ik = sub nsw i32 2147483647, %i.gf
  %i.il = icmp sgt i32 %.3392568, %i.ik
  br i1 %i.il, label %.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %.not437 = icmp eq i32 %.2375570, 0             ; 2 uses
  %.not438 = icmp eq i32 %.3382569, %.0361.lcssa
  %or.cond447 = select i1 %.not437, i1 true, i1 %.not438
  br i1 %or.cond447, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %.2375570, i32 noundef %.0361.lcssa, i32 noundef %.3382569) #11
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %spec.select = select i1 %.not437, i32 %.0361.lcssa, i32 %.3382569 ; 2 uses
  %i.im = add nsw i32 %i.gf, %.3392568            ; 2 uses
  %i.in = add nuw nsw i32 %.2375570, 1            ; 2 uses
  %i.io = add nsw i32 %i.gf, %.0360571
  %i.ip = load i32, ptr %i.ft, align 4, !tbaa !34
  %.not439 = icmp slt i32 %i.in, %i.ip
  br i1 %.not439, label %bb.s, label %.thread464, !llvm.loop !65

bb.ac:                                            ; preds = %bb.r, %bb.q
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.is = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.it = load i32, ptr %i.is, align 8, !tbaa !33
  %.not426 = icmp eq i32 %i.it, 0
  br i1 %.not426, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iu = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !49
  %i.iw = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.ix = tail call i32 @ff_draw_init_from_link(ptr noundef nonnull %i.iw, ptr noundef %i.iv, i32 noundef 0) #11 ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, -1
  br i1 %i.iy, label %.thread468, label %bb.ae

.thread468:                                       ; preds = %bb.ad
  %i.iz = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.ja = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @ff_draw_color(ptr noundef nonnull %i.iw, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja) #11
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.11) #11
  br label %.thread489

bb.af:                                            ; preds = %.thread468, %bb.ac
  %i.jb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !37
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph592, label %._crit_edge593

.lr.ph592:                                        ; preds = %bb.af
  %i.je = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph592, %bb.bf
  %indvars.iv663 = phi i64 [ 0, %.lr.ph592 ], [ %indvars.iv.next664, %bb.bf ] ; 7 uses
  %.0355590 = phi ptr [ %i.ir, %.lr.ph592 ], [ null, %bb.bf ]
  %.6385588 = phi i32 [ %i.r, %.lr.ph592 ], [ %.6385., %bb.bf ]
  %.5394587 = phi i32 [ %i.p, %.lr.ph592 ], [ %i.ob, %bb.bf ]
  %i.jf = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv663
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !49 ; 4 uses
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !40
  %i.jj = getelementptr inbounds nuw [64 x i8], ptr %i.ji, i64 %indvars.iv663 ; 10 uses
  %i.jk = call ptr @av_strtok(ptr noundef %.0355590, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not427 = icmp eq ptr %i.jk, null
  br i1 %.not427, label %.thread489, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 36 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !72
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 40 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !51
  %i.jq = call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.jl, i32 noundef %i.jn, i32 noundef %i.jp) #11 ; 2 uses
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %.thread489, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 44
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !50
  %i.ju = sub nsw i32 0, %i.jt
  %i.jv = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 10
  %i.jx = load i8, ptr %i.jw, align 2, !tbaa !75
  %i.jy = zext nneg i8 %i.jx to i32
  %i.jz = ashr i32 %i.ju, %i.jy
  %i.ka = sub nsw i32 0, %i.jz                    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  store i32 %i.ka, ptr %i.kc, align 4, !tbaa !38
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 52
  store i32 %i.ka, ptr %i.kd, align 4, !tbaa !38
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 44 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !50 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jj, i64 60
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !38
  store i32 %i.kf, ptr %i.kb, align 4, !tbaa !38
  %i.kh = call ptr @av_strtok(ptr noundef nonnull %i.jk, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not428 = icmp eq ptr %i.kh, null
  br i1 %.not428, label %.thread489, label %.preheader

.preheader:                                       ; preds = %bb.ai
  %i.ki = call ptr @av_strtok(ptr noundef nonnull %i.kh, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not429576 = icmp eq ptr %i.ki, null
  br i1 %.not429576, label %._crit_edge580, label %.lr.ph579

.lr.ph579:                                        ; preds = %.preheader, %bb.as
  %i.kj = phi ptr [ %i.ls, %bb.as ], [ %i.ki, %.preheader ] ; 3 uses
  %.1350577 = phi i32 [ %.2351, %bb.as ], [ 0, %.preheader ] ; 4 uses
  %i.kk = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.kj, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.d) #11
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.lr.ph579
  %i.km = load i32, ptr %i.d, align 4, !tbaa !38  ; 3 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = icmp eq i64 %indvars.iv663, %i.kn
  %i.kp = icmp slt i32 %i.km, 0
  %or.cond = or i1 %i.ko, %i.kp
  br i1 %or.cond, label %.thread489, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kq = load i32, ptr %i.jb, align 8, !tbaa !37
  %.not433 = icmp slt i32 %i.km, %i.kq
  br i1 %.not433, label %bb.al, label %.thread489

bb.al:                                            ; preds = %bb.ak
  %i.kr = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kn
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !49
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !51 ; 2 uses
  %i.kw = sub nsw i32 2147483647, %i.kv
  %i.kx = icmp sgt i32 %.1350577, %i.kw
  br i1 %i.kx, label %.thread489, label %bb.as

bb.am:                                            ; preds = %.lr.ph579
  %i.ky = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.kj, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.d) #11
  %i.kz = icmp eq i32 %i.ky, 1
  br i1 %i.kz, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.la = load i32, ptr %i.d, align 4, !tbaa !38  ; 3 uses
  %i.lb = zext i32 %i.la to i64                   ; 2 uses
  %i.lc = icmp eq i64 %indvars.iv663, %i.lb
  %i.ld = icmp slt i32 %i.la, 0
  %or.cond11 = or i1 %i.lc, %i.ld
  br i1 %or.cond11, label %.thread489, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.le = load i32, ptr %i.jb, align 8, !tbaa !37
  %.not431 = icmp slt i32 %i.la, %i.le
  br i1 %.not431, label %bb.ap, label %.thread489

bb.ap:                                            ; preds = %bb.ao
  %i.lf = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lb
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !49
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !50 ; 2 uses
  %i.lk = sub nsw i32 2147483647, %i.lj
  %i.ll = icmp sgt i32 %.1350577, %i.lk
  br i1 %i.ll, label %.thread489, label %bb.as

bb.aq:                                            ; preds = %bb.am
  %i.lm = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.kj, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.d) #11
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %bb.ar, label %.thread489

bb.ar:                                            ; preds = %bb.aq
  %i.lo = load i32, ptr %i.d, align 4, !tbaa !38  ; 3 uses
  %i.lp = icmp slt i32 %i.lo, 0
  %i.lq = sub nuw nsw i32 2147483647, %i.lo
  %i.lr = icmp sgt i32 %.1350577, %i.lq
  %or.cond776.a = select i1 %i.lp, i1 true, i1 %i.lr
  br i1 %or.cond776.a, label %.thread489, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.al
  %.pn = phi i32 [ %i.lj, %bb.ap ], [ %i.kv, %bb.al ], [ %i.lo, %bb.ar ]
  %.2351 = add nsw i32 %.pn, %.1350577            ; 2 uses
  %i.ls = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not429 = icmp eq ptr %i.ls, null
  br i1 %.not429, label %._crit_edge580, label %.lr.ph579, !llvm.loop !66

._crit_edge580:                                   ; preds = %bb.as, %.preheader
  %.1350.lcssa = phi i32 [ 0, %.preheader ], [ %.2351, %bb.as ] ; 3 uses
  %i.lt = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not428.1 = icmp eq ptr %i.lt, null
  br i1 %.not428.1, label %.thread489, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge580
  %i.lu = call ptr @av_strtok(ptr noundef nonnull %i.lt, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not429576.1 = icmp eq ptr %i.lu, null
  br i1 %.not429576.1, label %._crit_edge580.1, label %.lr.ph579.1

.lr.ph579.1:                                      ; preds = %.preheader.1, %bb.bc
  %i.lv = phi ptr [ %i.ne, %bb.bc ], [ %i.lu, %.preheader.1 ] ; 3 uses
  %.1346578.1 = phi i32 [ %.2347.1, %bb.bc ], [ 0, %.preheader.1 ] ; 4 uses
  %i.lw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.lv, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.d) #11
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.az, label %bb.at

bb.at:                                            ; preds = %.lr.ph579.1
end_hunk_0
