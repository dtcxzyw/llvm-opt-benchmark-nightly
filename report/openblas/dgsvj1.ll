begin_hunk_0_@dgsvj1_:bb.a
.sink.split:                                      ; preds = %bb.p
  %.mux = select i1 %i.u, ptr %2, ptr %8
  %i.as = load i32, ptr %.mux, align 4, !tbaa !8
  store i32 %i.as, ptr %i.j, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.sink.split
  %i.at = tail call double @sqrt(double noundef %i.al) #5 ; 3 uses
  %i.au = load double, ptr %12, align 8, !tbaa !9 ; 3 uses
  %i.av = tail call double @sqrt(double noundef %i.au) #5 ; 4 uses
  %i.aw = fdiv double %i.au, %i.al                ; 4 uses
  %i.ax = fdiv double 1.000000e+00, %i.au
  %i.ay = fdiv double 1.000000e+00, %i.av         ; 3 uses
  %i.az = load i32, ptr %1, align 4, !tbaa !8
  %i.ba = load i32, ptr %2, align 4, !tbaa !8
  %i.bb = mul nsw i32 %i.ba, %i.az                ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %cdce.call, label %cdce.end, !prof !11

cdce.call:                                        ; preds = %bb.q
  %i.bd = sitofp i32 %i.bb to double
  %i.be = tail call double @sqrt(double noundef %i.bd) #5 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.q, %cdce.call
  %i.bf = fdiv double 1.000000e+00, %i.at
  %i.bg = tail call double @sqrt(double noundef %i.ak) #5
  %i.bh = load i32, ptr %3, align 4, !tbaa !8     ; 4 uses
  %i.bi = load i32, ptr %2, align 4, !tbaa !8     ; 5 uses
  %i.bj = sub nsw i32 %i.bi, %i.bh                ; 3 uses
  %i.bk = mul nsw i32 %i.bj, %i.bh                ; 2 uses
  store double 0.000000e+00, ptr %i.i, align 16, !tbaa !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 8) ; 15 uses
  %i.bl = sdiv i32 %i.bh, %spec.select            ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %spec.select
  %.not794 = icmp ne i32 %i.bm, %i.bh
  %i.bn = zext i1 %.not794 to i32
  %.0763 = add nsw i32 %i.bl, %i.bn               ; 4 uses
  %i.bo = mul nsw i32 %spec.select, %spec.select
  %i.bp = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 5)
  %i.bq = load i32, ptr %14, align 4, !tbaa !8    ; 4 uses
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !8
  %.not796918 = icmp slt i32 %i.bq, 1
  br i1 %.not796918, label %._crit_edge922, label %.lr.ph921

.lr.ph921:                                        ; preds = %cdce.end
  %i.br = sdiv i32 %i.bj, %spec.select            ; 2 uses
  %i.bs = mul nsw i32 %i.br, %spec.select
  %.not795 = icmp ne i32 %i.bs, %i.bj
  %i.bt = zext i1 %.not795 to i32
  %.0765 = add i32 %i.br, %i.bt                   ; 2 uses
  %.not802884 = icmp slt i32 %.0765, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bv = sext i32 %i.m to i64                    ; 14 uses
  %i.bw = sext i32 %i.p to i64                    ; 7 uses
  %i.bx = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 8)
  %smin = sext i32 %i.bx to i64                   ; 2 uses
  %.not797902 = icmp slt i32 %.0763, 1
  %i.by = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph921, %bb.cf
  %i.ca = phi i32 [ %i.bi, %.lr.ph921 ], [ %i.tc, %bb.cf ] ; 4 uses
  %.0745920 = phi i32 [ 0, %.lr.ph921 ], [ %.1746, %bb.cf ] ; 3 uses
  %.0760919 = phi i32 [ 1, %.lr.ph921 ], [ %i.tu, %bb.cf ] ; 6 uses
  store i32 %.0763, ptr %i.b, align 4, !tbaa !8
  br i1 %.not797902, label %._crit_edge910, label %.lr.ph909

.lr.ph909:                                        ; preds = %bb.r
  %.not809 = icmp samesign ule i32 %.0760919, %.0745920 ; 2 uses
  br i1 %.not802884, label %.loopexit832.us, label %.lr.ph891

.loopexit832.us:                                  ; preds = %.lr.ph909, %bb.s
  %indvar1036 = phi i64 [ %indvar.next1037, %bb.s ], [ 0, %.lr.ph909 ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %bb.s ], [ 0, %.lr.ph909 ] ; 2 uses
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %bb.s ], [ 0, %.lr.ph909 ] ; 6 uses
  %.0907.us = phi i32 [ %i.ds, %bb.s ], [ 1, %.lr.ph909 ] ; 4 uses
  %i.cb = add i32 %indvar, 1
  %i.cc = mul i32 %spec.select, %i.cb
  %i.cd = call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.cc)
  %smin1035 = sext i32 %i.cd to i64
  %i.ce = mul i64 %indvar1036, %smin
  %i.cf = sub i64 %smin1035, %i.ce                ; 7 uses
  %i.cg = add nsw i32 %.0907.us, -1
  %i.ch = mul nsw i32 %i.cg, %spec.select
  %i.ci = mul i32 %.0907.us, %spec.select
  %.822.us = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.ca) ; 2 uses
  %.not812896.us.not = icmp slt i32 %i.ch, %.822.us
  br i1 %.not812896.us.not, label %iter.check, label %bb.s

