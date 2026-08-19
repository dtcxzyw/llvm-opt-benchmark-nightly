inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@stress_majorization_cola:bb.a
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv724 = phi i64 [ %indvars.iv.next725, %scalar.ph ], [ %indvars.iv724.ph, %scalar.ph.preheader ] ; 2 uses
  %.1414566.us = phi double [ %i.ch, %scalar.ph ], [ %.1414566.us.ph, %scalar.ph.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv724
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !28
  %i.cg = tail call nsz double @llvm.fabs.f64(double %i.cf)
  %i.ch = tail call nsz double @llvm.maxnum.f64(double %.1414566.us, double %i.cg) ; 2 uses
  %indvars.iv.next725 = add nuw nsw i64 %indvars.iv724, 1 ; 2 uses
  %exitcond728.not = icmp eq i64 %indvars.iv.next725, %wide.trip.count727
  br i1 %exitcond728.not, label %._crit_edge569.us, label %scalar.ph, !llvm.loop !33

._crit_edge569.us:                                ; preds = %scalar.ph, %middle.block
  %.lcssa974 = phi double [ %i.cd, %middle.block ], [ %i.ch, %scalar.ph ] ; 2 uses
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %exitcond733.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count732
  br i1 %exitcond733.not, label %.preheader548.lr.ph, label %.preheader550.us, !llvm.loop !34

.preheader548.lr.ph:                              ; preds = %._crit_edge569.us
  %i.ci = fdiv double 1.000000e+01, %.lcssa974    ; 2 uses
  %wide.trip.count742 = zext nneg i32 %4 to i64
  %wide.trip.count737 = zext nneg i32 %1 to i64
  %min.iters.check979 = icmp ult i32 %1, 4
  %n.vec981 = and i64 %wide.trip.count727, 2147483644 ; 3 uses
  %broadcast.splatinsert982 = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat983 = shufflevector <2 x double> %broadcast.splatinsert982, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n990 = icmp eq i64 %n.vec981, %wide.trip.count727
  br label %.preheader548

.preheader548:                                    ; preds = %.preheader548.lr.ph, %._crit_edge576
  %indvars.iv739 = phi i64 [ 0, %.preheader548.lr.ph ], [ %indvars.iv.next740, %._crit_edge576 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv739
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26 ; 2 uses
  br i1 %min.iters.check979, label %scalar.ph978.preheader, label %vector.body984

vector.body984:                                   ; preds = %.preheader548, %vector.body984
  %index985 = phi i64 [ %index.next988, %vector.body984 ], [ 0, %.preheader548 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index985 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load986 = load <2 x double>, ptr %i.cl, align 8, !tbaa !28
  %wide.load987 = load <2 x double>, ptr %i.cm, align 8, !tbaa !28
  %i.cn = fmul <2 x double> %broadcast.splat983, %wide.load986
  %i.co = fmul <2 x double> %broadcast.splat983, %wide.load987
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !28
  store <2 x double> %i.co, ptr %i.cm, align 8, !tbaa !28
  %index.next988 = add nuw i64 %index985, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next988, %n.vec981
  br i1 %i.cp, label %middle.block989, label %vector.body984, !llvm.loop !35

middle.block989:                                  ; preds = %vector.body984
  br i1 %cmp.n990, label %._crit_edge576, label %scalar.ph978.preheader

scalar.ph978.preheader:                           ; preds = %.preheader548, %middle.block989
  %indvars.iv734.ph = phi i64 [ 0, %.preheader548 ], [ %n.vec981, %middle.block989 ]
  br label %scalar.ph978

.lr.ph579.preheader:                              ; preds = %._crit_edge576, %.preheader550.lr.ph
  %wide.trip.count747 = zext nneg i32 %4 to i64
  br label %.lr.ph579

._crit_edge576:                                   ; preds = %scalar.ph978, %middle.block989
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %wide.trip.count742
  br i1 %exitcond743.not, label %.lr.ph579.preheader, label %.preheader548, !llvm.loop !36

scalar.ph978:                                     ; preds = %scalar.ph978.preheader, %scalar.ph978
  %indvars.iv734 = phi i64 [ %indvars.iv.next735, %scalar.ph978 ], [ %indvars.iv734.ph, %scalar.ph978.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv734 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !28
  %i.cs = fmul double %i.ci, %i.cr
  store double %i.cs, ptr %i.cq, align 8, !tbaa !28
  %indvars.iv.next735 = add nuw nsw i64 %indvars.iv734, 1 ; 2 uses
  %exitcond738.not = icmp eq i64 %indvars.iv.next735, %wide.trip.count737
  br i1 %exitcond738.not, label %._crit_edge576, label %scalar.ph978, !llvm.loop !37

.lr.ph579:                                        ; preds = %.lr.ph579.preheader, %.lr.ph579
  %indvars.iv744 = phi i64 [ 0, %.lr.ph579.preheader ], [ %indvars.iv.next745, %.lr.ph579 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv744
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !26
  tail call void @orthog1(i32 noundef %1, ptr noundef %i.cu) #11
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next745, %wide.trip.count747
  br i1 %exitcond748.not, label %._crit_edge580, label %.lr.ph579, !llvm.loop !38

._crit_edge580:                                   ; preds = %.lr.ph579, %.preheader551
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !26 ; 3 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  br i1 %i.c, label %.lr.ph583.preheader, label %._crit_edge584

.lr.ph583.preheader:                              ; preds = %._crit_edge580
  %wide.trip.count752 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check993 = icmp ult i32 %1, 4
  br i1 %min.iters.check993, label %.lr.ph583.preheader1067, label %vector.ph994

vector.ph994:                                     ; preds = %.lr.ph583.preheader
  %n.vec995 = and i64 %wide.trip.count752, 2147483644 ; 3 uses
  %broadcast.splatinsert996 = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat997 = shufflevector <2 x double> %broadcast.splatinsert996, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph994
  %index999 = phi i64 [ 0, %vector.ph994 ], [ %index.next1002, %vector.body998 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index999 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %wide.load1000 = load <2 x double>, ptr %i.cy, align 8, !tbaa !28
  %wide.load1001 = load <2 x double>, ptr %i.cz, align 8, !tbaa !28
  %i.da = fsub <2 x double> %wide.load1000, %broadcast.splat997
  %i.db = fsub <2 x double> %wide.load1001, %broadcast.splat997
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !28
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !28
  %index.next1002 = add nuw i64 %index999, 4      ; 2 uses
  %i.dc = icmp eq i64 %index.next1002, %n.vec995
  br i1 %i.dc, label %middle.block1003, label %vector.body998, !llvm.loop !39

middle.block1003:                                 ; preds = %vector.body998
  %cmp.n1004 = icmp eq i64 %n.vec995, %wide.trip.count752
  br i1 %cmp.n1004, label %._crit_edge584, label %.lr.ph583.preheader1067

.lr.ph583.preheader1067:                          ; preds = %.lr.ph583.preheader, %middle.block1003
  %indvars.iv749.ph = phi i64 [ 0, %.lr.ph583.preheader ], [ %n.vec995, %middle.block1003 ]
  br label %.lr.ph583

.lr.ph583:                                        ; preds = %.lr.ph583.preheader1067, %.lr.ph583
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %.lr.ph583 ], [ %indvars.iv749.ph, %.lr.ph583.preheader1067 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv749 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !28
  %i.df = fsub double %i.de, %i.cx
  store double %i.df, ptr %i.dd, align 8, !tbaa !28
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond753.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count752
  br i1 %exitcond753.not, label %._crit_edge584, label %.lr.ph583, !llvm.loop !40

._crit_edge584:                                   ; preds = %.lr.ph583, %middle.block1003, %._crit_edge580
  %i.dg = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not481 = icmp eq i8 %i.dg, 0
  br i1 %.not481, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge584
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.di = tail call double @elapsed_sec() #11
  %i.dj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.7, double noundef %i.di) #13 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge584
  tail call void @square_vec(i32 noundef %i.bk, ptr noundef %.1433) #11
  tail call void @invert_vec(i32 noundef %i.bk, ptr noundef %.1433) #11
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !41 ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.dn = shl nuw nsw i32 %i.dl, 1                ; 2 uses
  %i.do = add nsw i32 %i.dn, %1                   ; 8 uses
  %i.dp = add nsw i32 %i.do, -1                   ; 3 uses
  %i.dq = mul nsw i32 %i.dp, %i.do
  %i.dr = sdiv i32 %i.dq, 2
  %i.ds = add nsw i32 %i.dr, %i.do                ; 4 uses
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %bb.u
  %i.du = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  br label %gv_calloc.exit

bb.v:                                             ; preds = %bb.u
  %mul.ov.i = icmp slt i32 %i.ds, 0
  br i1 %mul.ov.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.dt, i64 noundef 4) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dx = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.dt, i64 noundef 4) #14 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.y, label %gv_calloc.exit

bb.y:                                             ; preds = %bb.x
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ea = shl nuw nsw i64 %i.dt, 2
  %i.eb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.13, i64 noundef %i.ea) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.x
  %i.ec = phi ptr [ %i.du, %.thread.i ], [ %i.dx, %bb.x ] ; 19 uses
  %i.ed = icmp sgt i32 %i.do, 0
  br i1 %i.ed, label %.preheader546.lr.ph, label %._crit_edge620

.preheader546.lr.ph:                              ; preds = %gv_calloc.exit
  %i.ee = fcmp ule float %.0415.lcssa, f0x3C23D70A ; 2 uses
  %i.ef = fdiv float 1.000000e+00, %.0415.lcssa   ; 2 uses
  %.mux.peel = select i1 %i.ee, float %.0415.lcssa, float %i.ef
  %i.eg = add i32 %1, %i.dn                       ; 2 uses
  %i.eh = add i32 %i.eg, -2
  %i.ei = add i32 %i.eg, -3                       ; 2 uses
  br label %.preheader546

.preheader546:                                    ; preds = %.preheader546.lr.ph, %._crit_edge589
  %indvars.iv770 = phi i32 [ %i.dp, %.preheader546.lr.ph ], [ %indvars.iv.next771, %._crit_edge589 ] ; 2 uses
  %indvars.iv757 = phi i32 [ %i.do, %.preheader546.lr.ph ], [ %indvars.iv.next758, %._crit_edge589 ] ; 12 uses
  %.0407619 = phi i32 [ 0, %.preheader546.lr.ph ], [ %.1.lcssa, %._crit_edge589 ] ; 3 uses
  %.0408618 = phi i32 [ 0, %.preheader546.lr.ph ], [ %.1409.lcssa, %._crit_edge589 ] ; 11 uses
  %.6617 = phi i32 [ 0, %.preheader546.lr.ph ], [ %i.ig, %._crit_edge589 ] ; 9 uses
  %i.ej = sub i32 %i.eh, %.6617                   ; 8 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = zext i32 %indvars.iv757 to i64
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = icmp sgt i32 %i.do, %.6617
  br i1 %i.en, label %.lr.ph588, label %._crit_edge589

.lr.ph588:                                        ; preds = %.preheader546
  %i.eo = icmp slt i32 %.6617, %1
  %i.ep = sub nsw i32 %1, %.6617                  ; 12 uses
  %i.eq = and i32 %.6617, 1
  %.not488 = icmp eq i32 %i.eq, 0                 ; 2 uses
  %i.er = sext i32 %.0407619 to i64               ; 12 uses
  br i1 %i.eo, label %.lr.ph588.split, label %.lr.ph588.split.us

.lr.ph588.split.us:                               ; preds = %.lr.ph588
  br i1 %.not488, label %.lr.ph588.split.us.split.us.preheader, label %.lr.ph588.split.us.split.preheader

.lr.ph588.split.us.split.preheader:               ; preds = %.lr.ph588.split.us
  %indvars.iv.next755.peel = add nsw i64 %i.er, 1 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.er
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !16
  %exitcond759.peel.not = icmp eq i32 %indvars.iv757, 1
  br i1 %exitcond759.peel.not, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split.peel.next

.lr.ph588.split.us.split.peel.next:               ; preds = %.lr.ph588.split.us.split.preheader
  %indvars.iv.next755.peel765 = add nsw i64 %i.er, 2 ; 4 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv.next755.peel
  store float %.mux.peel, ptr %i.et, align 4, !tbaa !16
  %exitcond759.peel766.not = icmp eq i32 %indvars.iv757, 2
  br i1 %exitcond759.peel766.not, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split.preheader966

.lr.ph588.split.us.split.preheader966:            ; preds = %.lr.ph588.split.us.split.peel.next
  %min.iters.check1007 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check1007, label %.lr.ph588.split.us.split.preheader1064, label %vector.ph1008

vector.ph1008:                                    ; preds = %.lr.ph588.split.us.split.preheader966
  %n.vec1009 = and i64 %i.ek, 4294967288          ; 4 uses
  %i.eu = add nsw i64 %indvars.iv.next755.peel765, %n.vec1009 ; 2 uses
  %i.ev = trunc nuw i64 %n.vec1009 to i32
  %i.ew = or disjoint i32 %i.ev, 2
  %i.ex = getelementptr [4 x i8], ptr %i.ec, i64 %indvars.iv.next755.peel765
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1012, %vector.body1010 ] ; 2 uses
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %index1011 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x float> zeroinitializer, ptr %i.ey, align 4, !tbaa !16
  store <4 x float> zeroinitializer, ptr %i.ez, align 4, !tbaa !16
  %index.next1012 = add nuw i64 %index1011, 8     ; 2 uses
  %i.fa = icmp eq i64 %index.next1012, %n.vec1009
  br i1 %i.fa, label %middle.block1013, label %vector.body1010, !llvm.loop !48

middle.block1013:                                 ; preds = %vector.body1010
  %cmp.n1014 = icmp eq i64 %n.vec1009, %i.ek
  br i1 %cmp.n1014, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split.preheader1064

.lr.ph588.split.us.split.preheader1064:           ; preds = %.lr.ph588.split.us.split.preheader966, %middle.block1013
  %indvars.iv754.ph = phi i64 [ %indvars.iv.next755.peel765, %.lr.ph588.split.us.split.preheader966 ], [ %i.eu, %middle.block1013 ]
  %.0405587.us.ph = phi i32 [ 2, %.lr.ph588.split.us.split.preheader966 ], [ %i.ew, %middle.block1013 ]
  br label %.lr.ph588.split.us.split

.lr.ph588.split.us.split.us.preheader:            ; preds = %.lr.ph588.split.us
  %i.fb = shl nsw i64 %i.er, 2
  %scevgep = getelementptr i8, ptr %i.ec, i64 %i.fb
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.em, i1 false), !tbaa !16
  %i.fc = add i32 %.0407619, 1
  %i.fd = add i32 %i.fc, %indvars.iv770
  br label %._crit_edge589

