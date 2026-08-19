inline.NumInlined: 29
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@filter_channels_flt:bb.a
._crit_edge.i.us:                                 ; preds = %bb.d, %bb.c
  %i.as = load i32, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !81 ; 3 uses
  store <2 x double> %i.au, ptr %i.af, align 8, !tbaa !81
  %i.av = add nsw i32 %i.ak, 1
  %i.aw = icmp sgt i32 %i.ak, 881998
  %spec.store.select.i.us = select i1 %i.aw, i32 0, i32 %i.av
  store i32 %spec.store.select.i.us, ptr %i.ad, align 8, !tbaa !89
  %i.ax = load double, ptr %i.ag, align 8, !tbaa !71 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 32
  %i.az = load double, ptr %i.ay, align 8, !tbaa !90
  %i.ba = fdiv nsz double 1.000000e+00, %i.az     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !91
  %.not.i.i.us = icmp eq i32 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !92 ; 2 uses
  %i.bf = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.bg = fcmp nsz ole double %i.bf, %i.be
  %i.bh = fcmp nsz oge double %i.bf, %i.be
  %.in.i.i.us = select i1 %.not.i.i.us, i1 %i.bh, i1 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !93
  %i.bm = fdiv nsz double %i.bl, %i.bf            ; 2 uses
  %i.bn = fcmp nsz ogt double %i.bj, %i.bm
  %..i.i.us = select nsz i1 %i.bn, double %i.bm, double %i.bj ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !94 ; 2 uses
  %i.bq = fcmp nsz ogt double %i.bp, f0x3CB0000000000000
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.us
  %i.br = sitofp nsz i32 %i.as to double
  %i.bs = extractelement <2 x double> %i.au, i64 1
  %i.bt = fdiv nsz double %i.bs, %i.br
  %i.bu = tail call nsz double @llvm.sqrt.f64(double %i.bt)
  %i.bv = fdiv nsz double %i.bp, %i.bu            ; 2 uses
  %i.bw = fcmp nsz ogt double %..i.i.us, %i.bv
  %...i.i.us = select nsz i1 %i.bw, double %i.bv, double %..i.i.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.us
  %.0.i.i.us = phi nsz double [ %...i.i.us, %bb.e ], [ %..i.i.us, %._crit_edge.i.us ] ; 4 uses
  br i1 %.not54.i.i.us, label %bb.g, label %next_gain.exit.i.us

bb.g:                                             ; preds = %bb.f
  br i1 %.in.i.i.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !95
  %i.bz = fsub nsz double %i.ax, %i.by            ; 2 uses
  %i.ca = fcmp nsz ogt double %i.ba, %i.bz
  %.55.i.i.us = select nsz i1 %i.ca, double %i.ba, double %i.bz ; 2 uses
  %i.cb = fcmp nsz ogt double %.0.i.i.us, %.55.i.i.us
  br i1 %i.cb, label %bb.i, label %next_gain.exit.i.us

bb.i:                                             ; preds = %bb.h
  br label %next_gain.exit.i.us

bb.j:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !96
  %i.ce = fadd nsz double %i.ax, %i.cd            ; 2 uses
  %i.cf = fcmp nsz ogt double %.0.i.i.us, %i.ce
  %..0.i.i.us = select nsz i1 %i.cf, double %i.ce, double %.0.i.i.us
  br label %next_gain.exit.i.us

next_gain.exit.i.us:                              ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.044.i.i.us = phi nsz double [ 1.000000e+00, %bb.f ], [ %..0.i.i.us, %bb.j ], [ %.55.i.i.us, %bb.i ], [ %.0.i.i.us, %bb.h ] ; 2 uses
  store double %.044.i.i.us, ptr %i.ag, align 8, !tbaa !71
  br label %consume_pi.exit.us

consume_pi.exit.us:                               ; preds = %.consume_pi.exit.us_crit_edge, %next_gain.exit.i.us
  %i.cg = phi double [ %.pre, %.consume_pi.exit.us_crit_edge ], [ %.044.i.i.us, %next_gain.exit.i.us ]
  %i.ch = phi i32 [ %i.ai, %.consume_pi.exit.us_crit_edge ], [ %i.as, %next_gain.exit.i.us ] ; 2 uses
  %i.ci = sub nsw i32 %3, %.04150.us
  %..us = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.ch) ; 3 uses
  %i.cj = fptrunc nsz double %i.cg to float       ; 2 uses
  %i.ck = sub nsw i32 %i.ch, %..us                ; 2 uses
  store i32 %i.ck, ptr %i.ac, align 8, !tbaa !88
  %i.cl = load i32, ptr %i.o, align 8, !tbaa !97
  %.fr = freeze i32 %i.cl
  %.not.us = icmp eq i32 %.fr, 0
  %i.cm = add nsw i32 %..us, %.04150.us           ; 3 uses
  %i.cn = icmp sgt i32 %..us, 0
  %or.cond48.us = select i1 %.not.us, i1 %i.cn, i1 false
  br i1 %or.cond48.us, label %.lr.ph.split.us54.preheader, label %.critedge.loopexit.us

.lr.ph.split.us54:                                ; preds = %.lr.ph.split.us54.preheader66, %.lr.ph.split.us54
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us54 ], [ %indvars.iv.ph, %.lr.ph.split.us54.preheader66 ] ; 3 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.cp = load float, ptr %i.co, align 4, !tbaa !77
  %i.cq = fmul nsz float %i.cp, %i.cj
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv
  store float %i.cq, ptr %i.cr, align 4, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cs, label %.lr.ph.split.us54, label %.critedge.loopexit.us, !llvm.loop !98

.critedge.loopexit.us:                            ; preds = %.lr.ph.split.us54, %middle.block, %consume_pi.exit.us
  %i.ct = icmp slt i32 %i.cm, %3
  br i1 %i.ct, label %bb.b, label %.critedge._crit_edge.us, !llvm.loop !100

.lr.ph.split.us54.preheader:                      ; preds = %consume_pi.exit.us
  %i.cu = sext i32 %.04150.us to i64              ; 5 uses
  %i.cv = sext i32 %i.cm to i64                   ; 2 uses
  %i.cw = add nsw i64 %i.cu, 1
  %i.cx = tail call i64 @llvm.smax.i64(i64 %i.cw, i64 %i.cv)
  %i.cy = sub i64 %i.cx, %i.cu                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 8
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us54.preheader66, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us54.preheader
  %n.vec = and i64 %i.cy, -8                      ; 3 uses
  %i.cz = add i64 %n.vec, %i.cu
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add i64 %index, %i.cu                   ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !77
  %wide.load65 = load <4 x float>, ptr %i.dc, align 4, !tbaa !77
  %i.dd = fmul nsz <4 x float> %wide.load, %broadcast.splat
  %i.de = fmul nsz <4 x float> %wide.load65, %broadcast.splat
  %i.df = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.da ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x float> %i.dd, ptr %i.df, align 4, !tbaa !77
  store <4 x float> %i.de, ptr %i.dg, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.critedge.loopexit.us, label %.lr.ph.split.us54.preheader66