iter.check:                                       ; preds = %.loopexit832.us
  %i.cj = sext i32 %.822.us to i64
  %min.iters.check = icmp ult i64 %i.cf, 4
  br i1 %min.iters.check, label %.lr.ph899.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1038 = icmp ult i64 %i.cf, 16
  br i1 %min.iters.check1038, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.cf, 12
  %n.vec = and i64 %i.cf, -16                     ; 4 uses
  %i.cl = add i64 %indvars.iv954, %n.vec
  %i.cm = getelementptr [8 x i8], ptr %7, i64 %indvars.iv954
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %index ; 5 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 32     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 64     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 96     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.cn, align 8, !tbaa !9 ; 3 uses
  %wide.load1039 = load <4 x double>, ptr %i.co, align 8, !tbaa !9 ; 3 uses
  %wide.load1040 = load <4 x double>, ptr %i.cp, align 8, !tbaa !9 ; 3 uses
  %wide.load1041 = load <4 x double>, ptr %i.cq, align 8, !tbaa !9 ; 4 uses
  %i.cr = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.cs = fcmp oge <4 x double> %wide.load1039, zeroinitializer
  %i.ct = fcmp oge <4 x double> %wide.load1040, zeroinitializer
  %i.cu = fcmp oge <4 x double> %wide.load1041, zeroinitializer
  %i.cv = fneg <4 x double> %wide.load
  %i.cw = fneg <4 x double> %wide.load1039
  %i.cx = fneg <4 x double> %wide.load1040
  %i.cy = fneg <4 x double> %wide.load1041
  %i.cz = select <4 x i1> %i.cr, <4 x double> %wide.load, <4 x double> %i.cv
  %i.da = select <4 x i1> %i.cs, <4 x double> %wide.load1039, <4 x double> %i.cw
  %i.db = select <4 x i1> %i.ct, <4 x double> %wide.load1040, <4 x double> %i.cx
  %i.dc = select <4 x i1> %i.cu, <4 x double> %wide.load1041, <4 x double> %i.cy
  store <4 x double> %i.cz, ptr %i.cn, align 8, !tbaa !9
  store <4 x double> %i.da, ptr %i.co, align 8, !tbaa !9
  store <4 x double> %i.db, ptr %i.cp, align 8, !tbaa !9
  store <4 x double> %i.dc, ptr %i.cq, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %i.de = extractelement <4 x double> %wide.load1041, i64 3
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %._crit_edge900.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph899.us.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1042 = and i64 %i.cf, -4                  ; 3 uses
  %i.df = add i64 %indvars.iv954, %n.vec1042
  %i.dg = getelementptr [8 x i8], ptr %7, i64 %indvars.iv954
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1043 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1045, %vec.epilog.vector.body ] ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %index1043 ; 2 uses
  %wide.load1044 = load <4 x double>, ptr %i.dh, align 8, !tbaa !9 ; 4 uses
  %i.di = fcmp oge <4 x double> %wide.load1044, zeroinitializer
  %i.dj = fneg <4 x double> %wide.load1044
  %i.dk = select <4 x i1> %i.di, <4 x double> %wide.load1044, <4 x double> %i.dj
  store <4 x double> %i.dk, ptr %i.dh, align 8, !tbaa !9
  %index.next1045 = add nuw i64 %index1043, 4     ; 2 uses
  %i.dl = icmp eq i64 %index.next1045, %n.vec1042
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dm = extractelement <4 x double> %wide.load1044, i64 3
  %cmp.n1046 = icmp eq i64 %i.cf, %n.vec1042
  br i1 %cmp.n1046, label %._crit_edge900.us, label %.lr.ph899.us.preheader

.lr.ph899.us.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv956.ph = phi i64 [ %indvars.iv954, %iter.check ], [ %i.cl, %vec.epilog.iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %.lr.ph899.us

.lr.ph899.us:                                     ; preds = %.lr.ph899.us.preheader, %.lr.ph899.us
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %.lr.ph899.us ], [ %indvars.iv956.ph, %.lr.ph899.us.preheader ] ; 2 uses
  %indvars.iv.next957 = add nsw i64 %indvars.iv956, 1 ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %7, i64 %indvars.iv956 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !9 ; 4 uses
  %i.dp = fcmp oge double %i.do, 0.000000e+00
  %i.dq = fneg double %i.do
  %i.dr = select i1 %i.dp, double %i.do, double %i.dq
  store double %i.dr, ptr %i.dn, align 8, !tbaa !9
  %.not812.us.not = icmp slt i64 %indvars.iv.next957, %i.cj
  br i1 %.not812.us.not, label %.lr.ph899.us, label %._crit_edge900.us, !llvm.loop !18

bb.s:                                             ; preds = %._crit_edge900.us, %.loopexit832.us
  %i.ds = add nuw i32 %.0907.us, 1
  %indvars.iv.next955 = add nsw i64 %indvars.iv954, %smin
  %exitcond958.not = icmp eq i32 %.0907.us, %.0763
  %indvar.next = add i32 %indvar, 1
  %indvar.next1037 = add i64 %indvar1036, 1
  br i1 %exitcond958.not, label %._crit_edge910, label %.loopexit832.us, !llvm.loop !19

._crit_edge900.us:                                ; preds = %.lr.ph899.us, %vec.epilog.middle.block, %middle.block
  %.lcssa1034 = phi double [ %i.dm, %vec.epilog.middle.block ], [ %i.de, %middle.block ], [ %i.do, %.lr.ph899.us ]
  store double %.lcssa1034, ptr %i.c, align 8, !tbaa !9
  br label %bb.s