.lr.ph588.split.us.split:                         ; preds = %.lr.ph588.split.us.split.preheader1064, %.lr.ph588.split.us.split
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph588.split.us.split ], [ %indvars.iv754.ph, %.lr.ph588.split.us.split.preheader1064 ] ; 2 uses
  %.0405587.us = phi i32 [ %i.ff, %.lr.ph588.split.us.split ], [ %.0405587.us.ph, %.lr.ph588.split.us.split.preheader1064 ]
  %indvars.iv.next755 = add nsw i64 %indvars.iv754, 1 ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv754
  store float 0.000000e+00, ptr %i.fe, align 4, !tbaa !16
  %i.ff = add nuw nsw i32 %.0405587.us, 1         ; 2 uses
  %exitcond759.not = icmp eq i32 %i.ff, %indvars.iv757
  br i1 %exitcond759.not, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split, !llvm.loop !50

.lr.ph588.split:                                  ; preds = %.lr.ph588
  br i1 %.not488, label %.lr.ph588.split.split.us.preheader, label %.lr.ph588.split.split

.lr.ph588.split.split.us.preheader:               ; preds = %.lr.ph588.split
  %xtraiter1091 = and i32 %indvars.iv757, 1
  %i.fg = icmp eq i32 %i.dp, %.6617
  br i1 %i.fg, label %.lr.ph588.split.split.us.epil.preheader, label %.lr.ph588.split.split.us.preheader.new

.lr.ph588.split.split.us.preheader.new:           ; preds = %.lr.ph588.split.split.us.preheader
  %unroll_iter1097 = and i32 %indvars.iv757, -2
  br label %.lr.ph588.split.split.us

.lr.ph588.split.split.us:                         ; preds = %bb.ab, %.lr.ph588.split.split.us.preheader.new
  %indvars.iv798 = phi i64 [ %i.er, %.lr.ph588.split.split.us.preheader.new ], [ %indvars.iv.next799.1, %bb.ab ] ; 3 uses
  %.0405587.us594 = phi i32 [ 0, %.lr.ph588.split.split.us.preheader.new ], [ %i.fv, %bb.ab ] ; 3 uses
  %.1409585.us596 = phi i32 [ %.0408618, %.lr.ph588.split.split.us.preheader.new ], [ %.2.us598.1, %bb.ab ] ; 3 uses
  %niter1098 = phi i32 [ 0, %.lr.ph588.split.split.us.preheader.new ], [ %niter1098.next.1, %bb.ab ]
  %i.fh = icmp slt i32 %.0405587.us594, %i.ep
  br i1 %i.fh, label %bb.z, label %.lr.ph588.split.split.us.1

bb.z:                                             ; preds = %.lr.ph588.split.split.us
  %i.fi = add nsw i32 %.1409585.us596, 1
  %i.fj = sext i32 %.1409585.us596 to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !16
  br label %.lr.ph588.split.split.us.1