.lr.ph.split.us54.preheader66:                    ; preds = %.lr.ph.split.us54.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cu, %.lr.ph.split.us54.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.split.us54

.critedge._crit_edge.us:                          ; preds = %.critedge.loopexit.us
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.di = load i32, ptr %i.e, align 4, !tbaa !60
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next58, %i.dj
  br i1 %i.dk, label %.lr.ph51.us, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph53.split, %.critedge._crit_edge.us, %bb.a
  ret void

.lr.ph53.split:                                   ; preds = %.lr.ph53, %.lr.ph53.split
  %.04252 = phi i32 [ %i.dn, %.lr.ph53.split ], [ 0, %.lr.ph53 ] ; 2 uses
  %i.dl = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.i, i32 noundef %.04252) #11
  %i.dm = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.m, i32 noundef %i.dl) #11 ; 0 uses
  %i.dn = add nuw nsw i32 %.04252, 1              ; 2 uses
  %i.do = load i32, ptr %i.e, align 4, !tbaa !60
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph53.split, label %._crit_edge, !llvm.loop !103

.split.us:                                        ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 197) #11
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @filter_link_channels_flt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph134, label %._crit_edge135

.lr.ph134:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %.pre = load i32, ptr %i.h, align 4, !tbaa !60
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph134, %._crit_edge
  %i.p = phi i32 [ %.pre, %.lr.ph134 ], [ %i.gr, %._crit_edge ] ; 2 uses
  %.074132 = phi i32 [ 0, %.lr.ph134 ], [ %.pre-phi, %._crit_edge ] ; 7 uses
  %i.q = sub nsw i32 %3, %.074132                 ; 2 uses
  %i.r = load double, ptr %i.g, align 8, !tbaa !68
  %i.s = fptrunc nsz double %i.r to float         ; 2 uses
  %i.t = icmp sgt i32 %i.p, 0
  br i1 %i.t, label %.lr.ph, label %.preheader116.._crit_edge_crit_edge

.preheader117:                                    ; preds = %next_pi.exit
  %i.u = icmp sgt i32 %i.cg, 0
  br i1 %i.u, label %.lr.ph125, label %.preheader116.._crit_edge_crit_edge

.lr.ph125:                                        ; preds = %.preheader117
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.cg to i64
  br label %bb.l

.lr.ph:                                           ; preds = %bb.b, %next_pi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %next_pi.exit ], [ 0, %bb.b ] ; 3 uses
  %.073120 = phi i32 [ %..073, %next_pi.exit ], [ %i.q, %bb.b ]
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw [21168048 x i8], ptr %i.w, i64 %indvars.iv ; 6 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.i, i32 noundef %i.y) #11
  %i.aa = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.k, i32 noundef %i.z) #11 ; 2 uses
  %.lobit = lshr i32 %i.aa, 31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.lobit, ptr %i.ab, align 4, !tbaa !104
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 21168040 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !88 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %next_pi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 21168032 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !89 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.am = icmp sgt i32 %i.al, 0
  %.val.pre.i = load ptr, ptr %i.a, align 8, !tbaa !9 ; 9 uses
  br i1 %i.am, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 124
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !49
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 197) #11
  tail call void @abort() #14
  unreachable

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.ap = load i32, ptr %i.aj, align 8, !tbaa !79 ; 3 uses
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 21168016
  %i.as = load <2 x double>, ptr %i.aq, align 8, !tbaa !81 ; 3 uses
  store <2 x double> %i.as, ptr %i.ar, align 8, !tbaa !81
  %i.at = add nsw i32 %i.ag, 1
  %i.au = icmp sgt i32 %i.ag, 881998
  %spec.store.select.i = select i1 %i.au, i32 0, i32 %i.at
  store i32 %spec.store.select.i, ptr %i.af, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 21168008 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !71 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 32
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !90
  %i.az = fdiv nsz double 1.000000e+00, %i.ay     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 96
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !91
  %.not.i.i = icmp eq i32 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 40
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !92 ; 2 uses
  %i.be = extractelement <2 x double> %i.as, i64 0 ; 3 uses
  %i.bf = fcmp nsz ole double %i.be, %i.bd
  %i.bg = fcmp nsz oge double %i.be, %i.bd
  %.in.i.i = select i1 %.not.i.i, i1 %i.bg, i1 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 24
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !68 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !93
  %i.bl = fdiv nsz double %i.bk, %i.be            ; 2 uses
  %i.bm = fcmp nsz ogt double %i.bi, %i.bl
  %..i.i = select nsz i1 %i.bm, double %i.bl, double %i.bi ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !94 ; 2 uses
  %i.bp = fcmp nsz ogt double %i.bo, f0x3CB0000000000000
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bq = sitofp nsz i32 %i.ap to double
  %i.br = extractelement <2 x double> %i.as, i64 1
  %i.bs = fdiv nsz double %i.br, %i.bq
  %i.bt = tail call nsz double @llvm.sqrt.f64(double %i.bs)
  %i.bu = fdiv nsz double %i.bo, %i.bt            ; 2 uses
  %i.bv = fcmp nsz ogt double %..i.i, %i.bu
  %...i.i = select nsz i1 %i.bv, double %i.bu, double %..i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.0.i.i = phi nsz double [ %...i.i, %bb.f ], [ %..i.i, %._crit_edge.i ] ; 4 uses
  %.not54.i.i = icmp sgt i32 %i.aa, -1
  br i1 %.not54.i.i, label %bb.h, label %next_gain.exit.i

bb.h:                                             ; preds = %bb.g
  br i1 %.in.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 48
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !96
  %i.by = fadd nsz double %i.aw, %i.bx            ; 2 uses
  %i.bz = fcmp nsz ogt double %.0.i.i, %i.by
  %..0.i.i = select nsz i1 %i.bz, double %i.by, double %.0.i.i
  br label %next_gain.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 56
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !95
  %i.cc = fsub nsz double %i.aw, %i.cb            ; 2 uses
  %i.cd = fcmp nsz ogt double %i.az, %i.cc
  %.55.i.i = select nsz i1 %i.cd, double %i.az, double %i.cc ; 2 uses
  %i.ce = fcmp nsz ogt double %.0.i.i, %.55.i.i
  br i1 %i.ce, label %bb.k, label %next_gain.exit.i

bb.k:                                             ; preds = %bb.j
  br label %next_gain.exit.i

next_gain.exit.i:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.044.i.i = phi nsz double [ 1.000000e+00, %bb.g ], [ %..0.i.i, %bb.i ], [ %.55.i.i, %bb.k ], [ %.0.i.i, %bb.j ]
  store double %.044.i.i, ptr %i.av, align 8, !tbaa !71
  br label %next_pi.exit

