Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convhull?download=true
inline.NumInlined: 336
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb:bb.a
  %.2278482 = phi i32 [ 0, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525.new ], [ %spec.select354.1, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit ]
  %niter739 = phi i64 [ 0, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525.new ], [ %niter739.next.1, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv539
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !39
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !37 ; 4 uses
  %i.dm = fcmp ogt float %i.dh, %i.dl             ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv539 to i32 ; 2 uses
  %spec.select354 = select i1 %i.dm, i32 %i.dn, i32 %.2278482
  %i.do = fcmp olt float %i.dg, %i.dl             ; 2 uses
  %.3275 = select i1 %i.do, i32 %i.dn, i32 %.2274483
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 1 ; 2 uses
  %i.dp = select i1 %i.dm, float %i.dl, float %i.dh ; 2 uses
  %i.dq = select i1 %i.do, float %i.dl, float %i.dg ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next540
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !37 ; 4 uses
  %i.dv = fcmp ogt float %i.dp, %i.du             ; 2 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv.next540 to i32 ; 2 uses
  %spec.select354.1 = select i1 %i.dv, i32 %i.dw, i32 %spec.select354 ; 3 uses
  %i.dx = fcmp olt float %i.dq, %i.du             ; 2 uses
  %.3275.1 = select i1 %i.dx, i32 %i.dw, i32 %.3275 ; 3 uses
  %indvars.iv.next540.1 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %i.dy = select i1 %i.dv, float %i.du, float %i.dp ; 2 uses
  %i.dz = select i1 %i.dx, float %i.du, float %i.dq ; 2 uses
  %niter739.next.1 = add nuw i64 %niter739, 2     ; 2 uses
  %niter739.ncmp.1 = icmp eq i64 %niter739.next.1, %unroll_iter738
  br i1 %niter739.ncmp.1, label %.loopexit471.loopexit.unr-lcssa, label %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit, !llvm.loop !58

.loopexit471.loopexit.unr-lcssa:                  ; preds = %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit
  %lcmp.mod734.not = icmp eq i64 %xtraiter729, 0
  br i1 %lcmp.mod734.not, label %.loopexit471, label %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.epil.preheader

_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.epil.preheader: ; preds = %.loopexit471.loopexit.unr-lcssa, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525
  %.epil.init731 = phi float [ %.pre602, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525 ], [ %i.dz, %.loopexit471.loopexit.unr-lcssa ]
  %.epil.init733 = phi float [ %.pre602, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525 ], [ %i.dy, %.loopexit471.loopexit.unr-lcssa ]
  %indvars.iv539.epil.init = phi i64 [ 1, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525 ], [ %indvars.iv.next540.1, %.loopexit471.loopexit.unr-lcssa ] ; 2 uses
  %.2274483.epil.init = phi i32 [ 0, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525 ], [ %.3275.1, %.loopexit471.loopexit.unr-lcssa ]
  %.2278482.epil.init = phi i32 [ 0, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader525 ], [ %spec.select354.1, %.loopexit471.loopexit.unr-lcssa ]
  %lcmp.mod737 = trunc i64 %i.de to i1
  call void @llvm.assume(i1 %lcmp.mod737)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv539.epil.init
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !39
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !37 ; 2 uses
  %i.ee = fcmp ogt float %.epil.init733, %i.ed
  %i.ef = trunc nuw nsw i64 %indvars.iv539.epil.init to i32 ; 2 uses
  %spec.select354.epil = select i1 %i.ee, i32 %i.ef, i32 %.2278482.epil.init
  %i.eg = fcmp olt float %.epil.init731, %i.ed
  %.3275.epil = select i1 %i.eg, i32 %i.ef, i32 %.2274483.epil.init
  br label %.loopexit471

.loopexit471.loopexit722.unr-lcssa:               ; preds = %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit471, label %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.epil.preheader

_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.epil.preheader: ; preds = %.loopexit471.loopexit722.unr-lcssa, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader526
  %.epil.init = phi i32 [ %.pre599, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader526 ], [ %i.dd, %.loopexit471.loopexit722.unr-lcssa ]
  %.epil.init725 = phi i32 [ %.pre599, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader526 ], [ %i.dc, %.loopexit471.loopexit722.unr-lcssa ]
  %indvars.iv534.epil.init = phi i64 [ 1, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader526 ], [ %indvars.iv.next535.1, %.loopexit471.loopexit722.unr-lcssa ] ; 2 uses
  %.0272478.epil.init = phi i32 [ 0, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader526 ], [ %.1273.1, %.loopexit471.loopexit722.unr-lcssa ]
  %.0276477.epil.init = phi i32 [ 0, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader526 ], [ %spec.select.1, %.loopexit471.loopexit722.unr-lcssa ]
  %lcmp.mod728 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod728)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv534.epil.init
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !31
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !34 ; 2 uses
  %i.el = icmp sgt i32 %.epil.init725, %i.ek
  %i.em = trunc nuw nsw i64 %indvars.iv534.epil.init to i32 ; 2 uses
  %spec.select.epil = select i1 %i.el, i32 %i.em, i32 %.0276477.epil.init
  %i.en = icmp slt i32 %.epil.init, %i.ek
  %.1273.epil = select i1 %i.en, i32 %i.em, i32 %.0272478.epil.init
  br label %.loopexit471

