Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization_ipsep?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@stress_majorization_cola:bb.a
.preheader554.us:                                 ; preds = %.preheader554.us.preheader, %._crit_edge573.us
  %indvars.iv733 = phi i64 [ 0, %.preheader554.us.preheader ], [ %indvars.iv.next734, %._crit_edge573.us ] ; 2 uses
  %.0413576.us = phi double [ 1.000000e+00, %.preheader554.us.preheader ], [ %.lcssa978, %._crit_edge573.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv733
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader554.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.0413576.us, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.bo, %vector.body ] ; 2 uses
  %vec.phi980 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.bp, %vector.body ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <2 x double>, ptr %i.bk, align 8, !tbaa !64
  %wide.load981 = load <2 x double>, ptr %i.bl, align 8, !tbaa !64
  %wide.load.fr = freeze <2 x double> %wide.load
  %i.bm = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load.fr) ; 2 uses
  %wide.load981.fr = freeze <2 x double> %wide.load981
  %i.bn = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load981.fr) ; 2 uses
  %i.bo = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %i.bm) ; 2 uses
  %i.bp = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi980, <2 x double> %i.bn) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = fcmp uno <2 x double> %i.bm, %i.bn
  %i.br = bitcast <2 x i1> %i.bq to i2
  %i.bs = icmp ne i2 %i.br, 0                     ; 5 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  %i.bu = or i1 %i.bs, %i.bt
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %i.bv = select i1 %i.bs, <2 x double> %vec.phi, <2 x double> %i.bo
  %i.bw = select i1 %i.bs, <2 x double> %vec.phi980, <2 x double> %i.bp
  %i.bx = select i1 %i.bs, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bv, <2 x double> %i.bw)
  %i.by = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %.not1059 = or i1 %cmp.n, %i.bs
  br i1 %.not1059, label %scalar.ph.preheader, label %._crit_edge573.us