next_pi.exit:                                     ; preds = %.lr.ph, %next_gain.exit.i
  %i.cf = phi i32 [ %i.ad, %.lr.ph ], [ %i.ap, %next_gain.exit.i ]
  %..073 = tail call i32 @llvm.smin.i32(i32 %.073120, i32 %i.cf) ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i32, ptr %i.h, align 4, !tbaa !60  ; 6 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph, label %.preheader117, !llvm.loop !105

.preheader116.._crit_edge_crit_edge:              ; preds = %bb.b, %.preheader117
  %i.cj = phi i32 [ %i.p, %bb.b ], [ %i.cg, %.preheader117 ]
  %.073.lcssa163167 = phi i32 [ %i.q, %bb.b ], [ %..073, %.preheader117 ]
  %.pre149 = add nsw i32 %.073.lcssa163167, %.074132
  br label %._crit_edge

.lr.ph131:                                        ; preds = %bb.aa
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.cn = add i32 %..073, %.074132                ; 2 uses
  %i.co = icmp sgt i32 %..073, 0
  %i.cp = uitofp nneg i32 %..073 to float         ; 2 uses
  %i.cq = sext i32 %.074132 to i64                ; 5 uses
  %i.cr = sext i32 %i.cn to i64                   ; 2 uses
  %wide.trip.count147 = zext nneg i32 %i.cg to i64
  %i.cs = add nsw i64 %i.cq, 1
  %i.ct = tail call i64 @llvm.smax.i64(i64 %i.cs, i64 %i.cr)
  %i.cu = sub i64 %i.ct, %i.cq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cu, 4
  %n.vec = and i64 %i.cu, -4                      ; 3 uses
  %i.cv = add i64 %n.vec, %i.cq
  %broadcast.splatinsert172 = insertelement <4 x i32> poison, i32 %.074132, i64 0
  %broadcast.splat173 = shufflevector <4 x i32> %broadcast.splatinsert172, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert176 = insertelement <4 x i32> poison, i32 %.074132, i64 0
  %broadcast.splat177 = shufflevector <4 x i32> %broadcast.splatinsert176, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat177, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br label %bb.ab