.lr.ph588.split.split.us.1:                       ; preds = %.lr.ph588.split.split.us, %bb.z
  %.2.us598 = phi i32 [ %i.fi, %bb.z ], [ %.1409585.us596, %.lr.ph588.split.split.us ] ; 3 uses
  %.0406.us599 = phi float [ %i.fl, %bb.z ], [ 0.000000e+00, %.lr.ph588.split.split.us ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv798
  store float %.0406.us599, ptr %i.fm, align 4, !tbaa !16
  %i.fn = or disjoint i32 %.0405587.us594, 1
  %i.fo = icmp slt i32 %i.fn, %i.ep
  br i1 %i.fo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph588.split.split.us.1
  %i.fp = add nsw i32 %.2.us598, 1
  %i.fq = sext i32 %.2.us598 to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph588.split.split.us.1
  %.2.us598.1 = phi i32 [ %i.fp, %bb.aa ], [ %.2.us598, %.lr.ph588.split.split.us.1 ] ; 3 uses
  %.0406.us599.1 = phi float [ %i.fs, %bb.aa ], [ 0.000000e+00, %.lr.ph588.split.split.us.1 ]
  %indvars.iv.next799.1 = add nsw i64 %indvars.iv798, 2 ; 3 uses
  %i.ft = getelementptr [4 x i8], ptr %i.ec, i64 %indvars.iv798
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  store float %.0406.us599.1, ptr %i.fu, align 4, !tbaa !16
  %i.fv = add nuw nsw i32 %.0405587.us594, 2      ; 2 uses
  %niter1098.next.1 = add i32 %niter1098, 2       ; 2 uses
  %niter1098.ncmp.1 = icmp eq i32 %niter1098.next.1, %unroll_iter1097
  br i1 %niter1098.ncmp.1, label %._crit_edge589.loopexit.unr-lcssa, label %.lr.ph588.split.split.us, !llvm.loop !51

.lr.ph588.split.split:                            ; preds = %.lr.ph588.split
  %i.fw = icmp sgt i32 %i.ep, 0                   ; 2 uses
  br i1 %i.ee, label %.lr.ph588.split.split.split.preheader, label %.lr.ph588.split.split.split.us.preheader

.lr.ph588.split.split.split.us.preheader:         ; preds = %.lr.ph588.split.split
  br i1 %i.fw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph588.split.split.split.us.preheader
  %i.fx = add nsw i32 %.0408618, 1
  %i.fy = sext i32 %.0408618 to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !16
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph588.split.split.split.us.preheader, %bb.ac
  %.2.us607.peel = phi i32 [ %i.fx, %bb.ac ], [ %.0408618, %.lr.ph588.split.split.split.us.preheader ] ; 4 uses
  %.0406.us608.peel = phi float [ %i.ga, %bb.ac ], [ 0.000000e+00, %.lr.ph588.split.split.split.us.preheader ]
  %indvars.iv.next775.peel = add nsw i64 %i.er, 1 ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.er
  store float %.0406.us608.peel, ptr %i.gb, align 4, !tbaa !16
  %exitcond777.peel.not = icmp eq i32 %indvars.iv757, 1
  br i1 %exitcond777.peel.not, label %._crit_edge589.loopexit702, label %.lr.ph588.split.split.split.us.peel.next

.lr.ph588.split.split.split.us.peel.next:         ; preds = %bb.ad
  %i.gc = icmp sgt i32 %i.ep, 1
  br i1 %i.gc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph588.split.split.split.us.peel.next
  %i.gd = add nsw i32 %.2.us607.peel, 1
  %i.ge = sext i32 %.2.us607.peel to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph588.split.split.split.us.peel.next, %bb.ae
  %.2.us607.peel781 = phi i32 [ %i.gd, %bb.ae ], [ %.2.us607.peel, %.lr.ph588.split.split.split.us.peel.next ] ; 3 uses
  %.0406.us608.peel782 = phi float [ %i.gg, %bb.ae ], [ %i.ef, %.lr.ph588.split.split.split.us.peel.next ]
  %indvars.iv.next775.peel783 = add nsw i64 %i.er, 2 ; 3 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv.next775.peel
  store float %.0406.us608.peel782, ptr %i.gh, align 4, !tbaa !16
  %exitcond777.peel784.not = icmp eq i32 %indvars.iv757, 2
  br i1 %exitcond777.peel784.not, label %._crit_edge589.loopexit702, label %.lr.ph588.split.split.split.us.preheader1063

.lr.ph588.split.split.split.us.preheader1063:     ; preds = %bb.af
  %xtraiter1075 = and i32 %i.ej, 1
  %i.gi = icmp eq i32 %i.ei, %.6617
  br i1 %i.gi, label %.lr.ph588.split.split.split.us.epil.preheader, label %.lr.ph588.split.split.split.us.preheader1063.new

.lr.ph588.split.split.split.us.preheader1063.new: ; preds = %.lr.ph588.split.split.split.us.preheader1063
  %unroll_iter1081 = and i32 %i.ej, -2
  br label %.lr.ph588.split.split.split.us

.lr.ph588.split.split.split.preheader:            ; preds = %.lr.ph588.split.split
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph588.split.split.split.preheader
  %i.gj = add nsw i32 %.0408618, 1
  %i.gk = sext i32 %.0408618 to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph588.split.split.split.preheader, %bb.ag
  %.2.peel = phi i32 [ %i.gj, %bb.ag ], [ %.0408618, %.lr.ph588.split.split.split.preheader ] ; 4 uses
  %.0406.peel = phi float [ %i.gm, %bb.ag ], [ 0.000000e+00, %.lr.ph588.split.split.split.preheader ]
  %indvars.iv.next787.peel = add nsw i64 %i.er, 1 ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.er
  store float %.0406.peel, ptr %i.gn, align 4, !tbaa !16
  %exitcond789.peel.not = icmp eq i32 %indvars.iv757, 1
  br i1 %exitcond789.peel.not, label %._crit_edge589.loopexit701, label %.lr.ph588.split.split.split.peel.next

.lr.ph588.split.split.split.peel.next:            ; preds = %bb.ah
  %i.go = icmp sgt i32 %i.ep, 1
  br i1 %i.go, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph588.split.split.split.peel.next
  %i.gp = add nsw i32 %.2.peel, 1
  %i.gq = sext i32 %.2.peel to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph588.split.split.split.peel.next, %bb.ai
  %.2.peel793 = phi i32 [ %i.gp, %bb.ai ], [ %.2.peel, %.lr.ph588.split.split.split.peel.next ] ; 3 uses
  %.0406.peel794 = phi float [ %i.gs, %bb.ai ], [ %.0415.lcssa, %.lr.ph588.split.split.split.peel.next ]
  %indvars.iv.next787.peel795 = add nsw i64 %i.er, 2 ; 3 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv.next787.peel
  store float %.0406.peel794, ptr %i.gt, align 4, !tbaa !16
  %exitcond789.peel796.not = icmp eq i32 %indvars.iv757, 2
  br i1 %exitcond789.peel796.not, label %._crit_edge589.loopexit701, label %.lr.ph588.split.split.split.preheader1062

.lr.ph588.split.split.split.preheader1062:        ; preds = %bb.aj
  %xtraiter1083 = and i32 %i.ej, 1
  %i.gu = icmp eq i32 %i.ei, %.6617
  br i1 %i.gu, label %.lr.ph588.split.split.split.epil.preheader, label %.lr.ph588.split.split.split.preheader1062.new

.lr.ph588.split.split.split.preheader1062.new:    ; preds = %.lr.ph588.split.split.split.preheader1062
  %unroll_iter1089 = and i32 %i.ej, -2
  br label %.lr.ph588.split.split.split

.lr.ph588.split.split.split.us:                   ; preds = %bb.am, %.lr.ph588.split.split.split.us.preheader1063.new
  %indvars.iv774 = phi i64 [ %indvars.iv.next775.peel783, %.lr.ph588.split.split.split.us.preheader1063.new ], [ %indvars.iv.next775.1, %bb.am ] ; 3 uses
  %.0405587.us604 = phi i32 [ 2, %.lr.ph588.split.split.split.us.preheader1063.new ], [ %i.hj, %bb.am ] ; 3 uses
  %.1409585.us606 = phi i32 [ %.2.us607.peel781, %.lr.ph588.split.split.split.us.preheader1063.new ], [ %.2.us607.1, %bb.am ] ; 3 uses
  %niter1082 = phi i32 [ 0, %.lr.ph588.split.split.split.us.preheader1063.new ], [ %niter1082.next.1, %bb.am ]
  %i.gv = icmp slt i32 %.0405587.us604, %i.ep
  br i1 %i.gv, label %bb.ak, label %.lr.ph588.split.split.split.us.1

bb.ak:                                            ; preds = %.lr.ph588.split.split.split.us
  %i.gw = add nsw i32 %.1409585.us606, 1
  %i.gx = sext i32 %.1409585.us606 to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !16
  br label %.lr.ph588.split.split.split.us.1

.lr.ph588.split.split.split.us.1:                 ; preds = %.lr.ph588.split.split.split.us, %bb.ak
  %.2.us607 = phi i32 [ %i.gw, %bb.ak ], [ %.1409585.us606, %.lr.ph588.split.split.split.us ] ; 3 uses
  %.0406.us608 = phi float [ %i.gz, %bb.ak ], [ 0.000000e+00, %.lr.ph588.split.split.split.us ]
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv774
  store float %.0406.us608, ptr %i.ha, align 4, !tbaa !16
  %i.hb = or disjoint i32 %.0405587.us604, 1
  %i.hc = icmp slt i32 %i.hb, %i.ep
  br i1 %i.hc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph588.split.split.split.us.1
  %i.hd = add nsw i32 %.2.us607, 1
  %i.he = sext i32 %.2.us607 to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph588.split.split.split.us.1
  %.2.us607.1 = phi i32 [ %i.hd, %bb.al ], [ %.2.us607, %.lr.ph588.split.split.split.us.1 ] ; 3 uses
  %.0406.us608.1 = phi float [ %i.hg, %bb.al ], [ 0.000000e+00, %.lr.ph588.split.split.split.us.1 ]
  %indvars.iv.next775.1 = add nsw i64 %indvars.iv774, 2 ; 3 uses
  %i.hh = getelementptr [4 x i8], ptr %i.ec, i64 %indvars.iv774
  %i.hi = getelementptr i8, ptr %i.hh, i64 4
  store float %.0406.us608.1, ptr %i.hi, align 4, !tbaa !16
  %i.hj = add nuw nsw i32 %.0405587.us604, 2      ; 2 uses
  %niter1082.next.1 = add i32 %niter1082, 2       ; 2 uses
  %niter1082.ncmp.1 = icmp eq i32 %niter1082.next.1, %unroll_iter1081
  br i1 %niter1082.ncmp.1, label %._crit_edge589.loopexit702.loopexit.unr-lcssa, label %.lr.ph588.split.split.split.us, !llvm.loop !52

._crit_edge589.loopexit.unr-lcssa:                ; preds = %bb.ab
  %lcmp.mod1093.not = icmp eq i32 %xtraiter1091, 0
  br i1 %lcmp.mod1093.not, label %._crit_edge589.loopexit, label %.lr.ph588.split.split.us.epil.preheader

.lr.ph588.split.split.us.epil.preheader:          ; preds = %._crit_edge589.loopexit.unr-lcssa, %.lr.ph588.split.split.us.preheader
  %indvars.iv798.epil.init = phi i64 [ %i.er, %.lr.ph588.split.split.us.preheader ], [ %indvars.iv.next799.1, %._crit_edge589.loopexit.unr-lcssa ] ; 2 uses
  %.0405587.us594.epil.init = phi i32 [ 0, %.lr.ph588.split.split.us.preheader ], [ %i.fv, %._crit_edge589.loopexit.unr-lcssa ]
  %.1409585.us596.epil.init = phi i32 [ %.0408618, %.lr.ph588.split.split.us.preheader ], [ %.2.us598.1, %._crit_edge589.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1096 = trunc i32 %indvars.iv757 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1096)
  %i.hk = icmp slt i32 %.0405587.us594.epil.init, %i.ep
  br i1 %i.hk, label %bb.an, label %._crit_edge589.loopexit.epilog-lcssa

bb.an:                                            ; preds = %.lr.ph588.split.split.us.epil.preheader
  %i.hl = add nsw i32 %.1409585.us596.epil.init, 1
  %i.hm = sext i32 %.1409585.us596.epil.init to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !16
  br label %._crit_edge589.loopexit.epilog-lcssa

._crit_edge589.loopexit.epilog-lcssa:             ; preds = %bb.an, %.lr.ph588.split.split.us.epil.preheader
  %.2.us598.epil = phi i32 [ %i.hl, %bb.an ], [ %.1409585.us596.epil.init, %.lr.ph588.split.split.us.epil.preheader ]
  %.0406.us599.epil = phi float [ %i.ho, %bb.an ], [ 0.000000e+00, %.lr.ph588.split.split.us.epil.preheader ]
  %indvars.iv.next799.epil = add nsw i64 %indvars.iv798.epil.init, 1
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv798.epil.init
  store float %.0406.us599.epil, ptr %i.hp, align 4, !tbaa !16
  br label %._crit_edge589.loopexit

._crit_edge589.loopexit:                          ; preds = %._crit_edge589.loopexit.unr-lcssa, %._crit_edge589.loopexit.epilog-lcssa
  %.2.us598.lcssa = phi i32 [ %.2.us598.1, %._crit_edge589.loopexit.unr-lcssa ], [ %.2.us598.epil, %._crit_edge589.loopexit.epilog-lcssa ]
  %indvars.iv.next799.lcssa = phi i64 [ %indvars.iv.next799.1, %._crit_edge589.loopexit.unr-lcssa ], [ %indvars.iv.next799.epil, %._crit_edge589.loopexit.epilog-lcssa ]
  %i.hq = trunc nsw i64 %indvars.iv.next799.lcssa to i32
  br label %._crit_edge589

._crit_edge589.loopexit701.loopexit.unr-lcssa:    ; preds = %bb.as
  %lcmp.mod1085.not = icmp eq i32 %xtraiter1083, 0
  br i1 %lcmp.mod1085.not, label %._crit_edge589.loopexit701, label %.lr.ph588.split.split.split.epil.preheader

.lr.ph588.split.split.split.epil.preheader:       ; preds = %._crit_edge589.loopexit701.loopexit.unr-lcssa, %.lr.ph588.split.split.split.preheader1062
  %indvars.iv786.epil.init = phi i64 [ %indvars.iv.next787.peel795, %.lr.ph588.split.split.split.preheader1062 ], [ %indvars.iv.next787.1, %._crit_edge589.loopexit701.loopexit.unr-lcssa ] ; 2 uses
  %.0405587.epil.init = phi i32 [ 2, %.lr.ph588.split.split.split.preheader1062 ], [ %i.iv, %._crit_edge589.loopexit701.loopexit.unr-lcssa ]
  %.1409585.epil.init = phi i32 [ %.2.peel793, %.lr.ph588.split.split.split.preheader1062 ], [ %.2.1, %._crit_edge589.loopexit701.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1088 = trunc i32 %i.ej to i1
  tail call void @llvm.assume(i1 %lcmp.mod1088)
  %i.hr = icmp slt i32 %.0405587.epil.init, %i.ep
  br i1 %i.hr, label %bb.ao, label %._crit_edge589.loopexit701.loopexit.epilog-lcssa

bb.ao:                                            ; preds = %.lr.ph588.split.split.split.epil.preheader
  %i.hs = add nsw i32 %.1409585.epil.init, 1
  %i.ht = sext i32 %.1409585.epil.init to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !16
  br label %._crit_edge589.loopexit701.loopexit.epilog-lcssa

._crit_edge589.loopexit701.loopexit.epilog-lcssa: ; preds = %bb.ao, %.lr.ph588.split.split.split.epil.preheader
  %.2.epil = phi i32 [ %i.hs, %bb.ao ], [ %.1409585.epil.init, %.lr.ph588.split.split.split.epil.preheader ]
  %.0406.epil = phi float [ %i.hv, %bb.ao ], [ 0.000000e+00, %.lr.ph588.split.split.split.epil.preheader ]
  %indvars.iv.next787.epil = add nsw i64 %indvars.iv786.epil.init, 1
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv786.epil.init
  store float %.0406.epil, ptr %i.hw, align 4, !tbaa !16
  br label %._crit_edge589.loopexit701

._crit_edge589.loopexit701:                       ; preds = %._crit_edge589.loopexit701.loopexit.epilog-lcssa, %._crit_edge589.loopexit701.loopexit.unr-lcssa, %bb.aj, %bb.ah
  %.2.lcssa = phi i32 [ %.2.peel793, %bb.aj ], [ %.2.peel, %bb.ah ], [ %.2.1, %._crit_edge589.loopexit701.loopexit.unr-lcssa ], [ %.2.epil, %._crit_edge589.loopexit701.loopexit.epilog-lcssa ]
  %.lcssa716.wide = phi i64 [ %indvars.iv.next787.peel795, %bb.aj ], [ %indvars.iv.next787.peel, %bb.ah ], [ %indvars.iv.next787.1, %._crit_edge589.loopexit701.loopexit.unr-lcssa ], [ %indvars.iv.next787.epil, %._crit_edge589.loopexit701.loopexit.epilog-lcssa ]
  %i.hx = trunc nsw i64 %.lcssa716.wide to i32
  br label %._crit_edge589

._crit_edge589.loopexit702.loopexit.unr-lcssa:    ; preds = %bb.am
  %lcmp.mod1077.not = icmp eq i32 %xtraiter1075, 0
  br i1 %lcmp.mod1077.not, label %._crit_edge589.loopexit702, label %.lr.ph588.split.split.split.us.epil.preheader

.lr.ph588.split.split.split.us.epil.preheader:    ; preds = %._crit_edge589.loopexit702.loopexit.unr-lcssa, %.lr.ph588.split.split.split.us.preheader1063
  %indvars.iv774.epil.init = phi i64 [ %indvars.iv.next775.peel783, %.lr.ph588.split.split.split.us.preheader1063 ], [ %indvars.iv.next775.1, %._crit_edge589.loopexit702.loopexit.unr-lcssa ] ; 2 uses
  %.0405587.us604.epil.init = phi i32 [ 2, %.lr.ph588.split.split.split.us.preheader1063 ], [ %i.hj, %._crit_edge589.loopexit702.loopexit.unr-lcssa ]
  %.1409585.us606.epil.init = phi i32 [ %.2.us607.peel781, %.lr.ph588.split.split.split.us.preheader1063 ], [ %.2.us607.1, %._crit_edge589.loopexit702.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1080 = trunc i32 %i.ej to i1
  tail call void @llvm.assume(i1 %lcmp.mod1080)
  %i.hy = icmp slt i32 %.0405587.us604.epil.init, %i.ep
  br i1 %i.hy, label %bb.ap, label %._crit_edge589.loopexit702.loopexit.epilog-lcssa

bb.ap:                                            ; preds = %.lr.ph588.split.split.split.us.epil.preheader
  %i.hz = add nsw i32 %.1409585.us606.epil.init, 1
  %i.ia = sext i32 %.1409585.us606.epil.init to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !16
  br label %._crit_edge589.loopexit702.loopexit.epilog-lcssa

._crit_edge589.loopexit702.loopexit.epilog-lcssa: ; preds = %bb.ap, %.lr.ph588.split.split.split.us.epil.preheader
  %.2.us607.epil = phi i32 [ %i.hz, %bb.ap ], [ %.1409585.us606.epil.init, %.lr.ph588.split.split.split.us.epil.preheader ]
  %.0406.us608.epil = phi float [ %i.ic, %bb.ap ], [ 0.000000e+00, %.lr.ph588.split.split.split.us.epil.preheader ]
  %indvars.iv.next775.epil = add nsw i64 %indvars.iv774.epil.init, 1
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv774.epil.init
  store float %.0406.us608.epil, ptr %i.id, align 4, !tbaa !16
  br label %._crit_edge589.loopexit702

._crit_edge589.loopexit702:                       ; preds = %._crit_edge589.loopexit702.loopexit.epilog-lcssa, %._crit_edge589.loopexit702.loopexit.unr-lcssa, %bb.af, %bb.ad
  %.2.us607.lcssa = phi i32 [ %.2.us607.peel781, %bb.af ], [ %.2.us607.peel, %bb.ad ], [ %.2.us607.1, %._crit_edge589.loopexit702.loopexit.unr-lcssa ], [ %.2.us607.epil, %._crit_edge589.loopexit702.loopexit.epilog-lcssa ]
  %.lcssa715.wide = phi i64 [ %indvars.iv.next775.peel783, %bb.af ], [ %indvars.iv.next775.peel, %bb.ad ], [ %indvars.iv.next775.1, %._crit_edge589.loopexit702.loopexit.unr-lcssa ], [ %indvars.iv.next775.epil, %._crit_edge589.loopexit702.loopexit.epilog-lcssa ]
  %i.ie = trunc nsw i64 %.lcssa715.wide to i32
  br label %._crit_edge589

._crit_edge589.loopexit704:                       ; preds = %.lr.ph588.split.us.split, %middle.block1013, %.lr.ph588.split.us.split.peel.next, %.lr.ph588.split.us.split.preheader
  %.lcssa713.wide = phi i64 [ %indvars.iv.next755.peel765, %.lr.ph588.split.us.split.peel.next ], [ %indvars.iv.next755.peel, %.lr.ph588.split.us.split.preheader ], [ %i.eu, %middle.block1013 ], [ %indvars.iv.next755, %.lr.ph588.split.us.split ]
  %i.if = trunc nsw i64 %.lcssa713.wide to i32
  br label %._crit_edge589

._crit_edge589:                                   ; preds = %._crit_edge589.loopexit704, %.lr.ph588.split.us.split.us.preheader, %._crit_edge589.loopexit702, %._crit_edge589.loopexit701, %._crit_edge589.loopexit, %.preheader546
  %.1409.lcssa = phi i32 [ %.0408618, %.preheader546 ], [ %.2.us607.lcssa, %._crit_edge589.loopexit702 ], [ %.0408618, %.lr.ph588.split.us.split.us.preheader ], [ %.2.us598.lcssa, %._crit_edge589.loopexit ], [ %.2.lcssa, %._crit_edge589.loopexit701 ], [ %.0408618, %._crit_edge589.loopexit704 ]
  %.1.lcssa = phi i32 [ %.0407619, %.preheader546 ], [ %i.ie, %._crit_edge589.loopexit702 ], [ %i.fd, %.lr.ph588.split.us.split.us.preheader ], [ %i.hq, %._crit_edge589.loopexit ], [ %i.hx, %._crit_edge589.loopexit701 ], [ %i.if, %._crit_edge589.loopexit704 ]
  %i.ig = add nuw nsw i32 %.6617, 1               ; 2 uses
  %indvars.iv.next758 = add i32 %indvars.iv757, -1
  %indvars.iv.next771 = add i32 %indvars.iv770, -1
  %exitcond802.not = icmp eq i32 %i.ig, %i.do
  br i1 %exitcond802.not, label %._crit_edge620, label %.preheader546, !llvm.loop !53

.lr.ph588.split.split.split:                      ; preds = %bb.as, %.lr.ph588.split.split.split.preheader1062.new
  %indvars.iv786 = phi i64 [ %indvars.iv.next787.peel795, %.lr.ph588.split.split.split.preheader1062.new ], [ %indvars.iv.next787.1, %bb.as ] ; 3 uses
  %.0405587 = phi i32 [ 2, %.lr.ph588.split.split.split.preheader1062.new ], [ %i.iv, %bb.as ] ; 3 uses
  %.1409585 = phi i32 [ %.2.peel793, %.lr.ph588.split.split.split.preheader1062.new ], [ %.2.1, %bb.as ] ; 3 uses
  %niter1090 = phi i32 [ 0, %.lr.ph588.split.split.split.preheader1062.new ], [ %niter1090.next.1, %bb.as ]
  %i.ih = icmp slt i32 %.0405587, %i.ep
  br i1 %i.ih, label %bb.aq, label %.lr.ph588.split.split.split.1

bb.aq:                                            ; preds = %.lr.ph588.split.split.split
  %i.ii = add nsw i32 %.1409585, 1
  %i.ij = sext i32 %.1409585 to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !16
  br label %.lr.ph588.split.split.split.1

.lr.ph588.split.split.split.1:                    ; preds = %.lr.ph588.split.split.split, %bb.aq
  %.2 = phi i32 [ %i.ii, %bb.aq ], [ %.1409585, %.lr.ph588.split.split.split ] ; 3 uses
  %.0406 = phi float [ %i.il, %bb.aq ], [ 0.000000e+00, %.lr.ph588.split.split.split ]
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv786
  store float %.0406, ptr %i.im, align 4, !tbaa !16
  %i.in = or disjoint i32 %.0405587, 1
  %i.io = icmp slt i32 %i.in, %i.ep
  br i1 %i.io, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph588.split.split.split.1
  %i.ip = add nsw i32 %.2, 1
  %i.iq = sext i32 %.2 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.iq
  %i.is = load float, ptr %i.ir, align 4, !tbaa !16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph588.split.split.split.1
  %.2.1 = phi i32 [ %i.ip, %bb.ar ], [ %.2, %.lr.ph588.split.split.split.1 ] ; 3 uses
  %.0406.1 = phi float [ %i.is, %bb.ar ], [ 0.000000e+00, %.lr.ph588.split.split.split.1 ]
  %indvars.iv.next787.1 = add nsw i64 %indvars.iv786, 2 ; 3 uses
  %i.it = getelementptr [4 x i8], ptr %i.ec, i64 %indvars.iv786
  %i.iu = getelementptr i8, ptr %i.it, i64 4
  store float %.0406.1, ptr %i.iu, align 4, !tbaa !16
  %i.iv = add nuw nsw i32 %.0405587, 2            ; 2 uses
  %niter1090.next.1 = add i32 %niter1090, 2       ; 2 uses
  %niter1090.ncmp.1 = icmp eq i32 %niter1090.next.1, %unroll_iter1089
  br i1 %niter1090.ncmp.1, label %._crit_edge589.loopexit701.loopexit.unr-lcssa, label %.lr.ph588.split.split.split, !llvm.loop !54

._crit_edge620:                                   ; preds = %._crit_edge589, %gv_calloc.exit
  tail call void @free(ptr noundef %.1433) #11
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge620, %bb.t
  %.0454 = phi i32 [ %i.do, %._crit_edge620 ], [ %1, %bb.t ] ; 34 uses
  %.0437 = phi ptr [ %i.ec, %._crit_edge620 ], [ %.1433, %bb.t ] ; 13 uses
  %.0436 = phi i32 [ %i.ds, %._crit_edge620 ], [ %i.bk, %bb.t ] ; 4 uses
  %i.iw = sext i32 %.0454 to i64                  ; 17 uses
  %.not.i493.not = icmp eq i32 %.0454, 0          ; 4 uses
  br i1 %.not.i493.not, label %.preheader544.thread941, label %bb.au

.preheader544.thread941:                          ; preds = %bb.at
  %i.ix = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14 ; 2 uses
  tail call void @set_vector_val(i32 noundef %.0454, double noundef 0.000000e+00, ptr noundef %i.ix) #11
  br label %._crit_edge636

bb.au:                                            ; preds = %bb.at
  %mul.ov.i495 = icmp slt i32 %.0454, 0
  br i1 %mul.ov.i495, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.iz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.iw, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ja = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iw, i64 noundef 8) #14 ; 9 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.ax, label %gv_calloc.exit497

bb.ax:                                            ; preds = %bb.aw
  %i.jc = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.jd = shl nuw nsw i64 %i.iw, 3
  %i.je = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jc, ptr noundef nonnull @.str.13, i64 noundef %i.jd) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit497:                                ; preds = %bb.aw
  tail call void @set_vector_val(i32 noundef %.0454, double noundef 0.000000e+00, ptr noundef nonnull %i.ja) #11
  %i.jf = add nsw i32 %.0454, -1                  ; 2 uses
  %.not963 = icmp ne i32 %.0454, 1                ; 3 uses
  br i1 %.not963, label %.preheader545.preheader, label %.lr.ph635.preheader

.preheader545.preheader:                          ; preds = %gv_calloc.exit497
  %wide.trip.count817 = zext nneg i32 %i.jf to i64
  %invariant.op = add nsw i64 %i.iw, -1
  br label %.preheader545

.preheader545:                                    ; preds = %.preheader545.preheader, %._crit_edge626
  %indvars.iv814 = phi i64 [ 0, %.preheader545.preheader ], [ %indvars.iv.next815, %._crit_edge626 ] ; 4 uses
  %indvars.iv810 = phi i32 [ %.0454, %.preheader545.preheader ], [ %indvars.iv.next811, %._crit_edge626 ] ; 3 uses
  %.0429630 = phi i32 [ 0, %.preheader545.preheader ], [ %.1430.lcssa, %._crit_edge626 ]
  %i.jg = zext i32 %indvars.iv810 to i64
  %i.jh = add nsw i64 %i.jg, -1                   ; 3 uses
  %.1430621 = add i32 %.0429630, 1                ; 2 uses
  %i.ji = icmp slt i64 %indvars.iv814, %invariant.op
  br i1 %i.ji, label %.lr.ph625.preheader, label %._crit_edge626

.lr.ph625.preheader:                              ; preds = %.preheader545
  %i.jj = sext i32 %.1430621 to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv814 ; 3 uses
  %xtraiter1099 = and i64 %i.jh, 1
  %i.jk = icmp eq i32 %indvars.iv810, 2
  br i1 %i.jk, label %.lr.ph625.epil.preheader, label %.lr.ph625.preheader.new

.lr.ph625.preheader.new:                          ; preds = %.lr.ph625.preheader
  %unroll_iter1105 = and i64 %i.jh, -2
  br label %.lr.ph625

.lr.ph635.preheader:                              ; preds = %._crit_edge626, %gv_calloc.exit497
  %i.jl = phi i32 [ 0, %gv_calloc.exit497 ], [ %i.jf, %._crit_edge626 ] ; 2 uses
  %wide.trip.count826 = zext nneg i32 %.0454 to i64 ; 2 uses
  %xtraiter1107 = and i64 %wide.trip.count826, 1
  %i.jm = icmp eq i32 %.0454, 1
  br i1 %i.jm, label %.lr.ph635.epil.preheader, label %.lr.ph635.preheader.new

.lr.ph635.preheader.new:                          ; preds = %.lr.ph635.preheader
  %unroll_iter1111 = and i64 %wide.trip.count826, 2147483646
  br label %.lr.ph635

._crit_edge626.loopexit.unr-lcssa:                ; preds = %.lr.ph625
  %lcmp.mod1101.not = icmp eq i64 %xtraiter1099, 0
  br i1 %lcmp.mod1101.not, label %._crit_edge626.loopexit, label %.lr.ph625.epil.preheader

.lr.ph625.epil.preheader:                         ; preds = %._crit_edge626.loopexit.unr-lcssa, %.lr.ph625.preheader
  %indvars.iv805.epil.init = phi i64 [ 1, %.lr.ph625.preheader ], [ %indvars.iv.next806.1, %._crit_edge626.loopexit.unr-lcssa ]
  %indvars.iv803.epil.init = phi i64 [ %i.jj, %.lr.ph625.preheader ], [ %indvars.iv.next804.1, %._crit_edge626.loopexit.unr-lcssa ] ; 2 uses
  %.0427622.epil.init = phi double [ 0.000000e+00, %.lr.ph625.preheader ], [ %i.kh, %._crit_edge626.loopexit.unr-lcssa ]
  %lcmp.mod1104 = trunc i64 %i.jh to i1
  tail call void @llvm.assume(i1 %lcmp.mod1104)
  %i.jn = getelementptr inbounds [4 x i8], ptr %.0437, i64 %indvars.iv803.epil.init
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !16
  %i.jp = fpext float %i.jo to double             ; 2 uses
  %i.jq = fadd double %.0427622.epil.init, %i.jp
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv805.epil.init ; 2 uses
  %i.jr = load double, ptr %gep.epil, align 8, !tbaa !28
  %i.js = fsub double %i.jr, %i.jp
  store double %i.js, ptr %gep.epil, align 8, !tbaa !28
  %indvars.iv.next804.epil = add nsw i64 %indvars.iv803.epil.init, 1
  br label %._crit_edge626.loopexit

._crit_edge626.loopexit:                          ; preds = %._crit_edge626.loopexit.unr-lcssa, %.lr.ph625.epil.preheader
  %.lcssa1061 = phi double [ %i.kh, %._crit_edge626.loopexit.unr-lcssa ], [ %i.jq, %.lr.ph625.epil.preheader ]
  %indvars.iv.next804.lcssa = phi i64 [ %indvars.iv.next804.1, %._crit_edge626.loopexit.unr-lcssa ], [ %indvars.iv.next804.epil, %.lr.ph625.epil.preheader ]
  %i.jt = trunc nsw i64 %indvars.iv.next804.lcssa to i32
  br label %._crit_edge626

._crit_edge626:                                   ; preds = %._crit_edge626.loopexit, %.preheader545
  %.0427.lcssa = phi double [ 0.000000e+00, %.preheader545 ], [ %.lcssa1061, %._crit_edge626.loopexit ]
  %.1430.lcssa = phi i32 [ %.1430621, %.preheader545 ], [ %i.jt, %._crit_edge626.loopexit ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv814 ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !28
  %i.jw = fsub double %i.jv, %.0427.lcssa
  store double %i.jw, ptr %i.ju, align 8, !tbaa !28
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1 ; 2 uses
  %indvars.iv.next811 = add i32 %indvars.iv810, -1
end_hunk_0
begin_hunk_1_@stress_majorization_cola:bb.a
  %i.oa = shl nuw nsw i64 %i.lu, 2
  %i.ob = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nz, ptr noundef nonnull @.str.13, i64 noundef %i.oa) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit517:                                ; preds = %.thread.i516, %bb.bq
  %i.oc = phi ptr [ %i.nu, %.thread.i516 ], [ %i.nx, %bb.bq ] ; 6 uses
  store ptr %i.oc, ptr %i.nt, align 8, !tbaa !58
  %i.od = icmp samesign ugt i32 %4, 1
  br i1 %i.od, label %.lr.ph645.preheader, label %._crit_edge646

.lr.ph645.preheader:                              ; preds = %gv_calloc.exit517
  %wide.trip.count841 = zext nneg i32 %4 to i64
  %i.oe = add nsw i64 %wide.trip.count841, -1     ; 2 uses
  %xtraiter1120 = and i64 %i.oe, 3                ; 3 uses
  %i.of = add i32 %4, -2
  %i.og = icmp ult i32 %i.of, 3
  br i1 %i.og, label %.lr.ph645.epil.preheader, label %.lr.ph645.preheader.new

.lr.ph645.preheader.new:                          ; preds = %.lr.ph645.preheader
  %unroll_iter1124 = and i64 %i.oe, -4
  br label %.lr.ph645

.lr.ph645:                                        ; preds = %.lr.ph645, %.lr.ph645.preheader.new
  %indvars.iv838 = phi i64 [ 1, %.lr.ph645.preheader.new ], [ %indvars.iv.next839.3, %.lr.ph645 ] ; 6 uses
  %niter1125 = phi i64 [ 0, %.lr.ph645.preheader.new ], [ %niter1125.next.3, %.lr.ph645 ]
  %i.oh = mul nsw i64 %indvars.iv838, %i.iw
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv838
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !58
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %i.ok = mul nsw i64 %indvars.iv.next839, %i.iw
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.ok
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next839
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !58
  %indvars.iv.next839.1 = add nuw nsw i64 %indvars.iv838, 2 ; 2 uses
  %i.on = mul nsw i64 %indvars.iv.next839.1, %i.iw
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next839.1
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !58
  %indvars.iv.next839.2 = add nuw nsw i64 %indvars.iv838, 3 ; 2 uses
  %i.oq = mul nsw i64 %indvars.iv.next839.2, %i.iw
  %i.or = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next839.2
  store ptr %i.or, ptr %i.os, align 8, !tbaa !58
  %indvars.iv.next839.3 = add nuw nsw i64 %indvars.iv838, 4 ; 2 uses
  %niter1125.next.3 = add nuw i64 %niter1125, 4   ; 2 uses
  %niter1125.ncmp.3 = icmp eq i64 %niter1125.next.3, %unroll_iter1124
  br i1 %niter1125.ncmp.3, label %._crit_edge646.loopexit.unr-lcssa, label %.lr.ph645, !llvm.loop !61

._crit_edge646.loopexit.unr-lcssa:                ; preds = %.lr.ph645
  %lcmp.mod1122.not = icmp eq i64 %xtraiter1120, 0
  br i1 %lcmp.mod1122.not, label %._crit_edge646, label %.lr.ph645.epil.preheader

.lr.ph645.epil.preheader:                         ; preds = %._crit_edge646.loopexit.unr-lcssa, %.lr.ph645.preheader
  %indvars.iv838.epil.init = phi i64 [ 1, %.lr.ph645.preheader ], [ %indvars.iv.next839.3, %._crit_edge646.loopexit.unr-lcssa ]
  %lcmp.mod1123 = icmp ne i64 %xtraiter1120, 0
  tail call void @llvm.assume(i1 %lcmp.mod1123)
  br label %.lr.ph645.epil

.lr.ph645.epil:                                   ; preds = %.lr.ph645.epil, %.lr.ph645.epil.preheader
  %indvars.iv838.epil = phi i64 [ %indvars.iv838.epil.init, %.lr.ph645.epil.preheader ], [ %indvars.iv.next839.epil, %.lr.ph645.epil ] ; 3 uses
  %epil.iter1121 = phi i64 [ 0, %.lr.ph645.epil.preheader ], [ %epil.iter1121.next, %.lr.ph645.epil ]
  %i.ot = mul nsw i64 %indvars.iv838.epil, %i.iw
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.ot
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv838.epil
  store ptr %i.ou, ptr %i.ov, align 8, !tbaa !58
  %indvars.iv.next839.epil = add nuw nsw i64 %indvars.iv838.epil, 1
  %epil.iter1121.next = add i64 %epil.iter1121, 1 ; 2 uses
  %epil.iter1121.cmp.not = icmp eq i64 %epil.iter1121.next, %xtraiter1120
  br i1 %epil.iter1121.cmp.not, label %._crit_edge646, label %.lr.ph645.epil, !llvm.loop !62

._crit_edge646:                                   ; preds = %._crit_edge646.loopexit.unr-lcssa, %.lr.ph645.epil, %gv_calloc.exit517
  br i1 %.not.i493.not, label %.thread.i526, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge646
  %mul.ov.i520 = icmp slt i32 %.0454, 0
  br i1 %mul.ov.i520, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ow = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ox = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ow, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.iw, i64 noundef 4) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.oy = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iw, i64 noundef 4) #14 ; 2 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %bb.bv, label %gv_calloc.exit522