scalar.ph.preheader:                              ; preds = %.preheader554.us, %middle.block
  %indvars.iv728.ph = phi i64 [ 0, %.preheader554.us ], [ %i.bx, %middle.block ]
  %.1414570.us.ph = phi double [ %.0413576.us, %.preheader554.us ], [ %i.by, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %scalar.ph ], [ %indvars.iv728.ph, %scalar.ph.preheader ] ; 2 uses
  %.1414570.us = phi double [ %i.cc, %scalar.ph ], [ %.1414570.us.ph, %scalar.ph.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv728
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !64
  %i.cb = tail call nsz double @llvm.fabs.f64(double %i.ca)
  %i.cc = tail call nsz double @llvm.maxnum.f64(double %.1414570.us, double %i.cb) ; 2 uses
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %exitcond732.not = icmp eq i64 %indvars.iv.next729, %wide.trip.count731
  br i1 %exitcond732.not, label %._crit_edge573.us, label %scalar.ph, !llvm.loop !12

._crit_edge573.us:                                ; preds = %scalar.ph, %middle.block
  %.lcssa978 = phi double [ %i.by, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %indvars.iv.next734 = add nuw nsw i64 %indvars.iv733, 1 ; 2 uses
  %exitcond737.not = icmp eq i64 %indvars.iv.next734, %wide.trip.count736
  br i1 %exitcond737.not, label %.preheader552.lr.ph, label %.preheader554.us, !llvm.loop !13

.preheader552.lr.ph:                              ; preds = %._crit_edge573.us
  %i.cd = fdiv double 1.000000e+01, %.lcssa978    ; 2 uses
  %wide.trip.count746 = zext nneg i32 %4 to i64
  %wide.trip.count741 = zext nneg i32 %1 to i64
  %min.iters.check983 = icmp ult i32 %1, 4
  %n.vec985 = and i64 %wide.trip.count731, 2147483644 ; 3 uses
  %broadcast.splatinsert986 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat987 = shufflevector <2 x double> %broadcast.splatinsert986, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n994 = icmp eq i64 %n.vec985, %wide.trip.count731
  br label %.preheader552

.preheader552:                                    ; preds = %.preheader552.lr.ph, %._crit_edge580
  %indvars.iv743 = phi i64 [ 0, %.preheader552.lr.ph ], [ %indvars.iv.next744, %._crit_edge580 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv743
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62 ; 2 uses
  br i1 %min.iters.check983, label %scalar.ph982.preheader, label %vector.body988

vector.body988:                                   ; preds = %.preheader552, %vector.body988
  %index989 = phi i64 [ %index.next992, %vector.body988 ], [ 0, %.preheader552 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index989 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load990 = load <2 x double>, ptr %i.cg, align 8, !tbaa !64
  %wide.load991 = load <2 x double>, ptr %i.ch, align 8, !tbaa !64
  %i.ci = fmul <2 x double> %broadcast.splat987, %wide.load990
  %i.cj = fmul <2 x double> %broadcast.splat987, %wide.load991
  store <2 x double> %i.ci, ptr %i.cg, align 8, !tbaa !64
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !64
  %index.next992 = add nuw i64 %index989, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next992, %n.vec985
  br i1 %i.ck, label %middle.block993, label %vector.body988, !llvm.loop !14

middle.block993:                                  ; preds = %vector.body988
  br i1 %cmp.n994, label %._crit_edge580, label %scalar.ph982.preheader

scalar.ph982.preheader:                           ; preds = %.preheader552, %middle.block993
  %indvars.iv738.ph = phi i64 [ 0, %.preheader552 ], [ %n.vec985, %middle.block993 ]
  br label %scalar.ph982

.lr.ph583.preheader:                              ; preds = %._crit_edge580, %.preheader554.lr.ph
  %wide.trip.count751 = zext nneg i32 %4 to i64
  br label %.lr.ph583

._crit_edge580:                                   ; preds = %scalar.ph982, %middle.block993
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count746
  br i1 %exitcond747.not, label %.lr.ph583.preheader, label %.preheader552, !llvm.loop !15

scalar.ph982:                                     ; preds = %scalar.ph982.preheader, %scalar.ph982
  %indvars.iv738 = phi i64 [ %indvars.iv.next739, %scalar.ph982 ], [ %indvars.iv738.ph, %scalar.ph982.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv738 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !64
  %i.cn = fmul double %i.cd, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !tbaa !64
  %indvars.iv.next739 = add nuw nsw i64 %indvars.iv738, 1 ; 2 uses
  %exitcond742.not = icmp eq i64 %indvars.iv.next739, %wide.trip.count741
  br i1 %exitcond742.not, label %._crit_edge580, label %scalar.ph982, !llvm.loop !16

.lr.ph583:                                        ; preds = %.lr.ph583.preheader, %.lr.ph583
  %indvars.iv748 = phi i64 [ 0, %.lr.ph583.preheader ], [ %indvars.iv.next749, %.lr.ph583 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !62
  tail call void @orthog1(i32 noundef %1, ptr noundef %i.cp) #11
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next749, %wide.trip.count751
  br i1 %exitcond752.not, label %._crit_edge584, label %.lr.ph583, !llvm.loop !17

._crit_edge584:                                   ; preds = %.lr.ph583, %.preheader555
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62 ; 3 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !64 ; 2 uses
  br i1 %i.c, label %.lr.ph587.preheader, label %._crit_edge588

.lr.ph587.preheader:                              ; preds = %._crit_edge584
  %wide.trip.count756 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check997 = icmp ult i32 %1, 4
  br i1 %min.iters.check997, label %.lr.ph587.preheader1071, label %vector.ph998

vector.ph998:                                     ; preds = %.lr.ph587.preheader
  %n.vec999 = and i64 %wide.trip.count756, 2147483644 ; 3 uses
  %broadcast.splatinsert1000 = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat1001 = shufflevector <2 x double> %broadcast.splatinsert1000, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %vector.ph998
  %index1003 = phi i64 [ 0, %vector.ph998 ], [ %index.next1006, %vector.body1002 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index1003 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load1004 = load <2 x double>, ptr %i.ct, align 8, !tbaa !64
  %wide.load1005 = load <2 x double>, ptr %i.cu, align 8, !tbaa !64
  %i.cv = fsub <2 x double> %wide.load1004, %broadcast.splat1001
  %i.cw = fsub <2 x double> %wide.load1005, %broadcast.splat1001
  store <2 x double> %i.cv, ptr %i.ct, align 8, !tbaa !64
  store <2 x double> %i.cw, ptr %i.cu, align 8, !tbaa !64
  %index.next1006 = add nuw i64 %index1003, 4     ; 2 uses
  %i.cx = icmp eq i64 %index.next1006, %n.vec999
  br i1 %i.cx, label %middle.block1007, label %vector.body1002, !llvm.loop !18

middle.block1007:                                 ; preds = %vector.body1002
  %cmp.n1008 = icmp eq i64 %n.vec999, %wide.trip.count756
  br i1 %cmp.n1008, label %._crit_edge588, label %.lr.ph587.preheader1071

.lr.ph587.preheader1071:                          ; preds = %.lr.ph587.preheader, %middle.block1007
  %indvars.iv753.ph = phi i64 [ 0, %.lr.ph587.preheader ], [ %n.vec999, %middle.block1007 ]
  br label %.lr.ph587

.lr.ph587:                                        ; preds = %.lr.ph587.preheader1071, %.lr.ph587
  %indvars.iv753 = phi i64 [ %indvars.iv.next754, %.lr.ph587 ], [ %indvars.iv753.ph, %.lr.ph587.preheader1071 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv753 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !64
  %i.da = fsub double %i.cz, %i.cs
  store double %i.da, ptr %i.cy, align 8, !tbaa !64
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %exitcond757.not = icmp eq i64 %indvars.iv.next754, %wide.trip.count756
  br i1 %exitcond757.not, label %._crit_edge588, label %.lr.ph587, !llvm.loop !19

._crit_edge588:                                   ; preds = %.lr.ph587, %middle.block1007, %._crit_edge584
  %i.db = load i8, ptr @Verbose, align 1, !tbaa !58
  %.not484 = icmp eq i8 %i.db, 0
  br i1 %.not484, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge588
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.dd = tail call double @elapsed_sec() #11
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.7, double noundef %i.dd) #13 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge588
  tail call void @square_vec(i32 noundef %i.bg, ptr noundef %.1433) #11
  tail call void @invert_vec(i32 noundef %i.bg, ptr noundef %.1433) #11
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.di = shl nuw nsw i32 %i.dg, 1                ; 3 uses
  %i.dj = add nsw i32 %i.di, %1                   ; 8 uses
  %i.dk = add nsw i32 %i.dj, -1                   ; 3 uses
  %i.dl = mul nsw i32 %i.dk, %i.dj
  %i.dm = sdiv i32 %i.dl, 2
  %i.dn = add nsw i32 %i.dm, %i.dj                ; 4 uses
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %bb.u
  %i.dp = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  br label %gv_calloc.exit

bb.v:                                             ; preds = %bb.u
  %mul.ov.i = icmp slt i32 %i.dn, 0
  br i1 %mul.ov.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.dr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.do, i64 noundef 4) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ds = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.do, i64 noundef 4) #14 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.y, label %gv_calloc.exit

bb.y:                                             ; preds = %bb.x
  %i.du = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.dv = shl nuw nsw i64 %i.do, 2
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.du, ptr noundef nonnull @.str.13, i64 noundef %i.dv) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.x
  %i.dx = phi ptr [ %i.dp, %.thread.i ], [ %i.ds, %bb.x ] ; 19 uses
  %i.dy = icmp sgt i32 %i.dj, 0
  br i1 %i.dy, label %.preheader550.lr.ph, label %._crit_edge624

.preheader550.lr.ph:                              ; preds = %gv_calloc.exit
  %i.dz = fcmp ule float %.0415.lcssa, f0x3C23D70A ; 2 uses
  %i.ea = fdiv float 1.000000e+00, %.0415.lcssa   ; 2 uses
  %.mux.peel = select i1 %i.dz, float %.0415.lcssa, float %i.ea
  %i.eb = add i32 %1, %i.di                       ; 2 uses
  %8 = add i32 %i.eb, -2
  %9 = add i32 %i.eb, -3                          ; 2 uses
  %i.ec = add i32 %1, %i.di
  %i.ed = add i32 %i.ec, -2
  br label %.preheader550

.preheader550:                                    ; preds = %.preheader550.lr.ph, %._crit_edge593
  %indvars.iv774 = phi i32 [ %i.dk, %.preheader550.lr.ph ], [ %indvars.iv.next775, %._crit_edge593 ] ; 2 uses
  %indvars.iv761 = phi i32 [ %i.dj, %.preheader550.lr.ph ], [ %indvars.iv.next762, %._crit_edge593 ] ; 12 uses
  %.0407623 = phi i32 [ 0, %.preheader550.lr.ph ], [ %.1.lcssa, %._crit_edge593 ] ; 3 uses
  %.0408622 = phi i32 [ 0, %.preheader550.lr.ph ], [ %.1409.lcssa, %._crit_edge593 ] ; 11 uses
  %.6621 = phi i32 [ 0, %.preheader550.lr.ph ], [ %i.ib, %._crit_edge593 ] ; 10 uses
  %i.ee = sub i32 %8, %.6621                      ; 6 uses
  %i.ef = zext i32 %indvars.iv761 to i64
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = icmp sgt i32 %i.dj, %.6621
  br i1 %i.eh, label %.lr.ph592, label %._crit_edge593

.lr.ph592:                                        ; preds = %.preheader550
  %i.ei = icmp slt i32 %.6621, %1
  %i.ej = sub nsw i32 %1, %.6621                  ; 12 uses
  %i.ek = and i32 %.6621, 1
  %.not492 = icmp eq i32 %i.ek, 0                 ; 2 uses
  %i.el = sext i32 %.0407623 to i64               ; 12 uses
  br i1 %i.ei, label %.lr.ph592.split, label %.lr.ph592.split.us

.lr.ph592.split.us:                               ; preds = %.lr.ph592
  br i1 %.not492, label %.lr.ph592.split.us.split.us.preheader, label %.lr.ph592.split.us.split.preheader

.lr.ph592.split.us.split.preheader:               ; preds = %.lr.ph592.split.us
  %indvars.iv.next759.peel = add nsw i64 %i.el, 1 ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.el
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !55
  %exitcond763.peel.not = icmp eq i32 %indvars.iv761, 1
  br i1 %exitcond763.peel.not, label %._crit_edge593.loopexit708, label %.lr.ph592.split.us.split.peel.next

.lr.ph592.split.us.split.peel.next:               ; preds = %.lr.ph592.split.us.split.preheader
  %indvars.iv.next759.peel769 = add nsw i64 %i.el, 2 ; 4 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv.next759.peel
  store float %.mux.peel, ptr %i.en, align 4, !tbaa !55
  %exitcond763.peel770.not = icmp eq i32 %indvars.iv761, 2
  br i1 %exitcond763.peel770.not, label %._crit_edge593.loopexit708, label %.lr.ph592.split.us.split.preheader970

.lr.ph592.split.us.split.preheader970:            ; preds = %.lr.ph592.split.us.split.peel.next
  %10 = sub i32 %i.ed, %.6621                     ; 2 uses
  %i.eo = zext i32 %10 to i64                     ; 2 uses
  %min.iters.check1011 = icmp ult i32 %10, 8
  br i1 %min.iters.check1011, label %.lr.ph592.split.us.split.preheader1068, label %vector.ph1012

vector.ph1012:                                    ; preds = %.lr.ph592.split.us.split.preheader970
  %n.vec1013 = and i64 %i.eo, 4294967288          ; 4 uses
  %i.ep = add nsw i64 %indvars.iv.next759.peel769, %n.vec1013 ; 2 uses
  %i.eq = trunc nuw i64 %n.vec1013 to i32
  %i.er = or disjoint i32 %i.eq, 2
  %i.es = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv.next759.peel769
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %vector.ph1012
  %index1015 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1016, %vector.body1014 ] ; 2 uses
  %i.et = getelementptr [4 x i8], ptr %i.es, i64 %index1015 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <4 x float> zeroinitializer, ptr %i.et, align 4, !tbaa !55
  store <4 x float> zeroinitializer, ptr %i.eu, align 4, !tbaa !55
  %index.next1016 = add nuw i64 %index1015, 8     ; 2 uses
  %i.ev = icmp eq i64 %index.next1016, %n.vec1013
  br i1 %i.ev, label %middle.block1017, label %vector.body1014, !llvm.loop !20

middle.block1017:                                 ; preds = %vector.body1014
  %cmp.n1018 = icmp eq i64 %n.vec1013, %i.eo
  br i1 %cmp.n1018, label %._crit_edge593.loopexit708, label %.lr.ph592.split.us.split.preheader1068

.lr.ph592.split.us.split.preheader1068:           ; preds = %.lr.ph592.split.us.split.preheader970, %middle.block1017
  %indvars.iv758.ph = phi i64 [ %indvars.iv.next759.peel769, %.lr.ph592.split.us.split.preheader970 ], [ %i.ep, %middle.block1017 ]
  %.0405591.us.ph = phi i32 [ 2, %.lr.ph592.split.us.split.preheader970 ], [ %i.er, %middle.block1017 ]
  br label %.lr.ph592.split.us.split

.lr.ph592.split.us.split.us.preheader:            ; preds = %.lr.ph592.split.us
  %i.ew = shl nsw i64 %i.el, 2
  %scevgep = getelementptr i8, ptr %i.dx, i64 %i.ew
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.eg, i1 false), !tbaa !55
  %i.ex = add i32 %.0407623, 1
  %i.ey = add i32 %i.ex, %indvars.iv774
  br label %._crit_edge593

.lr.ph592.split.us.split:                         ; preds = %.lr.ph592.split.us.split.preheader1068, %.lr.ph592.split.us.split
  %indvars.iv758 = phi i64 [ %indvars.iv.next759, %.lr.ph592.split.us.split ], [ %indvars.iv758.ph, %.lr.ph592.split.us.split.preheader1068 ] ; 2 uses
  %.0405591.us = phi i32 [ %i.fa, %.lr.ph592.split.us.split ], [ %.0405591.us.ph, %.lr.ph592.split.us.split.preheader1068 ]
  %indvars.iv.next759 = add nsw i64 %indvars.iv758, 1 ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv758
  store float 0.000000e+00, ptr %i.ez, align 4, !tbaa !55
  %i.fa = add nuw nsw i32 %.0405591.us, 1         ; 2 uses
  %exitcond763.not = icmp eq i32 %i.fa, %indvars.iv761
  br i1 %exitcond763.not, label %._crit_edge593.loopexit708, label %.lr.ph592.split.us.split, !llvm.loop !21

.lr.ph592.split:                                  ; preds = %.lr.ph592
  br i1 %.not492, label %.lr.ph592.split.split.us.preheader, label %.lr.ph592.split.split

.lr.ph592.split.split.us.preheader:               ; preds = %.lr.ph592.split
  %xtraiter1095 = and i32 %indvars.iv761, 1
  %i.fb = icmp eq i32 %i.dk, %.6621
  br i1 %i.fb, label %.lr.ph592.split.split.us.epil.preheader, label %.lr.ph592.split.split.us.preheader.new

.lr.ph592.split.split.us.preheader.new:           ; preds = %.lr.ph592.split.split.us.preheader
  %unroll_iter1101 = and i32 %indvars.iv761, -2
  br label %.lr.ph592.split.split.us

.lr.ph592.split.split.us:                         ; preds = %bb.ab, %.lr.ph592.split.split.us.preheader.new
  %indvars.iv802 = phi i64 [ %i.el, %.lr.ph592.split.split.us.preheader.new ], [ %indvars.iv.next803.1, %bb.ab ] ; 3 uses
  %.0405591.us598 = phi i32 [ 0, %.lr.ph592.split.split.us.preheader.new ], [ %i.fq, %bb.ab ] ; 3 uses
  %.1409589.us600 = phi i32 [ %.0408622, %.lr.ph592.split.split.us.preheader.new ], [ %.2.us602.1, %bb.ab ] ; 3 uses
  %niter1102 = phi i32 [ 0, %.lr.ph592.split.split.us.preheader.new ], [ %niter1102.next.1, %bb.ab ]
  %i.fc = icmp slt i32 %.0405591.us598, %i.ej
  br i1 %i.fc, label %bb.z, label %.lr.ph592.split.split.us.1

bb.z:                                             ; preds = %.lr.ph592.split.split.us
  %i.fd = add nsw i32 %.1409589.us600, 1
  %i.fe = sext i32 %.1409589.us600 to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !55
  br label %.lr.ph592.split.split.us.1

.lr.ph592.split.split.us.1:                       ; preds = %.lr.ph592.split.split.us, %bb.z
  %.2.us602 = phi i32 [ %i.fd, %bb.z ], [ %.1409589.us600, %.lr.ph592.split.split.us ] ; 3 uses
  %.0406.us603 = phi float [ %i.fg, %bb.z ], [ 0.000000e+00, %.lr.ph592.split.split.us ]
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv802
  store float %.0406.us603, ptr %i.fh, align 4, !tbaa !55
  %i.fi = or disjoint i32 %.0405591.us598, 1
  %i.fj = icmp slt i32 %i.fi, %i.ej
  br i1 %i.fj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph592.split.split.us.1
  %i.fk = add nsw i32 %.2.us602, 1
  %i.fl = sext i32 %.2.us602 to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !55
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph592.split.split.us.1
  %.2.us602.1 = phi i32 [ %i.fk, %bb.aa ], [ %.2.us602, %.lr.ph592.split.split.us.1 ] ; 3 uses
  %.0406.us603.1 = phi float [ %i.fn, %bb.aa ], [ 0.000000e+00, %.lr.ph592.split.split.us.1 ]
  %indvars.iv.next803.1 = add nsw i64 %indvars.iv802, 2 ; 3 uses
  %i.fo = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv802
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  store float %.0406.us603.1, ptr %i.fp, align 4, !tbaa !55
  %i.fq = add nuw nsw i32 %.0405591.us598, 2      ; 2 uses
  %niter1102.next.1 = add i32 %niter1102, 2       ; 2 uses
  %niter1102.ncmp.1 = icmp eq i32 %niter1102.next.1, %unroll_iter1101
  br i1 %niter1102.ncmp.1, label %._crit_edge593.loopexit.unr-lcssa, label %.lr.ph592.split.split.us, !llvm.loop !22

.lr.ph592.split.split:                            ; preds = %.lr.ph592.split
  %i.fr = icmp sgt i32 %i.ej, 0                   ; 2 uses
  br i1 %i.dz, label %.lr.ph592.split.split.split.preheader, label %.lr.ph592.split.split.split.us.preheader

.lr.ph592.split.split.split.us.preheader:         ; preds = %.lr.ph592.split.split
  br i1 %i.fr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph592.split.split.split.us.preheader
  %i.fs = add nsw i32 %.0408622, 1
  %i.ft = sext i32 %.0408622 to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !55
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph592.split.split.split.us.preheader, %bb.ac
  %.2.us611.peel = phi i32 [ %i.fs, %bb.ac ], [ %.0408622, %.lr.ph592.split.split.split.us.preheader ] ; 4 uses
  %.0406.us612.peel = phi float [ %i.fv, %bb.ac ], [ 0.000000e+00, %.lr.ph592.split.split.split.us.preheader ]
  %indvars.iv.next779.peel = add nsw i64 %i.el, 1 ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.el
  store float %.0406.us612.peel, ptr %i.fw, align 4, !tbaa !55
  %exitcond781.peel.not = icmp eq i32 %indvars.iv761, 1
  br i1 %exitcond781.peel.not, label %._crit_edge593.loopexit706, label %.lr.ph592.split.split.split.us.peel.next

.lr.ph592.split.split.split.us.peel.next:         ; preds = %bb.ad
  %i.fx = icmp sgt i32 %i.ej, 1
  br i1 %i.fx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph592.split.split.split.us.peel.next
  %i.fy = add nsw i32 %.2.us611.peel, 1
  %i.fz = sext i32 %.2.us611.peel to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !55
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph592.split.split.split.us.peel.next, %bb.ae
  %.2.us611.peel785 = phi i32 [ %i.fy, %bb.ae ], [ %.2.us611.peel, %.lr.ph592.split.split.split.us.peel.next ] ; 3 uses
  %.0406.us612.peel786 = phi float [ %i.gb, %bb.ae ], [ %i.ea, %.lr.ph592.split.split.split.us.peel.next ]
  %indvars.iv.next779.peel787 = add nsw i64 %i.el, 2 ; 3 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv.next779.peel
  store float %.0406.us612.peel786, ptr %i.gc, align 4, !tbaa !55
  %exitcond781.peel788.not = icmp eq i32 %indvars.iv761, 2
  br i1 %exitcond781.peel788.not, label %._crit_edge593.loopexit706, label %.lr.ph592.split.split.split.us.preheader1067

.lr.ph592.split.split.split.us.preheader1067:     ; preds = %bb.af
  %xtraiter1079 = and i32 %i.ee, 1
  %i.gd = icmp eq i32 %9, %.6621
  br i1 %i.gd, label %.lr.ph592.split.split.split.us.epil.preheader, label %.lr.ph592.split.split.split.us.preheader1067.new

.lr.ph592.split.split.split.us.preheader1067.new: ; preds = %.lr.ph592.split.split.split.us.preheader1067
  %unroll_iter1085 = and i32 %i.ee, -2
  br label %.lr.ph592.split.split.split.us

.lr.ph592.split.split.split.preheader:            ; preds = %.lr.ph592.split.split
  br i1 %i.fr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph592.split.split.split.preheader
  %i.ge = add nsw i32 %.0408622, 1
  %i.gf = sext i32 %.0408622 to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !55
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph592.split.split.split.preheader, %bb.ag
  %.2.peel = phi i32 [ %i.ge, %bb.ag ], [ %.0408622, %.lr.ph592.split.split.split.preheader ] ; 4 uses
  %.0406.peel = phi float [ %i.gh, %bb.ag ], [ 0.000000e+00, %.lr.ph592.split.split.split.preheader ]
  %indvars.iv.next791.peel = add nsw i64 %i.el, 1 ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.el
  store float %.0406.peel, ptr %i.gi, align 4, !tbaa !55
  %exitcond793.peel.not = icmp eq i32 %indvars.iv761, 1
  br i1 %exitcond793.peel.not, label %._crit_edge593.loopexit705, label %.lr.ph592.split.split.split.peel.next

.lr.ph592.split.split.split.peel.next:            ; preds = %bb.ah
  %i.gj = icmp sgt i32 %i.ej, 1
  br i1 %i.gj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph592.split.split.split.peel.next
  %i.gk = add nsw i32 %.2.peel, 1
  %i.gl = sext i32 %.2.peel to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !55
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph592.split.split.split.peel.next, %bb.ai
  %.2.peel797 = phi i32 [ %i.gk, %bb.ai ], [ %.2.peel, %.lr.ph592.split.split.split.peel.next ] ; 3 uses
  %.0406.peel798 = phi float [ %i.gn, %bb.ai ], [ %.0415.lcssa, %.lr.ph592.split.split.split.peel.next ]
  %indvars.iv.next791.peel799 = add nsw i64 %i.el, 2 ; 3 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv.next791.peel
  store float %.0406.peel798, ptr %i.go, align 4, !tbaa !55
  %exitcond793.peel800.not = icmp eq i32 %indvars.iv761, 2
  br i1 %exitcond793.peel800.not, label %._crit_edge593.loopexit705, label %.lr.ph592.split.split.split.preheader1066

.lr.ph592.split.split.split.preheader1066:        ; preds = %bb.aj
  %xtraiter1087 = and i32 %i.ee, 1
  %i.gp = icmp eq i32 %9, %.6621
  br i1 %i.gp, label %.lr.ph592.split.split.split.epil.preheader, label %.lr.ph592.split.split.split.preheader1066.new

.lr.ph592.split.split.split.preheader1066.new:    ; preds = %.lr.ph592.split.split.split.preheader1066
  %unroll_iter1093 = and i32 %i.ee, -2
  br label %.lr.ph592.split.split.split

.lr.ph592.split.split.split.us:                   ; preds = %bb.am, %.lr.ph592.split.split.split.us.preheader1067.new
  %indvars.iv778 = phi i64 [ %indvars.iv.next779.peel787, %.lr.ph592.split.split.split.us.preheader1067.new ], [ %indvars.iv.next779.1, %bb.am ] ; 3 uses
  %.0405591.us608 = phi i32 [ 2, %.lr.ph592.split.split.split.us.preheader1067.new ], [ %i.he, %bb.am ] ; 3 uses
  %.1409589.us610 = phi i32 [ %.2.us611.peel785, %.lr.ph592.split.split.split.us.preheader1067.new ], [ %.2.us611.1, %bb.am ] ; 3 uses
  %niter1086 = phi i32 [ 0, %.lr.ph592.split.split.split.us.preheader1067.new ], [ %niter1086.next.1, %bb.am ]
  %i.gq = icmp slt i32 %.0405591.us608, %i.ej
  br i1 %i.gq, label %bb.ak, label %.lr.ph592.split.split.split.us.1

bb.ak:                                            ; preds = %.lr.ph592.split.split.split.us
  %i.gr = add nsw i32 %.1409589.us610, 1
  %i.gs = sext i32 %.1409589.us610 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !55
  br label %.lr.ph592.split.split.split.us.1

.lr.ph592.split.split.split.us.1:                 ; preds = %.lr.ph592.split.split.split.us, %bb.ak
  %.2.us611 = phi i32 [ %i.gr, %bb.ak ], [ %.1409589.us610, %.lr.ph592.split.split.split.us ] ; 3 uses
  %.0406.us612 = phi float [ %i.gu, %bb.ak ], [ 0.000000e+00, %.lr.ph592.split.split.split.us ]
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv778
  store float %.0406.us612, ptr %i.gv, align 4, !tbaa !55
  %i.gw = or disjoint i32 %.0405591.us608, 1
  %i.gx = icmp slt i32 %i.gw, %i.ej
  br i1 %i.gx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph592.split.split.split.us.1
  %i.gy = add nsw i32 %.2.us611, 1
  %i.gz = sext i32 %.2.us611 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !55
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph592.split.split.split.us.1
  %.2.us611.1 = phi i32 [ %i.gy, %bb.al ], [ %.2.us611, %.lr.ph592.split.split.split.us.1 ] ; 3 uses
  %.0406.us612.1 = phi float [ %i.hb, %bb.al ], [ 0.000000e+00, %.lr.ph592.split.split.split.us.1 ]
  %indvars.iv.next779.1 = add nsw i64 %indvars.iv778, 2 ; 3 uses
  %i.hc = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv778
  %i.hd = getelementptr i8, ptr %i.hc, i64 4
  store float %.0406.us612.1, ptr %i.hd, align 4, !tbaa !55
  %i.he = add nuw nsw i32 %.0405591.us608, 2      ; 2 uses
  %niter1086.next.1 = add i32 %niter1086, 2       ; 2 uses
  %niter1086.ncmp.1 = icmp eq i32 %niter1086.next.1, %unroll_iter1085
  br i1 %niter1086.ncmp.1, label %._crit_edge593.loopexit706.loopexit.unr-lcssa, label %.lr.ph592.split.split.split.us, !llvm.loop !23

._crit_edge593.loopexit.unr-lcssa:                ; preds = %bb.ab
  %lcmp.mod1097.not = icmp eq i32 %xtraiter1095, 0
  br i1 %lcmp.mod1097.not, label %._crit_edge593.loopexit, label %.lr.ph592.split.split.us.epil.preheader

.lr.ph592.split.split.us.epil.preheader:          ; preds = %._crit_edge593.loopexit.unr-lcssa, %.lr.ph592.split.split.us.preheader
  %indvars.iv802.epil.init = phi i64 [ %i.el, %.lr.ph592.split.split.us.preheader ], [ %indvars.iv.next803.1, %._crit_edge593.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.us598.epil.init = phi i32 [ 0, %.lr.ph592.split.split.us.preheader ], [ %i.fq, %._crit_edge593.loopexit.unr-lcssa ]
  %.1409589.us600.epil.init = phi i32 [ %.0408622, %.lr.ph592.split.split.us.preheader ], [ %.2.us602.1, %._crit_edge593.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1100 = trunc i32 %indvars.iv761 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1100)
  %i.hf = icmp slt i32 %.0405591.us598.epil.init, %i.ej
  br i1 %i.hf, label %bb.an, label %._crit_edge593.loopexit.epilog-lcssa

bb.an:                                            ; preds = %.lr.ph592.split.split.us.epil.preheader
  %i.hg = add nsw i32 %.1409589.us600.epil.init, 1
  %i.hh = sext i32 %.1409589.us600.epil.init to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !55
  br label %._crit_edge593.loopexit.epilog-lcssa

._crit_edge593.loopexit.epilog-lcssa:             ; preds = %bb.an, %.lr.ph592.split.split.us.epil.preheader
  %.2.us602.epil = phi i32 [ %i.hg, %bb.an ], [ %.1409589.us600.epil.init, %.lr.ph592.split.split.us.epil.preheader ]
  %.0406.us603.epil = phi float [ %i.hj, %bb.an ], [ 0.000000e+00, %.lr.ph592.split.split.us.epil.preheader ]
  %indvars.iv.next803.epil = add nsw i64 %indvars.iv802.epil.init, 1
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv802.epil.init
  store float %.0406.us603.epil, ptr %i.hk, align 4, !tbaa !55
  br label %._crit_edge593.loopexit

._crit_edge593.loopexit:                          ; preds = %._crit_edge593.loopexit.unr-lcssa, %._crit_edge593.loopexit.epilog-lcssa
  %.2.us602.lcssa = phi i32 [ %.2.us602.1, %._crit_edge593.loopexit.unr-lcssa ], [ %.2.us602.epil, %._crit_edge593.loopexit.epilog-lcssa ]
  %indvars.iv.next803.lcssa = phi i64 [ %indvars.iv.next803.1, %._crit_edge593.loopexit.unr-lcssa ], [ %indvars.iv.next803.epil, %._crit_edge593.loopexit.epilog-lcssa ]
  %i.hl = trunc nsw i64 %indvars.iv.next803.lcssa to i32
  br label %._crit_edge593

._crit_edge593.loopexit705.loopexit.unr-lcssa:    ; preds = %bb.as
  %lcmp.mod1089.not = icmp eq i32 %xtraiter1087, 0
  br i1 %lcmp.mod1089.not, label %._crit_edge593.loopexit705, label %.lr.ph592.split.split.split.epil.preheader

.lr.ph592.split.split.split.epil.preheader:       ; preds = %._crit_edge593.loopexit705.loopexit.unr-lcssa, %.lr.ph592.split.split.split.preheader1066
  %indvars.iv790.epil.init = phi i64 [ %indvars.iv.next791.peel799, %.lr.ph592.split.split.split.preheader1066 ], [ %indvars.iv.next791.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.epil.init = phi i32 [ 2, %.lr.ph592.split.split.split.preheader1066 ], [ %i.iq, %._crit_edge593.loopexit705.loopexit.unr-lcssa ]
  %.1409589.epil.init = phi i32 [ %.2.peel797, %.lr.ph592.split.split.split.preheader1066 ], [ %.2.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1092 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod1092)
  %i.hm = icmp slt i32 %.0405591.epil.init, %i.ej
  br i1 %i.hm, label %bb.ao, label %._crit_edge593.loopexit705.loopexit.epilog-lcssa

bb.ao:                                            ; preds = %.lr.ph592.split.split.split.epil.preheader
  %i.hn = add nsw i32 %.1409589.epil.init, 1
  %i.ho = sext i32 %.1409589.epil.init to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !55
  br label %._crit_edge593.loopexit705.loopexit.epilog-lcssa

._crit_edge593.loopexit705.loopexit.epilog-lcssa: ; preds = %bb.ao, %.lr.ph592.split.split.split.epil.preheader
  %.2.epil = phi i32 [ %i.hn, %bb.ao ], [ %.1409589.epil.init, %.lr.ph592.split.split.split.epil.preheader ]
  %.0406.epil = phi float [ %i.hq, %bb.ao ], [ 0.000000e+00, %.lr.ph592.split.split.split.epil.preheader ]
  %indvars.iv.next791.epil = add nsw i64 %indvars.iv790.epil.init, 1
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv790.epil.init
  store float %.0406.epil, ptr %i.hr, align 4, !tbaa !55
  br label %._crit_edge593.loopexit705

._crit_edge593.loopexit705:                       ; preds = %._crit_edge593.loopexit705.loopexit.epilog-lcssa, %._crit_edge593.loopexit705.loopexit.unr-lcssa, %bb.aj, %bb.ah
  %.2.lcssa = phi i32 [ %.2.peel797, %bb.aj ], [ %.2.peel, %bb.ah ], [ %.2.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ], [ %.2.epil, %._crit_edge593.loopexit705.loopexit.epilog-lcssa ]
  %.lcssa720.wide = phi i64 [ %indvars.iv.next791.peel799, %bb.aj ], [ %indvars.iv.next791.peel, %bb.ah ], [ %indvars.iv.next791.1, %._crit_edge593.loopexit705.loopexit.unr-lcssa ], [ %indvars.iv.next791.epil, %._crit_edge593.loopexit705.loopexit.epilog-lcssa ]
  %i.hs = trunc nsw i64 %.lcssa720.wide to i32
  br label %._crit_edge593

._crit_edge593.loopexit706.loopexit.unr-lcssa:    ; preds = %bb.am
  %lcmp.mod1081.not = icmp eq i32 %xtraiter1079, 0
  br i1 %lcmp.mod1081.not, label %._crit_edge593.loopexit706, label %.lr.ph592.split.split.split.us.epil.preheader

.lr.ph592.split.split.split.us.epil.preheader:    ; preds = %._crit_edge593.loopexit706.loopexit.unr-lcssa, %.lr.ph592.split.split.split.us.preheader1067
  %indvars.iv778.epil.init = phi i64 [ %indvars.iv.next779.peel787, %.lr.ph592.split.split.split.us.preheader1067 ], [ %indvars.iv.next779.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ] ; 2 uses
  %.0405591.us608.epil.init = phi i32 [ 2, %.lr.ph592.split.split.split.us.preheader1067 ], [ %i.he, %._crit_edge593.loopexit706.loopexit.unr-lcssa ]
  %.1409589.us610.epil.init = phi i32 [ %.2.us611.peel785, %.lr.ph592.split.split.split.us.preheader1067 ], [ %.2.us611.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1084 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod1084)
  %i.ht = icmp slt i32 %.0405591.us608.epil.init, %i.ej
  br i1 %i.ht, label %bb.ap, label %._crit_edge593.loopexit706.loopexit.epilog-lcssa

bb.ap:                                            ; preds = %.lr.ph592.split.split.split.us.epil.preheader
  %i.hu = add nsw i32 %.1409589.us610.epil.init, 1
  %i.hv = sext i32 %.1409589.us610.epil.init to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !55
  br label %._crit_edge593.loopexit706.loopexit.epilog-lcssa

._crit_edge593.loopexit706.loopexit.epilog-lcssa: ; preds = %bb.ap, %.lr.ph592.split.split.split.us.epil.preheader
  %.2.us611.epil = phi i32 [ %i.hu, %bb.ap ], [ %.1409589.us610.epil.init, %.lr.ph592.split.split.split.us.epil.preheader ]
  %.0406.us612.epil = phi float [ %i.hx, %bb.ap ], [ 0.000000e+00, %.lr.ph592.split.split.split.us.epil.preheader ]
  %indvars.iv.next779.epil = add nsw i64 %indvars.iv778.epil.init, 1
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv778.epil.init
  store float %.0406.us612.epil, ptr %i.hy, align 4, !tbaa !55
  br label %._crit_edge593.loopexit706

._crit_edge593.loopexit706:                       ; preds = %._crit_edge593.loopexit706.loopexit.epilog-lcssa, %._crit_edge593.loopexit706.loopexit.unr-lcssa, %bb.af, %bb.ad
  %.2.us611.lcssa = phi i32 [ %.2.us611.peel785, %bb.af ], [ %.2.us611.peel, %bb.ad ], [ %.2.us611.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ], [ %.2.us611.epil, %._crit_edge593.loopexit706.loopexit.epilog-lcssa ]
  %.lcssa719.wide = phi i64 [ %indvars.iv.next779.peel787, %bb.af ], [ %indvars.iv.next779.peel, %bb.ad ], [ %indvars.iv.next779.1, %._crit_edge593.loopexit706.loopexit.unr-lcssa ], [ %indvars.iv.next779.epil, %._crit_edge593.loopexit706.loopexit.epilog-lcssa ]
  %i.hz = trunc nsw i64 %.lcssa719.wide to i32
  br label %._crit_edge593

._crit_edge593.loopexit708:                       ; preds = %.lr.ph592.split.us.split, %middle.block1017, %.lr.ph592.split.us.split.peel.next, %.lr.ph592.split.us.split.preheader
  %.lcssa717.wide = phi i64 [ %indvars.iv.next759.peel769, %.lr.ph592.split.us.split.peel.next ], [ %indvars.iv.next759.peel, %.lr.ph592.split.us.split.preheader ], [ %i.ep, %middle.block1017 ], [ %indvars.iv.next759, %.lr.ph592.split.us.split ]
  %i.ia = trunc nsw i64 %.lcssa717.wide to i32
  br label %._crit_edge593

._crit_edge593:                                   ; preds = %._crit_edge593.loopexit708, %.lr.ph592.split.us.split.us.preheader, %._crit_edge593.loopexit706, %._crit_edge593.loopexit705, %._crit_edge593.loopexit, %.preheader550
  %.1409.lcssa = phi i32 [ %.0408622, %.preheader550 ], [ %.2.us611.lcssa, %._crit_edge593.loopexit706 ], [ %.0408622, %.lr.ph592.split.us.split.us.preheader ], [ %.2.us602.lcssa, %._crit_edge593.loopexit ], [ %.2.lcssa, %._crit_edge593.loopexit705 ], [ %.0408622, %._crit_edge593.loopexit708 ]
  %.1.lcssa = phi i32 [ %.0407623, %.preheader550 ], [ %i.hz, %._crit_edge593.loopexit706 ], [ %i.ey, %.lr.ph592.split.us.split.us.preheader ], [ %i.hl, %._crit_edge593.loopexit ], [ %i.hs, %._crit_edge593.loopexit705 ], [ %i.ia, %._crit_edge593.loopexit708 ]
  %i.ib = add nuw nsw i32 %.6621, 1               ; 2 uses
  %indvars.iv.next762 = add i32 %indvars.iv761, -1
  %indvars.iv.next775 = add i32 %indvars.iv774, -1
  %exitcond806.not = icmp eq i32 %i.ib, %i.dj
  br i1 %exitcond806.not, label %._crit_edge624, label %.preheader550, !llvm.loop !24

.lr.ph592.split.split.split:                      ; preds = %bb.as, %.lr.ph592.split.split.split.preheader1066.new
  %indvars.iv790 = phi i64 [ %indvars.iv.next791.peel799, %.lr.ph592.split.split.split.preheader1066.new ], [ %indvars.iv.next791.1, %bb.as ] ; 3 uses
  %.0405591 = phi i32 [ 2, %.lr.ph592.split.split.split.preheader1066.new ], [ %i.iq, %bb.as ] ; 3 uses
  %.1409589 = phi i32 [ %.2.peel797, %.lr.ph592.split.split.split.preheader1066.new ], [ %.2.1, %bb.as ] ; 3 uses
  %niter1094 = phi i32 [ 0, %.lr.ph592.split.split.split.preheader1066.new ], [ %niter1094.next.1, %bb.as ]
  %i.ic = icmp slt i32 %.0405591, %i.ej
  br i1 %i.ic, label %bb.aq, label %.lr.ph592.split.split.split.1

bb.aq:                                            ; preds = %.lr.ph592.split.split.split
  %i.id = add nsw i32 %.1409589, 1
  %i.ie = sext i32 %.1409589 to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !55
  br label %.lr.ph592.split.split.split.1

.lr.ph592.split.split.split.1:                    ; preds = %.lr.ph592.split.split.split, %bb.aq
  %.2 = phi i32 [ %i.id, %bb.aq ], [ %.1409589, %.lr.ph592.split.split.split ] ; 3 uses
  %.0406 = phi float [ %i.ig, %bb.aq ], [ 0.000000e+00, %.lr.ph592.split.split.split ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv790
  store float %.0406, ptr %i.ih, align 4, !tbaa !55
  %i.ii = or disjoint i32 %.0405591, 1
  %i.ij = icmp slt i32 %i.ii, %i.ej
  br i1 %i.ij, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph592.split.split.split.1
  %i.ik = add nsw i32 %.2, 1
  %i.il = sext i32 %.2 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !55
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph592.split.split.split.1
  %.2.1 = phi i32 [ %i.ik, %bb.ar ], [ %.2, %.lr.ph592.split.split.split.1 ] ; 3 uses
  %.0406.1 = phi float [ %i.in, %bb.ar ], [ 0.000000e+00, %.lr.ph592.split.split.split.1 ]
  %indvars.iv.next791.1 = add nsw i64 %indvars.iv790, 2 ; 3 uses
end_hunk_0