.lr.ph891:                                        ; preds = %.lr.ph909, %bb.by
  %indvars.iv946 = phi i32 [ %indvars.iv.next947, %bb.by ], [ 1, %.lr.ph909 ] ; 3 uses
  %.0907 = phi i32 [ %i.si, %bb.by ], [ 1, %.lr.ph909 ] ; 4 uses
  %.0718906 = phi i32 [ %.7, %bb.by ], [ 0, %.lr.ph909 ]
  %.0719905 = phi i32 [ %.8, %bb.by ], [ 0, %.lr.ph909 ]
  %.0727904 = phi double [ %.8735, %bb.by ], [ 0.000000e+00, %.lr.ph909 ]
  %.0737903 = phi double [ %.7744, %bb.by ], [ 0.000000e+00, %.lr.ph909 ]
  %18 = sext i32 %indvars.iv946 to i64            ; 2 uses
  %i.dt = sext i32 %indvars.iv946 to i64          ; 6 uses
  %i.du = add nsw i32 %.0907, -1
  %i.dv = mul nsw i32 %i.du, %spec.select         ; 2 uses
  %i.dw = mul i32 %.0907, %spec.select            ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph891, %._crit_edge
  %indvars.iv = phi i32 [ 0, %.lr.ph891 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0717889 = phi i32 [ 1, %.lr.ph891 ], [ %i.qz, %._crit_edge ] ; 3 uses
  %.1888 = phi i32 [ %.0718906, %.lr.ph891 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.1720887 = phi i32 [ %.0719905, %.lr.ph891 ], [ %.2721.lcssa, %._crit_edge ] ; 2 uses
  %.1728886 = phi double [ %.0727904, %.lr.ph891 ], [ %.2729.lcssa, %._crit_edge ] ; 2 uses
  %.1738885 = phi double [ %.0737903, %.lr.ph891 ], [ %.2739.lcssa, %._crit_edge ] ; 2 uses
  %i.dx = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.dy = add nsw i32 %.0717889, -1
  %i.dz = mul nsw i32 %i.dy, %spec.select
  %i.ea = add nsw i32 %i.dx, %i.dz                ; 3 uses
  %. = call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dx) ; 2 uses
  %.not804870.not = icmp slt i32 %i.dv, %.
  br i1 %.not804870.not, label %.lr.ph879, label %._crit_edge

.lr.ph879:                                        ; preds = %bb.t
  %i.eb = add i32 %i.ea, %spec.select             ; 2 uses
  %i.ec = add i32 %i.dx, %indvars.iv
  %i.ed = sext i32 %i.ec to i64
  %i.ee = sext i32 %. to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph879, %bb.bx
  %indvars.iv948 = phi i64 [ %i.dt, %.lr.ph879 ], [ %indvars.iv.next949, %bb.bx ] ; 6 uses
  %.2878 = phi i32 [ %.1888, %.lr.ph879 ], [ %.6, %bb.bx ] ; 4 uses
  %.2721877 = phi i32 [ %.1720887, %.lr.ph879 ], [ %.7726, %bb.bx ] ; 4 uses
  %.2729876 = phi double [ %.1728886, %.lr.ph879 ], [ %.7734, %bb.bx ] ; 4 uses
  %.2739875 = phi double [ %.1738885, %.lr.ph879 ], [ %.6743, %bb.bx ] ; 4 uses
  %.0747874 = phi i32 [ 0, %.lr.ph879 ], [ %.4751, %bb.bx ] ; 4 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv948 ; 5 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !9 ; 5 uses
  store double %i.eg, ptr %i.d, align 8, !tbaa !9
  %i.eh = fcmp ogt double %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.v, label %bb.bt

bb.v:                                             ; preds = %bb.u
  %i.ei = load i32, ptr %2, align 4, !tbaa !8
  %.814 = call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.ei) ; 2 uses
  %.not807856.not = icmp slt i32 %i.ea, %.814
  br i1 %.not807856.not, label %.lr.ph, label %.loopexit831

.lr.ph:                                           ; preds = %bb.v
  %i.ej = mul nsw i64 %indvars.iv948, %i.bv
  %i.ek = getelementptr [8 x i8], ptr %i.o, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 8      ; 20 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv948 ; 18 uses
  %i.en = mul nsw i64 %indvars.iv948, %i.bw
  %i.eo = getelementptr [8 x i8], ptr %i.r, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 8      ; 10 uses
  %i.eq = sext i32 %.814 to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.br
  %.not807.not = icmp slt i64 %indvars.iv.next944, %i.eq
  br i1 %.not807.not, label %bb.x, label %.loopexit831.loopexit, !llvm.loop !20

bb.x:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv943 = phi i64 [ %i.ed, %.lr.ph ], [ %indvars.iv.next944, %bb.w ] ; 10 uses
  %.3865 = phi i32 [ %.2878, %.lr.ph ], [ %.4, %bb.w ] ; 3 uses
  %.3722864 = phi i32 [ %.2721877, %.lr.ph ], [ %.4723, %bb.w ] ; 2 uses
  %.3730863 = phi double [ %.2729876, %.lr.ph ], [ %.5732, %bb.w ] ; 10 uses
  %.3740862 = phi double [ %.2739875, %.lr.ph ], [ %.4741, %bb.w ] ; 4 uses
  %.1748861 = phi i32 [ %.0747874, %.lr.ph ], [ %.2749, %bb.w ] ; 4 uses
  %.0761857 = phi i32 [ 0, %.lr.ph ], [ %.1762, %bb.w ] ; 2 uses
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, 1 ; 21 uses
  %i.er = getelementptr [8 x i8], ptr %7, i64 %indvars.iv943 ; 6 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !9 ; 9 uses
  store double %i.es, ptr %i.e, align 8, !tbaa !9
  %i.et = fcmp ogt double %i.es, 0.000000e+00
  br i1 %i.et, label %bb.y, label %bb.bo

bb.y:                                             ; preds = %bb.x
  %i.eu = load double, ptr %i.d, align 8, !tbaa !9 ; 8 uses
  %i.ev = fcmp ult double %i.es, 1.000000e+00
  %i.ew = fcmp ult double %i.eu, %i.es            ; 2 uses
  br i1 %i.ev, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = fmul double %i.aw, %i.eu
  %i.ey = fcmp ole double %i.ex, %i.es
  %i.ez = fmul double %i.aw, %i.es
  %i.fa = fcmp ole double %i.ez, %i.eu
  %.0752.in = select i1 %i.ew, i1 %i.fa, i1 %i.ey ; 2 uses
  %i.fb = fdiv double %i.ax, %i.es
  %i.fc = fcmp olt double %i.eu, %i.fb
  %i.fd = getelementptr [8 x i8], ptr %6, i64 %indvars.iv943 ; 2 uses
  br i1 %i.fc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fe = mul nsw i64 %indvars.iv.next944, %i.bv
  %i.ff = getelementptr [8 x i8], ptr %i.o, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %i.fh = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.el, ptr noundef nonnull @c__1, ptr noundef %i.fg, ptr noundef nonnull @c__1) #5
  %i.fi = load double, ptr %i.em, align 8, !tbaa !9
  %i.fj = fmul double %i.fh, %i.fi
  %i.fk = load double, ptr %i.fd, align 8, !tbaa !9
  %i.fl = fmul double %i.fj, %i.fk
  %i.fm = load double, ptr %i.e, align 8, !tbaa !9
  %i.fn = fdiv double %i.fl, %i.fm
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.el, ptr noundef nonnull @c__1, ptr noundef %15, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.em, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  %i.fo = mul nsw i64 %indvars.iv.next944, %i.bv
  %i.fp = getelementptr [8 x i8], ptr %i.o, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %i.fr = call double @ddot_(ptr noundef nonnull %1, ptr noundef %15, ptr noundef nonnull @c__1, ptr noundef %i.fq, ptr noundef nonnull @c__1) #5
  %i.fs = load double, ptr %i.fd, align 8, !tbaa !9
  %i.ft = fmul double %i.fr, %i.fs
  br label %bb.af