.loopexit471:                                     ; preds = %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.epil.preheader, %.loopexit471.loopexit722.unr-lcssa, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.epil.preheader, %.loopexit471.loopexit.unr-lcssa, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader
  %i.eo = phi ptr [ %.pre604, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.epil.preheader ], [ %.pre604, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader ], [ %.pre603, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader ], [ %.pre604, %.loopexit471.loopexit.unr-lcssa ], [ %.pre603, %.loopexit471.loopexit722.unr-lcssa ], [ %.pre603, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.epil.preheader ] ; 2 uses
  %.4280 = phi i32 [ %spec.select354.epil, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.epil.preheader ], [ 0, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader ], [ 0, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader ], [ %spec.select354.1, %.loopexit471.loopexit.unr-lcssa ], [ %spec.select.1, %.loopexit471.loopexit722.unr-lcssa ], [ %spec.select.epil, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.epil.preheader ] ; 4 uses
  %.4 = phi i32 [ %.3275.epil, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.epil.preheader ], [ 0, %_ZSt4sortIPPN2cv6Point_IfEENS0_14CHullCmpPointsIfEEEvT_S7_T0_.exit.preheader ], [ 0, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.preheader ], [ %.3275.1, %.loopexit471.loopexit.unr-lcssa ], [ %.1273.1, %.loopexit471.loopexit722.unr-lcssa ], [ %.1273.epil, %_ZSt4sortIPPN2cv6Point_IiEENS0_14CHullCmpPointsIiEEEvT_S7_T0_.exit.epil.preheader ] ; 4 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !40
  %i.eq = add nsw i32 %i.o, -1                    ; 5 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !31 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !40
  %i.ev = icmp eq i32 %i.ep, %i.eu
  br i1 %i.ev, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.loopexit471
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !34
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.bg, align 4, !tbaa !41
  br label %._crit_edge511.thread

bb.aq:                                            ; preds = %bb.ao, %.loopexit471
  br i1 %i.s, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fb = call fastcc noundef i32 @_ZN2cvL9Sklansky_IilEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef 0, i32 noundef %.4, ptr noundef %i.bh, i32 noundef -1, i32 noundef 1) ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.fc ; 2 uses
  %i.fe = call fastcc noundef i32 @_ZN2cvL9Sklansky_IilEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef %i.eq, i32 noundef %.4, ptr noundef %i.fd, i32 noundef -1, i32 noundef -1)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ff = call fastcc noundef i32 @_ZN2cvL9Sklansky_IfdEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef 0, i32 noundef %.4, ptr noundef %i.bh, i32 noundef -1, i32 noundef 1) ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.fg ; 2 uses
  %i.fi = call fastcc noundef i32 @_ZN2cvL9Sklansky_IfdEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef %i.eq, i32 noundef %.4, ptr noundef %i.fh, i32 noundef -1, i32 noundef -1)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fj = phi ptr [ %i.fd, %bb.ar ], [ %i.fh, %bb.as ] ; 2 uses
  %i.fk = phi i32 [ %i.fb, %bb.ar ], [ %i.ff, %bb.as ] ; 2 uses
  %i.fl = phi i32 [ %i.fe, %bb.ar ], [ %i.fi, %bb.as ] ; 2 uses
  br i1 %2, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0447 = phi ptr [ %i.bh, %bb.at ], [ %i.fj, %bb.au ] ; 8 uses
  %.0446 = phi i32 [ %i.fk, %bb.at ], [ %i.fl, %bb.au ] ; 6 uses
  %.0445 = phi ptr [ %i.fj, %bb.at ], [ %i.bh, %bb.au ] ; 5 uses
  %.0444 = phi i32 [ %i.fl, %bb.at ], [ %i.fk, %bb.au ] ; 4 uses
  %i.fm = add i32 %.0446, -1                      ; 4 uses
  %i.fn = icmp sgt i32 %.0446, 1
  br i1 %i.fn, label %.lr.ph490.preheader, label %.preheader470

.lr.ph490.preheader:                              ; preds = %bb.av
  %.0447642 = ptrtoaddr ptr %.0447 to i64
  %wide.trip.count549 = zext i32 %i.fm to i64     ; 5 uses
  %min.iters.check644 = icmp ult i32 %.0446, 9
  %i.fo = sub i64 %.0447642, %i.bi
  %diff.check = icmp ugt i64 %i.fo, -32
  %or.cond712 = select i1 %min.iters.check644, i1 true, i1 %diff.check
  br i1 %or.cond712, label %.lr.ph490.preheader721, label %vector.ph645

vector.ph645:                                     ; preds = %.lr.ph490.preheader
  %n.vec646 = and i64 %wide.trip.count549, 2147483640 ; 3 uses
  br label %vector.body647