bb.bv:                                            ; preds = %bb.bu
  %i.pa = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.pb = shl nuw nsw i64 %i.iw, 2
  %i.pc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pa, ptr noundef nonnull @.str.13, i64 noundef %i.pb) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

.thread.i526:                                     ; preds = %._crit_edge646
  %i.pd = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  %i.pe = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  br label %gv_calloc.exit527

gv_calloc.exit522:                                ; preds = %bb.bu
  %i.pf = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iw, i64 noundef 4) #14 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %bb.bw, label %gv_calloc.exit527

bb.bw:                                            ; preds = %gv_calloc.exit522
  %i.ph = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.pi = shl nuw nsw i64 %i.iw, 2
  %i.pj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ph, ptr noundef nonnull @.str.13, i64 noundef %i.pi) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit527:                                ; preds = %.thread.i526, %gv_calloc.exit522
  %i.pk = phi ptr [ %i.pd, %.thread.i526 ], [ %i.oy, %gv_calloc.exit522 ] ; 7 uses
  %i.pl = phi ptr [ %i.pe, %.thread.i526 ], [ %i.pf, %gv_calloc.exit522 ] ; 17 uses
  %i.pm = tail call ptr @initCMajVPSC(i32 noundef %.0454, ptr noundef %.0437, ptr noundef %0, ptr noundef %7, i32 noundef 0) #11 ; 5 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %gv_calloc.exit527
  %i.po = load i32, ptr %7, align 8, !tbaa !63
  %i.pp = tail call ptr @initCMajVPSC(i32 noundef %.0454, ptr noundef %.0437, ptr noundef %0, ptr noundef nonnull %7, i32 noundef %i.po) #11 ; 5 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pr = sext i32 %.0436 to i64                  ; 3 uses
  %.not.i528 = icmp eq i32 %.0436, 0
  br i1 %.not.i528, label %.thread.i531, label %bb.bz

