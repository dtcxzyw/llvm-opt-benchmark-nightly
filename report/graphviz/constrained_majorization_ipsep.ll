Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization_ipsep?download=true
inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@stress_majorization_cola:bb.a
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
  %.6617 = phi i32 [ 0, %.preheader546.lr.ph ], [ %i.if, %._crit_edge589 ] ; 9 uses
  %i.ej = sub i32 %i.eh, %.6617                   ; 8 uses
  %i.ek = zext i32 %indvars.iv757 to i64
  %i.el = shl nuw nsw i64 %i.ek, 2
  %i.em = icmp sgt i32 %i.do, %.6617
  br i1 %i.em, label %.lr.ph588, label %._crit_edge589

.lr.ph588:                                        ; preds = %.preheader546
  %i.en = icmp slt i32 %.6617, %1
  %i.eo = sub nsw i32 %1, %.6617                  ; 12 uses
  %i.ep = and i32 %.6617, 1
  %.not488 = icmp eq i32 %i.ep, 0                 ; 2 uses
  %i.eq = sext i32 %.0407619 to i64               ; 12 uses
  br i1 %i.en, label %.lr.ph588.split, label %.lr.ph588.split.us

.lr.ph588.split.us:                               ; preds = %.lr.ph588
  br i1 %.not488, label %.lr.ph588.split.us.split.us.preheader, label %.lr.ph588.split.us.split.preheader

.lr.ph588.split.us.split.preheader:               ; preds = %.lr.ph588.split.us
  %indvars.iv.next755.peel = add nsw i64 %i.eq, 1 ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eq
  store float 0.000000e+00, ptr %i.er, align 4, !tbaa !16
  %exitcond759.peel.not = icmp eq i32 %indvars.iv757, 1
  br i1 %exitcond759.peel.not, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split.peel.next

.lr.ph588.split.us.split.peel.next:               ; preds = %.lr.ph588.split.us.split.preheader
  %indvars.iv.next755.peel765 = add nsw i64 %i.eq, 2 ; 4 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv.next755.peel
  store float %.mux.peel, ptr %i.es, align 4, !tbaa !16
  %exitcond759.peel766.not = icmp eq i32 %indvars.iv757, 2
  br i1 %exitcond759.peel766.not, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split.preheader966

.lr.ph588.split.us.split.preheader966:            ; preds = %.lr.ph588.split.us.split.peel.next
  %8 = zext i32 %i.ej to i64                      ; 2 uses
  %min.iters.check1007 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check1007, label %.lr.ph588.split.us.split.preheader1064, label %vector.ph1008

vector.ph1008:                                    ; preds = %.lr.ph588.split.us.split.preheader966
  %n.vec1009 = and i64 %8, 4294967288             ; 4 uses
  %i.et = add nsw i64 %indvars.iv.next755.peel765, %n.vec1009 ; 2 uses
  %i.eu = trunc nuw i64 %n.vec1009 to i32
  %i.ev = or disjoint i32 %i.eu, 2
  %i.ew = getelementptr [4 x i8], ptr %i.ec, i64 %indvars.iv.next755.peel765
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1012, %vector.body1010 ] ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %index1011 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <4 x float> zeroinitializer, ptr %i.ex, align 4, !tbaa !16
  store <4 x float> zeroinitializer, ptr %i.ey, align 4, !tbaa !16
  %index.next1012 = add nuw i64 %index1011, 8     ; 2 uses
  %i.ez = icmp eq i64 %index.next1012, %n.vec1009
  br i1 %i.ez, label %middle.block1013, label %vector.body1010, !llvm.loop !48

middle.block1013:                                 ; preds = %vector.body1010
  %cmp.n1014 = icmp eq i64 %n.vec1009, %8
  br i1 %cmp.n1014, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split.preheader1064