bb.ac:                                            ; preds = %bb.y
  %i.fu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.eu, i64 1 ; 2 uses
  %i.fw = fdiv <2 x double> %i.fv, %i.bz
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = fcmp ole <2 x double> %i.fx, %i.fw      ; 2 uses
  %i.fz = extractelement <2 x i1> %i.fy, i64 0
  %i.ga = extractelement <2 x i1> %i.fy, i64 1
  %.1753.in = select i1 %i.ew, i1 %i.ga, i1 %i.fz ; 2 uses
  %i.gb = fdiv double %i.aw, %i.es
  %i.gc = fcmp ogt double %i.eu, %i.gb
  %i.gd = mul nsw i64 %indvars.iv.next944, %i.bv
  %i.ge = getelementptr [8 x i8], ptr %i.o, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 8      ; 2 uses
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gg = call double @ddot_(ptr noundef nonnull %1, ptr noundef %i.el, ptr noundef nonnull @c__1, ptr noundef %i.gf, ptr noundef nonnull @c__1) #5
  %i.gh = load double, ptr %i.em, align 8, !tbaa !9
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv943
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !9
  %i.gl = fmul double %i.gi, %i.gk
  %i.gm = load double, ptr %i.e, align 8, !tbaa !9
  %i.gn = fdiv double %i.gl, %i.gm
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.gf, ptr noundef nonnull @c__1, ptr noundef %15, ptr noundef nonnull @c__1) #5
  %i.go = getelementptr [8 x i8], ptr %6, i64 %indvars.iv943
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.go, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  %i.gp = call double @ddot_(ptr noundef nonnull %1, ptr noundef %15, ptr noundef nonnull @c__1, ptr noundef %i.el, ptr noundef nonnull @c__1) #5
  %i.gq = load double, ptr %i.em, align 8, !tbaa !9
  %i.gr = fmul double %i.gp, %i.gq
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.aa, %bb.ab
  %.sink1000 = phi ptr [ %i.d, %bb.ad ], [ %i.d, %bb.ae ], [ %i.d, %bb.aa ], [ %i.e, %bb.ab ]
  %.sink998 = phi double [ %i.gn, %bb.ad ], [ %i.gr, %bb.ae ], [ %i.fn, %bb.aa ], [ %i.ft, %bb.ab ]
  %.2754.in = phi i1 [ %.1753.in, %bb.ad ], [ %.1753.in, %bb.ae ], [ %.0752.in, %bb.aa ], [ %.0752.in, %bb.ab ]
  %i.gs = load double, ptr %.sink1000, align 8, !tbaa !9
  %i.gt = fdiv double %.sink998, %i.gs            ; 9 uses
  store double %.3740862, ptr %i.c, align 8, !tbaa !9
  %i.gu = fcmp oge double %i.gt, 0.000000e+00     ; 2 uses
  %i.gv = fneg double %i.gt                       ; 4 uses
  %i.gw = select i1 %i.gu, double %i.gt, double %i.gv ; 3 uses
  %i.gx = fcmp oge double %.3740862, %i.gw
  %i.gy = select i1 %i.gx, double %.3740862, double %i.gw ; 3 uses
  %i.gz = load double, ptr %13, align 8, !tbaa !9
  %i.ha = fcmp ogt double %i.gw, %i.gz
  br i1 %i.ha, label %bb.ag, label %bb.bn

bb.ag:                                            ; preds = %bb.af
  %i.hb = add nsw i32 %.3865, 1                   ; 2 uses
  br i1 %.2754.in, label %bb.ah, label %bb.bb

bb.ah:                                            ; preds = %bb.ag
  %i.hc = load double, ptr %i.e, align 8, !tbaa !9 ; 4 uses
  %i.hd = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.he = fdiv double %i.hc, %i.hd                ; 3 uses
  %i.hf = fdiv double %i.hd, %i.hc                ; 3 uses
  %i.hg = fsub double %i.he, %i.hf                ; 4 uses
  store double %i.hg, ptr %i.c, align 8, !tbaa !9
  %i.hh = fcmp oge double %i.hg, 0.000000e+00
  %i.hi = fneg double %i.hg
  %i.hj = select i1 %i.hh, double %i.hg, double %i.hi
  %i.hk = fmul double %i.hj, -5.000000e-01
  %i.hl = fdiv double %i.hk, %i.gt                ; 3 uses
  %i.hm = fcmp ogt double %i.hc, %i.eu            ; 2 uses
  %i.hn = fneg double %i.hl
  %.0755 = select i1 %i.hm, double %i.hn, double %i.hl ; 4 uses
  %i.ho = call double @llvm.fabs.f64(double %i.hl)
  %i.hp = fcmp ogt double %i.ho, %i.bf
  br i1 %i.hp, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.hq = fdiv double 5.000000e-01, %.0755        ; 3 uses
  store double %i.hq, ptr %i.h, align 8, !tbaa !9
  %i.hr = load double, ptr %i.em, align 8, !tbaa !9 ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %6, i64 %indvars.iv943
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !9 ; 2 uses
  %i.hu = fneg double %i.hq
  %i.hv = insertelement <2 x double> poison, double %i.hq, i64 0