vector.body647:                                   ; preds = %vector.body647, %vector.ph645
  %index648 = phi i64 [ 0, %vector.ph645 ], [ %index.next650, %vector.body647 ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.0447, i64 %index648 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <4 x i32>, ptr %i.fp, align 4, !tbaa !41
  %wide.load649 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !41
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index648 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x i32> %wide.load, ptr %i.fr, align 4, !tbaa !41
  store <4 x i32> %wide.load649, ptr %i.fs, align 4, !tbaa !41
  %index.next650 = add nuw i64 %index648, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next650, %n.vec646
  br i1 %i.ft, label %middle.block651, label %vector.body647, !llvm.loop !59

middle.block651:                                  ; preds = %vector.body647
  %cmp.n652 = icmp eq i64 %n.vec646, %wide.trip.count549
  br i1 %cmp.n652, label %.preheader470, label %.lr.ph490.preheader721

.lr.ph490.preheader721:                           ; preds = %.lr.ph490.preheader, %middle.block651
  %indvars.iv544.ph = phi i64 [ 0, %.lr.ph490.preheader ], [ %n.vec646, %middle.block651 ] ; 3 uses
  %xtraiter740 = and i64 %wide.trip.count549, 3   ; 2 uses
  %lcmp.mod741.not = icmp eq i64 %xtraiter740, 0
  br i1 %lcmp.mod741.not, label %.lr.ph490.prol.loopexit, label %.lr.ph490.prol

.lr.ph490.prol:                                   ; preds = %.lr.ph490.preheader721, %.lr.ph490.prol
  %indvars.iv544.prol = phi i64 [ %indvars.iv.next545.prol, %.lr.ph490.prol ], [ %indvars.iv544.ph, %.lr.ph490.preheader721 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph490.prol ], [ 0, %.lr.ph490.preheader721 ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.0447, i64 %indvars.iv544.prol
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !41
  %indvars.iv.next545.prol = add nuw nsw i64 %indvars.iv544.prol, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv544.prol
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !41
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter740
  br i1 %prol.iter.cmp.not, label %.lr.ph490.prol.loopexit, label %.lr.ph490.prol, !llvm.loop !60

.lr.ph490.prol.loopexit:                          ; preds = %.lr.ph490.prol, %.lr.ph490.preheader721
  %indvars.iv544.unr = phi i64 [ %indvars.iv544.ph, %.lr.ph490.preheader721 ], [ %indvars.iv.next545.prol, %.lr.ph490.prol ]
  %i.fx = sub nsw i64 %indvars.iv544.ph, %wide.trip.count549
  %i.fy = icmp ugt i64 %i.fx, -4
  br i1 %i.fy, label %.preheader470, label %.lr.ph490

.preheader470:                                    ; preds = %.lr.ph490.prol.loopexit, %.lr.ph490, %middle.block651, %bb.av
  %.0281.lcssa = phi i32 [ 0, %bb.av ], [ %i.fm, %middle.block651 ], [ %i.fm, %.lr.ph490 ], [ %i.fm, %.lr.ph490.prol.loopexit ] ; 2 uses
  %i.fz = icmp sgt i32 %.0444, 1
  br i1 %i.fz, label %.lr.ph494.preheader, label %._crit_edge495.thread

.lr.ph494.preheader:                              ; preds = %.preheader470
  %i.ga = zext nneg i32 %.0281.lcssa to i64       ; 4 uses
  %i.gb = zext nneg i32 %.0444 to i64             ; 6 uses
  %i.gc = add nsw i64 %i.gb, -1                   ; 2 uses
  %min.iters.check659 = icmp ult i32 %.0444, 21
  br i1 %min.iters.check659, label %.lr.ph494.preheader719, label %vector.memcheck654

vector.memcheck654:                               ; preds = %.lr.ph494.preheader
  %smax = call i32 @llvm.smax.i32(i32 %.0446, i32 1)
  %i.gd = zext nneg i32 %smax to i64
  %i.ge = shl nuw nsw i64 %i.gd, 2                ; 2 uses
  %i.gf = getelementptr i8, ptr %i.bg, i64 %i.ge
  %scevgep = getelementptr i8, ptr %i.gf, i64 -4
  %i.gg = shl nuw nsw i64 %i.gb, 2                ; 2 uses
  %i.gh = getelementptr i8, ptr %i.bg, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.ge
  %scevgep655 = getelementptr i8, ptr %i.gi, i64 -8
  %scevgep656 = getelementptr i8, ptr %.0445, i64 4
  %scevgep657 = getelementptr i8, ptr %.0445, i64 %i.gg
  %bound0 = icmp ult ptr %scevgep, %scevgep657
  %bound1 = icmp ult ptr %scevgep656, %scevgep655
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph494.preheader719, label %vector.ph660

vector.ph660:                                     ; preds = %vector.memcheck654
  %n.vec661 = and i64 %i.gc, -8                   ; 4 uses
  %i.gj = sub nsw i64 %i.gb, %n.vec661
  %i.gk = add nsw i64 %n.vec661, %i.ga            ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0445, i64 %i.gb
  %invariant.gep764 = getelementptr [4 x i8], ptr %i.bg, i64 %i.ga
  br label %vector.body662

vector.body662:                                   ; preds = %vector.body662, %vector.ph660
  %index663 = phi i64 [ 0, %vector.ph660 ], [ %index.next667, %vector.body662 ] ; 3 uses
  %i.gl = xor i64 %index663, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gl ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.gn = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load664 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !41, !alias.scope !97
  %wide.load665 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !41, !alias.scope !97
  %reverse = shufflevector <4 x i32> %wide.load664, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse666 = shufflevector <4 x i32> %wide.load665, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep765 = getelementptr [4 x i8], ptr %invariant.gep764, i64 %index663 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %gep765, i64 16
  store <4 x i32> %reverse, ptr %gep765, align 4, !tbaa !41, !alias.scope !98, !noalias !97
  store <4 x i32> %reverse666, ptr %i.go, align 4, !tbaa !41, !alias.scope !98, !noalias !97
  %index.next667 = add nuw i64 %index663, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next667, %n.vec661
  br i1 %i.gp, label %middle.block668, label %vector.body662, !llvm.loop !64

middle.block668:                                  ; preds = %vector.body662
  %cmp.n669 = icmp eq i64 %i.gc, %n.vec661
  br i1 %cmp.n669, label %._crit_edge495, label %.lr.ph494.preheader719

.lr.ph494.preheader719:                           ; preds = %vector.memcheck654, %.lr.ph494.preheader, %middle.block668
  %indvars.iv553.ph = phi i64 [ %i.gb, %vector.memcheck654 ], [ %i.gb, %.lr.ph494.preheader ], [ %i.gj, %middle.block668 ]
  %indvars.iv551.ph = phi i64 [ %i.ga, %vector.memcheck654 ], [ %i.ga, %.lr.ph494.preheader ], [ %i.gk, %middle.block668 ]
  br label %.lr.ph494

.lr.ph490:                                        ; preds = %.lr.ph490.prol.loopexit, %.lr.ph490
  %indvars.iv544 = phi i64 [ %indvars.iv.next545.3, %.lr.ph490 ], [ %indvars.iv544.unr, %.lr.ph490.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.0447, i64 %indvars.iv544
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !41
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv544
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !41
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.0447, i64 %indvars.iv.next545
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !41
  %indvars.iv.next545.1 = add nuw nsw i64 %indvars.iv544, 2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next545
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !41
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.0447, i64 %indvars.iv.next545.1
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !41
  %indvars.iv.next545.2 = add nuw nsw i64 %indvars.iv544, 3 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next545.1
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !41
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0447, i64 %indvars.iv.next545.2
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !41
  %indvars.iv.next545.3 = add nuw nsw i64 %indvars.iv544, 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next545.2
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !41
  %exitcond550.not.3 = icmp eq i64 %indvars.iv.next545.3, %wide.trip.count549
  br i1 %exitcond550.not.3, label %.preheader470, label %.lr.ph490, !llvm.loop !65

.lr.ph494:                                        ; preds = %.lr.ph494.preheader719, %.lr.ph494
  %indvars.iv553 = phi i64 [ %indvars.iv.next554, %.lr.ph494 ], [ %indvars.iv553.ph, %.lr.ph494.preheader719 ] ; 2 uses
  %indvars.iv551 = phi i64 [ %indvars.iv.next552, %.lr.ph494 ], [ %indvars.iv551.ph, %.lr.ph494.preheader719 ] ; 2 uses
  %indvars.iv.next554 = add nsw i64 %indvars.iv553, -1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.0445, i64 %indvars.iv.next554
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !41
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv551
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !41
  %i.hf = icmp samesign ugt i64 %indvars.iv553, 2
  br i1 %i.hf, label %.lr.ph494, label %._crit_edge495, !llvm.loop !66

._crit_edge495:                                   ; preds = %.lr.ph494, %middle.block668
  %indvars.iv.next552.lcssa = phi i64 [ %i.gk, %middle.block668 ], [ %indvars.iv.next552, %.lr.ph494 ]
  %i.hg = trunc nuw i64 %indvars.iv.next552.lcssa to i32 ; 2 uses
  %.not633 = icmp eq i32 %.0444, 2
  br i1 %.not633, label %._crit_edge495.thread, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge495
  %i.hh = getelementptr inbounds nuw i8, ptr %.0445, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !41
  br label %bb.ay

._crit_edge495.thread:                            ; preds = %.preheader470, %._crit_edge495
  %.1282.lcssa626 = phi i32 [ %i.hg, %._crit_edge495 ], [ %.0281.lcssa, %.preheader470 ] ; 2 uses
  %i.hj = icmp sgt i32 %.0446, 2
  br i1 %i.hj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge495.thread
  %i.hk = zext nneg i32 %.0446 to i64
  %i.hl = getelementptr [4 x i8], ptr %.0447, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -8
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !41
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge495.thread, %bb.aw
  %.1282.lcssa625 = phi i32 [ %i.hg, %bb.aw ], [ %.1282.lcssa626, %bb.ax ], [ %.1282.lcssa626, %._crit_edge495.thread ] ; 2 uses
  %i.ho = phi i32 [ %i.hi, %bb.aw ], [ %i.hn, %bb.ax ], [ -1, %._crit_edge495.thread ] ; 3 uses
  br i1 %i.s, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hp = call fastcc noundef i32 @_ZN2cvL9Sklansky_IilEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef 0, i32 noundef %.4280, ptr noundef %i.bh, i32 noundef 1, i32 noundef -1) ; 2 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.hq ; 2 uses
  %i.hs = call fastcc noundef i32 @_ZN2cvL9Sklansky_IilEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef %i.eq, i32 noundef %.4280, ptr noundef %i.hr, i32 noundef 1, i32 noundef 1)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ht = call fastcc noundef i32 @_ZN2cvL9Sklansky_IfdEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef 0, i32 noundef %.4280, ptr noundef %i.bh, i32 noundef 1, i32 noundef -1) ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.hu ; 2 uses
  %i.hw = call fastcc noundef i32 @_ZN2cvL9Sklansky_IfdEEiPPNS_6Point_IT_EEiiPiii(ptr noundef nonnull %i.bj, i32 noundef %i.eq, i32 noundef %.4280, ptr noundef %i.hv, i32 noundef 1, i32 noundef 1)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hx = phi ptr [ %i.hr, %bb.az ], [ %i.hv, %bb.ba ] ; 2 uses
  %i.hy = phi i32 [ %i.hp, %bb.az ], [ %i.ht, %bb.ba ] ; 3 uses
  %i.hz = phi i32 [ %i.hs, %bb.az ], [ %i.hw, %bb.ba ] ; 3 uses
  br i1 %2, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0443 = phi ptr [ %i.hx, %bb.bc ], [ %i.bh, %bb.bb ] ; 8 uses
  %.0441 = phi i32 [ %i.hz, %bb.bc ], [ %i.hy, %bb.bb ] ; 8 uses
  %.0440 = phi ptr [ %i.bh, %bb.bc ], [ %i.hx, %bb.bb ] ; 5 uses
  %.0438 = phi i32 [ %i.hy, %bb.bc ], [ %i.hz, %bb.bb ] ; 6 uses
  %.0443673 = ptrtoaddr ptr %.0443 to i64
  %i.ia = icmp sgt i32 %i.ho, -1
  br i1 %i.ia, label %bb.be, label %.thread450