bb.l:                                             ; preds = %.lr.ph125, %bb.aa
  %indvars.iv138 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next139, %bb.aa ] ; 2 uses
  %.072123 = phi float [ %i.s, %.lr.ph125 ], [ %.1, %bb.aa ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [21168048 x i8], ptr %i.v, i64 %indvars.iv138 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !104
  %.not79 = icmp eq i32 %i.cy, 0
  br i1 %.not79, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.cz = fpext nsz float %.072123 to double      ; 2 uses
  %.val81 = load ptr, ptr %i.a, align 8, !tbaa !9 ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val81, i64 24
  %i.db = load double, ptr %i.da, align 8, !tbaa !68 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 21168008
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !71 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 21168040
  %i.df = load i32, ptr %i.de, align 8, !tbaa !88 ; 3 uses
  %i.dg = fcmp nsz ogt double %i.db, %i.dd
  %i.dh = select nsz i1 %i.dg, double %i.dd, double %i.db ; 4 uses
  %.not1.i = icmp sgt i32 %i.df, %..073
  br i1 %.not1.i, label %min_gain.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 21168036
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 21168032
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !89 ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !76 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val81, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val81, i64 96 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val81, i64 40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val81, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val81, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val81, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val81, i64 48 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %next_gain.exit.i87, %.lr.ph.i
  %.05.i = phi i32 [ %i.dk, %.lr.ph.i ], [ %spec.store.select.i89, %next_gain.exit.i87 ] ; 4 uses
  %.0304.i = phi i32 [ %i.df, %.lr.ph.i ], [ %i.fb, %next_gain.exit.i87 ]
  %.0313.i = phi double [ %i.dd, %.lr.ph.i ], [ %.044.i.i88, %next_gain.exit.i87 ] ; 2 uses
  %.0322.i = phi double [ %i.dh, %.lr.ph.i ], [ %i.fa, %next_gain.exit.i87 ] ; 3 uses
  %i.du = icmp eq i32 %.05.i, %i.dl
  br i1 %i.du, label %min_gain.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = sext i32 %.05.i to i64
  %i.dw = getelementptr inbounds [24 x i8], ptr %i.dm, i64 %i.dv ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !83 ; 3 uses
  %i.dz = load i32, ptr %i.dw, align 8, !tbaa !79 ; 2 uses
  %i.ea = load double, ptr %i.dn, align 8, !tbaa !90
  %i.eb = fdiv nsz double 1.000000e+00, %i.ea     ; 2 uses
  %i.ec = load i32, ptr %i.do, align 8, !tbaa !91
  %.not.i.i82 = icmp eq i32 %i.ec, 0
  %i.ed = load double, ptr %i.dp, align 8, !tbaa !92 ; 2 uses
  %i.ee = fcmp nsz ole double %i.dy, %i.ed
  %i.ef = fcmp nsz oge double %i.dy, %i.ed
  %.in.i.i83 = select i1 %.not.i.i82, i1 %i.ef, i1 %i.ee
  %i.eg = load double, ptr %i.dq, align 8, !tbaa !93
  %i.eh = fdiv nsz double %i.eg, %i.dy            ; 2 uses
  %i.ei = fcmp nsz ogt double %i.db, %i.eh
  %..i.i84 = select nsz i1 %i.ei, double %i.eh, double %i.db ; 3 uses
  %i.ej = load double, ptr %i.dr, align 8, !tbaa !94 ; 2 uses
  %i.ek = fcmp nsz ogt double %i.ej, f0x3CB0000000000000
  br i1 %i.ek, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.em = load double, ptr %i.el, align 8, !tbaa !84
  %i.en = sitofp nsz i32 %i.dz to double
  %i.eo = fdiv nsz double %i.em, %i.en
  %i.ep = tail call nsz double @llvm.sqrt.f64(double %i.eo)
  %i.eq = fdiv nsz double %i.ej, %i.ep            ; 2 uses
  %i.er = fcmp nsz ogt double %..i.i84, %i.eq
  %...i.i93 = select nsz i1 %i.er, double %i.eq, double %..i.i84
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i85 = phi nsz double [ %...i.i93, %bb.p ], [ %..i.i84, %bb.o ] ; 4 uses
  br i1 %.in.i.i83, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.es = load double, ptr %i.dt, align 8, !tbaa !96
  %i.et = fadd nsz double %.0313.i, %i.es         ; 2 uses
  %i.eu = fcmp nsz ogt double %.0.i.i85, %i.et
  %..0.i.i92 = select nsz i1 %i.eu, double %i.et, double %.0.i.i85
  br label %next_gain.exit.i87

bb.s:                                             ; preds = %bb.q
  %i.ev = load double, ptr %i.ds, align 8, !tbaa !95
  %i.ew = fsub nsz double %.0313.i, %i.ev         ; 2 uses
  %i.ex = fcmp nsz ogt double %i.eb, %i.ew
  %.55.i.i86 = select nsz i1 %i.ex, double %i.eb, double %i.ew ; 2 uses
  %i.ey = fcmp nsz ogt double %.0.i.i85, %.55.i.i86
  br i1 %i.ey, label %bb.t, label %next_gain.exit.i87

bb.t:                                             ; preds = %bb.s
  br label %next_gain.exit.i87

next_gain.exit.i87:                               ; preds = %bb.t, %bb.s, %bb.r
  %.044.i.i88 = phi nsz double [ %.0.i.i85, %bb.s ], [ %..0.i.i92, %bb.r ], [ %.55.i.i86, %bb.t ] ; 3 uses
  %i.ez = fcmp nsz ogt double %.0322.i, %.044.i.i88
  %i.fa = select nsz i1 %i.ez, double %.044.i.i88, double %.0322.i ; 2 uses
  %i.fb = add nsw i32 %i.dz, %.0304.i             ; 2 uses
  %i.fc = add nsw i32 %.05.i, 1
  %i.fd = icmp sgt i32 %.05.i, 881998
  %spec.store.select.i89 = select i1 %i.fd, i32 0, i32 %i.fc
  %.not.i90 = icmp sgt i32 %i.fb, %..073
  br i1 %.not.i90, label %min_gain.exit, label %bb.n, !llvm.loop !106

min_gain.exit:                                    ; preds = %bb.n, %next_gain.exit.i87
  %.032.lcssa.i = phi double [ %i.fa, %next_gain.exit.i87 ], [ %.0322.i, %bb.n ]
  %i.fe = fcmp nsz olt double %.032.lcssa.i, %i.cz
  br i1 %i.fe, label %.lr.ph.i95, label %bb.aa

min_gain.exit.thread:                             ; preds = %bb.m
  %i.ff = fcmp nsz olt double %i.dh, %i.cz
  br i1 %i.ff, label %min_gain.exit113, label %bb.aa

.lr.ph.i95:                                       ; preds = %min_gain.exit, %next_gain.exit.i105
  %.05.i96 = phi i32 [ %spec.store.select.i107, %next_gain.exit.i105 ], [ %i.dk, %min_gain.exit ] ; 4 uses
  %.0304.i97 = phi i32 [ %i.gn, %next_gain.exit.i105 ], [ %i.df, %min_gain.exit ]
  %.0313.i98 = phi double [ %.044.i.i106, %next_gain.exit.i105 ], [ %i.dd, %min_gain.exit ] ; 2 uses
  %.0322.i99 = phi double [ %i.gm, %next_gain.exit.i105 ], [ %i.dh, %min_gain.exit ] ; 3 uses
  %i.fg = icmp eq i32 %.05.i96, %i.dl
  br i1 %i.fg, label %min_gain.exit113, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i95
  %i.fh = sext i32 %.05.i96 to i64
  %i.fi = getelementptr inbounds [24 x i8], ptr %i.dm, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !83 ; 3 uses
  %i.fl = load i32, ptr %i.fi, align 8, !tbaa !79 ; 2 uses
  %i.fm = load double, ptr %i.dn, align 8, !tbaa !90
  %i.fn = fdiv nsz double 1.000000e+00, %i.fm     ; 2 uses
  %i.fo = load i32, ptr %i.do, align 8, !tbaa !91
  %.not.i.i100 = icmp eq i32 %i.fo, 0
  %i.fp = load double, ptr %i.dp, align 8, !tbaa !92 ; 2 uses
  %i.fq = fcmp nsz ole double %i.fk, %i.fp
  %i.fr = fcmp nsz oge double %i.fk, %i.fp
  %.in.i.i101 = select i1 %.not.i.i100, i1 %i.fr, i1 %i.fq
  %i.fs = load double, ptr %i.dq, align 8, !tbaa !93
  %i.ft = fdiv nsz double %i.fs, %i.fk            ; 2 uses
  %i.fu = fcmp nsz ogt double %i.db, %i.ft
  %..i.i102 = select nsz i1 %i.fu, double %i.ft, double %i.db ; 3 uses
  %i.fv = load double, ptr %i.dr, align 8, !tbaa !94 ; 2 uses
  %i.fw = fcmp nsz ogt double %i.fv, f0x3CB0000000000000
  br i1 %i.fw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !84
  %i.fz = sitofp nsz i32 %i.fl to double
  %i.ga = fdiv nsz double %i.fy, %i.fz
  %i.gb = tail call nsz double @llvm.sqrt.f64(double %i.ga)
  %i.gc = fdiv nsz double %i.fv, %i.gb            ; 2 uses
  %i.gd = fcmp nsz ogt double %..i.i102, %i.gc
  %...i.i112 = select nsz i1 %i.gd, double %i.gc, double %..i.i102
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i103 = phi nsz double [ %...i.i112, %bb.v ], [ %..i.i102, %bb.u ] ; 4 uses
  br i1 %.in.i.i101, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ge = load double, ptr %i.dt, align 8, !tbaa !96
  %i.gf = fadd nsz double %.0313.i98, %i.ge       ; 2 uses
  %i.gg = fcmp nsz ogt double %.0.i.i103, %i.gf
  %..0.i.i111 = select nsz i1 %i.gg, double %i.gf, double %.0.i.i103
  br label %next_gain.exit.i105

bb.y:                                             ; preds = %bb.w
  %i.gh = load double, ptr %i.ds, align 8, !tbaa !95
  %i.gi = fsub nsz double %.0313.i98, %i.gh       ; 2 uses
  %i.gj = fcmp nsz ogt double %i.fn, %i.gi
  %.55.i.i104 = select nsz i1 %i.gj, double %i.fn, double %i.gi ; 2 uses
  %i.gk = fcmp nsz ogt double %.0.i.i103, %.55.i.i104
  br i1 %i.gk, label %bb.z, label %next_gain.exit.i105

bb.z:                                             ; preds = %bb.y
  br label %next_gain.exit.i105

next_gain.exit.i105:                              ; preds = %bb.z, %bb.y, %bb.x
  %.044.i.i106 = phi nsz double [ %.0.i.i103, %bb.y ], [ %..0.i.i111, %bb.x ], [ %.55.i.i104, %bb.z ] ; 3 uses
  %i.gl = fcmp nsz ogt double %.0322.i99, %.044.i.i106
  %i.gm = select nsz i1 %i.gl, double %.044.i.i106, double %.0322.i99 ; 2 uses
  %i.gn = add nsw i32 %i.fl, %.0304.i97           ; 2 uses
  %i.go = add nsw i32 %.05.i96, 1
  %i.gp = icmp sgt i32 %.05.i96, 881998
  %spec.store.select.i107 = select i1 %i.gp, i32 0, i32 %i.go
  %.not.i108 = icmp sgt i32 %i.gn, %..073
  br i1 %.not.i108, label %min_gain.exit113, label %.lr.ph.i95, !llvm.loop !106

min_gain.exit113:                                 ; preds = %.lr.ph.i95, %next_gain.exit.i105, %min_gain.exit.thread
  %.032.lcssa.i110 = phi double [ %i.dh, %min_gain.exit.thread ], [ %i.gm, %next_gain.exit.i105 ], [ %.0322.i99, %.lr.ph.i95 ]
end_hunk_0
begin_hunk_1_@filter_channels_dbl:bb.a
._crit_edge.i.us:                                 ; preds = %bb.d, %bb.c
  %i.as = load i32, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !81 ; 3 uses
  store <2 x double> %i.au, ptr %i.af, align 8, !tbaa !81
  %i.av = add nsw i32 %i.ak, 1
  %i.aw = icmp sgt i32 %i.ak, 881998
  %spec.store.select.i.us = select i1 %i.aw, i32 0, i32 %i.av
  store i32 %spec.store.select.i.us, ptr %i.ad, align 8, !tbaa !89
  %i.ax = load double, ptr %i.ag, align 8, !tbaa !71 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 32
  %i.az = load double, ptr %i.ay, align 8, !tbaa !90
  %i.ba = fdiv nsz double 1.000000e+00, %i.az     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !91
  %.not.i.i.us = icmp eq i32 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !92 ; 2 uses
  %i.bf = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.bg = fcmp nsz ole double %i.bf, %i.be
  %i.bh = fcmp nsz oge double %i.bf, %i.be
  %.in.i.i.us = select i1 %.not.i.i.us, i1 %i.bh, i1 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !93
  %i.bm = fdiv nsz double %i.bl, %i.bf            ; 2 uses
  %i.bn = fcmp nsz ogt double %i.bj, %i.bm
  %..i.i.us = select nsz i1 %i.bn, double %i.bm, double %i.bj ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !94 ; 2 uses
  %i.bq = fcmp nsz ogt double %i.bp, f0x3CB0000000000000
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.us
  %i.br = sitofp nsz i32 %i.as to double
  %i.bs = extractelement <2 x double> %i.au, i64 1
  %i.bt = fdiv nsz double %i.bs, %i.br
  %i.bu = tail call nsz double @llvm.sqrt.f64(double %i.bt)
  %i.bv = fdiv nsz double %i.bp, %i.bu            ; 2 uses
  %i.bw = fcmp nsz ogt double %..i.i.us, %i.bv
  %...i.i.us = select nsz i1 %i.bw, double %i.bv, double %..i.i.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.us
  %.0.i.i.us = phi nsz double [ %...i.i.us, %bb.e ], [ %..i.i.us, %._crit_edge.i.us ] ; 4 uses
  br i1 %.not54.i.i.us, label %bb.g, label %next_gain.exit.i.us

bb.g:                                             ; preds = %bb.f
  br i1 %.in.i.i.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 56
  %i.by = load double, ptr %i.bx, align 8, !tbaa !95
  %i.bz = fsub nsz double %i.ax, %i.by            ; 2 uses
  %i.ca = fcmp nsz ogt double %i.ba, %i.bz
  %.55.i.i.us = select nsz i1 %i.ca, double %i.ba, double %i.bz ; 2 uses
  %i.cb = fcmp nsz ogt double %.0.i.i.us, %.55.i.i.us
  br i1 %i.cb, label %bb.i, label %next_gain.exit.i.us

bb.i:                                             ; preds = %bb.h
  br label %next_gain.exit.i.us

bb.j:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.pre.i.us, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !96
  %i.ce = fadd nsz double %i.ax, %i.cd            ; 2 uses
  %i.cf = fcmp nsz ogt double %.0.i.i.us, %i.ce
  %..0.i.i.us = select nsz i1 %i.cf, double %i.ce, double %.0.i.i.us
  br label %next_gain.exit.i.us

next_gain.exit.i.us:                              ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.044.i.i.us = phi nsz double [ 1.000000e+00, %bb.f ], [ %..0.i.i.us, %bb.j ], [ %.55.i.i.us, %bb.i ], [ %.0.i.i.us, %bb.h ] ; 2 uses
  store double %.044.i.i.us, ptr %i.ag, align 8, !tbaa !71
  br label %consume_pi.exit.us

consume_pi.exit.us:                               ; preds = %.consume_pi.exit.us_crit_edge, %next_gain.exit.i.us
  %i.cg = phi double [ %.pre, %.consume_pi.exit.us_crit_edge ], [ %.044.i.i.us, %next_gain.exit.i.us ] ; 2 uses
  %i.ch = phi i32 [ %i.ai, %.consume_pi.exit.us_crit_edge ], [ %i.as, %next_gain.exit.i.us ] ; 2 uses
  %i.ci = sub nsw i32 %3, %.04150.us
  %..us = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.ch) ; 3 uses
  %i.cj = sub nsw i32 %i.ch, %..us                ; 2 uses
  store i32 %i.cj, ptr %i.ac, align 8, !tbaa !88
  %i.ck = load i32, ptr %i.o, align 8, !tbaa !97
  %.fr = freeze i32 %i.ck
  %.not.us = icmp eq i32 %.fr, 0
  %i.cl = add nsw i32 %..us, %.04150.us           ; 3 uses
  %i.cm = icmp sgt i32 %..us, 0
  %or.cond48.us = select i1 %.not.us, i1 %i.cm, i1 false
  br i1 %or.cond48.us, label %.lr.ph.split.us54.preheader, label %.critedge.loopexit.us