.thread.i531:                                     ; preds = %bb.by
  %i.ps = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #14
  br label %gv_calloc.exit532

bb.bz:                                            ; preds = %bb.by
  %mul.ov.i530 = icmp slt i32 %.0436, 0
  br i1 %mul.ov.i530, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pt = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.pu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pt, ptr noundef nonnull @.str.12, i64 noundef range(i64 -2147483648, 2147483648) %i.pr, i64 noundef 4) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.pv = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.pr, i64 noundef 4) #14 ; 2 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.cc, label %gv_calloc.exit532

bb.cc:                                            ; preds = %bb.cb
  %i.px = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.py = shl nuw nsw i64 %i.pr, 2
  %i.pz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.px, ptr noundef nonnull @.str.13, i64 noundef %i.py) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit532:                                ; preds = %.thread.i531, %bb.cb
  %i.qa = phi ptr [ %i.ps, %.thread.i531 ], [ %i.pv, %bb.cb ] ; 12 uses
  %i.qb = icmp slt i32 %6, 1
  br i1 %i.qb, label %._crit_edge687, label %.lr.ph686

.lr.ph686:                                        ; preds = %gv_calloc.exit532
  %i.qc = fpext float %i.ns to double             ; 2 uses
  %i.qd = add nsw i32 %6, -1
  %i.qe = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %wide.trip.count867 = zext i32 %i.lh to i64
  %wide.trip.count846 = zext nneg i32 %4 to i64
  %wide.trip.count876 = zext i32 %.0454 to i64    ; 2 uses
  %wide.trip.count881 = zext nneg i32 %4 to i64
  %wide.trip.count886 = zext nneg i32 %4 to i64
  %wide.trip.count891 = zext nneg i32 %4 to i64
  %xtraiter1134 = and i64 %wide.trip.count876, 1
  %i.qj = icmp eq i32 %.0454, 1
  %unroll_iter1138 = and i64 %wide.trip.count876, 4294967294
  %lcmp.mod1136.not = icmp eq i64 %xtraiter1134, 0
  %lcmp.mod1137 = trunc i32 %.0454 to i1
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph686, %bb.cy
  %.0417685 = phi double [ 0.000000e+00, %.lr.ph686 ], [ %.1418, %bb.cy ] ; 4 uses
  %.0424684 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph686 ], [ %.2423.lcssa, %bb.cy ] ; 3 uses
  %.0450683 = phi i32 [ 0, %.lr.ph686 ], [ %i.ww, %bb.cy ] ; 5 uses
  tail call void @set_vector_val(i32 noundef %.0454, double noundef 0.000000e+00, ptr noundef %i.lg) #11
  tail call void @sqrt_vecf(i32 noundef %.0436, ptr noundef %.0437, ptr noundef %i.qa) #11
  br i1 %i.li, label %.lr.ph665, label %.preheader543

