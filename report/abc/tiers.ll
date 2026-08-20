inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@kissat_compute_and_set_tier_limits:vector.ph
  %wide.load27.8 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !61
  %i.ak = add <2 x i64> %wide.load.8, %i.ag
  %i.al = add <2 x i64> %wide.load27.8, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %wide.load.9 = load <2 x i64>, ptr %i.am, align 8, !tbaa !61
  %wide.load27.9 = load <2 x i64>, ptr %i.an, align 8, !tbaa !61
  %i.ao = add <2 x i64> %wide.load.9, %i.ak
  %i.ap = add <2 x i64> %wide.load27.9, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %wide.load.10 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !61
  %wide.load27.10 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !61
  %i.as = add <2 x i64> %wide.load.10, %i.ao
  %i.at = add <2 x i64> %wide.load27.10, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %wide.load.11 = load <2 x i64>, ptr %i.au, align 8, !tbaa !61
  %wide.load27.11 = load <2 x i64>, ptr %i.av, align 8, !tbaa !61
  %i.aw = add <2 x i64> %wide.load.11, %i.as
  %i.ax = add <2 x i64> %wide.load27.11, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %wide.load.12 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !61
  %wide.load27.12 = load <2 x i64>, ptr %i.az, align 8, !tbaa !61
  %i.ba = add <2 x i64> %wide.load.12, %i.aw
  %i.bb = add <2 x i64> %wide.load27.12, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %wide.load.13 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !61
  %wide.load27.13 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !61
  %i.be = add <2 x i64> %wide.load.13, %i.ba
  %i.bf = add <2 x i64> %wide.load27.13, %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %wide.load.14 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !61
  %wide.load27.14 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !61
  %i.bi = add <2 x i64> %wide.load.14, %i.be
  %i.bj = add <2 x i64> %wide.load27.14, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %wide.load.15 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !61
  %wide.load27.15 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !61
  %i.bm = add <2 x i64> %wide.load.15, %i.bi
  %i.bn = add <2 x i64> %wide.load27.15, %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %wide.load.16 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !61
  %wide.load27.16 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !61
  %i.bq = add <2 x i64> %wide.load.16, %i.bm
  %i.br = add <2 x i64> %wide.load27.16, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %wide.load.17 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !61
  %wide.load27.17 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !61
  %i.bu = add <2 x i64> %wide.load.17, %i.bq
  %i.bv = add <2 x i64> %wide.load27.17, %i.br
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %wide.load.18 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !61
  %wide.load27.18 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !61
  %i.by = add <2 x i64> %wide.load.18, %i.bu
  %i.bz = add <2 x i64> %wide.load27.18, %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  %wide.load.19 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !61
  %wide.load27.19 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !61
  %i.cc = add <2 x i64> %wide.load.19, %i.by
  %i.cd = add <2 x i64> %wide.load27.19, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 656
  %wide.load.20 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !61
  %wide.load27.20 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !61
  %i.cg = add <2 x i64> %wide.load.20, %i.cc
  %i.ch = add <2 x i64> %wide.load27.20, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  %wide.load.21 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !61
  %wide.load27.21 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !61
  %i.ck = add <2 x i64> %wide.load.21, %i.cg
  %i.cl = add <2 x i64> %wide.load27.21, %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 720
  %wide.load.22 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !61
  %wide.load27.22 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !61
  %i.co = add <2 x i64> %wide.load.22, %i.ck
  %i.cp = add <2 x i64> %wide.load27.22, %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 736
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 752
  %wide.load.23 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !61
  %wide.load27.23 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !61
  %i.cs = add <2 x i64> %wide.load.23, %i.co
  %i.ct = add <2 x i64> %wide.load27.23, %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 784
  %wide.load.24 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !61
  %wide.load27.24 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !61
  %i.cw = add <2 x i64> %wide.load.24, %i.cs
  %i.cx = add <2 x i64> %wide.load27.24, %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 816
  %wide.load.25 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !61
  %wide.load27.25 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !61
  %i.da = add <2 x i64> %wide.load.25, %i.cw
  %i.db = add <2 x i64> %wide.load27.25, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %wide.load.26 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !61
  %wide.load27.26 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !61
  %i.de = add <2 x i64> %wide.load.26, %i.da
  %i.df = add <2 x i64> %wide.load27.26, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 864
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 880
  %wide.load.27 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !61
  %wide.load27.27 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !61
  %i.di = add <2 x i64> %wide.load.27, %i.de
  %i.dj = add <2 x i64> %wide.load27.27, %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %wide.load.28 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !61
  %wide.load27.28 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !61
  %i.dm = add <2 x i64> %wide.load.28, %i.di
  %i.dn = add <2 x i64> %wide.load27.28, %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 928
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 944
  %wide.load.29 = load <2 x i64>, ptr %i.do, align 8, !tbaa !61
  %wide.load27.29 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !61
  %i.dq = add <2 x i64> %wide.load.29, %i.dm
  %i.dr = add <2 x i64> %wide.load27.29, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 976
  %wide.load.30 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !61
  %wide.load27.30 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !61
  %i.du = add <2 x i64> %wide.load.30, %i.dq
  %i.dv = add <2 x i64> %wide.load27.30, %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 992
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 1008
  %wide.load.31 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !61
  %wide.load27.31 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !61
  %i.dy = add <2 x i64> %wide.load.31, %i.du
  %i.dz = add <2 x i64> %wide.load27.31, %i.dv
  %bin.rdx = add <2 x i64> %i.dz, %i.dy
  %i.ea = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i, label %compute_tier_limits.exit, label %bb.a