.lr.ph.split.us54:                                ; preds = %.lr.ph.split.us54.preheader66, %.lr.ph.split.us54
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us54 ], [ %indvars.iv.ph, %.lr.ph.split.us54.preheader66 ] ; 3 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.co = load double, ptr %i.cn, align 8, !tbaa !81
  %i.cp = fmul nsz double %i.cg, %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv
  store double %i.cp, ptr %i.cq, align 8, !tbaa !81
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cr, label %.lr.ph.split.us54, label %.critedge.loopexit.us, !llvm.loop !115

.critedge.loopexit.us:                            ; preds = %.lr.ph.split.us54, %middle.block, %consume_pi.exit.us
  %i.cs = icmp slt i32 %i.cl, %3
  br i1 %i.cs, label %bb.b, label %.critedge._crit_edge.us, !llvm.loop !116

.lr.ph.split.us54.preheader:                      ; preds = %consume_pi.exit.us
  %i.ct = sext i32 %.04150.us to i64              ; 5 uses
  %i.cu = sext i32 %i.cl to i64                   ; 2 uses
  %i.cv = add nsw i64 %i.ct, 1
  %i.cw = tail call i64 @llvm.smax.i64(i64 %i.cv, i64 %i.cu)
  %i.cx = sub i64 %i.cw, %i.ct                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cx, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us54.preheader66, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us54.preheader
  %n.vec = and i64 %i.cx, -4                      ; 3 uses
  %i.cy = add i64 %n.vec, %i.ct
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %index, %i.ct                   ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !81
  %wide.load65 = load <2 x double>, ptr %i.db, align 8, !tbaa !81
  %i.dc = fmul nsz <2 x double> %broadcast.splat, %wide.load
  %i.dd = fmul nsz <2 x double> %broadcast.splat, %wide.load65
  %i.de = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cz ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %i.dc, ptr %i.de, align 8, !tbaa !81
  store <2 x double> %i.dd, ptr %i.df, align 8, !tbaa !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %.critedge.loopexit.us, label %.lr.ph.split.us54.preheader66