.preheader543:                                    ; preds = %._crit_edge659, %bb.cd
  br i1 %.not.i493.not, label %.preheader542, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %.preheader543
  br i1 %i.qj, label %.lr.ph669.epil.preheader, label %.lr.ph669

.lr.ph665:                                        ; preds = %bb.cd, %._crit_edge659
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %._crit_edge659 ], [ 0, %bb.cd ] ; 6 uses
  %indvars.iv851 = phi i32 [ %indvars.iv.next852, %._crit_edge659 ], [ %i.lh, %bb.cd ] ; 5 uses
  %.3663 = phi i32 [ %.4.lcssa, %._crit_edge659 ], [ 0, %bb.cd ] ; 2 uses
  %i.qk = trunc nuw nsw i64 %indvars.iv864 to i32
  %i.ql = xor i32 %i.qk, -1
  %i.qm = add nsw i32 %.0454, %i.ql               ; 6 uses
  tail call void @set_vector_valf(i32 noundef %.0454, float noundef 0.000000e+00, ptr noundef %i.pl) #11
  br i1 %i.bl, label %.lr.ph649, label %._crit_edge650

.lr.ph649:                                        ; preds = %.lr.ph665, %.lr.ph649
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %.lr.ph649 ], [ 0, %.lr.ph665 ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv843 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !58
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv864
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !16
  tail call void @set_vector_valf(i32 noundef %i.qm, float noundef %i.qq, ptr noundef %i.pk) #11
  %i.qr = load ptr, ptr %i.qn, align 8, !tbaa !58
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv864
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  tail call void @vectors_mult_additionf(i32 noundef %i.qm, ptr noundef %i.pk, float noundef -1.000000e+00, ptr noundef nonnull %i.qt) #11
  tail call void @square_vec(i32 noundef %i.qm, ptr noundef %i.pk) #11
  tail call void @vectors_additionf(i32 noundef %i.qm, ptr noundef %i.pk, ptr noundef %i.pl, ptr noundef %i.pl) #11
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %exitcond847.not = icmp eq i64 %indvars.iv.next844, %wide.trip.count846
  br i1 %exitcond847.not, label %._crit_edge650, label %.lr.ph649, !llvm.loop !64

._crit_edge650:                                   ; preds = %.lr.ph649, %.lr.ph665
  tail call void @invert_sqrt_vec(i32 noundef %i.qm, ptr noundef %i.pl) #11
  %i.qu = icmp sgt i32 %i.qm, 0
  br i1 %i.qu, label %.lr.ph653.preheader, label %.preheader540.thread

.preheader540.thread:                             ; preds = %._crit_edge650
  %.4654942 = add i32 %.3663, 1
  br label %._crit_edge659

.lr.ph653.preheader:                              ; preds = %._crit_edge650
  %wide.trip.count853 = zext i32 %indvars.iv851 to i64 ; 5 uses
  %min.iters.check1018 = icmp ult i32 %indvars.iv851, 8
  br i1 %min.iters.check1018, label %.lr.ph653.preheader1056, label %vector.ph1019

vector.ph1019:                                    ; preds = %.lr.ph653.preheader
  %n.vec1020 = and i64 %wide.trip.count853, 4294967288 ; 3 uses
  br label %vector.body1021

vector.body1021:                                  ; preds = %pred.store.continue1038, %vector.ph1019
  %index1022 = phi i64 [ 0, %vector.ph1019 ], [ %index.next1039, %pred.store.continue1038 ] ; 9 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load1023 = load <4 x float>, ptr %i.qv, align 4, !tbaa !16 ; 2 uses
  %wide.load1024 = load <4 x float>, ptr %i.qw, align 4, !tbaa !16 ; 2 uses
  %i.qx = fcmp oge <4 x float> %wide.load1023, splat (float f0x7F7FFFFF)
  %i.qy = fcmp oge <4 x float> %wide.load1024, splat (float f0x7F7FFFFF)
  %i.qz = fcmp olt <4 x float> %wide.load1023, zeroinitializer
  %i.ra = fcmp olt <4 x float> %wide.load1024, zeroinitializer
  %i.rb = or <4 x i1> %i.qx, %i.qz                ; 4 uses
  %i.rc = or <4 x i1> %i.qy, %i.ra                ; 4 uses
  %i.rd = extractelement <4 x i1> %i.rb, i64 0
  br i1 %i.rd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1021
  store float 0.000000e+00, ptr %i.qv, align 4, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1021
  %i.re = extractelement <4 x i1> %i.rb, i64 1
  br i1 %i.re, label %pred.store.if1025, label %pred.store.continue1026

pred.store.if1025:                                ; preds = %pred.store.continue
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store float 0.000000e+00, ptr %i.rg, align 4, !tbaa !16
  br label %pred.store.continue1026

pred.store.continue1026:                          ; preds = %pred.store.if1025, %pred.store.continue
  %i.rh = extractelement <4 x i1> %i.rb, i64 2
  br i1 %i.rh, label %pred.store.if1027, label %pred.store.continue1028

pred.store.if1027:                                ; preds = %pred.store.continue1026
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store float 0.000000e+00, ptr %i.rj, align 4, !tbaa !16
  br label %pred.store.continue1028

pred.store.continue1028:                          ; preds = %pred.store.if1027, %pred.store.continue1026
  %i.rk = extractelement <4 x i1> %i.rb, i64 3
  br i1 %i.rk, label %pred.store.if1029, label %pred.store.continue1030

pred.store.if1029:                                ; preds = %pred.store.continue1028
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store float 0.000000e+00, ptr %i.rm, align 4, !tbaa !16
  br label %pred.store.continue1030

pred.store.continue1030:                          ; preds = %pred.store.if1029, %pred.store.continue1028
  %i.rn = extractelement <4 x i1> %i.rc, i64 0
  br i1 %i.rn, label %pred.store.if1031, label %pred.store.continue1032

pred.store.if1031:                                ; preds = %pred.store.continue1030
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store float 0.000000e+00, ptr %i.rp, align 4, !tbaa !16
  br label %pred.store.continue1032

pred.store.continue1032:                          ; preds = %pred.store.if1031, %pred.store.continue1030
  %i.rq = extractelement <4 x i1> %i.rc, i64 1
  br i1 %i.rq, label %pred.store.if1033, label %pred.store.continue1034

pred.store.if1033:                                ; preds = %pred.store.continue1032
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 20
  store float 0.000000e+00, ptr %i.rs, align 4, !tbaa !16
  br label %pred.store.continue1034

pred.store.continue1034:                          ; preds = %pred.store.if1033, %pred.store.continue1032
  %i.rt = extractelement <4 x i1> %i.rc, i64 2
  br i1 %i.rt, label %pred.store.if1035, label %pred.store.continue1036

pred.store.if1035:                                ; preds = %pred.store.continue1034
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  store float 0.000000e+00, ptr %i.rv, align 4, !tbaa !16
  br label %pred.store.continue1036

pred.store.continue1036:                          ; preds = %pred.store.if1035, %pred.store.continue1034
  %i.rw = extractelement <4 x i1> %i.rc, i64 3
  br i1 %i.rw, label %pred.store.if1037, label %pred.store.continue1038

pred.store.if1037:                                ; preds = %pred.store.continue1036
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index1022
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 28
  store float 0.000000e+00, ptr %i.ry, align 4, !tbaa !16
  br label %pred.store.continue1038

pred.store.continue1038:                          ; preds = %pred.store.if1037, %pred.store.continue1036
  %index.next1039 = add nuw i64 %index1022, 8     ; 2 uses
  %i.rz = icmp eq i64 %index.next1039, %n.vec1020
  br i1 %i.rz, label %middle.block1040, label %vector.body1021, !llvm.loop !65

middle.block1040:                                 ; preds = %pred.store.continue1038
  %cmp.n1041 = icmp eq i64 %n.vec1020, %wide.trip.count853
  br i1 %cmp.n1041, label %.lr.ph658.preheader, label %.lr.ph653.preheader1056

.lr.ph653.preheader1056:                          ; preds = %.lr.ph653.preheader, %middle.block1040
  %indvars.iv848.ph = phi i64 [ 0, %.lr.ph653.preheader ], [ %n.vec1020, %middle.block1040 ]
  br label %.lr.ph653

.lr.ph658.preheader:                              ; preds = %bb.cf, %middle.block1040
  %.4654 = add i32 %.3663, 1
  %i.sa = sext i32 %.4654 to i64                  ; 2 uses
  %invariant.gep961 = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv864 ; 3 uses
  %xtraiter1126 = and i64 %wide.trip.count853, 1
  %i.sb = icmp eq i32 %indvars.iv851, 1
  br i1 %i.sb, label %.lr.ph658.epil.preheader, label %.lr.ph658.preheader.new

.lr.ph658.preheader.new:                          ; preds = %.lr.ph658.preheader
  %unroll_iter1132 = and i64 %wide.trip.count853, 4294967294
  br label %.lr.ph658

.lr.ph653:                                        ; preds = %.lr.ph653.preheader1056, %bb.cf
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %bb.cf ], [ %indvars.iv848.ph, %.lr.ph653.preheader1056 ] ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv848 ; 2 uses
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !16 ; 2 uses
  %i.se = fcmp oge float %i.sd, f0x7F7FFFFF
  %i.sf = fcmp olt float %i.sd, 0.000000e+00
  %or.cond492 = or i1 %i.se, %i.sf
  br i1 %or.cond492, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph653
  store float 0.000000e+00, ptr %i.sc, align 4, !tbaa !16
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph653, %bb.ce
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %exitcond854.not = icmp eq i64 %indvars.iv.next849, %wide.trip.count853
  br i1 %exitcond854.not, label %.lr.ph658.preheader, label %.lr.ph653, !llvm.loop !66