bb.be:                                            ; preds = %bb.bd
  %i.ib = icmp sgt i32 %.0441, 2
  br i1 %i.ib, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ic = getelementptr inbounds nuw i8, ptr %.0443, i64 4
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %i.id = add nsw i32 %i.hz, %i.hy
  %i.ie = icmp sgt i32 %i.id, 2
  br i1 %i.ie, label %bb.bh, label %.thread450

bb.bh:                                            ; preds = %bb.bg
  %i.if = sub nsw i32 2, %.0441
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0440, i64 %i.ig
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.in = phi ptr [ %i.ic, %bb.bf ], [ %i.ih, %bb.bh ]
  %i.ii = load i32, ptr %.in, align 4, !tbaa !41  ; 3 uses
  %i.ij = icmp eq i32 %i.ii, %i.ho
  br i1 %i.ij, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ik = icmp sgt i32 %i.ii, -1
  br i1 %i.ik, label %bb.bk, label %.thread450

bb.bk:                                            ; preds = %bb.bj
  %i.il = zext nneg i32 %i.ii to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !31 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !40
  %i.ip = zext nneg i32 %i.ho to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !31 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !40
  %i.it = icmp eq i32 %i.io, %i.is
  br i1 %i.it, label %bb.bl, label %.thread450

bb.bl:                                            ; preds = %bb.bk
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !34
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !34
  %i.iy = icmp eq i32 %i.iv, %i.ix
  br i1 %i.iy, label %bb.bm, label %.thread450

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %i.iz = call i32 @llvm.smin.i32(i32 %.0441, i32 2)
  %i.ja = call i32 @llvm.smin.i32(i32 %.0438, i32 2)
  br label %.thread450