.lr.ph588.split.us.split.preheader1064:           ; preds = %.lr.ph588.split.us.split.preheader966, %middle.block1013
  %indvars.iv754.ph = phi i64 [ %indvars.iv.next755.peel765, %.lr.ph588.split.us.split.preheader966 ], [ %i.et, %middle.block1013 ]
  %.0405587.us.ph = phi i32 [ 2, %.lr.ph588.split.us.split.preheader966 ], [ %i.ev, %middle.block1013 ]
  br label %.lr.ph588.split.us.split

.lr.ph588.split.us.split.us.preheader:            ; preds = %.lr.ph588.split.us
  %i.fa = shl nsw i64 %i.eq, 2
  %scevgep = getelementptr i8, ptr %i.ec, i64 %i.fa
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.el, i1 false), !tbaa !16
  %i.fb = add i32 %.0407619, 1
  %i.fc = add i32 %i.fb, %indvars.iv770
  br label %._crit_edge589

.lr.ph588.split.us.split:                         ; preds = %.lr.ph588.split.us.split.preheader1064, %.lr.ph588.split.us.split
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph588.split.us.split ], [ %indvars.iv754.ph, %.lr.ph588.split.us.split.preheader1064 ] ; 2 uses
  %.0405587.us = phi i32 [ %i.fe, %.lr.ph588.split.us.split ], [ %.0405587.us.ph, %.lr.ph588.split.us.split.preheader1064 ]
  %indvars.iv.next755 = add nsw i64 %indvars.iv754, 1 ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv754
  store float 0.000000e+00, ptr %i.fd, align 4, !tbaa !16
  %i.fe = add nuw nsw i32 %.0405587.us, 1         ; 2 uses
  %exitcond759.not = icmp eq i32 %i.fe, %indvars.iv757
  br i1 %exitcond759.not, label %._crit_edge589.loopexit704, label %.lr.ph588.split.us.split, !llvm.loop !50

.lr.ph588.split:                                  ; preds = %.lr.ph588
  br i1 %.not488, label %.lr.ph588.split.split.us.preheader, label %.lr.ph588.split.split

.lr.ph588.split.split.us.preheader:               ; preds = %.lr.ph588.split
  %xtraiter1091 = and i32 %indvars.iv757, 1
  %i.ff = icmp eq i32 %i.dp, %.6617
  br i1 %i.ff, label %.lr.ph588.split.split.us.epil.preheader, label %.lr.ph588.split.split.us.preheader.new

.lr.ph588.split.split.us.preheader.new:           ; preds = %.lr.ph588.split.split.us.preheader
  %unroll_iter1097 = and i32 %indvars.iv757, -2
  br label %.lr.ph588.split.split.us

.lr.ph588.split.split.us:                         ; preds = %bb.ab, %.lr.ph588.split.split.us.preheader.new
  %indvars.iv798 = phi i64 [ %i.eq, %.lr.ph588.split.split.us.preheader.new ], [ %indvars.iv.next799.1, %bb.ab ] ; 3 uses
  %.0405587.us594 = phi i32 [ 0, %.lr.ph588.split.split.us.preheader.new ], [ %i.fu, %bb.ab ] ; 3 uses
  %.1409585.us596 = phi i32 [ %.0408618, %.lr.ph588.split.split.us.preheader.new ], [ %.2.us598.1, %bb.ab ] ; 3 uses
  %niter1098 = phi i32 [ 0, %.lr.ph588.split.split.us.preheader.new ], [ %niter1098.next.1, %bb.ab ]
  %i.fg = icmp slt i32 %.0405587.us594, %i.eo
  br i1 %i.fg, label %bb.z, label %.lr.ph588.split.split.us.1

bb.z:                                             ; preds = %.lr.ph588.split.split.us
  %i.fh = add nsw i32 %.1409585.us596, 1
  %i.fi = sext i32 %.1409585.us596 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !16
  br label %.lr.ph588.split.split.us.1