bb.a:                                             ; preds = %vector.ph
  %i.eb = uitofp i64 %i.ea to double              ; 2 uses
  %i.ec = fmul nnan double %i.eb, 5.000000e-01
  %i.ed = fptoui double %i.ec to i64              ; 4 uses
  %i.ee = fmul nnan double %i.eb, 9.000000e-01
  %i.ef = fptoui double %i.ee to i64              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv71.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next72.i.3, %bb.f ] ; 6 uses
  %.04467.i = phi i64 [ 0, %bb.a ], [ %i.er, %bb.f ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv71.i
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !61
  %i.ei = add i64 %i.eh, %.04467.i                ; 3 uses
  %.not57.i = icmp ult i64 %i.ei, %i.ed
  br i1 %.not57.i, label %bb.c, label %.split.loop.exit.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next72.i = or disjoint i64 %indvars.iv71.i, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next72.i
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !61
  %i.el = add i64 %i.ek, %i.ei                    ; 3 uses
  %.not57.i.1 = icmp ult i64 %i.el, %i.ed
  br i1 %.not57.i.1, label %bb.d, label %.split.loop.exit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next72.i.1 = or disjoint i64 %indvars.iv71.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next72.i.1
  %i.en = load i64, ptr %i.em, align 8, !tbaa !61
  %i.eo = add i64 %i.en, %i.el                    ; 3 uses
  %.not57.i.2 = icmp ult i64 %i.eo, %i.ed
  br i1 %.not57.i.2, label %bb.e, label %.split.loop.exit.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next72.i.2 = or disjoint i64 %indvars.iv71.i, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next72.i.2
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !61
  %i.er = add i64 %i.eq, %i.eo                    ; 4 uses
  %.not57.i.3 = icmp ult i64 %i.er, %i.ed
  br i1 %.not57.i.3, label %bb.f, label %.split.loop.exit.i

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %exitcond74.not.i.3 = icmp eq i64 %indvars.iv.next72.i.3, 128
  br i1 %exitcond74.not.i.3, label %.split.loop.exit80.i, label %bb.b, !llvm.loop !62

.split.loop.exit.i:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv71.i.lcssa = phi i64 [ %indvars.iv71.i, %bb.b ], [ %indvars.iv.next72.i, %bb.c ], [ %indvars.iv.next72.i.1, %bb.d ], [ %indvars.iv.next72.i.2, %bb.e ]
  %.lcssa = phi i64 [ %i.ei, %bb.b ], [ %i.el, %bb.c ], [ %i.eo, %bb.d ], [ %i.er, %bb.e ]
  %i.es = trunc i64 %indvars.iv71.i.lcssa to i32
  br label %.split.loop.exit80.i

.split.loop.exit80.i:                             ; preds = %bb.f, %.split.loop.exit.i
  %i.et = phi i64 [ %.lcssa, %.split.loop.exit.i ], [ %i.er, %bb.f ] ; 2 uses
  %.251.i = phi i32 [ %i.es, %.split.loop.exit.i ], [ -1, %bb.f ] ; 7 uses
  %i.eu = icmp ult i64 %i.et, %i.ef
  br i1 %i.eu, label %.preheader.i.preheader, label %compute_tier_limits.exit

.preheader.i.preheader:                           ; preds = %.split.loop.exit80.i
  %exitcond75.not.i22 = icmp eq i32 %.251.i, 127
  br i1 %exitcond75.not.i22, label %.split.loop.exit87.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader
  %1 = zext i32 %.251.i to i64
  br label %.lr.ph.a

.preheader.i:                                     ; preds = %.lr.ph.a
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next76.i, 127
  br i1 %exitcond75.not.i, label %.split.loop.exit87.i.thread, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %.preheader.i
  %.2.i26 = phi i64 [ %i.et, %.lr.ph ], [ %i.ex, %.preheader.i ]
  %.2.i23 = phi i64 [ %1, %.lr.ph ], [ %indvars.iv.next76.i, %.preheader.i ]
  %indvars.iv.next76.i = add i64 %.2.i23, 1       ; 4 uses
  %2 = and i64 %indvars.iv.next76.i, 4294967295
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !61
  %i.ex = add i64 %i.ew, %.2.i26                  ; 2 uses
  %.not58.i = icmp ult i64 %i.ex, %i.ef
  br i1 %.not58.i, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.a
  %indvars.le.i = trunc i64 %indvars.iv.next76.i to i32 ; 2 uses
  %i.ey = icmp slt i32 %indvars.le.i, 0
  br i1 %i.ey, label %.split.loop.exit87.i.thread, label %compute_tier_limits.exit

.split.loop.exit87.i.thread:                      ; preds = %.preheader.i, %.preheader.i.preheader, %._crit_edge
  br label %compute_tier_limits.exit

compute_tier_limits.exit:                         ; preds = %.split.loop.exit87.i.thread, %._crit_edge, %vector.ph, %.split.loop.exit80.i
  %.35263.i = phi i32 [ -1, %vector.ph ], [ %.251.i, %.split.loop.exit80.i ], [ %.251.i, %._crit_edge ], [ %.251.i, %.split.loop.exit87.i.thread ] ; 2 uses
  %3 = phi i32 [ -1, %vector.ph ], [ %.251.i, %.split.loop.exit80.i ], [ %indvars.le.i, %._crit_edge ], [ %.251.i, %.split.loop.exit87.i.thread ]
  %i.ez = icmp slt i32 %.35263.i, 0               ; 2 uses
  %.453.i = select i1 %i.ez, i32 2, i32 %.35263.i
  %.4.i = select i1 %i.ez, i32 6, i32 %3
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.c
  store i32 %.453.i, ptr %i.fb, align 4, !tbaa !64
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.c
  store i32 %.4.i, ptr %i.fd, align 4, !tbaa !64
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define void @kissat_print_tier_usage_statistics(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
vector.ph:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.c = zext i1 %1 to i64
  %i.d = getelementptr inbounds nuw [1024 x i8], ptr %i.b, i64 %i.c ; 135 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !61
  %wide.load223 = load <2 x i64>, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %wide.load.1 = load <2 x i64>, ptr %i.f, align 8, !tbaa !61
  %wide.load223.1 = load <2 x i64>, ptr %i.g, align 8, !tbaa !61
  %i.h = add <2 x i64> %wide.load.1, %wide.load
  %i.i = add <2 x i64> %wide.load223.1, %wide.load223
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %wide.load.2 = load <2 x i64>, ptr %i.j, align 8, !tbaa !61
  %wide.load223.2 = load <2 x i64>, ptr %i.k, align 8, !tbaa !61
  %i.l = add <2 x i64> %wide.load.2, %i.h
  %i.m = add <2 x i64> %wide.load223.2, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %wide.load.3 = load <2 x i64>, ptr %i.n, align 8, !tbaa !61
  %wide.load223.3 = load <2 x i64>, ptr %i.o, align 8, !tbaa !61
  %i.p = add <2 x i64> %wide.load.3, %i.l
  %i.q = add <2 x i64> %wide.load223.3, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %wide.load.4 = load <2 x i64>, ptr %i.r, align 8, !tbaa !61
  %wide.load223.4 = load <2 x i64>, ptr %i.s, align 8, !tbaa !61
  %i.t = add <2 x i64> %wide.load.4, %i.p
  %i.u = add <2 x i64> %wide.load223.4, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %wide.load.5 = load <2 x i64>, ptr %i.v, align 8, !tbaa !61
  %wide.load223.5 = load <2 x i64>, ptr %i.w, align 8, !tbaa !61
  %i.x = add <2 x i64> %wide.load.5, %i.t
  %i.y = add <2 x i64> %wide.load223.5, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %wide.load.6 = load <2 x i64>, ptr %i.z, align 8, !tbaa !61
  %wide.load223.6 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !61
  %i.ab = add <2 x i64> %wide.load.6, %i.x
  %i.ac = add <2 x i64> %wide.load223.6, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %wide.load.7 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !61
  %wide.load223.7 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !61
  %i.af = add <2 x i64> %wide.load.7, %i.ab
  %i.ag = add <2 x i64> %wide.load223.7, %i.ac
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %wide.load.8 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !61
  %wide.load223.8 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !61
  %i.aj = add <2 x i64> %wide.load.8, %i.af
  %i.ak = add <2 x i64> %wide.load223.8, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %wide.load.9 = load <2 x i64>, ptr %i.al, align 8, !tbaa !61
  %wide.load223.9 = load <2 x i64>, ptr %i.am, align 8, !tbaa !61
  %i.an = add <2 x i64> %wide.load.9, %i.aj
  %i.ao = add <2 x i64> %wide.load223.9, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %wide.load.10 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !61
  %wide.load223.10 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !61
  %i.ar = add <2 x i64> %wide.load.10, %i.an
  %i.as = add <2 x i64> %wide.load223.10, %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %wide.load.11 = load <2 x i64>, ptr %i.at, align 8, !tbaa !61
  %wide.load223.11 = load <2 x i64>, ptr %i.au, align 8, !tbaa !61
  %i.av = add <2 x i64> %wide.load.11, %i.ar
  %i.aw = add <2 x i64> %wide.load223.11, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %wide.load.12 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !61
  %wide.load223.12 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !61
  %i.az = add <2 x i64> %wide.load.12, %i.av
  %i.ba = add <2 x i64> %wide.load223.12, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %wide.load.13 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !61
  %wide.load223.13 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !61
  %i.bd = add <2 x i64> %wide.load.13, %i.az
  %i.be = add <2 x i64> %wide.load223.13, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  %wide.load.14 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !61
  %wide.load223.14 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !61
  %i.bh = add <2 x i64> %wide.load.14, %i.bd
  %i.bi = add <2 x i64> %wide.load223.14, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  %wide.load.15 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !61
  %wide.load223.15 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !61
  %i.bl = add <2 x i64> %wide.load.15, %i.bh
  %i.bm = add <2 x i64> %wide.load223.15, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  %wide.load.16 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !61
  %wide.load223.16 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !61
  %i.bp = add <2 x i64> %wide.load.16, %i.bl
  %i.bq = add <2 x i64> %wide.load223.16, %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  %wide.load.17 = load <2 x i64>, ptr %i.br, align 8, !tbaa !61
  %wide.load223.17 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !61
  %i.bt = add <2 x i64> %wide.load.17, %i.bp
  %i.bu = add <2 x i64> %wide.load223.17, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %wide.load.18 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !61
  %wide.load223.18 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !61
  %i.bx = add <2 x i64> %wide.load.18, %i.bt
  %i.by = add <2 x i64> %wide.load223.18, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %wide.load.19 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !61
  %wide.load223.19 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !61
  %i.cb = add <2 x i64> %wide.load.19, %i.bx
  %i.cc = add <2 x i64> %wide.load223.19, %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %wide.load.20 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !61
  %wide.load223.20 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !61
  %i.cf = add <2 x i64> %wide.load.20, %i.cb
  %i.cg = add <2 x i64> %wide.load223.20, %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  %wide.load.21 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !61
  %wide.load223.21 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !61
  %i.cj = add <2 x i64> %wide.load.21, %i.cf
  %i.ck = add <2 x i64> %wide.load223.21, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  %wide.load.22 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !61
  %wide.load223.22 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !61
  %i.cn = add <2 x i64> %wide.load.22, %i.cj
  %i.co = add <2 x i64> %wide.load223.22, %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 752
  %wide.load.23 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !61
  %wide.load223.23 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !61
  %i.cr = add <2 x i64> %wide.load.23, %i.cn
  %i.cs = add <2 x i64> %wide.load223.23, %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 784
  %wide.load.24 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !61
  %wide.load223.24 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !61
  %i.cv = add <2 x i64> %wide.load.24, %i.cr
  %i.cw = add <2 x i64> %wide.load223.24, %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %wide.load.25 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !61
  %wide.load223.25 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !61
  %i.cz = add <2 x i64> %wide.load.25, %i.cv
  %i.da = add <2 x i64> %wide.load223.25, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  %wide.load.26 = load <2 x i64>, ptr %i.db, align 8, !tbaa !61
  %wide.load223.26 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !61
  %i.dd = add <2 x i64> %wide.load.26, %i.cz
  %i.de = add <2 x i64> %wide.load223.26, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 880
  %wide.load.27 = load <2 x i64>, ptr %i.df, align 8, !tbaa !61
  %wide.load223.27 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !61
  %i.dh = add <2 x i64> %wide.load.27, %i.dd
  %i.di = add <2 x i64> %wide.load223.27, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 896
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  %wide.load.28 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !61
  %wide.load223.28 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !61
  %i.dl = add <2 x i64> %wide.load.28, %i.dh
  %i.dm = add <2 x i64> %wide.load223.28, %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 928
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 944
  %wide.load.29 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !61
  %wide.load223.29 = load <2 x i64>, ptr %i.do, align 8, !tbaa !61
  %i.dp = add <2 x i64> %wide.load.29, %i.dl
  %i.dq = add <2 x i64> %wide.load223.29, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %wide.load.30 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !61
  %wide.load223.30 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !61
  %i.dt = add <2 x i64> %wide.load.30, %i.dp
  %i.du = add <2 x i64> %wide.load223.30, %i.dq
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 992
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  %wide.load.31 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !61
  %wide.load223.31 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !61
  %i.dx = add <2 x i64> %wide.load.31, %i.dt
  %i.dy = add <2 x i64> %wide.load223.31, %i.du
  %bin.rdx = add <2 x i64> %i.dy, %i.dx
  %i.dz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %.not.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i, label %vector.body225, label %bb.a

bb.a:                                             ; preds = %vector.ph
  %i.ea = uitofp i64 %i.dz to double              ; 2 uses
  %i.eb = fmul nnan double %i.ea, 5.000000e-01
  %i.ec = fptoui double %i.eb to i64              ; 4 uses
  %i.ed = fmul nnan double %i.ea, 9.000000e-01
  %i.ee = fptoui double %i.ed to i64              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv71.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next72.i.3, %bb.f ] ; 6 uses
  %.04467.i = phi i64 [ 0, %bb.a ], [ %i.eq, %bb.f ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv71.i
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !61
  %i.eh = add i64 %i.eg, %.04467.i                ; 3 uses
  %.not57.i = icmp ult i64 %i.eh, %i.ec
  br i1 %.not57.i, label %bb.c, label %.split.loop.exit.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next72.i = or disjoint i64 %indvars.iv71.i, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next72.i
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !61
  %i.ek = add i64 %i.ej, %i.eh                    ; 3 uses
  %.not57.i.1 = icmp ult i64 %i.ek, %i.ec
  br i1 %.not57.i.1, label %bb.d, label %.split.loop.exit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next72.i.1 = or disjoint i64 %indvars.iv71.i, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next72.i.1
  %i.em = load i64, ptr %i.el, align 8, !tbaa !61
  %i.en = add i64 %i.em, %i.ek                    ; 3 uses
  %.not57.i.2 = icmp ult i64 %i.en, %i.ec
  br i1 %.not57.i.2, label %bb.e, label %.split.loop.exit.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next72.i.2 = or disjoint i64 %indvars.iv71.i, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next72.i.2
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !61
  %i.eq = add i64 %i.ep, %i.en                    ; 4 uses
  %.not57.i.3 = icmp ult i64 %i.eq, %i.ec
  br i1 %.not57.i.3, label %bb.f, label %.split.loop.exit.i

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %exitcond74.not.i.3 = icmp eq i64 %indvars.iv.next72.i.3, 128
  br i1 %exitcond74.not.i.3, label %.split.loop.exit80.i, label %bb.b, !llvm.loop !62

.split.loop.exit.i:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv71.i.lcssa = phi i64 [ %indvars.iv71.i, %bb.b ], [ %indvars.iv.next72.i, %bb.c ], [ %indvars.iv.next72.i.1, %bb.d ], [ %indvars.iv.next72.i.2, %bb.e ]
  %.lcssa240 = phi i64 [ %i.eh, %bb.b ], [ %i.ek, %bb.c ], [ %i.en, %bb.d ], [ %i.eq, %bb.e ]
  %i.er = trunc i64 %indvars.iv71.i.lcssa to i32
  br label %.split.loop.exit80.i

.split.loop.exit80.i:                             ; preds = %bb.f, %.split.loop.exit.i
  %i.es = phi i64 [ %.lcssa240, %.split.loop.exit.i ], [ %i.eq, %bb.f ] ; 2 uses
  %.251.i = phi i32 [ %i.er, %.split.loop.exit.i ], [ -1, %bb.f ] ; 7 uses
  %i.et = icmp ult i64 %i.es, %i.ee
  br i1 %i.et, label %.preheader.i.preheader, label %vector.body225

.preheader.i.preheader:                           ; preds = %.split.loop.exit80.i
  %exitcond75.not.i216 = icmp eq i32 %.251.i, 127
  br i1 %exitcond75.not.i216, label %.split.loop.exit87.i.thread, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader.i.preheader
  %2 = zext i32 %.251.i to i64
  br label %.lr.ph219

.preheader.i:                                     ; preds = %.lr.ph219
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next76.i, 127
  br i1 %exitcond75.not.i, label %.split.loop.exit87.i.thread, label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph221, %.preheader.i
  %.2.i220 = phi i64 [ %i.es, %.lr.ph221 ], [ %i.ew, %.preheader.i ]
  %.2.i217 = phi i64 [ %2, %.lr.ph221 ], [ %indvars.iv.next76.i, %.preheader.i ]
  %indvars.iv.next76.i = add i64 %.2.i217, 1      ; 4 uses
  %3 = and i64 %indvars.iv.next76.i, 4294967295
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %3
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !61
  %i.ew = add i64 %i.ev, %.2.i220                 ; 2 uses
  %.not58.i = icmp ult i64 %i.ew, %i.ee
  br i1 %.not58.i, label %.preheader.i, label %._crit_edge220

._crit_edge220:                                   ; preds = %.lr.ph219
  %indvars.le.i = trunc i64 %indvars.iv.next76.i to i32 ; 2 uses
  %i.ex = icmp slt i32 %indvars.le.i, 0
  br i1 %i.ex, label %.split.loop.exit87.i.thread, label %vector.body225

.split.loop.exit87.i.thread:                      ; preds = %.preheader.i, %.preheader.i.preheader, %._crit_edge220
  br label %vector.body225

vector.body225:                                   ; preds = %.split.loop.exit87.i.thread, %._crit_edge220, %vector.ph, %.split.loop.exit80.i
  %.35263.i = phi i32 [ -1, %vector.ph ], [ %.251.i, %.split.loop.exit80.i ], [ %.251.i, %._crit_edge220 ], [ %.251.i, %.split.loop.exit87.i.thread ] ; 2 uses
  %4 = phi i32 [ -1, %vector.ph ], [ %.251.i, %.split.loop.exit80.i ], [ %indvars.le.i, %._crit_edge220 ], [ %.251.i, %.split.loop.exit87.i.thread ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load229 = load <2 x i64>, ptr %i.d, align 8, !tbaa !61
  %wide.load230 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !61
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %wide.load229.1 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !61
  %wide.load230.1 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !61
  %i.fb = add <2 x i64> %wide.load229.1, %wide.load229
  %i.fc = add <2 x i64> %wide.load230.1, %wide.load230
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %wide.load229.2 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !61
  %wide.load230.2 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !61
  %i.ff = add <2 x i64> %wide.load229.2, %i.fb
  %i.fg = add <2 x i64> %wide.load230.2, %i.fc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %wide.load229.3 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !61
  %wide.load230.3 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !61
  %i.fj = add <2 x i64> %wide.load229.3, %i.ff
  %i.fk = add <2 x i64> %wide.load230.3, %i.fg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %wide.load229.4 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !61
  %wide.load230.4 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !61
  %i.fn = add <2 x i64> %wide.load229.4, %i.fj
  %i.fo = add <2 x i64> %wide.load230.4, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %wide.load229.5 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !61
  %wide.load230.5 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !61
  %i.fr = add <2 x i64> %wide.load229.5, %i.fn
  %i.fs = add <2 x i64> %wide.load230.5, %i.fo
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %wide.load229.6 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !61
  %wide.load230.6 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !61
  %i.fv = add <2 x i64> %wide.load229.6, %i.fr
  %i.fw = add <2 x i64> %wide.load230.6, %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %wide.load229.7 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !61
  %wide.load230.7 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !61
  %i.fz = add <2 x i64> %wide.load229.7, %i.fv
  %i.ga = add <2 x i64> %wide.load230.7, %i.fw
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %wide.load229.8 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !61
  %wide.load230.8 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !61
  %i.gd = add <2 x i64> %wide.load229.8, %i.fz
  %i.ge = add <2 x i64> %wide.load230.8, %i.ga
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %wide.load229.9 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !61
  %wide.load230.9 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !61
  %i.gh = add <2 x i64> %wide.load229.9, %i.gd
  %i.gi = add <2 x i64> %wide.load230.9, %i.ge
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %wide.load229.10 = load <2 x i64>, ptr %i.gj, align 8, !tbaa !61
  %wide.load230.10 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !61
  %i.gl = add <2 x i64> %wide.load229.10, %i.gh
  %i.gm = add <2 x i64> %wide.load230.10, %i.gi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %wide.load229.11 = load <2 x i64>, ptr %i.gn, align 8, !tbaa !61
  %wide.load230.11 = load <2 x i64>, ptr %i.go, align 8, !tbaa !61
  %i.gp = add <2 x i64> %wide.load229.11, %i.gl
  %i.gq = add <2 x i64> %wide.load230.11, %i.gm
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %wide.load229.12 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !61
  %wide.load230.12 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !61
  %i.gt = add <2 x i64> %wide.load229.12, %i.gp
  %i.gu = add <2 x i64> %wide.load230.12, %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %wide.load229.13 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !61
  %wide.load230.13 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !61
  %i.gx = add <2 x i64> %wide.load229.13, %i.gt
  %i.gy = add <2 x i64> %wide.load230.13, %i.gu
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  %wide.load229.14 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !61
  %wide.load230.14 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !61
  %i.hb = add <2 x i64> %wide.load229.14, %i.gx
  %i.hc = add <2 x i64> %wide.load230.14, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  %wide.load229.15 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !61
  %wide.load230.15 = load <2 x i64>, ptr %i.he, align 8, !tbaa !61
  %i.hf = add <2 x i64> %wide.load229.15, %i.hb
  %i.hg = add <2 x i64> %wide.load230.15, %i.hc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  %wide.load229.16 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !61
  %wide.load230.16 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !61
  %i.hj = add <2 x i64> %wide.load229.16, %i.hf
  %i.hk = add <2 x i64> %wide.load230.16, %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  %wide.load229.17 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !61
  %wide.load230.17 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !61
  %i.hn = add <2 x i64> %wide.load229.17, %i.hj
  %i.ho = add <2 x i64> %wide.load230.17, %i.hk
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.hq = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %wide.load229.18 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !61
  %wide.load230.18 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !61
  %i.hr = add <2 x i64> %wide.load229.18, %i.hn
  %i.hs = add <2 x i64> %wide.load230.18, %i.ho
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  %i.hu = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %wide.load229.19 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !61
  %wide.load230.19 = load <2 x i64>, ptr %i.hu, align 8, !tbaa !61
  %i.hv = add <2 x i64> %wide.load229.19, %i.hr
  %i.hw = add <2 x i64> %wide.load230.19, %i.hs
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %wide.load229.20 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !61
  %wide.load230.20 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !61
  %i.hz = add <2 x i64> %wide.load229.20, %i.hv
  %i.ia = add <2 x i64> %wide.load230.20, %i.hw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 688
  %wide.load229.21 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !61
  %wide.load230.21 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !61
  %i.id = add <2 x i64> %wide.load229.21, %i.hz
  %i.ie = add <2 x i64> %wide.load230.21, %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.ig = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  %wide.load229.22 = load <2 x i64>, ptr %i.if, align 8, !tbaa !61
  %wide.load230.22 = load <2 x i64>, ptr %i.ig, align 8, !tbaa !61
  %i.ih = add <2 x i64> %wide.load229.22, %i.id
  %i.ii = add <2 x i64> %wide.load230.22, %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 736
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 752
  %wide.load229.23 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !61
  %wide.load230.23 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !61
  %i.il = add <2 x i64> %wide.load229.23, %i.ih
  %i.im = add <2 x i64> %wide.load230.23, %i.ii
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 784
  %wide.load229.24 = load <2 x i64>, ptr %i.in, align 8, !tbaa !61
  %wide.load230.24 = load <2 x i64>, ptr %i.io, align 8, !tbaa !61
  %i.ip = add <2 x i64> %wide.load229.24, %i.il
  %i.iq = add <2 x i64> %wide.load230.24, %i.im
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %wide.load229.25 = load <2 x i64>, ptr %i.ir, align 8, !tbaa !61
  %wide.load230.25 = load <2 x i64>, ptr %i.is, align 8, !tbaa !61
  %i.it = add <2 x i64> %wide.load229.25, %i.ip
  %i.iu = add <2 x i64> %wide.load230.25, %i.iq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  %wide.load229.26 = load <2 x i64>, ptr %i.iv, align 8, !tbaa !61
  %wide.load230.26 = load <2 x i64>, ptr %i.iw, align 8, !tbaa !61
  %i.ix = add <2 x i64> %wide.load229.26, %i.it
  %i.iy = add <2 x i64> %wide.load230.26, %i.iu
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 880
  %wide.load229.27 = load <2 x i64>, ptr %i.iz, align 8, !tbaa !61
  %wide.load230.27 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !61
  %i.jb = add <2 x i64> %wide.load229.27, %i.ix
  %i.jc = add <2 x i64> %wide.load230.27, %i.iy
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 896
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  %wide.load229.28 = load <2 x i64>, ptr %i.jd, align 8, !tbaa !61
  %wide.load230.28 = load <2 x i64>, ptr %i.je, align 8, !tbaa !61
  %i.jf = add <2 x i64> %wide.load229.28, %i.jb
  %i.jg = add <2 x i64> %wide.load230.28, %i.jc
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 928
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 944
  %wide.load229.29 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !61
  %wide.load230.29 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !61
  %i.jj = add <2 x i64> %wide.load229.29, %i.jf
  %i.jk = add <2 x i64> %wide.load230.29, %i.jg
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 976
  %wide.load229.30 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !61
  %wide.load230.30 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !61
  %i.jn = add <2 x i64> %wide.load229.30, %i.jj
  %i.jo = add <2 x i64> %wide.load230.30, %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.d, i64 992
  %i.jq = getelementptr inbounds nuw i8, ptr %i.d, i64 1008
  %wide.load229.31 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !61
  %wide.load230.31 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !61
  %i.jr = add <2 x i64> %wide.load229.31, %i.jn
  %i.js = add <2 x i64> %wide.load230.31, %i.jo
  %bin.rdx233 = add <2 x i64> %i.js, %i.jr
  %i.jt = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx233) ; 2 uses
  %i.ju = icmp slt i32 %.35263.i, 0               ; 2 uses
  %.453.i = select i1 %i.ju, i32 2, i32 %.35263.i ; 3 uses
  %.4.i = select i1 %i.ju, i32 6, i32 %4          ; 3 uses
  %i.jv = select i1 %1, ptr @.str, ptr @.str.1
  %reass.sub = sub i32 %.4.i, %.453.i
  %i.jw = add i32 %reass.sub, -5
  %i.jx = icmp ult i32 %i.jw, -6                  ; 2 uses
  %i.jy = add i32 %.453.i, 1
  %i.jz = add i32 %.4.i, -1
  %.0102 = select i1 %i.jx, i32 %i.jy, i32 -1     ; 3 uses
  %.0101 = select i1 %i.jx, i32 %i.jz, i32 0      ; 2 uses
  %invariant.op = add i32 %.0101, -1              ; 3 uses
  %i.ka = add nuw nsw i32 %.0102, 1               ; 2 uses
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = icmp ult i32 %.0102, 9
  %i.kd = zext i32 %invariant.op to i64           ; 2 uses
  %i.ke = zext i32 %.0101 to i64                  ; 4 uses
  %i.kf = zext i32 %.0102 to i64                  ; 2 uses
  %i.kg = zext i32 %.4.i to i64                   ; 3 uses
  %i.kh = zext i32 %.453.i to i64                 ; 3 uses
  %i.ki = icmp ult i32 %invariant.op, 10
  br label %bb.g

bb.g:                                             ; preds = %vector.body225, %bb.l
  %indvars.iv178 = phi i64 [ 0, %vector.body225 ], [ %indvars.iv.next179, %bb.l ] ; 9 uses
  %.091157 = phi i32 [ 1, %vector.body225 ], [ %.2, %bb.l ] ; 2 uses
  %.093156 = phi i32 [ 1, %vector.body225 ], [ %.295, %bb.l ] ; 2 uses
  %.097155 = phi i64 [ 0, %vector.body225 ], [ %.299, %bb.l ] ; 4 uses
  %i.kj = icmp samesign ult i64 %indvars.iv178, %i.kh
  br i1 %i.kj, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv178
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !61 ; 3 uses
  %.not = icmp samesign ugt i64 %indvars.iv178, %i.kf
  %.not105 = icmp samesign ult i64 %indvars.iv178, %i.ke
  %or.cond = select i1 %.not, i1 %.not105, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.km = icmp samesign ult i64 %indvars.iv178, 10
  br i1 %i.km, label %decimal_digits.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.07.i = phi i64 [ %i.kn, %.lr.ph.i ], [ 10, %bb.i ]
  %.056.i = phi i32 [ %i.ko, %.lr.ph.i ], [ 1, %bb.i ]
  %i.kn = mul nuw nsw i64 %.07.i, 10              ; 2 uses
  %i.ko = add i32 %.056.i, 1                      ; 2 uses
  %i.kp = icmp samesign ugt i64 %i.kn, %indvars.iv178
  br i1 %i.kp, label %decimal_digits.exit, label %.lr.ph.i

decimal_digits.exit:                              ; preds = %.lr.ph.i, %bb.i
  %.05.lcssa.i = phi i32 [ 1, %bb.i ], [ %i.ko, %.lr.ph.i ] ; 2 uses
  %i.kq = icmp ult i64 %i.kl, 10
  br i1 %i.kq, label %decimal_digits.exit116, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %decimal_digits.exit, %.lr.ph.i112
  %.07.i113 = phi i64 [ %i.kr, %.lr.ph.i112 ], [ 10, %decimal_digits.exit ]
  %.056.i114 = phi i32 [ %i.ks, %.lr.ph.i112 ], [ 1, %decimal_digits.exit ]
  %i.kr = mul i64 %.07.i113, 10                   ; 2 uses
  %i.ks = add i32 %.056.i114, 1                   ; 2 uses
  %i.kt = icmp ult i64 %i.kl, %i.kr
  br i1 %i.kt, label %decimal_digits.exit116, label %.lr.ph.i112

bb.j:                                             ; preds = %bb.h
  %i.ku = add i64 %i.kl, %.097155                 ; 5 uses
  %i.kv = icmp eq i64 %indvars.iv178, %i.kd
  br i1 %i.kv, label %bb.k, label %decimal_digits.exit116

bb.k:                                             ; preds = %bb.j
  br i1 %i.kc, label %decimal_digits.exit121, label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %bb.k, %.lr.ph.i117
  %.07.i118 = phi i64 [ %i.kw, %.lr.ph.i117 ], [ 10, %bb.k ]
  %.056.i119 = phi i32 [ %i.kx, %.lr.ph.i117 ], [ 1, %bb.k ] ; 2 uses
  %i.kw = mul nuw nsw i64 %.07.i118, 10           ; 2 uses
  %i.kx = add i32 %.056.i119, 1
  %i.ky = icmp samesign ugt i64 %i.kw, %i.kb
  br i1 %i.ky, label %decimal_digits.exit121.loopexit, label %.lr.ph.i117

decimal_digits.exit121.loopexit:                  ; preds = %.lr.ph.i117
  %i.kz = add i32 %.056.i119, 2
  br label %decimal_digits.exit121

decimal_digits.exit121:                           ; preds = %decimal_digits.exit121.loopexit, %bb.k
  %.05.lcssa.i120 = phi i32 [ 2, %bb.k ], [ %i.kz, %decimal_digits.exit121.loopexit ]
  br i1 %i.ki, label %decimal_digits.exit126, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %decimal_digits.exit121, %.lr.ph.i122
  %.07.i123 = phi i64 [ %i.la, %.lr.ph.i122 ], [ 10, %decimal_digits.exit121 ]
  %.056.i124 = phi i32 [ %i.lb, %.lr.ph.i122 ], [ 1, %decimal_digits.exit121 ]
  %i.la = mul nuw nsw i64 %.07.i123, 10           ; 2 uses
  %i.lb = add i32 %.056.i124, 1                   ; 2 uses
  %i.lc = icmp samesign ugt i64 %i.la, %i.kd
  br i1 %i.lc, label %decimal_digits.exit126, label %.lr.ph.i122

decimal_digits.exit126:                           ; preds = %.lr.ph.i122, %decimal_digits.exit121
  %.05.lcssa.i125 = phi i32 [ 1, %decimal_digits.exit121 ], [ %i.lb, %.lr.ph.i122 ]
  %i.ld = add i32 %.05.lcssa.i120, %.05.lcssa.i125 ; 2 uses
  %i.le = icmp ult i64 %i.ku, 10
  br i1 %i.le, label %decimal_digits.exit116, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %decimal_digits.exit126, %.lr.ph.i127
  %.07.i128 = phi i64 [ %i.lf, %.lr.ph.i127 ], [ 10, %decimal_digits.exit126 ]
  %.056.i129 = phi i32 [ %i.lg, %.lr.ph.i127 ], [ 1, %decimal_digits.exit126 ]
  %i.lf = mul i64 %.07.i128, 10                   ; 2 uses
  %i.lg = add i32 %.056.i129, 1                   ; 2 uses
  %i.lh = icmp ult i64 %i.ku, %i.lf
  br i1 %i.lh, label %decimal_digits.exit116, label %.lr.ph.i127

decimal_digits.exit116:                           ; preds = %.lr.ph.i112, %.lr.ph.i127, %decimal_digits.exit126, %decimal_digits.exit, %bb.j
  %.198 = phi i64 [ %i.ku, %bb.j ], [ %i.ku, %.lr.ph.i127 ], [ %.097155, %decimal_digits.exit ], [ %i.ku, %decimal_digits.exit126 ], [ %.097155, %.lr.ph.i112 ]
  %.088 = phi i32 [ 0, %bb.j ], [ %i.ld, %.lr.ph.i127 ], [ %.05.lcssa.i, %decimal_digits.exit ], [ %i.ld, %decimal_digits.exit126 ], [ %.05.lcssa.i, %.lr.ph.i112 ]
  %.087 = phi i32 [ 0, %bb.j ], [ %i.lg, %.lr.ph.i127 ], [ 1, %decimal_digits.exit ], [ 1, %decimal_digits.exit126 ], [ %i.ks, %.lr.ph.i112 ]
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.088, i32 %.093156) ; 2 uses
  %.192 = tail call i32 @llvm.smax.i32(i32 %.087, i32 %.091157) ; 2 uses
  %.not106 = icmp eq i64 %indvars.iv178, %i.kg
  br i1 %.not106, label %bb.m, label %bb.l

bb.l:                                             ; preds = %decimal_digits.exit116, %bb.g
  %.299 = phi i64 [ %.097155, %bb.g ], [ %.198, %decimal_digits.exit116 ]
  %.295 = phi i32 [ %.093156, %bb.g ], [ %spec.select, %decimal_digits.exit116 ] ; 2 uses
  %.2 = phi i32 [ %.091157, %bb.g ], [ %.192, %decimal_digits.exit116 ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next179, 128
  br i1 %exitcond181.not, label %bb.m, label %bb.g, !llvm.loop !65

bb.m:                                             ; preds = %bb.l, %decimal_digits.exit116
  %.396 = phi i32 [ %spec.select, %decimal_digits.exit116 ], [ %.295, %bb.l ] ; 4 uses
  %.3 = phi i32 [ %.192, %decimal_digits.exit116 ], [ %.2, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.li = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.3) #6 ; 0 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.lk = uitofp i64 %i.jt to double
  %.not142 = icmp eq i64 %i.jt, 0
  %i.ll = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ln = insertelement <2 x i1> poison, i1 %.not142, i64 0
  %i.lo = shufflevector <2 x i1> %i.ln, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.z
  %indvars.iv182 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next183.pre-phi, %bb.z ] ; 10 uses
  %.086165 = phi i64 [ 0, %bb.m ], [ %i.lr, %bb.z ]
  %.3100164 = phi i64 [ 0, %bb.m ], [ %.5.ph, %bb.z ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv182
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !61 ; 4 uses
  %i.lr = add i64 %i.lq, %.086165                 ; 3 uses
  %i.ls = icmp samesign ult i64 %indvars.iv182, %i.kh
  br i1 %i.ls, label %._crit_edge186, label %bb.o

._crit_edge186:                                   ; preds = %bb.n
  %.pre = add nuw nsw i64 %indvars.iv182, 1
  br label %bb.z

bb.o:                                             ; preds = %bb.n
  %.not107 = icmp samesign ugt i64 %indvars.iv182, %i.kf ; 2 uses
  %i.lt = add nuw nsw i64 %indvars.iv182, 1       ; 3 uses
  %.not108 = icmp samesign ult i64 %i.lt, %i.ke
  %or.cond110 = select i1 %.not107, i1 %.not108, i1 false
  br i1 %or.cond110, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lu = load ptr, ptr %i.lj, align 8, !tbaa !66
  %i.lv = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.lw = tail call i32 @fputs(ptr noundef %i.lu, ptr noundef %i.lv) ; 0 uses
  %i.lx = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.ly = tail call i32 @fputs(ptr noundef nonnull %i.jv, ptr noundef %i.lx) ; 0 uses
  %i.lz = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.ma = tail call i64 @fwrite(ptr nonnull @.str.3, i64 6, i64 1, ptr %i.lz) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.not109 = icmp samesign ult i64 %indvars.iv182, %i.ke
  %or.cond111 = select i1 %.not107, i1 %.not109, i1 false
  br i1 %or.cond111, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mb = trunc nuw nsw i64 %indvars.iv182 to i32
  %i.mc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.mb) ; 3 uses
  %i.md = icmp sgt i32 %i.mc, 0
  %i.me = icmp slt i32 %i.mc, %.396
  %i.mf = select i1 %i.md, i1 %i.me, i1 false
  br i1 %i.mf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r, %.lr.ph
  %.084159 = phi i32 [ %i.mi, %.lr.ph ], [ %i.mc, %bb.r ]
  %i.mg = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.mh = tail call i32 @fputc(i32 noundef 32, ptr noundef %i.mg) ; 0 uses
  %i.mi = add nuw nsw i32 %.084159, 1             ; 2 uses
  %i.mj = icmp slt i32 %i.mi, %.396
  br i1 %i.mj, label %.lr.ph, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %bb.r
  %i.mk = load ptr, ptr @stdout, align 8, !tbaa !67
  %i.ml = tail call i64 @fwrite(ptr nonnull @.str.5, i64 6, i64 1, ptr %i.mk) ; 0 uses
  %i.mm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef %i.lq) ; 0 uses
  %i.mn = insertelement <2 x i64> poison, i64 %i.lq, i64 0
  %i.mo = insertelement <2 x i64> %i.mn, i64 %i.lr, i64 1
  %i.mp = uitofp <2 x i64> %i.mo to <2 x double>
  %i.mq = fmul nnan <2 x double> %i.mp, splat (double 1.000000e+02)
  %i.mr = fdiv <2 x double> %i.mq, %i.lm
  %i.ms = select <2 x i1> %i.lo, <2 x double> zeroinitializer, <2 x double> %i.mr ; 2 uses
end_hunk_0