._crit_edge659.loopexit.unr-lcssa:                ; preds = %.lr.ph658
  %lcmp.mod1128.not = icmp eq i64 %xtraiter1126, 0
  br i1 %lcmp.mod1128.not, label %._crit_edge659.loopexit, label %.lr.ph658.epil.preheader

.lr.ph658.epil.preheader:                         ; preds = %._crit_edge659.loopexit.unr-lcssa, %.lr.ph658.preheader
  %indvars.iv857.epil.init = phi i64 [ 0, %.lr.ph658.preheader ], [ %indvars.iv.next858.1, %._crit_edge659.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv855.epil.init = phi i64 [ %i.sa, %.lr.ph658.preheader ], [ %indvars.iv.next856.1, %._crit_edge659.loopexit.unr-lcssa ] ; 2 uses
  %.1428655.epil.init = phi double [ 0.000000e+00, %.lr.ph658.preheader ], [ %i.tl, %._crit_edge659.loopexit.unr-lcssa ]
  %lcmp.mod1131 = trunc i32 %indvars.iv851 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1131)
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv857.epil.init
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !16
  %i.si = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %indvars.iv855.epil.init ; 2 uses
  %i.sj = load float, ptr %i.si, align 4, !tbaa !16
  %i.sk = fmul float %i.sh, %i.sj                 ; 2 uses
  store float %i.sk, ptr %i.si, align 4, !tbaa !16
  %i.sl = fpext float %i.sk to double             ; 2 uses
  %i.sm = fadd double %.1428655.epil.init, %i.sl
  %gep962.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep961, i64 %indvars.iv857.epil.init
  %i.sn = getelementptr inbounds nuw i8, ptr %gep962.epil, i64 8 ; 2 uses
  %i.so = load double, ptr %i.sn, align 8, !tbaa !28
  %i.sp = fsub double %i.so, %i.sl
  store double %i.sp, ptr %i.sn, align 8, !tbaa !28
  %indvars.iv.next856.epil = add nsw i64 %indvars.iv855.epil.init, 1
  br label %._crit_edge659.loopexit