.lr.ph.split.us54.preheader66:                    ; preds = %.lr.ph.split.us54.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ct, %.lr.ph.split.us54.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.split.us54

.critedge._crit_edge.us:                          ; preds = %.critedge.loopexit.us
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dh = load i32, ptr %i.e, align 4, !tbaa !60
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next58, %i.di
  br i1 %i.dj, label %.lr.ph51.us, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph53.split, %.critedge._crit_edge.us, %bb.a
  ret void

.lr.ph53.split:                                   ; preds = %.lr.ph53, %.lr.ph53.split
  %.04252 = phi i32 [ %i.dm, %.lr.ph53.split ], [ 0, %.lr.ph53 ] ; 2 uses
  %i.dk = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.i, i32 noundef %.04252) #11
  %i.dl = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.m, i32 noundef %i.dk) #11 ; 0 uses
  %i.dm = add nuw nsw i32 %.04252, 1              ; 2 uses
  %i.dn = load i32, ptr %i.e, align 4, !tbaa !60
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph53.split, label %._crit_edge, !llvm.loop !118

.split.us:                                        ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 197) #11
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @filter_link_channels_dbl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph134, label %._crit_edge135

.lr.ph134:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr i8, ptr %i.f, i64 112      ; 4 uses
  %.pre = load i32, ptr %i.h, align 4, !tbaa !60
  %scevgep171 = getelementptr i8, ptr %i.f, i64 120
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph134, %._crit_edge
  %i.p = phi i32 [ %.pre, %.lr.ph134 ], [ %i.gr, %._crit_edge ] ; 2 uses
  %.074132 = phi i32 [ 0, %.lr.ph134 ], [ %.pre-phi, %._crit_edge ] ; 7 uses
  %i.q = sub nsw i32 %3, %.074132                 ; 2 uses
  %i.r = load double, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  %i.s = icmp sgt i32 %i.p, 0
  br i1 %i.s, label %.lr.ph, label %.preheader116.._crit_edge_crit_edge

.preheader117:                                    ; preds = %next_pi.exit
  %i.t = icmp sgt i32 %i.cf, 0
  br i1 %i.t, label %.lr.ph125, label %.preheader116.._crit_edge_crit_edge

.lr.ph125:                                        ; preds = %.preheader117
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.cf to i64
  br label %bb.l

.lr.ph:                                           ; preds = %bb.b, %next_pi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %next_pi.exit ], [ 0, %bb.b ] ; 3 uses
  %.073120 = phi i32 [ %..073, %next_pi.exit ], [ %i.q, %bb.b ]
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw [21168048 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = tail call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.i, i32 noundef %i.x) #11
  %i.z = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.k, i32 noundef %i.y) #11 ; 2 uses
  %.lobit = lshr i32 %i.z, 31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %.lobit, ptr %i.aa, align 4, !tbaa !104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 21168040 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %next_pi.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 21168032 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !89 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [24 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !82
  %i.al = icmp sgt i32 %i.ak, 0
  %.val.pre.i = load ptr, ptr %i.a, align 8, !tbaa !9 ; 9 uses
  br i1 %i.al, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 124
  %i.an = load i32, ptr %i.am, align 4, !tbaa !49
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 197) #11
  tail call void @abort() #14
  unreachable

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !79 ; 3 uses
  store i32 %i.ao, ptr %i.ab, align 8, !tbaa !88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 21168016
  %i.ar = load <2 x double>, ptr %i.ap, align 8, !tbaa !81 ; 3 uses
  store <2 x double> %i.ar, ptr %i.aq, align 8, !tbaa !81
  %i.as = add nsw i32 %i.af, 1
  %i.at = icmp sgt i32 %i.af, 881998
  %spec.store.select.i = select i1 %i.at, i32 0, i32 %i.as
  store i32 %spec.store.select.i, ptr %i.ae, align 8, !tbaa !89
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 21168008 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !71 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !90
  %i.ay = fdiv nsz double 1.000000e+00, %i.ax     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 96
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !91
  %.not.i.i = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %i.bd = extractelement <2 x double> %i.ar, i64 0 ; 3 uses
  %i.be = fcmp nsz ole double %i.bd, %i.bc
  %i.bf = fcmp nsz oge double %i.bd, %i.bc
  %.in.i.i = select i1 %.not.i.i, i1 %i.bf, i1 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !68 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !93
  %i.bk = fdiv nsz double %i.bj, %i.bd            ; 2 uses
  %i.bl = fcmp nsz ogt double %i.bh, %i.bk
  %..i.i = select nsz i1 %i.bl, double %i.bk, double %i.bh ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !94 ; 2 uses
  %i.bo = fcmp nsz ogt double %i.bn, f0x3CB0000000000000
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bp = sitofp nsz i32 %i.ao to double
  %i.bq = extractelement <2 x double> %i.ar, i64 1
  %i.br = fdiv nsz double %i.bq, %i.bp
  %i.bs = tail call nsz double @llvm.sqrt.f64(double %i.br)
  %i.bt = fdiv nsz double %i.bn, %i.bs            ; 2 uses
  %i.bu = fcmp nsz ogt double %..i.i, %i.bt
  %...i.i = select nsz i1 %i.bu, double %i.bt, double %..i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.0.i.i = phi nsz double [ %...i.i, %bb.f ], [ %..i.i, %._crit_edge.i ] ; 4 uses
  %.not54.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not54.i.i, label %bb.h, label %next_gain.exit.i

bb.h:                                             ; preds = %bb.g
  br i1 %.in.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 48
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !96
  %i.bx = fadd nsz double %i.av, %i.bw            ; 2 uses
  %i.by = fcmp nsz ogt double %.0.i.i, %i.bx
  %..0.i.i = select nsz i1 %i.by, double %i.bx, double %.0.i.i
  br label %next_gain.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.pre.i, i64 56
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !95
  %i.cb = fsub nsz double %i.av, %i.ca            ; 2 uses
  %i.cc = fcmp nsz ogt double %i.ay, %i.cb
  %.55.i.i = select nsz i1 %i.cc, double %i.ay, double %i.cb ; 2 uses
  %i.cd = fcmp nsz ogt double %.0.i.i, %.55.i.i
  br i1 %i.cd, label %bb.k, label %next_gain.exit.i

bb.k:                                             ; preds = %bb.j
  br label %next_gain.exit.i

next_gain.exit.i:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.044.i.i = phi nsz double [ 1.000000e+00, %bb.g ], [ %..0.i.i, %bb.i ], [ %.55.i.i, %bb.k ], [ %.0.i.i, %bb.j ]
  store double %.044.i.i, ptr %i.au, align 8, !tbaa !71
  br label %next_pi.exit