end_hunk_0
begin_hunk_1_@dgsvj1_:bb.a
  %i.ou = fmul double %i.ot, %i.gv
  %i.ov = load double, ptr %i.em, align 8, !tbaa !9
  %i.ow = fdiv double %i.ou, %i.ov
  store double %i.ow, ptr %i.g, align 8, !tbaa !9
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef %15, ptr noundef nonnull @c__1, ptr noundef %i.el, ptr noundef nonnull @c__1) #5
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull @c_b35, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %i.el, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #5
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !9
  %i.ox = load double, ptr %i.d, align 8, !tbaa !9
  %i.oy = call double @sqrt(double noundef %i.oc) #5
  %i.oz = fmul double %i.ox, %i.oy
  store double %i.oz, ptr %i.ef, align 8, !tbaa !9
  %i.pa = load double, ptr %12, align 8, !tbaa !9 ; 2 uses
  %.inv = fcmp oge double %.3730863, %i.pa
  %..3730815 = select i1 %.inv, double %.3730863, double %i.pa
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.ak, %bb.av, %bb.az, %bb.ba, %bb.ax, %bb.ay, %bb.ar, %bb.ao, %bb.an
  %.4731 = phi double [ %i.jd, %bb.ak ], [ %i.ju, %bb.ao ], [ %i.ju, %bb.an ], [ %i.ju, %bb.ar ], [ %i.ju, %bb.av ], [ %i.ju, %bb.ay ], [ %i.ju, %bb.ax ], [ %i.ju, %bb.ba ], [ %i.ju, %bb.az ], [ %..3730, %bb.bc ], [ %..3730815, %bb.bd ] ; 2 uses
  %i.pb = load double, ptr %i.er, align 8, !tbaa !9
  %i.pc = load double, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %i.pd = fdiv double %i.pb, %i.pc                ; 3 uses
  store double %i.pd, ptr %i.c, align 8, !tbaa !9
  %i.pe = fmul double %i.pd, %i.pd
  %i.pf = fcmp ugt double %i.pe, %i.at
  br i1 %i.pf, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pg = fcmp olt double %i.pc, %i.ay
  %i.ph = fcmp ogt double %i.pc, %i.av
  %or.cond816 = and i1 %i.pg, %i.ph
  br i1 %or.cond816, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.pi = mul nsw i64 %indvars.iv.next944, %i.bv
  %i.pj = getelementptr [8 x i8], ptr %i.o, i64 %i.pi
  %i.pk = getelementptr i8, ptr %i.pj, i64 8
  %i.pl = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.pk, ptr noundef nonnull @c__1) #5
  br label %.sink.split1001

bb.bh:                                            ; preds = %bb.bf
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !9
  %i.pm = mul nsw i64 %indvars.iv.next944, %i.bv
  %i.pn = getelementptr [8 x i8], ptr %i.o, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.po, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e) #5
  %i.pp = load double, ptr %i.h, align 8, !tbaa !9
  %i.pq = load double, ptr %i.e, align 8, !tbaa !9
  %i.pr = call double @sqrt(double noundef %i.pq) #5
  %i.ps = fmul double %i.pp, %i.pr
  br label %.sink.split1001

.sink.split1001:                                  ; preds = %bb.bh, %bb.bg
  %.sink1003 = phi double [ %i.pl, %bb.bg ], [ %i.ps, %bb.bh ]
  %i.pt = getelementptr [8 x i8], ptr %6, i64 %indvars.iv943
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !9
  %i.pv = fmul double %.sink1003, %i.pu
  store double %i.pv, ptr %i.er, align 8, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split1001, %bb.be
  %i.pw = load double, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %i.px = fdiv double %i.pw, %i.eu                ; 3 uses
  store double %i.px, ptr %i.c, align 8, !tbaa !9
  %i.py = fmul double %i.px, %i.px
  %i.pz = fcmp ugt double %i.py, %i.at
  br i1 %i.pz, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qa = fcmp olt double %i.pw, %i.ay
  %i.qb = fcmp ogt double %i.pw, %i.av
  %or.cond817 = and i1 %i.qa, %i.qb
  br i1 %or.cond817, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qc = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.el, ptr noundef nonnull @c__1) #5
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !9
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.el, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.d) #5
  %i.qd = load double, ptr %i.h, align 8, !tbaa !9
  %i.qe = load double, ptr %i.d, align 8, !tbaa !9
  %i.qf = call double @sqrt(double noundef %i.qe) #5
  %i.qg = fmul double %i.qd, %i.qf
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sink1006 = phi double [ %i.qg, %bb.bl ], [ %i.qc, %bb.bk ]
  %i.qh = load double, ptr %i.em, align 8, !tbaa !9
  %i.qi = fmul double %.sink1006, %i.qh           ; 2 uses
  store double %i.qi, ptr %i.d, align 8, !tbaa !9
  store double %i.qi, ptr %i.ef, align 8, !tbaa !9
  br label %bb.bp

bb.bn:                                            ; preds = %bb.af
  %i.qj = add nsw i32 %.3722864, 1
  %i.qk = add nsw i32 %.0761857, 1
  %i.ql = add nsw i32 %.1748861, 1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.x
  %i.qm = add nsw i32 %.3722864, 1
  %i.qn = add nsw i32 %.0761857, 1
  %i.qo = add nsw i32 %.1748861, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bm, %bb.bi, %bb.bo
  %.1762 = phi i32 [ 0, %bb.bm ], [ 0, %bb.bi ], [ %i.qk, %bb.bn ], [ %i.qn, %bb.bo ] ; 2 uses
  %.2749 = phi i32 [ %.1748861, %bb.bm ], [ %.1748861, %bb.bi ], [ %i.ql, %bb.bn ], [ %i.qo, %bb.bo ] ; 4 uses
  %.4741 = phi double [ %i.gy, %bb.bm ], [ %i.gy, %bb.bi ], [ %i.gy, %bb.bn ], [ %.3740862, %bb.bo ] ; 4 uses
  %.5732 = phi double [ %.4731, %bb.bm ], [ %.4731, %bb.bi ], [ %.3730863, %bb.bn ], [ %.3730863, %bb.bo ] ; 4 uses
  %.4723 = phi i32 [ 0, %bb.bm ], [ 0, %bb.bi ], [ %i.qj, %bb.bn ], [ %i.qm, %bb.bo ] ; 2 uses
  %.4 = phi i32 [ %i.hb, %bb.bm ], [ %i.hb, %bb.bi ], [ %.3865, %bb.bn ], [ %.3865, %bb.bo ] ; 4 uses
  %.not810.not = icmp sgt i32 %.2749, %i.bo
  %or.cond818 = select i1 %.not809, i1 %.not810.not, i1 false
  br i1 %or.cond818, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qp = load double, ptr %i.d, align 8, !tbaa !9
  store double %i.qp, ptr %i.ef, align 8, !tbaa !9
  br label %..loopexit832_crit_edge