.lr.ph588.split.split.us.1:                       ; preds = %.lr.ph588.split.split.us, %bb.z
  %.2.us598 = phi i32 [ %i.fh, %bb.z ], [ %.1409585.us596, %.lr.ph588.split.split.us ] ; 3 uses
  %.0406.us599 = phi float [ %i.fk, %bb.z ], [ 0.000000e+00, %.lr.ph588.split.split.us ]
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv798
  store float %.0406.us599, ptr %i.fl, align 4, !tbaa !16
  %i.fm = or disjoint i32 %.0405587.us594, 1
  %i.fn = icmp slt i32 %i.fm, %i.eo
  br i1 %i.fn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph588.split.split.us.1
  %i.fo = add nsw i32 %.2.us598, 1
  %i.fp = sext i32 %.2.us598 to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph588.split.split.us.1
  %.2.us598.1 = phi i32 [ %i.fo, %bb.aa ], [ %.2.us598, %.lr.ph588.split.split.us.1 ] ; 3 uses
  %.0406.us599.1 = phi float [ %i.fr, %bb.aa ], [ 0.000000e+00, %.lr.ph588.split.split.us.1 ]
  %indvars.iv.next799.1 = add nsw i64 %indvars.iv798, 2 ; 3 uses
  %i.fs = getelementptr [4 x i8], ptr %i.ec, i64 %indvars.iv798
  %i.ft = getelementptr i8, ptr %i.fs, i64 4
  store float %.0406.us599.1, ptr %i.ft, align 4, !tbaa !16
  %i.fu = add nuw nsw i32 %.0405587.us594, 2      ; 2 uses
  %niter1098.next.1 = add i32 %niter1098, 2       ; 2 uses
  %niter1098.ncmp.1 = icmp eq i32 %niter1098.next.1, %unroll_iter1097
  br i1 %niter1098.ncmp.1, label %._crit_edge589.loopexit.unr-lcssa, label %.lr.ph588.split.split.us, !llvm.loop !51

.lr.ph588.split.split:                            ; preds = %.lr.ph588.split
  %i.fv = icmp sgt i32 %i.eo, 0                   ; 2 uses
  br i1 %i.ee, label %.lr.ph588.split.split.split.preheader, label %.lr.ph588.split.split.split.us.preheader

.lr.ph588.split.split.split.us.preheader:         ; preds = %.lr.ph588.split.split
  br i1 %i.fv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph588.split.split.split.us.preheader
  %i.fw = add nsw i32 %.0408618, 1
  %i.fx = sext i32 %.0408618 to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !16
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph588.split.split.split.us.preheader, %bb.ac
  %.2.us607.peel = phi i32 [ %i.fw, %bb.ac ], [ %.0408618, %.lr.ph588.split.split.split.us.preheader ] ; 4 uses
  %.0406.us608.peel = phi float [ %i.fz, %bb.ac ], [ 0.000000e+00, %.lr.ph588.split.split.split.us.preheader ]
  %indvars.iv.next775.peel = add nsw i64 %i.eq, 1 ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eq
  store float %.0406.us608.peel, ptr %i.ga, align 4, !tbaa !16
  %exitcond777.peel.not = icmp eq i32 %indvars.iv757, 1
  br i1 %exitcond777.peel.not, label %._crit_edge589.loopexit702, label %.lr.ph588.split.split.split.us.peel.next