next_pi.exit:                                     ; preds = %.lr.ph, %next_gain.exit.i
  %i.ce = phi i32 [ %i.ac, %.lr.ph ], [ %i.ao, %next_gain.exit.i ]
  %..073 = tail call i32 @llvm.smin.i32(i32 %.073120, i32 %i.ce) ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = load i32, ptr %i.h, align 4, !tbaa !60  ; 6 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %i.ch, label %.lr.ph, label %.preheader117, !llvm.loop !119

.preheader116.._crit_edge_crit_edge:              ; preds = %bb.b, %.preheader117
  %i.ci = phi i32 [ %i.p, %bb.b ], [ %i.cf, %.preheader117 ]
  %.073.lcssa163167 = phi i32 [ %i.q, %bb.b ], [ %..073, %.preheader117 ]
  %.pre149 = add nsw i32 %.073.lcssa163167, %.074132
  br label %._crit_edge

.lr.ph131:                                        ; preds = %min_gain.exit112
  %i.cj = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.cm = add i32 %..073, %.074132                ; 2 uses
  %i.cn = icmp sgt i32 %..073, 0
  %i.co = uitofp nneg i32 %..073 to double        ; 2 uses
  %i.cp = sext i32 %.074132 to i64                ; 8 uses
  %i.cq = sext i32 %i.cm to i64                   ; 3 uses
  %wide.trip.count147 = zext nneg i32 %i.cf to i64
  %i.cr = shl nsw i64 %i.cp, 3                    ; 2 uses
  %i.cs = add nsw i64 %i.cp, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cs, i64 %i.cq)
  %i.ct = shl nsw i64 %smax, 3                    ; 2 uses
  %i.cu = add nsw i64 %i.cp, 1
  %i.cv = tail call i64 @llvm.smax.i64(i64 %i.cu, i64 %i.cq)
  %i.cw = sub i64 %i.cv, %i.cp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 2
  %n.vec = and i64 %i.cw, -2                      ; 3 uses
  %i.cx = add i64 %n.vec, %i.cp
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.074132, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat178 = shufflevector <2 x double> %broadcast.splatinsert177, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <2 x i32> poison, i32 %.074132, i64 0
  %broadcast.splat180 = shufflevector <2 x i32> %broadcast.splatinsert179, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat180, <i32 0, i32 1>
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br label %bb.aa