._crit_edge659.loopexit:                          ; preds = %._crit_edge659.loopexit.unr-lcssa, %.lr.ph658.epil.preheader
  %.lcssa = phi double [ %i.tl, %._crit_edge659.loopexit.unr-lcssa ], [ %i.sm, %.lr.ph658.epil.preheader ]
  %indvars.iv.next856.lcssa = phi i64 [ %indvars.iv.next856.1, %._crit_edge659.loopexit.unr-lcssa ], [ %indvars.iv.next856.epil, %.lr.ph658.epil.preheader ]
  %i.sq = trunc nsw i64 %indvars.iv.next856.lcssa to i32
  br label %._crit_edge659

._crit_edge659:                                   ; preds = %.preheader540.thread, %._crit_edge659.loopexit
  %.1428.lcssa = phi double [ 0.000000e+00, %.preheader540.thread ], [ %.lcssa, %._crit_edge659.loopexit ]
  %.4.lcssa = phi i32 [ %.4654942, %.preheader540.thread ], [ %i.sq, %._crit_edge659.loopexit ]
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv864 ; 2 uses
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !28
  %i.st = fsub double %i.ss, %.1428.lcssa
  store double %i.st, ptr %i.sr, align 8, !tbaa !28
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %indvars.iv.next852 = add i32 %indvars.iv851, -1
  %exitcond868.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count867
  br i1 %exitcond868.not, label %.preheader543, label %.lr.ph665, !llvm.loop !67

.lr.ph658:                                        ; preds = %.lr.ph658, %.lr.ph658.preheader.new
  %indvars.iv857 = phi i64 [ 0, %.lr.ph658.preheader.new ], [ %indvars.iv.next858.1, %.lr.ph658 ] ; 4 uses
  %indvars.iv855 = phi i64 [ %i.sa, %.lr.ph658.preheader.new ], [ %indvars.iv.next856.1, %.lr.ph658 ] ; 3 uses
  %.1428655 = phi double [ 0.000000e+00, %.lr.ph658.preheader.new ], [ %i.tl, %.lr.ph658 ]
  %niter1133 = phi i64 [ 0, %.lr.ph658.preheader.new ], [ %niter1133.next.1, %.lr.ph658 ]
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv857
  %i.sv = load float, ptr %i.su, align 4, !tbaa !16
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %indvars.iv855 ; 2 uses
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !16
  %i.sy = fmul float %i.sv, %i.sx                 ; 2 uses
  store float %i.sy, ptr %i.sw, align 4, !tbaa !16
  %i.sz = fpext float %i.sy to double             ; 2 uses
  %i.ta = fadd double %.1428655, %i.sz
  %gep962 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep961, i64 %indvars.iv857
  %i.tb = getelementptr inbounds nuw i8, ptr %gep962, i64 8 ; 2 uses
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !28
  %i.td = fsub double %i.tc, %i.sz
  store double %i.td, ptr %i.tb, align 8, !tbaa !28
  %indvars.iv.next858 = or disjoint i64 %indvars.iv857, 1 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv.next858
  %i.tf = load float, ptr %i.te, align 4, !tbaa !16
  %i.tg = getelementptr [4 x i8], ptr %i.qa, i64 %indvars.iv855
  %i.th = getelementptr i8, ptr %i.tg, i64 4      ; 2 uses
  %i.ti = load float, ptr %i.th, align 4, !tbaa !16
  %i.tj = fmul float %i.tf, %i.ti                 ; 2 uses
  store float %i.tj, ptr %i.th, align 4, !tbaa !16
  %i.tk = fpext float %i.tj to double             ; 2 uses
  %i.tl = fadd double %i.ta, %i.tk                ; 3 uses
  %gep962.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep961, i64 %indvars.iv.next858
  %i.tm = getelementptr inbounds nuw i8, ptr %gep962.1, i64 8 ; 2 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !28
  %i.to = fsub double %i.tn, %i.tk
  store double %i.to, ptr %i.tm, align 8, !tbaa !28
  %indvars.iv.next858.1 = add nuw nsw i64 %indvars.iv857, 2 ; 2 uses
  %indvars.iv.next856.1 = add nsw i64 %indvars.iv855, 2 ; 3 uses
  %niter1133.next.1 = add i64 %niter1133, 2       ; 2 uses
  %niter1133.ncmp.1 = icmp eq i64 %niter1133.next.1, %unroll_iter1132
  br i1 %niter1133.ncmp.1, label %._crit_edge659.loopexit.unr-lcssa, label %.lr.ph658, !llvm.loop !68

.preheader542.loopexit.unr-lcssa:                 ; preds = %.lr.ph669
  br i1 %lcmp.mod1136.not, label %.preheader542, label %.lr.ph669.epil.preheader

.lr.ph669.epil.preheader:                         ; preds = %.preheader542.loopexit.unr-lcssa, %.lr.ph669.preheader
  %indvars.iv871.epil.init = phi i64 [ 0, %.lr.ph669.preheader ], [ %indvars.iv.next872.1, %.preheader542.loopexit.unr-lcssa ]
  %.5667.epil.init = phi i32 [ 0, %.lr.ph669.preheader ], [ %i.uj, %.preheader542.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1137)
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv871.epil.init
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !28
  %i.tr = fptrunc double %i.tq to float
  %i.ts = sext i32 %.5667.epil.init to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.ts
  store float %i.tr, ptr %i.tt, align 4, !tbaa !16
  br label %.preheader542

.preheader542:                                    ; preds = %.lr.ph669.epil.preheader, %.preheader542.loopexit.unr-lcssa, %.preheader543
  br i1 %i.bl, label %.lr.ph671, label %._crit_edge681

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %.lr.ph669
  %indvars.iv871 = phi i64 [ %indvars.iv.next872.1, %.lr.ph669 ], [ 0, %.lr.ph669.preheader ] ; 3 uses
  %indvars.iv869 = phi i64 [ %indvars.iv.next870.1, %.lr.ph669 ], [ %i.iw, %.lr.ph669.preheader ] ; 3 uses
  %.5667 = phi i32 [ %i.uj, %.lr.ph669 ], [ 0, %.lr.ph669.preheader ] ; 2 uses
  %niter1139 = phi i64 [ %niter1139.next.1, %.lr.ph669 ], [ 0, %.lr.ph669.preheader ]
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv871
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !28
  %i.tw = fptrunc double %i.tv to float
  %i.tx = sext i32 %.5667 to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.tx
  store float %i.tw, ptr %i.ty, align 4, !tbaa !16
  %i.tz = trunc nsw i64 %indvars.iv869 to i32
  %i.ua = add nsw i32 %.5667, %i.tz               ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv871
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !28
  %i.ue = fptrunc double %i.ud to float
  %i.uf = sext i32 %i.ua to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.uf
  store float %i.ue, ptr %i.ug, align 4, !tbaa !16
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv871, 2 ; 2 uses
  %i.uh = trunc i64 %indvars.iv869 to i32
  %i.ui = add i32 %i.uh, -1
  %i.uj = add nsw i32 %i.ua, %i.ui                ; 2 uses
  %indvars.iv.next870.1 = add nsw i64 %indvars.iv869, -2
  %niter1139.next.1 = add i64 %niter1139, 2       ; 2 uses
  %niter1139.ncmp.1 = icmp eq i64 %niter1139.next.1, %unroll_iter1138
  br i1 %niter1139.ncmp.1, label %.preheader542.loopexit.unr-lcssa, label %.lr.ph669, !llvm.loop !69

.lr.ph671:                                        ; preds = %.preheader542, %.lr.ph671
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %.lr.ph671 ], [ 0, %.preheader542 ] ; 3 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv878
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !58
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv878
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !58
  tail call void @right_mult_with_vector_ff(ptr noundef %i.qa, i32 noundef %.0454, ptr noundef %i.ul, ptr noundef %i.un) #11
  %indvars.iv.next879 = add nuw nsw i64 %indvars.iv878, 1 ; 2 uses
  %exitcond882.not = icmp eq i64 %indvars.iv.next879, %wide.trip.count881
  br i1 %exitcond882.not, label %.lr.ph674, label %.lr.ph671, !llvm.loop !70

.lr.ph674:                                        ; preds = %.lr.ph671, %.lr.ph674
  %indvars.iv883 = phi i64 [ %indvars.iv.next884, %.lr.ph674 ], [ 0, %.lr.ph671 ] ; 3 uses
  %.1422673 = phi double [ %i.ut, %.lr.ph674 ], [ 0.000000e+00, %.lr.ph671 ]
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv883
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !58
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv883
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !58
  %i.us = tail call double @vectors_inner_productf(i32 noundef %.0454, ptr noundef %i.up, ptr noundef %i.ur) #11
  %i.ut = fadd double %.1422673, %i.us            ; 2 uses
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 1 ; 2 uses
  %exitcond887.not = icmp eq i64 %indvars.iv.next884, %wide.trip.count886
  br i1 %exitcond887.not, label %.lr.ph680.preheader, label %.lr.ph674, !llvm.loop !71

.lr.ph680.preheader:                              ; preds = %.lr.ph674
  %i.uu = fmul double %i.ut, 2.000000e+00
  %i.uv = fadd double %i.uu, %i.qc
  br label %.lr.ph680

.lr.ph680:                                        ; preds = %.lr.ph680.preheader, %.lr.ph680
  %indvars.iv888 = phi i64 [ 0, %.lr.ph680.preheader ], [ %indvars.iv.next889, %.lr.ph680 ] ; 2 uses
  %.2423678 = phi double [ %i.uv, %.lr.ph680.preheader ], [ %i.va, %.lr.ph680 ]
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv888 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !58
  tail call void @right_mult_with_vector_ff(ptr noundef %.0437, i32 noundef %.0454, ptr noundef %i.ux, ptr noundef %i.pk) #11
  %i.uy = load ptr, ptr %i.uw, align 8, !tbaa !58
  %i.uz = tail call double @vectors_inner_productf(i32 noundef %.0454, ptr noundef %i.uy, ptr noundef %i.pk) #11
  %i.va = fsub double %.2423678, %i.uz            ; 2 uses
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next889, %wide.trip.count891
  br i1 %exitcond892.not, label %._crit_edge681, label %.lr.ph680, !llvm.loop !72

._crit_edge681:                                   ; preds = %.lr.ph680, %.preheader542
  %.2423.lcssa = phi double [ %i.qc, %.preheader542 ], [ %i.va, %.lr.ph680 ] ; 5 uses
  %i.vb = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not485 = icmp eq i8 %i.vb, 0
  br i1 %.not485, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge681
  %i.vc = load ptr, ptr @stderr, align 8, !tbaa !24
end_hunk_1