.thread450:                                       ; preds = %bb.bg, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bd
  %.1442 = phi i32 [ %i.iz, %bb.bm ], [ %.0441, %bb.bl ], [ %.0441, %bb.bk ], [ %.0441, %bb.bj ], [ %.0441, %bb.bd ], [ %.0441, %bb.bg ] ; 3 uses
  %.1439 = phi i32 [ %i.ja, %bb.bm ], [ %.0438, %bb.bl ], [ %.0438, %bb.bk ], [ %.0438, %bb.bj ], [ %.0438, %bb.bd ], [ %.0438, %bb.bg ] ; 3 uses
  %i.jb = icmp sgt i32 %.1442, 1
  br i1 %i.jb, label %.lr.ph499.preheader, label %.preheader469

.lr.ph499.preheader:                              ; preds = %.thread450
  %i.jc = add nsw i32 %.1442, -1
  %i.jd = zext i32 %.1282.lcssa625 to i64         ; 5 uses
  %wide.trip.count565 = zext i32 %i.jc to i64     ; 5 uses
  %min.iters.check676 = icmp ult i32 %.1442, 13
  br i1 %min.iters.check676, label %.lr.ph499.preheader717, label %vector.memcheck672

vector.memcheck672:                               ; preds = %.lr.ph499.preheader
  %i.je = shl nuw nsw i64 %i.jd, 2
  %i.jf = add i64 %i.je, %i.bi
  %i.jg = sub i64 %.0443673, %i.jf
  %diff.check674 = icmp ugt i64 %i.jg, -32
  br i1 %diff.check674, label %.lr.ph499.preheader717, label %vector.ph677