bb.l:                                             ; preds = %.lr.ph125, %min_gain.exit112
  %indvars.iv138 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next139, %min_gain.exit112 ] ; 2 uses
  %.072123 = phi double [ %i.r, %.lr.ph125 ], [ %.1, %min_gain.exit112 ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [21168048 x i8], ptr %i.u, i64 %indvars.iv138 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !104
  %.not78 = icmp eq i32 %i.da, 0
  br i1 %.not78, label %bb.m, label %min_gain.exit112

bb.m:                                             ; preds = %bb.l
  %.val80 = load ptr, ptr %i.a, align 8, !tbaa !9 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val80, i64 24
  %i.dc = load double, ptr %i.db, align 8, !tbaa !68 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 21168008
  %i.de = load double, ptr %i.dd, align 8, !tbaa !71 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 21168040
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !88 ; 3 uses
  %i.dh = fcmp nsz ogt double %i.dc, %i.de
  %i.di = select nsz i1 %i.dh, double %i.de, double %i.dc ; 4 uses
  %.not1.i = icmp sgt i32 %i.dg, %..073
  br i1 %.not1.i, label %min_gain.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 21168036
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 21168032
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !89 ; 2 uses
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !76 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val80, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val80, i64 96 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val80, i64 40 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val80, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val80, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val80, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val80, i64 48 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %next_gain.exit.i86, %.lr.ph.i
  %.05.i = phi i32 [ %i.dl, %.lr.ph.i ], [ %spec.store.select.i88, %next_gain.exit.i86 ] ; 4 uses
  %.0304.i = phi i32 [ %i.dg, %.lr.ph.i ], [ %i.fc, %next_gain.exit.i86 ]
  %.0313.i = phi double [ %i.de, %.lr.ph.i ], [ %.044.i.i87, %next_gain.exit.i86 ] ; 2 uses
  %.0322.i = phi double [ %i.di, %.lr.ph.i ], [ %i.fb, %next_gain.exit.i86 ] ; 3 uses
  %i.dv = icmp eq i32 %.05.i, %i.dm
  br i1 %i.dv, label %min_gain.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = sext i32 %.05.i to i64
  %i.dx = getelementptr inbounds [24 x i8], ptr %i.dn, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !83 ; 3 uses
  %i.ea = load i32, ptr %i.dx, align 8, !tbaa !79 ; 2 uses
  %i.eb = load double, ptr %i.do, align 8, !tbaa !90
  %i.ec = fdiv nsz double 1.000000e+00, %i.eb     ; 2 uses
  %i.ed = load i32, ptr %i.dp, align 8, !tbaa !91
  %.not.i.i81 = icmp eq i32 %i.ed, 0
  %i.ee = load double, ptr %i.dq, align 8, !tbaa !92 ; 2 uses
  %i.ef = fcmp nsz ole double %i.dz, %i.ee
  %i.eg = fcmp nsz oge double %i.dz, %i.ee
  %.in.i.i82 = select i1 %.not.i.i81, i1 %i.eg, i1 %i.ef
  %i.eh = load double, ptr %i.dr, align 8, !tbaa !93
  %i.ei = fdiv nsz double %i.eh, %i.dz            ; 2 uses
  %i.ej = fcmp nsz ogt double %i.dc, %i.ei
  %..i.i83 = select nsz i1 %i.ej, double %i.ei, double %i.dc ; 3 uses
  %i.ek = load double, ptr %i.ds, align 8, !tbaa !94 ; 2 uses
  %i.el = fcmp nsz ogt double %i.ek, f0x3CB0000000000000
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !84
  %i.eo = sitofp nsz i32 %i.ea to double
  %i.ep = fdiv nsz double %i.en, %i.eo
  %i.eq = tail call nsz double @llvm.sqrt.f64(double %i.ep)
  %i.er = fdiv nsz double %i.ek, %i.eq            ; 2 uses
  %i.es = fcmp nsz ogt double %..i.i83, %i.er
  %...i.i92 = select nsz i1 %i.es, double %i.er, double %..i.i83
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i84 = phi nsz double [ %...i.i92, %bb.p ], [ %..i.i83, %bb.o ] ; 4 uses
  br i1 %.in.i.i82, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.et = load double, ptr %i.du, align 8, !tbaa !96
  %i.eu = fadd nsz double %.0313.i, %i.et         ; 2 uses
  %i.ev = fcmp nsz ogt double %.0.i.i84, %i.eu
  %..0.i.i91 = select nsz i1 %i.ev, double %i.eu, double %.0.i.i84
  br label %next_gain.exit.i86

bb.s:                                             ; preds = %bb.q
  %i.ew = load double, ptr %i.dt, align 8, !tbaa !95
  %i.ex = fsub nsz double %.0313.i, %i.ew         ; 2 uses
  %i.ey = fcmp nsz ogt double %i.ec, %i.ex
  %.55.i.i85 = select nsz i1 %i.ey, double %i.ec, double %i.ex ; 2 uses
  %i.ez = fcmp nsz ogt double %.0.i.i84, %.55.i.i85
  br i1 %i.ez, label %bb.t, label %next_gain.exit.i86

bb.t:                                             ; preds = %bb.s
  br label %next_gain.exit.i86

next_gain.exit.i86:                               ; preds = %bb.t, %bb.s, %bb.r
  %.044.i.i87 = phi nsz double [ %.0.i.i84, %bb.s ], [ %..0.i.i91, %bb.r ], [ %.55.i.i85, %bb.t ] ; 3 uses
  %i.fa = fcmp nsz ogt double %.0322.i, %.044.i.i87
  %i.fb = select nsz i1 %i.fa, double %.044.i.i87, double %.0322.i ; 2 uses
  %i.fc = add nsw i32 %i.ea, %.0304.i             ; 2 uses
  %i.fd = add nsw i32 %.05.i, 1
  %i.fe = icmp sgt i32 %.05.i, 881998
  %spec.store.select.i88 = select i1 %i.fe, i32 0, i32 %i.fd
  %.not.i89 = icmp sgt i32 %i.fc, %..073
  br i1 %.not.i89, label %min_gain.exit, label %bb.n, !llvm.loop !106

min_gain.exit:                                    ; preds = %bb.n, %next_gain.exit.i86
  %.032.lcssa.i = phi double [ %i.fb, %next_gain.exit.i86 ], [ %.0322.i, %bb.n ]
  %i.ff = fcmp nsz ule double %.072123, %.032.lcssa.i
  br i1 %i.ff, label %min_gain.exit112, label %.lr.ph.i94

min_gain.exit.thread:                             ; preds = %bb.m
  %i.fg = fcmp nsz ogt double %.072123, %i.di
  br i1 %i.fg, label %.thread, label %min_gain.exit112

.thread:                                          ; preds = %min_gain.exit.thread
  br label %min_gain.exit112

.lr.ph.i94:                                       ; preds = %min_gain.exit, %next_gain.exit.i104
  %.05.i95 = phi i32 [ %spec.store.select.i106, %next_gain.exit.i104 ], [ %i.dl, %min_gain.exit ] ; 4 uses
  %.0304.i96 = phi i32 [ %i.go, %next_gain.exit.i104 ], [ %i.dg, %min_gain.exit ]
  %.0313.i97 = phi double [ %.044.i.i105, %next_gain.exit.i104 ], [ %i.de, %min_gain.exit ] ; 2 uses
  %.0322.i98 = phi double [ %i.gn, %next_gain.exit.i104 ], [ %i.di, %min_gain.exit ] ; 3 uses
  %i.fh = icmp eq i32 %.05.i95, %i.dm
  br i1 %i.fh, label %min_gain.exit112, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i94
  %i.fi = sext i32 %.05.i95 to i64
  %i.fj = getelementptr inbounds [24 x i8], ptr %i.dn, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !83 ; 3 uses
  %i.fm = load i32, ptr %i.fj, align 8, !tbaa !79 ; 2 uses
  %i.fn = load double, ptr %i.do, align 8, !tbaa !90
  %i.fo = fdiv nsz double 1.000000e+00, %i.fn     ; 2 uses
  %i.fp = load i32, ptr %i.dp, align 8, !tbaa !91
  %.not.i.i99 = icmp eq i32 %i.fp, 0
  %i.fq = load double, ptr %i.dq, align 8, !tbaa !92 ; 2 uses
  %i.fr = fcmp nsz ole double %i.fl, %i.fq
  %i.fs = fcmp nsz oge double %i.fl, %i.fq
  %.in.i.i100 = select i1 %.not.i.i99, i1 %i.fs, i1 %i.fr
  %i.ft = load double, ptr %i.dr, align 8, !tbaa !93
  %i.fu = fdiv nsz double %i.ft, %i.fl            ; 2 uses
  %i.fv = fcmp nsz ogt double %i.dc, %i.fu
  %..i.i101 = select nsz i1 %i.fv, double %i.fu, double %i.dc ; 3 uses
  %i.fw = load double, ptr %i.ds, align 8, !tbaa !94 ; 2 uses
  %i.fx = fcmp nsz ogt double %i.fw, f0x3CB0000000000000
  br i1 %i.fx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !84
  %i.ga = sitofp nsz i32 %i.fm to double
  %i.gb = fdiv nsz double %i.fz, %i.ga
  %i.gc = tail call nsz double @llvm.sqrt.f64(double %i.gb)
  %i.gd = fdiv nsz double %i.fw, %i.gc            ; 2 uses
  %i.ge = fcmp nsz ogt double %..i.i101, %i.gd
  %...i.i111 = select nsz i1 %i.ge, double %i.gd, double %..i.i101
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i102 = phi nsz double [ %...i.i111, %bb.v ], [ %..i.i101, %bb.u ] ; 4 uses
  br i1 %.in.i.i100, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gf = load double, ptr %i.du, align 8, !tbaa !96
  %i.gg = fadd nsz double %.0313.i97, %i.gf       ; 2 uses
  %i.gh = fcmp nsz ogt double %.0.i.i102, %i.gg
  %..0.i.i110 = select nsz i1 %i.gh, double %i.gg, double %.0.i.i102
  br label %next_gain.exit.i104

bb.y:                                             ; preds = %bb.w
  %i.gi = load double, ptr %i.dt, align 8, !tbaa !95
  %i.gj = fsub nsz double %.0313.i97, %i.gi       ; 2 uses
  %i.gk = fcmp nsz ogt double %i.fo, %i.gj
  %.55.i.i103 = select nsz i1 %i.gk, double %i.fo, double %i.gj ; 2 uses
  %i.gl = fcmp nsz ogt double %.0.i.i102, %.55.i.i103
  br i1 %i.gl, label %bb.z, label %next_gain.exit.i104

bb.z:                                             ; preds = %bb.y
  br label %next_gain.exit.i104

next_gain.exit.i104:                              ; preds = %bb.z, %bb.y, %bb.x
  %.044.i.i105 = phi nsz double [ %.0.i.i102, %bb.y ], [ %..0.i.i110, %bb.x ], [ %.55.i.i103, %bb.z ] ; 3 uses
  %i.gm = fcmp nsz ogt double %.0322.i98, %.044.i.i105
  %i.gn = select nsz i1 %i.gm, double %.044.i.i105, double %.0322.i98 ; 2 uses
  %i.go = add nsw i32 %i.fm, %.0304.i96           ; 2 uses
  %i.gp = add nsw i32 %.05.i95, 1
  %i.gq = icmp sgt i32 %.05.i95, 881998
  %spec.store.select.i106 = select i1 %i.gq, i32 0, i32 %i.gp
  %.not.i107 = icmp sgt i32 %i.go, %..073
  br i1 %.not.i107, label %min_gain.exit112, label %.lr.ph.i94, !llvm.loop !106

end_hunk_1