.lr.ph588.split.split.split.us.peel.next:         ; preds = %bb.ad
  %i.gb = icmp sgt i32 %i.eo, 1
  br i1 %i.gb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph588.split.split.split.us.peel.next
  %i.gc = add nsw i32 %.2.us607.peel, 1
  %i.gd = sext i32 %.2.us607.peel to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph588.split.split.split.us.peel.next, %bb.ae
  %.2.us607.peel781 = phi i32 [ %i.gc, %bb.ae ], [ %.2.us607.peel, %.lr.ph588.split.split.split.us.peel.next ] ; 3 uses
  %.0406.us608.peel782 = phi float [ %i.gf, %bb.ae ], [ %i.ef, %.lr.ph588.split.split.split.us.peel.next ]
  %indvars.iv.next775.peel783 = add nsw i64 %i.eq, 2 ; 3 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv.next775.peel
  store float %.0406.us608.peel782, ptr %i.gg, align 4, !tbaa !16
  %exitcond777.peel784.not = icmp eq i32 %indvars.iv757, 2
  br i1 %exitcond777.peel784.not, label %._crit_edge589.loopexit702, label %.lr.ph588.split.split.split.us.preheader1063

.lr.ph588.split.split.split.us.preheader1063:     ; preds = %bb.af
  %xtraiter1075 = and i32 %i.ej, 1
  %i.gh = icmp eq i32 %i.ei, %.6617
  br i1 %i.gh, label %.lr.ph588.split.split.split.us.epil.preheader, label %.lr.ph588.split.split.split.us.preheader1063.new

.lr.ph588.split.split.split.us.preheader1063.new: ; preds = %.lr.ph588.split.split.split.us.preheader1063
  %unroll_iter1081 = and i32 %i.ej, -2
  br label %.lr.ph588.split.split.split.us

.lr.ph588.split.split.split.preheader:            ; preds = %.lr.ph588.split.split
  br i1 %i.fv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph588.split.split.split.preheader
  %i.gi = add nsw i32 %.0408618, 1
  %i.gj = sext i32 %.0408618 to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph588.split.split.split.preheader, %bb.ag
  %.2.peel = phi i32 [ %i.gi, %bb.ag ], [ %.0408618, %.lr.ph588.split.split.split.preheader ] ; 4 uses
  %.0406.peel = phi float [ %i.gl, %bb.ag ], [ 0.000000e+00, %.lr.ph588.split.split.split.preheader ]
  %indvars.iv.next787.peel = add nsw i64 %i.eq, 1 ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eq
  store float %.0406.peel, ptr %i.gm, align 4, !tbaa !16
  %exitcond789.peel.not = icmp eq i32 %indvars.iv757, 1
  br i1 %exitcond789.peel.not, label %._crit_edge589.loopexit701, label %.lr.ph588.split.split.split.peel.next

.lr.ph588.split.split.split.peel.next:            ; preds = %bb.ah
  %i.gn = icmp sgt i32 %i.eo, 1
  br i1 %i.gn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph588.split.split.split.peel.next
  %i.go = add nsw i32 %.2.peel, 1
  %i.gp = sext i32 %.2.peel to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph588.split.split.split.peel.next, %bb.ai
  %.2.peel793 = phi i32 [ %i.go, %bb.ai ], [ %.2.peel, %.lr.ph588.split.split.split.peel.next ] ; 3 uses
  %.0406.peel794 = phi float [ %i.gr, %bb.ai ], [ %.0415.lcssa, %.lr.ph588.split.split.split.peel.next ]
  %indvars.iv.next787.peel795 = add nsw i64 %i.eq, 2 ; 3 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %indvars.iv.next787.peel
  store float %.0406.peel794, ptr %i.gs, align 4, !tbaa !16
  %exitcond789.peel796.not = icmp eq i32 %indvars.iv757, 2
  br i1 %exitcond789.peel796.not, label %._crit_edge589.loopexit701, label %.lr.ph588.split.split.split.preheader1062

.lr.ph588.split.split.split.preheader1062:        ; preds = %bb.aj
  %xtraiter1083 = and i32 %i.ej, 1
  %i.gt = icmp eq i32 %i.ei, %.6617
  br i1 %i.gt, label %.lr.ph588.split.split.split.epil.preheader, label %.lr.ph588.split.split.split.preheader1062.new

.lr.ph588.split.split.split.preheader1062.new:    ; preds = %.lr.ph588.split.split.split.preheader1062
end_hunk_0