vector.ph677:                                     ; preds = %vector.memcheck672
  %n.vec678 = and i64 %wide.trip.count565, 2147483640 ; 4 uses
  %i.jh = add nuw nsw i64 %n.vec678, %i.jd        ; 2 uses
  %invariant.gep766 = getelementptr [4 x i8], ptr %i.bg, i64 %i.jd
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph677
  %index680 = phi i64 [ 0, %vector.ph677 ], [ %index.next683, %vector.body679 ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %index680 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load681 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !41
  %wide.load682 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !41
  %gep767 = getelementptr [4 x i8], ptr %invariant.gep766, i64 %index680 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %gep767, i64 16
  store <4 x i32> %wide.load681, ptr %gep767, align 4, !tbaa !41
  store <4 x i32> %wide.load682, ptr %i.jk, align 4, !tbaa !41
  %index.next683 = add nuw i64 %index680, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next683, %n.vec678
  br i1 %i.jl, label %middle.block684, label %vector.body679, !llvm.loop !67

middle.block684:                                  ; preds = %vector.body679
  %cmp.n685 = icmp eq i64 %n.vec678, %wide.trip.count565
  br i1 %cmp.n685, label %.preheader469.loopexit, label %.lr.ph499.preheader717

.lr.ph499.preheader717:                           ; preds = %vector.memcheck672, %.lr.ph499.preheader, %middle.block684
  %indvars.iv560.ph = phi i64 [ 0, %vector.memcheck672 ], [ 0, %.lr.ph499.preheader ], [ %n.vec678, %middle.block684 ] ; 3 uses
  %indvars.iv558.ph = phi i64 [ %i.jd, %vector.memcheck672 ], [ %i.jd, %.lr.ph499.preheader ], [ %i.jh, %middle.block684 ] ; 2 uses
  %xtraiter742 = and i64 %wide.trip.count565, 3   ; 2 uses
  %lcmp.mod743.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %.lr.ph499.prol.loopexit, label %.lr.ph499.prol

.lr.ph499.prol:                                   ; preds = %.lr.ph499.preheader717, %.lr.ph499.prol
  %indvars.iv560.prol = phi i64 [ %indvars.iv.next561.prol, %.lr.ph499.prol ], [ %indvars.iv560.ph, %.lr.ph499.preheader717 ] ; 2 uses
  %indvars.iv558.prol = phi i64 [ %indvars.iv.next559.prol, %.lr.ph499.prol ], [ %indvars.iv558.ph, %.lr.ph499.preheader717 ] ; 2 uses
  %prol.iter744 = phi i64 [ %prol.iter744.next, %.lr.ph499.prol ], [ 0, %.lr.ph499.preheader717 ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560.prol
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !41
  %indvars.iv.next559.prol = add nuw nsw i64 %indvars.iv558.prol, 1 ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558.prol
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !41
  %indvars.iv.next561.prol = add nuw nsw i64 %indvars.iv560.prol, 1 ; 2 uses
  %prol.iter744.next = add i64 %prol.iter744, 1   ; 2 uses
  %prol.iter744.cmp.not = icmp eq i64 %prol.iter744.next, %xtraiter742
  br i1 %prol.iter744.cmp.not, label %.lr.ph499.prol.loopexit, label %.lr.ph499.prol, !llvm.loop !68

.lr.ph499.prol.loopexit:                          ; preds = %.lr.ph499.prol, %.lr.ph499.preheader717
  %indvars.iv.next559.lcssa718.unr = phi i64 [ poison, %.lr.ph499.preheader717 ], [ %indvars.iv.next559.prol, %.lr.ph499.prol ]
  %indvars.iv560.unr = phi i64 [ %indvars.iv560.ph, %.lr.ph499.preheader717 ], [ %indvars.iv.next561.prol, %.lr.ph499.prol ]
  %indvars.iv558.unr = phi i64 [ %indvars.iv558.ph, %.lr.ph499.preheader717 ], [ %indvars.iv.next559.prol, %.lr.ph499.prol ]
  %i.jp = sub nsw i64 %indvars.iv560.ph, %wide.trip.count565
  %i.jq = icmp ugt i64 %i.jp, -4
  br i1 %i.jq, label %.preheader469.loopexit, label %.lr.ph499

.preheader469.loopexit:                           ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499, %middle.block684
  %indvars.iv.next559.lcssa = phi i64 [ %i.jh, %middle.block684 ], [ %indvars.iv.next559.lcssa718.unr, %.lr.ph499.prol.loopexit ], [ %indvars.iv.next559.3, %.lr.ph499 ]
  %i.jr = trunc nuw i64 %indvars.iv.next559.lcssa to i32
  br label %.preheader469

.preheader469:                                    ; preds = %.preheader469.loopexit, %.thread450
  %.2283.lcssa = phi i32 [ %.1282.lcssa625, %.thread450 ], [ %i.jr, %.preheader469.loopexit ] ; 2 uses
  %i.js = icmp sgt i32 %.1439, 1
  br i1 %i.js, label %.lr.ph503.preheader, label %._crit_edge504

.lr.ph503.preheader:                              ; preds = %.preheader469
  %i.jt = zext i32 %.2283.lcssa to i64            ; 5 uses
  %i.ju = zext nneg i32 %.1439 to i64             ; 6 uses
  %i.jv = add nsw i64 %i.ju, -1                   ; 2 uses
  %min.iters.check698 = icmp ult i32 %.1439, 17
  br i1 %min.iters.check698, label %.lr.ph503.preheader715, label %vector.memcheck688

vector.memcheck688:                               ; preds = %.lr.ph503.preheader
  %i.jw = shl nuw nsw i64 %i.jt, 2                ; 2 uses
  %scevgep689 = getelementptr i8, ptr %i.bg, i64 %i.jw
  %i.jx = shl nuw nsw i64 %i.ju, 2                ; 2 uses
  %i.jy = getelementptr i8, ptr %i.bg, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 %i.jw
  %scevgep691.a = getelementptr i8, ptr %i.jz, i64 -4
  %scevgep692.a = getelementptr i8, ptr %.0440, i64 4
  %scevgep693 = getelementptr i8, ptr %.0440, i64 %i.jx
  %bound0694 = icmp ult ptr %scevgep689, %scevgep693
  %bound1695 = icmp ult ptr %scevgep692.a, %scevgep691.a
  %found.conflict696 = and i1 %bound0694, %bound1695
  br i1 %found.conflict696, label %.lr.ph503.preheader715, label %vector.ph699

vector.ph699:                                     ; preds = %vector.memcheck688
  %n.vec700 = and i64 %i.jv, -8                   ; 4 uses
  %i.ka = sub nsw i64 %i.ju, %n.vec700
  %i.kb = add nsw i64 %n.vec700, %i.jt            ; 2 uses
  %invariant.gep768 = getelementptr [4 x i8], ptr %.0440, i64 %i.ju
  %invariant.gep770 = getelementptr [4 x i8], ptr %i.bg, i64 %i.jt
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph699
  %index702 = phi i64 [ 0, %vector.ph699 ], [ %index.next707, %vector.body701 ] ; 3 uses
  %i.kc = xor i64 %index702, -1
  %gep769 = getelementptr [4 x i8], ptr %invariant.gep768, i64 %i.kc ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %gep769, i64 -12
  %i.ke = getelementptr inbounds i8, ptr %gep769, i64 -28
  %wide.load703.a = load <4 x i32>, ptr %i.kd, align 4, !tbaa !41, !alias.scope !99
  %wide.load704 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !41, !alias.scope !99
  %reverse705.a = shufflevector <4 x i32> %wide.load703.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse706 = shufflevector <4 x i32> %wide.load704, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep771 = getelementptr [4 x i8], ptr %invariant.gep770, i64 %index702 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %gep771, i64 16
  store <4 x i32> %reverse705.a, ptr %gep771, align 4, !tbaa !41, !alias.scope !100, !noalias !99
  store <4 x i32> %reverse706, ptr %i.kf, align 4, !tbaa !41, !alias.scope !100, !noalias !99
  %index.next707 = add nuw i64 %index702, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next707, %n.vec700
  br i1 %i.kg, label %middle.block708, label %vector.body701, !llvm.loop !72

middle.block708:                                  ; preds = %vector.body701
  %cmp.n709 = icmp eq i64 %i.jv, %n.vec700
  br i1 %cmp.n709, label %._crit_edge504.loopexit, label %.lr.ph503.preheader715

.lr.ph503.preheader715:                           ; preds = %vector.memcheck688, %.lr.ph503.preheader, %middle.block708
  %indvars.iv569.ph = phi i64 [ %i.ju, %vector.memcheck688 ], [ %i.ju, %.lr.ph503.preheader ], [ %i.ka, %middle.block708 ]
  %indvars.iv567.ph = phi i64 [ %i.jt, %vector.memcheck688 ], [ %i.jt, %.lr.ph503.preheader ], [ %i.kb, %middle.block708 ]
  br label %.lr.ph503

.lr.ph499:                                        ; preds = %.lr.ph499.prol.loopexit, %.lr.ph499
  %indvars.iv560 = phi i64 [ %indvars.iv.next561.3, %.lr.ph499 ], [ %indvars.iv560.unr, %.lr.ph499.prol.loopexit ] ; 5 uses
  %indvars.iv558 = phi i64 [ %indvars.iv.next559.3, %.lr.ph499 ], [ %indvars.iv558.unr, %.lr.ph499.prol.loopexit ] ; 5 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !41
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !41
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !41
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !41
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !41
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !41
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.0443, i64 %indvars.iv560
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !41
  %indvars.iv.next559.3 = add nuw nsw i64 %indvars.iv558, 4 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv558
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 %i.kw, ptr %i.ky, align 4, !tbaa !41
  %indvars.iv.next561.3 = add nuw nsw i64 %indvars.iv560, 4 ; 2 uses
  %exitcond566.not.3 = icmp eq i64 %indvars.iv.next561.3, %wide.trip.count565
  br i1 %exitcond566.not.3, label %.preheader469.loopexit, label %.lr.ph499, !llvm.loop !73

.lr.ph503:                                        ; preds = %.lr.ph503.preheader715, %.lr.ph503
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %.lr.ph503 ], [ %indvars.iv569.ph, %.lr.ph503.preheader715 ] ; 2 uses
  %indvars.iv567 = phi i64 [ %indvars.iv.next568, %.lr.ph503 ], [ %indvars.iv567.ph, %.lr.ph503.preheader715 ] ; 2 uses
  %indvars.iv.next570 = add nsw i64 %indvars.iv569, -1 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0440, i64 %indvars.iv.next570
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !41
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv567
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !41
  %i.lc = icmp samesign ugt i64 %indvars.iv569, 2
  br i1 %i.lc, label %.lr.ph503, label %._crit_edge504.loopexit, !llvm.loop !74

._crit_edge504.loopexit:                          ; preds = %.lr.ph503, %middle.block708
  %indvars.iv.next568.lcssa = phi i64 [ %i.kb, %middle.block708 ], [ %indvars.iv.next568, %.lr.ph503 ]
  %i.ld = trunc nuw i64 %indvars.iv.next568.lcssa to i32
  br label %._crit_edge504

._crit_edge504:                                   ; preds = %._crit_edge504.loopexit, %.preheader469
  %.3284.lcssa = phi i32 [ %.2283.lcssa, %.preheader469 ], [ %i.ld, %._crit_edge504.loopexit ] ; 20 uses
  %i.le = icmp eq i32 %.3284.lcssa, 0             ; 2 uses
  %or.cond522.not = select i1 %i.ai, i1 true, i1 %i.le
  br i1 %or.cond522.not, label %.loopexit468, label %.lr.ph507.preheader

.lr.ph507.preheader:                              ; preds = %._crit_edge504
  %i.lf = zext nneg i32 %i.o to i64               ; 2 uses
  br label %.lr.ph507

.lr.ph507:                                        ; preds = %.lr.ph507.preheader, %.loopexit
  %.7506 = phi i32 [ %i.lp, %.loopexit ], [ 0, %.lr.ph507.preheader ] ; 4 uses
  %i.lg = icmp eq i32 %.7506, 0
  %i.lh = select i1 %i.lg, i32 %.3284.lcssa, i32 %.7506
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr [4 x i8], ptr %i.bg, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.lj, i64 -4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !41
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !31 ; 4 uses
  %i.lp = add nuw i32 %.7506, 1                   ; 4 uses
  %i.lq = icmp eq i32 %i.lp, %.3284.lcssa
  %i.lr = select i1 %i.lq, i32 0, i32 %i.lp
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !41
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.lv
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !31 ; 4 uses
  %i.ly = sext i32 %.7506 to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ly ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !41
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !31 ; 5 uses
  %i.me = icmp ult ptr %i.lo, %i.md
  %i.mf = icmp ult ptr %i.md, %i.lx
  %or.cond355 = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond355, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph507
  %i.mg = icmp ugt ptr %i.lo, %i.md
  %i.mh = icmp ugt ptr %i.md, %i.lx
  %or.cond356 = select i1 %i.mg, i1 %i.mh, i1 false
  br i1 %or.cond356, label %.loopexit, label %.preheader466

.preheader466:                                    ; preds = %bb.bn
  %indvars.iv.next575637 = add nsw i64 %i.mb, 1   ; 2 uses
  %i.mi = icmp slt i64 %indvars.iv.next575637, %i.lf
  br i1 %i.mi, label %.lr.ph639.preheader, label %.loopexit

.lr.ph639.preheader:                              ; preds = %.preheader466
  %i.mj = load <2 x i32>, ptr %i.md, align 4
  br label %.lr.ph639

bb.bo:                                            ; preds = %bb.bq
  %indvars.iv.next575 = add nsw i64 %indvars.iv.next575638, 1 ; 2 uses
  %i.mk = icmp slt i64 %indvars.iv.next575, %i.lf
  br i1 %i.mk, label %.lr.ph639, label %.loopexit, !llvm.loop !75

.lr.ph639:                                        ; preds = %.lr.ph639.preheader, %bb.bo
  %indvars.iv.next575638 = phi i64 [ %indvars.iv.next575, %bb.bo ], [ %indvars.iv.next575637, %.lr.ph639.preheader ] ; 3 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv.next575638
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !31 ; 5 uses
  %i.mn = load <2 x i32>, ptr %i.mm, align 4
  %i.mo = icmp eq <2 x i32> %i.mj, %i.mn          ; 2 uses
  %i.mp = extractelement <2 x i1> %i.mo, i64 0
  %i.mq = extractelement <2 x i1> %i.mo, i64 1
  %i.mr = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %i.mr, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %.lr.ph639
  %i.ms = icmp ult ptr %i.lo, %i.mm
  %i.mt = icmp ult ptr %i.mm, %i.lx
  %or.cond357 = select i1 %i.ms, i1 %i.mt, i1 false
  br i1 %or.cond357, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mu = icmp ugt ptr %i.lo, %i.mm
  %i.mv = icmp ugt ptr %i.mm, %i.lx
  %or.cond358 = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %or.cond358, label %bb.br, label %bb.bo, !llvm.loop !75

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.mw = trunc nsw i64 %indvars.iv.next575638 to i32
  store i32 %i.mw, ptr %i.lz, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph639, %bb.bo, %.preheader466, %bb.br, %.lr.ph507, %bb.bn
  %exitcond577.not = icmp eq i32 %i.lp, %.3284.lcssa
  br i1 %exitcond577.not, label %.loopexit468, label %.lr.ph507, !llvm.loop !76

.loopexit468:                                     ; preds = %.loopexit, %._crit_edge504
  br i1 %i.le, label %._crit_edge511.thread, label %.lr.ph510

.lr.ph510:                                        ; preds = %.loopexit468
  %i.mx = ptrtoint ptr %i.bl to i64               ; 3 uses
  %wide.trip.count581 = zext i32 %.3284.lcssa to i64 ; 2 uses
  %xtraiter745 = and i64 %wide.trip.count581, 1
  %i.my = icmp eq i32 %.3284.lcssa, 1
  br i1 %i.my, label %.epil.preheader, label %.lr.ph510.new
end_hunk_0