bb.br:                                            ; preds = %bb.bp
  %i.qq = icmp sgt i32 %.1762, %i.bp
  %or.cond820 = select i1 %.not809, i1 %i.qq, i1 false
  br i1 %or.cond820, label %bb.bs, label %bb.w

bb.bs:                                            ; preds = %bb.br
  %i.qr = load double, ptr %i.d, align 8, !tbaa !9
  %i.qs = fneg double %i.qr                       ; 2 uses
  store double %i.qs, ptr %i.d, align 8, !tbaa !9
  br label %.loopexit831

.loopexit831.loopexit:                            ; preds = %bb.w
  %.pre = load double, ptr %i.d, align 8, !tbaa !9
  br label %.loopexit831

.loopexit831:                                     ; preds = %.loopexit831.loopexit, %bb.v, %bb.bs
  %i.qt = phi double [ %i.qs, %bb.bs ], [ %i.eg, %bb.v ], [ %.pre, %.loopexit831.loopexit ]
  %.3750 = phi i32 [ %.2749, %bb.bs ], [ %.0747874, %bb.v ], [ %.2749, %.loopexit831.loopexit ]
  %.5742 = phi double [ %.4741, %bb.bs ], [ %.2739875, %bb.v ], [ %.4741, %.loopexit831.loopexit ]
  %.6733 = phi double [ %.5732, %bb.bs ], [ %.2729876, %bb.v ], [ %.5732, %.loopexit831.loopexit ]
  %.5724 = phi i32 [ 0, %bb.bs ], [ %.2721877, %bb.v ], [ %.4723, %.loopexit831.loopexit ]
  %.5 = phi i32 [ %.4, %bb.bs ], [ %.2878, %bb.v ], [ %.4, %.loopexit831.loopexit ]
  store double %i.qt, ptr %i.ef, align 8, !tbaa !9
  br label %bb.bx

bb.bt:                                            ; preds = %bb.u
  %i.qu = fcmp oeq double %i.eg, 0.000000e+00
  br i1 %i.qu, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.qv = load i32, ptr %2, align 4, !tbaa !8
  %.821 = call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.qv)
  %i.qw = sub i32 %.2721877, %i.ea
  %i.qx = add i32 %i.qw, %.821
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.6725 = phi i32 [ %i.qx, %bb.bu ], [ %.2721877, %bb.bt ]
  %i.qy = fcmp olt double %i.eg, 0.000000e+00
  br i1 %i.qy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit831, %bb.bw, %bb.bv
  %.4751 = phi i32 [ %.3750, %.loopexit831 ], [ %.0747874, %bb.bw ], [ %.0747874, %bb.bv ]
  %.6743 = phi double [ %.5742, %.loopexit831 ], [ %.2739875, %bb.bw ], [ %.2739875, %bb.bv ] ; 2 uses
  %.7734 = phi double [ %.6733, %.loopexit831 ], [ %.2729876, %bb.bw ], [ %.2729876, %bb.bv ] ; 2 uses
  %.7726 = phi i32 [ %.5724, %.loopexit831 ], [ 0, %bb.bw ], [ %.6725, %bb.bv ] ; 2 uses
  %.6 = phi i32 [ %.5, %.loopexit831 ], [ %.2878, %bb.bw ], [ %.2878, %bb.bv ] ; 2 uses
  %indvars.iv.next949 = add nsw i64 %indvars.iv948, 1
  %.not804.not = icmp slt i64 %indvars.iv948, %i.ee
  br i1 %.not804.not, label %bb.u, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.bx, %bb.t
  %.2739.lcssa = phi double [ %.1738885, %bb.t ], [ %.6743, %bb.bx ] ; 2 uses
  %.2729.lcssa = phi double [ %.1728886, %bb.t ], [ %.7734, %bb.bx ] ; 2 uses
  %.2721.lcssa = phi i32 [ %.1720887, %bb.t ], [ %.7726, %bb.bx ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1888, %bb.t ], [ %.6, %bb.bx ] ; 2 uses
  %i.qz = add nuw i32 %.0717889, 1
  %indvars.iv.next = add i32 %indvars.iv, %spec.select
  %exitcond.not = icmp eq i32 %.0717889, %.0765
  br i1 %exitcond.not, label %..loopexit832_crit_edge, label %bb.t, !llvm.loop !22

..loopexit832_crit_edge:                          ; preds = %._crit_edge, %bb.bq
  %.7744 = phi double [ %.4741, %bb.bq ], [ %.2739.lcssa, %._crit_edge ] ; 2 uses
  %.8735 = phi double [ %.5732, %bb.bq ], [ %.2729.lcssa, %._crit_edge ] ; 2 uses
  %.8 = phi i32 [ 0, %bb.bq ], [ %.2721.lcssa, %._crit_edge ] ; 2 uses
  %.7 = phi i32 [ %.4, %bb.bq ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.ra = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %.822 = call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.ra) ; 2 uses
  %.not812896.not = icmp slt i32 %i.dv, %.822
  br i1 %.not812896.not, label %iter.check1063, label %bb.by

iter.check1063:                                   ; preds = %..loopexit832_crit_edge
  %i.rb = sext i32 %.822 to i64                   ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.rb, i64 %18)
  %i.rc = add i64 %smax, 1
  %i.rd = sub i64 %i.rc, %18                      ; 7 uses
  %min.iters.check1048 = icmp ult i64 %i.rd, 4
  br i1 %min.iters.check1048, label %.lr.ph899.preheader, label %vector.main.loop.iter.check1049

vector.main.loop.iter.check1049:                  ; preds = %iter.check1063
  %min.iters.check1050 = icmp ult i64 %i.rd, 16
  br i1 %min.iters.check1050, label %vec.epilog.ph1067, label %vector.ph1051

vector.ph1051:                                    ; preds = %vector.main.loop.iter.check1049
  %i.re = and i64 %i.rd, 12
  %n.vec1052 = and i64 %i.rd, -16                 ; 4 uses
  %i.rf = add i64 %n.vec1052, %i.dt
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.dt
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1051
  %index1054 = phi i64 [ 0, %vector.ph1051 ], [ %index.next1059, %vector.body1053 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1054 ; 5 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load1055 = load <4 x double>, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %wide.load1056 = load <4 x double>, ptr %i.rg, align 8, !tbaa !9 ; 3 uses
  %wide.load1057 = load <4 x double>, ptr %i.rh, align 8, !tbaa !9 ; 3 uses
  %wide.load1058 = load <4 x double>, ptr %i.ri, align 8, !tbaa !9 ; 4 uses
  %i.rj = fcmp oge <4 x double> %wide.load1055, zeroinitializer
  %i.rk = fcmp oge <4 x double> %wide.load1056, zeroinitializer
  %i.rl = fcmp oge <4 x double> %wide.load1057, zeroinitializer
  %i.rm = fcmp oge <4 x double> %wide.load1058, zeroinitializer
  %i.rn = fneg <4 x double> %wide.load1055
  %i.ro = fneg <4 x double> %wide.load1056
  %i.rp = fneg <4 x double> %wide.load1057
  %i.rq = fneg <4 x double> %wide.load1058
  %i.rr = select <4 x i1> %i.rj, <4 x double> %wide.load1055, <4 x double> %i.rn
  %i.rs = select <4 x i1> %i.rk, <4 x double> %wide.load1056, <4 x double> %i.ro
  %i.rt = select <4 x i1> %i.rl, <4 x double> %wide.load1057, <4 x double> %i.rp
  %i.ru = select <4 x i1> %i.rm, <4 x double> %wide.load1058, <4 x double> %i.rq
  store <4 x double> %i.rr, ptr %gep, align 8, !tbaa !9
  store <4 x double> %i.rs, ptr %i.rg, align 8, !tbaa !9
  store <4 x double> %i.rt, ptr %i.rh, align 8, !tbaa !9
  store <4 x double> %i.ru, ptr %i.ri, align 8, !tbaa !9
  %index.next1059 = add nuw i64 %index1054, 16    ; 2 uses
  %i.rv = icmp eq i64 %index.next1059, %n.vec1052
  br i1 %i.rv, label %middle.block1060, label %vector.body1053, !llvm.loop !23

middle.block1060:                                 ; preds = %vector.body1053
  %i.rw = extractelement <4 x double> %wide.load1058, i64 3
  %cmp.n1061 = icmp eq i64 %i.rd, %n.vec1052
  br i1 %cmp.n1061, label %._crit_edge900, label %vec.epilog.iter.check1065

vec.epilog.iter.check1065:                        ; preds = %middle.block1060
  %min.epilog.iters.check1066 = icmp eq i64 %i.re, 0
  br i1 %min.epilog.iters.check1066, label %.lr.ph899.preheader, label %vec.epilog.ph1067, !prof !16

vec.epilog.ph1067:                                ; preds = %vector.main.loop.iter.check1049, %vec.epilog.iter.check1065
  %vec.epilog.resume.val1062 = phi i64 [ %n.vec1052, %vec.epilog.iter.check1065 ], [ 0, %vector.main.loop.iter.check1049 ]
  %n.vec1068 = and i64 %i.rd, -4                  ; 3 uses
  %i.rx = add i64 %n.vec1068, %i.dt
  %invariant.gep1106 = getelementptr [8 x i8], ptr %i.k, i64 %i.dt
  br label %vec.epilog.vector.body1069

vec.epilog.vector.body1069:                       ; preds = %vec.epilog.vector.body1069, %vec.epilog.ph1067
  %index1070 = phi i64 [ %vec.epilog.resume.val1062, %vec.epilog.ph1067 ], [ %index.next1072, %vec.epilog.vector.body1069 ] ; 2 uses
  %gep1107 = getelementptr [8 x i8], ptr %invariant.gep1106, i64 %index1070 ; 2 uses
  %wide.load1071 = load <4 x double>, ptr %gep1107, align 8, !tbaa !9 ; 4 uses
  %i.ry = fcmp oge <4 x double> %wide.load1071, zeroinitializer
  %i.rz = fneg <4 x double> %wide.load1071
  %i.sa = select <4 x i1> %i.ry, <4 x double> %wide.load1071, <4 x double> %i.rz
  store <4 x double> %i.sa, ptr %gep1107, align 8, !tbaa !9
  %index.next1072 = add nuw i64 %index1070, 4     ; 2 uses
  %i.sb = icmp eq i64 %index.next1072, %n.vec1068
  br i1 %i.sb, label %vec.epilog.middle.block1073, label %vec.epilog.vector.body1069, !llvm.loop !24

vec.epilog.middle.block1073:                      ; preds = %vec.epilog.vector.body1069
  %i.sc = extractelement <4 x double> %wide.load1071, i64 3
  %cmp.n1074 = icmp eq i64 %i.rd, %n.vec1068
  br i1 %cmp.n1074, label %._crit_edge900, label %.lr.ph899.preheader

.lr.ph899.preheader:                              ; preds = %iter.check1063, %vec.epilog.iter.check1065, %vec.epilog.middle.block1073
  %indvars.iv951.ph = phi i64 [ %i.dt, %iter.check1063 ], [ %i.rf, %vec.epilog.iter.check1065 ], [ %i.rx, %vec.epilog.middle.block1073 ]
  br label %.lr.ph899

.lr.ph899:                                        ; preds = %.lr.ph899.preheader, %.lr.ph899
  %indvars.iv951 = phi i64 [ %indvars.iv.next952, %.lr.ph899 ], [ %indvars.iv951.ph, %.lr.ph899.preheader ] ; 3 uses
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv951 ; 2 uses
  %i.se = load double, ptr %i.sd, align 8, !tbaa !9 ; 4 uses
  %i.sf = fcmp oge double %i.se, 0.000000e+00
  %i.sg = fneg double %i.se
  %i.sh = select i1 %i.sf, double %i.se, double %i.sg
  store double %i.sh, ptr %i.sd, align 8, !tbaa !9
  %indvars.iv.next952 = add nsw i64 %indvars.iv951, 1
  %.not812.not = icmp slt i64 %indvars.iv951, %i.rb
  br i1 %.not812.not, label %.lr.ph899, label %._crit_edge900, !llvm.loop !25

._crit_edge900:                                   ; preds = %.lr.ph899, %vec.epilog.middle.block1073, %middle.block1060
  %.lcssa1032 = phi double [ %i.sc, %vec.epilog.middle.block1073 ], [ %i.rw, %middle.block1060 ], [ %i.se, %.lr.ph899 ]
  store double %.lcssa1032, ptr %i.c, align 8, !tbaa !9
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge900, %..loopexit832_crit_edge
  %i.si = add nuw nsw i32 %.0907, 1
  %.not797.not = icmp slt i32 %.0907, %.0763
  %indvars.iv.next947 = add i32 %indvars.iv946, %spec.select
  br i1 %.not797.not, label %.lr.ph891, label %._crit_edge910, !llvm.loop !19

._crit_edge910:                                   ; preds = %bb.by, %bb.s, %bb.r
  %i.sj = phi i32 [ %i.ca, %bb.r ], [ %i.ca, %bb.s ], [ %i.ra, %bb.by ] ; 3 uses
  %.0737.lcssa = phi double [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %.7744, %bb.by ] ; 3 uses
  %.0727.lcssa = phi double [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %.8735, %bb.by ]
  %.0719.lcssa = phi i32 [ 0, %bb.r ], [ 0, %bb.s ], [ %.8, %bb.by ] ; 2 uses
  %.0718.lcssa = phi i32 [ 0, %bb.r ], [ 0, %bb.s ], [ %.7, %bb.by ]
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.sk
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !9 ; 2 uses
  %i.sn = fcmp olt double %i.sm, %i.ay
  %i.so = fcmp ogt double %i.sm, %i.av
  %or.cond823 = and i1 %i.sn, %i.so
  br i1 %or.cond823, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %._crit_edge910
  %i.sp = mul nsw i32 %i.sj, %i.m
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr [8 x i8], ptr %i.o, i64 %i.sq
  %i.ss = getelementptr i8, ptr %i.sr, i64 8
  %i.st = call double @dnrm2_(ptr noundef nonnull %1, ptr noundef %i.ss, ptr noundef nonnull @c__1) #5
  br label %bb.cb

bb.ca:                                            ; preds = %._crit_edge910
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !9
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !9
  %i.su = mul nsw i32 %i.sj, %i.m
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr [8 x i8], ptr %i.o, i64 %i.sv
  %i.sx = getelementptr i8, ptr %i.sw, i64 8
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %i.sx, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.d) #5
  %i.sy = load double, ptr %i.h, align 8, !tbaa !9
  %i.sz = load double, ptr %i.d, align 8, !tbaa !9
  %i.ta = call double @sqrt(double noundef %i.sz) #5
  %i.tb = fmul double %i.sy, %i.ta
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink1011 = phi double [ %i.tb, %bb.ca ], [ %i.st, %bb.bz ]
  %i.tc = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %i.td = sext i32 %i.tc to i64                   ; 2 uses
  %i.te = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.td
  %i.tf = load double, ptr %i.te, align 8, !tbaa !9
  %i.tg = fmul double %.sink1011, %i.tf
  %i.th = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.td
  store double %i.tg, ptr %i.th, align 8, !tbaa !9
  %i.ti = icmp samesign ult i32 %.0760919, %.0745920
  %i.tj = fcmp ole double %.0737.lcssa, %i.bg
  %.not798 = icmp sle i32 %.0718.lcssa, %i.tc
  %or.cond1016.not = select i1 %i.tj, i1 true, i1 %.not798
  %i.tk = select i1 %i.ti, i1 %or.cond1016.not, i1 false
  %.1746 = select i1 %i.tk, i32 %.0760919, i32 %.0745920 ; 2 uses
  %i.tl = add nuw nsw i32 %.1746, 1
  %i.tm = icmp samesign ugt i32 %.0760919, %i.tl
  br i1 %i.tm, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.tn = sitofp i32 %i.tc to double              ; 2 uses
  %i.to = load double, ptr %13, align 8, !tbaa !9 ; 2 uses
  %i.tp = fmul double %i.to, %i.tn
  %i.tq = fcmp olt double %.0737.lcssa, %i.tp
  br i1 %i.tq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.tr = fmul double %.0737.lcssa, %i.tn
  %i.ts = fmul double %.0727.lcssa, %i.tr
  %i.tt = fcmp uge double %i.ts, %i.to
  %.not799 = icmp slt i32 %.0719.lcssa, %i.bk
  %or.cond824 = select i1 %i.tt, i1 %.not799, i1 false
  br i1 %or.cond824, label %bb.cf, label %.loopexit833

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  %.not799.old = icmp slt i32 %.0719.lcssa, %i.bk
  br i1 %.not799.old, label %bb.cf, label %.loopexit833

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.tu = add nuw nsw i32 %.0760919, 1
  %.not796.not = icmp slt i32 %.0760919, %i.bq
  br i1 %.not796.not, label %bb.r, label %._crit_edge922.loopexit, !llvm.loop !26

._crit_edge922.loopexit:                          ; preds = %bb.cf
  %.pre965 = load i32, ptr %14, align 4, !tbaa !8
  br label %._crit_edge922

._crit_edge922:                                   ; preds = %._crit_edge922.loopexit, %cdce.end
  %i.tv = phi i32 [ %.pre965, %._crit_edge922.loopexit ], [ %i.bq, %cdce.end ]
  %i.tw = add nsw i32 %i.tv, -1
  br label %.loopexit833

.loopexit833:                                     ; preds = %bb.cd, %bb.ce, %._crit_edge922
  %storemerge = phi i32 [ %i.tw, %._crit_edge922 ], [ 0, %bb.ce ], [ 0, %bb.cd ]
  store i32 %storemerge, ptr %17, align 4, !tbaa !8
  %i.tx = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.ty = add nsw i32 %i.tx, -1                   ; 2 uses
  %.not800923 = icmp slt i32 %i.tx, 2
  br i1 %.not800923, label %.loopexit, label %.lr.ph926

end_hunk_1
