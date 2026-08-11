inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@find_subframe_rice_params:bb.a

.lr.ph56.preheader.i.i:                           ; preds = %.lr.ph62.split.i.i
  %i.cd = add nuw nsw i32 %i.bx, 1
  %wide.trip.count75.i.i = zext nneg i32 %i.cd to i64
  %wide.trip.count.i.i = zext nneg i32 %i.by to i64
  br label %.lr.ph56.i.i

.lr.ph56.us.i.i:                                  ; preds = %.lr.ph62.split.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.by to i64
  %i.ce = shl nsw i64 %i.cc, 2
  %i.cf = add i64 %i.ce, %i.a
  %i.cg = add i64 %i.cf, 1184
  %i.ch = shl nsw i64 %i.cc, 2
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge48.us.us.i.i, %.lr.ph56.us.i.i
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %._crit_edge48.us.us.i.i ], [ 0, %.lr.ph56.us.i.i ] ; 3 uses
  %.03654.us.us.i.i = phi ptr [ %.036.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %.03651.i.i, %.lr.ph56.us.i.i ] ; 3 uses
  %.03753.us.us.i.i = phi ptr [ %.2.lcssa.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %i.ca, %.lr.ph56.us.i.i ] ; 6 uses
  %i.ci = icmp ult ptr %.03753.us.us.i.i, %.03654.us.us.i.i
  br i1 %i.ci, label %.lr.ph47.us.us.i.i.preheader, label %._crit_edge48.us.us.i.i

.lr.ph47.us.us.i.i.preheader:                     ; preds = %.preheader.us.us.i.i
  %.03753.us.us.i.i89 = ptrtoaddr ptr %.03753.us.us.i.i to i64 ; 2 uses
  %i.cj = mul i64 %i.ch, %indvars.iv77.i.i
  %i.ck = add i64 %i.cg, %i.cj
  %i.cl = add i64 %.03753.us.us.i.i89, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cm = xor i64 %.03753.us.us.i.i89, -1
  %i.cn = add i64 %umax, %i.cm                    ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check91 = icmp ult i64 %i.cn, 12
  br i1 %min.iters.check91, label %.lr.ph47.us.us.i.i.preheader126, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph47.us.us.i.i.preheader
  %n.vec93 = and i64 %i.cp, 9223372036854775804   ; 3 uses
  %i.cq = shl i64 %n.vec93, 2
  %i.cr = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cq ; 2 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next101, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.cw, %vector.body94 ]
  %vec.phi97 = phi <2 x i64> [ zeroinitializer, %vector.ph92 ], [ %i.cx, %vector.body94 ]
  %i.cs = shl i64 %index95, 2
  %next.gep98 = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep98, i64 8
  %wide.load99 = load <2 x i32>, ptr %next.gep98, align 4, !tbaa !47
  %wide.load100 = load <2 x i32>, ptr %i.ct, align 4, !tbaa !47
  %i.cu = zext <2 x i32> %wide.load99 to <2 x i64>
  %i.cv = zext <2 x i32> %wide.load100 to <2 x i64>
  %i.cw = add <2 x i64> %vec.phi96, %i.cu         ; 2 uses
  %i.cx = add <2 x i64> %vec.phi97, %i.cv         ; 2 uses
  %index.next101 = add nuw i64 %index95, 4        ; 2 uses
  %i.cy = icmp eq i64 %index.next101, %n.vec93
  br i1 %i.cy, label %middle.block102, label %vector.body94, !llvm.loop !241

middle.block102:                                  ; preds = %vector.body94
  %bin.rdx103 = add <2 x i64> %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx103) ; 2 uses
  %cmp.n104 = icmp eq i64 %i.cp, %n.vec93
  br i1 %cmp.n104, label %._crit_edge48.us.us.i.i, label %.lr.ph47.us.us.i.i.preheader126

.lr.ph47.us.us.i.i.preheader126:                  ; preds = %.lr.ph47.us.us.i.i.preheader, %middle.block102
  %.046.us.us.i.i.ph = phi i64 [ 0, %.lr.ph47.us.us.i.i.preheader ], [ %i.cz, %middle.block102 ]
  %.245.us.us.i.i.ph = phi ptr [ %.03753.us.us.i.i, %.lr.ph47.us.us.i.i.preheader ], [ %i.cr, %middle.block102 ]
  br label %.lr.ph47.us.us.i.i

.lr.ph47.us.us.i.i:                               ; preds = %.lr.ph47.us.us.i.i.preheader126, %.lr.ph47.us.us.i.i
  %.046.us.us.i.i = phi i64 [ %i.dd, %.lr.ph47.us.us.i.i ], [ %.046.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader126 ]
  %.245.us.us.i.i = phi ptr [ %i.da, %.lr.ph47.us.us.i.i ], [ %.245.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader126 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.245.us.us.i.i, i64 4 ; 3 uses
  %i.db = load i32, ptr %.245.us.us.i.i, align 4, !tbaa !47
  %i.dc = zext i32 %i.db to i64
  %i.dd = add i64 %.046.us.us.i.i, %i.dc          ; 2 uses
  %i.de = icmp ult ptr %i.da, %.03654.us.us.i.i
  br i1 %i.de, label %.lr.ph47.us.us.i.i, label %._crit_edge48.us.us.i.i, !llvm.loop !242

._crit_edge48.us.us.i.i:                          ; preds = %.lr.ph47.us.us.i.i, %middle.block102, %.preheader.us.us.i.i
  %.2.lcssa.us.us.i.i = phi ptr [ %.03753.us.us.i.i, %.preheader.us.us.i.i ], [ %i.cr, %middle.block102 ], [ %i.da, %.lr.ph47.us.us.i.i ]
  %.0.lcssa.us.us.i.i = phi i64 [ 0, %.preheader.us.us.i.i ], [ %i.cz, %middle.block102 ], [ %i.dd, %.lr.ph47.us.us.i.i ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv77.i.i
  store i64 %.0.lcssa.us.us.i.i, ptr %i.df, align 8, !tbaa !111
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %.036.us.us.i.i = getelementptr inbounds [4 x i8], ptr %.03654.us.us.i.i, i64 %i.cc
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %calc_sum_top.exit.i, label %.preheader.us.us.i.i, !llvm.loop !243

.lr.ph56.i.i:                                     ; preds = %._crit_edge57.split.i.i, %.lr.ph56.preheader.i.i
  %indvars.iv72.i.i = phi i64 [ 0, %.lr.ph56.preheader.i.i ], [ %i.dg, %._crit_edge57.split.i.i ] ; 3 uses
  %i.dg = add nuw nsw i64 %indvars.iv72.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv72.i.i
  %i.di = trunc nuw nsw i64 %indvars.iv72.i.i to i32 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph56.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph56.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %.03654.i.i = phi ptr [ %.03651.i.i, %.lr.ph56.i.i ], [ %.036.i.i, %._crit_edge.i.i ] ; 4 uses
  %.03753.i.i = phi ptr [ %i.ca, %.lr.ph56.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.dj = ptrtoint ptr %.03654.i.i to i64         ; 2 uses
  %i.dk = ptrtoint ptr %.03753.i.i to i64         ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = mul nsw i64 %i.dm, %i.dg                ; 3 uses
  %i.do = icmp ult ptr %.03753.i.i, %.03654.i.i
  br i1 %i.do, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.dp = add i64 %i.dk, 4
  %i.dq = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.dp)
  %i.dr = xor i64 %i.dk, -1
  %i.ds = add i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ds, 12
  br i1 %min.iters.check77, label %.lr.ph.i.i.preheader131, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec79 = and i64 %i.du, 9223372036854775804   ; 3 uses
  %i.dv = shl i64 %n.vec79, 2
  %i.dw = getelementptr i8, ptr %.03753.i.i, i64 %i.dv ; 2 uses
  %i.dx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dn, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next85, %vector.body80 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dx, %vector.ph78 ], [ %i.ee, %vector.body80 ]
  %vec.phi82 = phi <2 x i64> [ zeroinitializer, %vector.ph78 ], [ %i.ef, %vector.body80 ]
  %i.dy = shl i64 %index81, 2
  %next.gep = getelementptr i8, ptr %.03753.i.i, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 8
  %wide.load83 = load <2 x i32>, ptr %next.gep, align 4, !tbaa !47
  %wide.load84 = load <2 x i32>, ptr %i.dz, align 4, !tbaa !47
  %i.ea = lshr <2 x i32> %wide.load83, %broadcast.splat
  %i.eb = lshr <2 x i32> %wide.load84, %broadcast.splat
  %i.ec = zext <2 x i32> %i.ea to <2 x i64>
  %i.ed = zext <2 x i32> %i.eb to <2 x i64>
  %i.ee = add <2 x i64> %vec.phi, %i.ec           ; 2 uses
  %i.ef = add <2 x i64> %vec.phi82, %i.ed         ; 2 uses
  %index.next85 = add nuw i64 %index81, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next85, %n.vec79
  br i1 %i.eg, label %middle.block86, label %vector.body80, !llvm.loop !244

middle.block86:                                   ; preds = %vector.body80
  %bin.rdx = add <2 x i64> %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.du, %n.vec79
  br i1 %cmp.n87, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %.lr.ph.i.i.preheader, %middle.block86
  %.03543.i.i.ph = phi i64 [ %i.dn, %.lr.ph.i.i.preheader ], [ %i.eh, %middle.block86 ]
  %.142.i.i.ph = phi ptr [ %.03753.i.i, %.lr.ph.i.i.preheader ], [ %i.dw, %middle.block86 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %.03543.i.i = phi i64 [ %i.em, %.lr.ph.i.i ], [ %.03543.i.i.ph, %.lr.ph.i.i.preheader131 ]
  %.142.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.142.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.142.i.i, i64 4 ; 3 uses
  %i.ej = load i32, ptr %.142.i.i, align 4, !tbaa !47
  %i.ek = lshr i32 %i.ej, %i.di
  %i.el = zext i32 %i.ek to i64
  %i.em = add i64 %.03543.i.i, %i.el              ; 2 uses
  %i.en = icmp ult ptr %i.ei, %.03654.i.i
  br i1 %i.en, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !245

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block86, %bb.e
  %.1.lcssa.i.i = phi ptr [ %.03753.i.i, %bb.e ], [ %i.dw, %middle.block86 ], [ %i.ei, %.lr.ph.i.i ]
  %.035.lcssa.i.i = phi i64 [ %i.dn, %bb.e ], [ %i.eh, %middle.block86 ], [ %i.em, %.lr.ph.i.i ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i.i
  store i64 %.035.lcssa.i.i, ptr %i.eo, align 8, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.036.i.i = getelementptr inbounds [4 x i8], ptr %.03654.i.i, i64 %i.cc
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.split.i.i, label %bb.e, !llvm.loop !243

._crit_edge57.split.i.i:                          ; preds = %._crit_edge.i.i
  %exitcond76.not.i.i = icmp eq i64 %i.dg, %wide.trip.count75.i.i
  br i1 %exitcond76.not.i.i, label %calc_sum_top.exit.i, label %.lr.ph56.i.i, !llvm.loop !246

calc_sum_top.exit.i:                              ; preds = %._crit_edge57.split.i.i, %._crit_edge48.us.us.i.i, %.lr.ph62.i.i, %._crit_edge.i
  %i.ep = sext i32 %.0.i42 to i64                 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ep
  store i64 4294967295, ptr %i.eq, align 8, !tbaa !111
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.es = icmp eq i32 %.0.i30, %.0.i42
  %i.et = add i32 %i.az, -1                       ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.et to i64  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not15.i.i.i = icmp slt i32 %i.az, 2
  %i.ev = add nsw i32 %i.bx, 1                    ; 2 uses
  %wide.trip.count.i49.i = zext i32 %i.ev to i64  ; 2 uses
  %i.ew = sext i32 %.0.i30 to i64
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ex = icmp eq i32 %i.et, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod138 = trunc i32 %i.et to i1
  %xtraiter140 = and i64 %wide.trip.count.i49.i, 1
  %i.ey = icmp eq i32 %i.bx, 0
  %unroll_iter143 = and i64 %wide.trip.count.i49.i, 2147483646
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  %lcmp.mod142 = trunc i32 %i.ev to i1
  br label %calc_sum_next.exit.i

calc_sum_next.exit.i:                             ; preds = %calc_sum_next.exit.i.backedge, %calc_sum_top.exit.i
  %indvars.iv68.i = phi i64 [ %i.ew, %calc_sum_top.exit.i ], [ %indvars.iv.next69.i, %calc_sum_next.exit.i.backedge ] ; 7 uses
  %.041.i = phi i32 [ %.0.i42, %calc_sum_top.exit.i ], [ %.142.i, %calc_sum_next.exit.i.backedge ] ; 2 uses
  %i.ez = trunc nsw i64 %indvars.iv68.i to i32    ; 5 uses
  %i.fa = shl i32 4, %i.ez
  %i.fb = sext i32 %i.fa to i64                   ; 5 uses
  %i.fc = ashr i32 %i.f, %i.ez                    ; 4 uses
  %i.fd = icmp eq i64 %indvars.iv68.i, 31
  br i1 %i.fd, label %calc_optimal_rice_params.exit.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %calc_sum_next.exit.i
  %4 = shl nuw nsw i32 1, %i.ez
  %5 = sub nsw i32 %i.fc, %2                      ; 3 uses
  %wide.trip.count60.i.i = zext nneg i32 %4 to i64 ; 5 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i44.i
  %i.fe = load i64, ptr %i.av, align 8, !tbaa !111 ; 2 uses
  %i.ff = ashr i32 %5, 1
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %.not.i.us.peel.i.i = icmp ugt i64 %i.fe, %i.fg
  %i.fh = sub i64 %i.fe, %i.fg                    ; 2 uses
  br i1 %.not.i.us.peel.i.i, label %bb.f, label %find_optimal_param.exit.us.peel.i.i

bb.f:                                             ; preds = %.lr.ph.split.us.preheader.i.i
  %i.fi = sext i32 %5 to i64
  %i.fj = udiv i64 %i.fh, %i.fi
  %i.fk = tail call i64 @llvm.smax.i64(i64 %i.fj, i64 -2147483648)
  %i.fl = tail call i64 @llvm.smin.i64(i64 %i.fk, i64 2147483647) ; 2 uses
  %.0.i.i.us.peel.i.i = trunc nsw i64 %i.fl to i32 ; 2 uses
  %.not.i.i.us.peel.i.i = icmp ult i64 %i.fl, 65536 ; 2 uses
  %i.fm = lshr i32 %.0.i.i.us.peel.i.i, 16
  %spec.select.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 %.0.i.i.us.peel.i.i, i32 %i.fm ; 3 uses
  %spec.select12.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.peel.i.i = icmp samesign ult i32 %spec.select.i.i.us.peel.i.i, 256 ; 2 uses
  %i.fn = lshr i32 %spec.select.i.i.us.peel.i.i, 8
  %i.fo = or disjoint i32 %spec.select12.i.i.us.peel.i.i, 8
  %.110.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select.i.i.us.peel.i.i, i32 %i.fn
  %.1.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select12.i.i.us.peel.i.i, i32 %i.fo
  %i.fp = zext nneg i32 %.110.i.i.us.peel.i.i to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !70
  %i.fs = zext i8 %i.fr to i32
  %i.ft = add nuw nsw i32 %.1.i.i.us.peel.i.i, %i.fs
  %i.fu = tail call i32 @llvm.smin.i32(i32 %i.ft, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.peel.i.i

find_optimal_param.exit.us.peel.i.i:              ; preds = %bb.f, %.lr.ph.split.us.preheader.i.i
  %.0.i.us.peel.i.i = phi i32 [ %i.fu, %bb.f ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 3 uses
  %i.fv = add nsw i32 %.0.i.us.peel.i.i, 1
  %i.fw = mul nsw i32 %i.fv, %5
  %i.fx = sext i32 %i.fw to i64
  %i.fy = zext nneg i32 %.0.i.us.peel.i.i to i64
  %i.fz = lshr i64 %i.fh, %i.fy
  %i.ga = add i64 %i.fz, %i.fb
  %.1.us.peel.i.i = add i64 %i.ga, %i.fx          ; 2 uses
  store i32 %.0.i.us.peel.i.i, ptr %i.eu, align 4, !tbaa !47
  %6 = icmp eq i64 %indvars.iv68.i, 0
  br i1 %6, label %calc_optimal_rice_params.exit.i, label %.lr.ph.split.us.peel.next.i.i

.lr.ph.split.us.peel.next.i.i:                    ; preds = %find_optimal_param.exit.us.peel.i.i
  %i.gb = ashr i32 %i.fc, 1
  %i.gc = sext i32 %i.gb to i64                   ; 2 uses
  %i.gd = sext i32 %i.fc to i64
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %find_optimal_param.exit.us.i.i, %.lr.ph.split.us.peel.next.i.i
  %indvars.iv56.i.i = phi i64 [ 1, %.lr.ph.split.us.peel.next.i.i ], [ %indvars.iv.next57.i.i, %find_optimal_param.exit.us.i.i ] ; 3 uses
  %.040.us.i.i = phi i64 [ %.1.us.peel.i.i, %.lr.ph.split.us.peel.next.i.i ], [ %.1.us.i.i, %find_optimal_param.exit.us.i.i ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv56.i.i
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !111 ; 2 uses
  %.not.i.us.i.i = icmp ugt i64 %i.gf, %i.gc
  %i.gg = sub i64 %i.gf, %i.gc                    ; 2 uses
  br i1 %.not.i.us.i.i, label %bb.g, label %find_optimal_param.exit.us.i.i

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gh = udiv i64 %i.gg, %i.gd
  %i.gi = tail call i64 @llvm.smax.i64(i64 %i.gh, i64 -2147483648)
  %i.gj = tail call i64 @llvm.smin.i64(i64 %i.gi, i64 2147483647) ; 2 uses
  %.0.i.i.us.i.i = trunc nsw i64 %i.gj to i32     ; 2 uses
  %.not.i.i.us.i.i = icmp ult i64 %i.gj, 65536    ; 2 uses
  %i.gk = lshr i32 %.0.i.i.us.i.i, 16
  %spec.select.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 %.0.i.i.us.i.i, i32 %i.gk ; 3 uses
  %spec.select12.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.i.i = icmp samesign ult i32 %spec.select.i.i.us.i.i, 256 ; 2 uses
  %i.gl = lshr i32 %spec.select.i.i.us.i.i, 8
  %i.gm = or disjoint i32 %spec.select12.i.i.us.i.i, 8
  %.110.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select.i.i.us.i.i, i32 %i.gl
  %.1.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select12.i.i.us.i.i, i32 %i.gm
  %i.gn = zext nneg i32 %.110.i.i.us.i.i to i64
  %i.go = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !70
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nuw nsw i32 %.1.i.i.us.i.i, %i.gq
  %i.gs = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.i.i

find_optimal_param.exit.us.i.i:                   ; preds = %bb.g, %.lr.ph.split.us.i.i
  %.0.i.us.i.i = phi i32 [ %i.gs, %bb.g ], [ 0, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.gt = add nsw i32 %.0.i.us.i.i, 1
  %i.gu = mul nsw i32 %i.gt, %i.fc
  %i.gv = sext i32 %i.gu to i64
  %i.gw = zext nneg i32 %.0.i.us.i.i to i64
  %i.gx = lshr i64 %i.gg, %i.gw
  %i.gy = add i64 %i.gx, %.040.us.i.i
  %.1.us.i.i = add i64 %i.gy, %i.gv               ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv56.i.i
  store i32 %.0.i.us.i.i, ptr %i.gz, align 4, !tbaa !47
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i, label %calc_optimal_rice_params.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !247

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i44.i
  br i1 %.not15.i.i.i, label %find_optimal_param_exact.exit.us.i.preheader.i, label %.lr.ph.i.i.i

find_optimal_param_exact.exit.us.i.preheader.i:   ; preds = %.lr.ph.split.i.i
  %i.ha = shl nuw nsw i64 %wide.trip.count60.i.i, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eu, i8 0, i64 %i.ha, i1 false), !tbaa !47
  %min.iters.check108 = icmp ult i64 %indvars.iv68.i, 2
  br i1 %min.iters.check108, label %find_optimal_param_exact.exit.us.i.i.1, label %vector.ph109

vector.ph109:                                     ; preds = %find_optimal_param_exact.exit.us.i.preheader.i
  %n.vec110 = and i64 %wide.trip.count60.i.i, 2147483644
  %i.hb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.fb, i64 0
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next117, %vector.body111 ] ; 2 uses
  %vec.phi113 = phi <2 x i64> [ %i.hb, %vector.ph109 ], [ %i.he, %vector.body111 ]
  %vec.phi114 = phi <2 x i64> [ zeroinitializer, %vector.ph109 ], [ %i.hf, %vector.body111 ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index112 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load115 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !111
  %wide.load116 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !111
  %i.he = add <2 x i64> %wide.load115, %vec.phi113 ; 2 uses
  %i.hf = add <2 x i64> %wide.load116, %vec.phi114 ; 2 uses
  %index.next117 = add nuw i64 %index112, 4       ; 2 uses
  %i.hg = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.hg, label %middle.block118, label %vector.body111, !llvm.loop !249

middle.block118:                                  ; preds = %vector.body111
  %bin.rdx119 = add <2 x i64> %i.hf, %i.he
  %i.hh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx119)
  br label %calc_optimal_rice_params.exit.i

find_optimal_param_exact.exit.us.i.i.1:           ; preds = %find_optimal_param_exact.exit.us.i.preheader.i, %find_optimal_param_exact.exit.us.i.i.1
  %indvars.iv50.i.i = phi i64 [ %.1.us43.i.i.1, %find_optimal_param_exact.exit.us.i.i.1 ], [ 0, %find_optimal_param_exact.exit.us.i.preheader.i ] ; 2 uses
  %.040.us41.i.i = phi i64 [ %.1.us43.i.i, %find_optimal_param_exact.exit.us.i.i.1 ], [ %i.fb, %find_optimal_param_exact.exit.us.i.preheader.i ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv50.i.i
  %i.hi = load i64, ptr %7, align 8, !tbaa !111
  %.1.us43.i.i = add i64 %i.hi, %.040.us41.i.i    ; 2 uses
  %.1.us43.i.i.1 = add nuw nsw i64 %indvars.iv50.i.i, 1 ; 2 uses
  %exitcond55.not.i.i.1 = icmp eq i64 %.1.us43.i.i.1, %wide.trip.count60.i.i
  br i1 %exitcond55.not.i.i.1, label %calc_optimal_rice_params.exit.i, label %find_optimal_param_exact.exit.us.i.i.1, !llvm.loop !250

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.i.i, %find_optimal_param_exact.exit.loopexit.i.i
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i46.i, %find_optimal_param_exact.exit.loopexit.i.i ], [ 0, %.lr.ph.split.i.i ] ; 4 uses
  %.040.i.i = phi i64 [ %.1.i.i39, %find_optimal_param_exact.exit.loopexit.i.i ], [ %i.fb, %.lr.ph.split.i.i ]
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv.i45.i ; 3 uses
  br i1 %i.ex, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ] ; 4 uses
  %.018.i.i.i = phi i32 [ %spec.select14.i.i.i.1, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ]
  %.01116.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i.i.i.new ], [ 9223372036854775807, %.lr.ph.i.i.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ]
  %gep.i.i.i = getelementptr [2048 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.hj = load i64, ptr %gep.i.i.i, align 8, !tbaa !111 ; 2 uses
  %i.hk = icmp slt i64 %i.hj, %.01116.i.i.i
  %spec.select.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.hj, i64 %.01116.i.i.i) ; 2 uses
  %i.hl = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %spec.select14.i.i.i = select i1 %i.hk, i32 %i.hl, i32 %.018.i.i.i
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [2048 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.hm = load i64, ptr %gep.i.i.i.1, align 8, !tbaa !111 ; 2 uses
  %i.hn = icmp slt i64 %i.hm, %spec.select.i.i.i
  %spec.select.i.i.i.1 = tail call i64 @llvm.smin.i64(i64 %i.hm, i64 %spec.select.i.i.i) ; 2 uses
  %i.ho = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %spec.select14.i.i.i.1 = select i1 %i.hn, i32 %i.ho, i32 %spec.select14.i.i.i ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i.new, !llvm.loop !251

find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.new
  br i1 %lcmp.mod.not, label %find_optimal_param_exact.exit.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.018.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %spec.select14.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ]
  %.01116.i.i.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %gep.i.i.i.epil = getelementptr [2048 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.hp = load i64, ptr %gep.i.i.i.epil, align 8, !tbaa !111
  %i.hq = icmp slt i64 %i.hp, %.01116.i.i.i.epil.init
  %i.hr = trunc nuw nsw i64 %indvars.iv.i.i.i.epil.init to i32
  %spec.select14.i.i.i.epil = select i1 %i.hq, i32 %i.hr, i32 %.018.i.i.i.epil.init
  br label %find_optimal_param_exact.exit.loopexit.i.i

find_optimal_param_exact.exit.loopexit.i.i:       ; preds = %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa, %.epil.preheader
  %spec.select14.i.i.i.lcssa = phi i32 [ %spec.select14.i.i.i.1, %find_optimal_param_exact.exit.loopexit.i.i.unr-lcssa ], [ %spec.select14.i.i.i.epil, %.epil.preheader ] ; 2 uses
  %i.hs = sext i32 %spec.select14.i.i.i.lcssa to i64
  %i.ht = getelementptr inbounds [2048 x i8], ptr %i.av, i64 %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.i45.i
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !111
  %.1.i.i39 = add i64 %i.hv, %.040.i.i            ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i45.i
  store i32 %spec.select14.i.i.i.lcssa, ptr %i.hw, align 4, !tbaa !47
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %wide.trip.count60.i.i
  br i1 %exitcond.not.i47.i, label %calc_optimal_rice_params.exit.i, label %.lr.ph.i.i.i, !llvm.loop !252

calc_optimal_rice_params.exit.i:                  ; preds = %find_optimal_param_exact.exit.loopexit.i.i, %find_optimal_param_exact.exit.us.i.i.1, %find_optimal_param.exit.us.i.i, %middle.block118, %find_optimal_param.exit.us.peel.i.i, %calc_sum_next.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.fb, %calc_sum_next.exit.i ], [ %.1.us.i.i, %find_optimal_param.exit.us.i.i ], [ %.1.us43.i.i, %find_optimal_param_exact.exit.us.i.i.1 ], [ %.1.us.peel.i.i, %find_optimal_param.exit.us.peel.i.i ], [ %i.hh, %middle.block118 ], [ %.1.i.i39, %find_optimal_param_exact.exit.loopexit.i.i ] ; 2 uses
  store i32 %i.ez, ptr %i.er, align 4, !tbaa !253
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv68.i
  store i64 %.0.lcssa.i.i, ptr %i.hx, align 8, !tbaa !111
  %i.hy = sext i32 %.041.i to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !111
  %i.ib = icmp ult i64 %.0.lcssa.i.i, %i.ia
  %or.cond.i = or i1 %i.es, %i.ib
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %calc_optimal_rice_params.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ai, ptr noundef nonnull align 4 dereferenceable(1032) %3, i64 1032, i1 false), !tbaa.struct !254
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %calc_optimal_rice_params.exit.i
  %.142.i = phi i32 [ %i.ez, %bb.h ], [ %.041.i, %calc_optimal_rice_params.exit.i ] ; 2 uses
  %i.ic = icmp eq i64 %indvars.iv68.i, %i.ep
  br i1 %i.ic, label %calc_rice_params.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, -1 ; 3 uses
  %i.id = icmp eq i64 %indvars.iv.next69.i, 31
  %or.cond.i.i = or i1 %.not58.i.i, %i.id
  br i1 %or.cond.i.i, label %calc_sum_next.exit.i.backedge, label %.preheader.preheader.i.i

calc_sum_next.exit.i.backedge:                    ; preds = %._crit_edge.i53.i, %bb.j
  br label %calc_sum_next.exit.i

.preheader.preheader.i.i:                         ; preds = %bb.j
  %i.ie = trunc nsw i64 %indvars.iv.next69.i to i32
  %i.if = shl nuw i32 1, %i.ie
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.if, i32 1)
  %wide.trip.count24.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i53.i, %.preheader.preheader.i.i
  %indvars.iv21.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next22.i.i, %._crit_edge.i53.i ] ; 5 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv21.i.i, 4 ; 3 uses
  br i1 %i.ey, label %.epil.preheader139, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %.preheader.i.i.new
  %indvars.iv.i50.i = phi i64 [ %indvars.iv.next.i51.i.1, %.preheader.i.i.new ], [ 0, %.preheader.i.i ] ; 3 uses
  %niter144 = phi i64 [ %niter144.next.1, %.preheader.i.i.new ], [ 0, %.preheader.i.i ]
  %i.ig = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv.i50.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.i ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !111
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !111
  %i.il = add i64 %i.ik, %i.ii
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv21.i.i
  store i64 %i.il, ptr %i.im, align 8, !tbaa !111
  %i.in = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv.i50.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2048 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx.i.i ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !111
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !111
  %i.it = add i64 %i.is, %i.iq
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv21.i.i
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !111
  %indvars.iv.next.i51.i.1 = add nuw nsw i64 %indvars.iv.i50.i, 2 ; 2 uses
  %niter144.next.1 = add i64 %niter144, 2         ; 2 uses
  %niter144.ncmp.1 = icmp eq i64 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %._crit_edge.i53.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !255

._crit_edge.i53.i.unr-lcssa:                      ; preds = %.preheader.i.i.new
  br i1 %lcmp.mod141.not, label %._crit_edge.i53.i, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge.i53.i.unr-lcssa, %.preheader.i.i
  %indvars.iv.i50.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i51.i.1, %._crit_edge.i53.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.iv = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv.i50.i.epil.init ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !111
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !111
  %i.ja = add i64 %i.iz, %i.ix
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv21.i.i
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !111
  br label %._crit_edge.i53.i

._crit_edge.i53.i:                                ; preds = %._crit_edge.i53.i.unr-lcssa, %.epil.preheader139
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %exitcond25.not.i.i = icmp eq i64 %indvars.iv.next22.i.i, %wide.trip.count24.i.i
  br i1 %exitcond25.not.i.i, label %calc_sum_next.exit.i.backedge, label %.preheader.i.i, !llvm.loop !256

calc_rice_params.exit:                            ; preds = %bb.i
  %i.jc = sext i32 %.142.i to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jc
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.jf = add i64 %i.je, %.0
  ret i64 %i.jf
}

declare i32 @ff_lpc_calc_coefs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @lpc_encode_choose_datapath(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 5, -2147483648) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = add nsw i32 %1, -1                       ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 3 uses
  %i.e = shl nuw i64 1, %i.d
  %i.f = icmp sgt i32 %6, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 13 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi129 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <2 x i32>, ptr %i.g, align 4, !tbaa !47
  %wide.load130 = load <2 x i32>, ptr %i.h, align 4, !tbaa !47
  %i.i = sext <2 x i32> %wide.load to <2 x i64>
  %i.j = sext <2 x i32> %wide.load130 to <2 x i64>
  %i.k = shl <2 x i64> %i.i, %broadcast.splat
  %i.l = shl <2 x i64> %i.j, %broadcast.splat
  %i.m = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.k, i1 true)
  %i.n = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.l, i1 true)
  %i.o = add <2 x i64> %i.m, %vec.phi             ; 2 uses
  %i.p = add <2 x i64> %i.n, %vec.phi129          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.r = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader208

.lr.ph.preheader208:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.05092.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa128 = phi i64 [ %i.r, %middle.block ], [ %i.z, %.lr.ph ]
  %i.s = icmp sgt i32 %1, 32
  br i1 %i.s, label %.lr.ph.preheader.i, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a
  %i.t = icmp sgt i32 %1, 32
  br i1 %i.t, label %.preheader.preheader.i, label %.thread109

.lr.ph:                                           ; preds = %.lr.ph.preheader208, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader208 ] ; 2 uses
  %.05092 = phi i64 [ %i.z, %.lr.ph ], [ %.05092.ph, %.lr.ph.preheader208 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %i.w = sext i32 %i.v to i64
  %i.x = shl i64 %i.w, %i.d
  %i.y = tail call i64 @llvm.abs.i64(i64 %i.x, i1 true)
  %i.z = add i64 %i.y, %.05092                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !258

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %6 to i64    ; 5 uses
  %min.iters.check163 = icmp ult i32 %6, 4
  br i1 %min.iters.check163, label %.lr.ph.i.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.preheader.i
  %n.vec165 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next170, %vector.body166 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index167 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load168 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !111
  %wide.load169 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !111
  %i.ac = trunc <2 x i64> %wide.load168 to <2 x i32>
  %i.ad = trunc <2 x i64> %wide.load169 to <2 x i32>
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index167 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store <2 x i32> %i.ac, ptr %i.ae, align 4, !tbaa !47
  store <2 x i32> %i.ad, ptr %i.af, align 4, !tbaa !47
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.ag, label %middle.block171, label %vector.body166, !llvm.loop !259

middle.block171:                                  ; preds = %vector.body166
  %cmp.n172 = icmp eq i64 %n.vec165, %wide.trip.count
  br i1 %cmp.n172, label %.preheader42.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block171
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec165, %middle.block171 ]
  br label %.lr.ph.i

.preheader42.i:                                   ; preds = %.lr.ph.i, %middle.block171
  %i.ah = zext nneg i32 %8 to i64
  %i.ai = icmp samesign ult i32 %6, %5
  br i1 %i.ai, label %.preheader.lr.ph.i, label %lpc_encode_with_residual_limit_33bps.exit

.preheader.lr.ph.i:                               ; preds = %.preheader42.i
  %wide.trip.count68.i = zext nneg i32 %5 to i64
  %i.aj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ak = zext nneg i32 %6 to i35
  %min.iters.check181 = icmp ult i32 %6, 12
  %i.al = trunc nsw i64 %i.aj to i35
  %mul.result178 = shl nsw i35 %i.al, 3
  %mul.overflow179 = icmp ugt i64 %i.aj, 4294967295
  %n.vec183 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n197 = icmp eq i64 %n.vec183, %wide.trip.count
  %xtraiter219 = and i64 %wide.trip.count.i, 1
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  %i.am = add nsw i64 %wide.trip.count.i, -1
  br label %.preheader.us.i

.preheader.preheader.i:                           ; preds = %._crit_edge.thread
  %i.an = sext i32 %6 to i64
  %wide.trip.count58.i = zext nneg i32 %5 to i64
  br label %.preheader.i

.preheader.us.i:                                  ; preds = %bb.b, %.preheader.lr.ph.i
  %indvar175 = phi i35 [ %indvar.next176, %bb.b ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i, %bb.b ], [ %wide.trip.count.i, %.preheader.lr.ph.i ] ; 7 uses
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.scevcheck174

vector.scevcheck174:                              ; preds = %.preheader.us.i
  %i.ao = add i35 %indvar175, %i.ak
  %i.ap = shl i35 %i.ao, 3
  %i.aq = add i35 %i.ap, -8                       ; 2 uses
  %i.ar = sub i35 %i.aq, %mul.result178
  %i.as = icmp sgt i35 %i.ar, %i.aq
  %i.at = or i1 %i.as, %mul.overflow179
  br i1 %i.at, label %scalar.ph180.preheader, label %vector.body184

vector.body184:                                   ; preds = %vector.scevcheck174, %vector.body184
  %index185 = phi i64 [ %index.next194, %vector.body184 ], [ 0, %vector.scevcheck174 ] ; 3 uses
  %vec.phi186 = phi <2 x i64> [ %i.bh, %vector.body184 ], [ zeroinitializer, %vector.scevcheck174 ]
  %vec.phi187 = phi <2 x i64> [ %i.bi, %vector.body184 ], [ zeroinitializer, %vector.scevcheck174 ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index185 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %wide.load188 = load <2 x i32>, ptr %i.au, align 4, !tbaa !47
  %wide.load189 = load <2 x i32>, ptr %i.av, align 4, !tbaa !47
  %i.aw = sext <2 x i32> %wide.load188 to <2 x i64>
  %i.ax = sext <2 x i32> %wide.load189 to <2 x i64>
  %i.ay = xor i64 %index185, -1
  %i.az = add nsw i64 %indvars.iv65.i, %i.ay
  %i.ba = shl i64 %i.az, 32
  %i.bb = ashr exact i64 %i.ba, 29
  %i.bc = getelementptr inbounds i8, ptr %4, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %wide.load190 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !111
  %wide.load191 = load <2 x i64>, ptr %i.be, align 8, !tbaa !111
  %reverse192 = shufflevector <2 x i64> %wide.load190, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse193 = shufflevector <2 x i64> %wide.load191, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = mul nsw <2 x i64> %reverse192, %i.aw
  %i.bg = mul nsw <2 x i64> %reverse193, %i.ax
  %i.bh = add <2 x i64> %i.bf, %vec.phi186        ; 2 uses
  %i.bi = add <2 x i64> %i.bg, %vec.phi187        ; 2 uses
  %index.next194 = add nuw i64 %index185, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next194, %n.vec183
  br i1 %i.bj, label %middle.block195, label %vector.body184, !llvm.loop !260

middle.block195:                                  ; preds = %vector.body184
  %bin.rdx196 = add <2 x i64> %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx196) ; 2 uses
  br i1 %cmp.n197, label %._crit_edge.us.i, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.scevcheck174, %.preheader.us.i, %middle.block195
  %indvars.iv60.i.ph = phi i64 [ 0, %vector.scevcheck174 ], [ 0, %.preheader.us.i ], [ %n.vec183, %middle.block195 ] ; 5 uses
  %.03444.us.i.ph = phi i64 [ 0, %vector.scevcheck174 ], [ 0, %.preheader.us.i ], [ %i.bk, %middle.block195 ] ; 2 uses
  br i1 %lcmp.mod220.not, label %scalar.ph180.prol.loopexit, label %scalar.ph180.prol

scalar.ph180.prol:                                ; preds = %scalar.ph180.preheader
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i.ph
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = sext i32 %i.bm to i64
  %i.bo = xor i64 %indvars.iv60.i.ph, -1
  %i.bp = add nsw i64 %indvars.iv65.i, %i.bo
  %sext.i.prol = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext.i.prol, 29
  %i.br = getelementptr inbounds i8, ptr %4, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !111
  %i.bt = mul nsw i64 %i.bs, %i.bn
  %i.bu = add nsw i64 %i.bt, %.03444.us.i.ph      ; 2 uses
  %indvars.iv.next61.i.prol = or disjoint i64 %indvars.iv60.i.ph, 1
  br label %scalar.ph180.prol.loopexit

scalar.ph180.prol.loopexit:                       ; preds = %scalar.ph180.prol, %scalar.ph180.preheader
  %.lcssa202.unr = phi i64 [ poison, %scalar.ph180.preheader ], [ %i.bu, %scalar.ph180.prol ]
  %indvars.iv60.i.unr = phi i64 [ %indvars.iv60.i.ph, %scalar.ph180.preheader ], [ %indvars.iv.next61.i.prol, %scalar.ph180.prol ]
  %.03444.us.i.unr = phi i64 [ %.03444.us.i.ph, %scalar.ph180.preheader ], [ %i.bu, %scalar.ph180.prol ]
  %i.bv = icmp eq i64 %indvars.iv60.i.ph, %i.am
  br i1 %i.bv, label %._crit_edge.us.i, label %scalar.ph180

scalar.ph180:                                     ; preds = %scalar.ph180.prol.loopexit, %scalar.ph180
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i.1, %scalar.ph180 ], [ %indvars.iv60.i.unr, %scalar.ph180.prol.loopexit ] ; 5 uses
  %.03444.us.i = phi i64 [ %i.cp, %scalar.ph180 ], [ %.03444.us.i.unr, %scalar.ph180.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !47
  %i.by = sext i32 %i.bx to i64
  %i.bz = xor i64 %indvars.iv60.i, -1
  %i.ca = add nsw i64 %indvars.iv65.i, %i.bz
  %sext.i = shl i64 %i.ca, 32
  %i.cb = ashr exact i64 %sext.i, 29
  %i.cc = getelementptr inbounds i8, ptr %4, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !111
  %i.ce = mul nsw i64 %i.cd, %i.by
  %i.cf = add nsw i64 %i.ce, %.03444.us.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47
  %i.cj = sext i32 %i.ci to i64
  %reass.sub222 = sub i64 %indvars.iv65.i, %indvars.iv60.i
  %i.ck = shl i64 %reass.sub222, 32
  %sext.i.1 = add i64 %i.ck, -8589934592
  %i.cl = ashr exact i64 %sext.i.1, 29
  %i.cm = getelementptr inbounds i8, ptr %4, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !111
  %i.co = mul nsw i64 %i.cn, %i.cj
  %i.cp = add nsw i64 %i.co, %i.cf                ; 2 uses
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %exitcond64.not.i.1 = icmp eq i64 %indvars.iv.next61.i.1, %wide.trip.count.i
  br i1 %exitcond64.not.i.1, label %._crit_edge.us.i, label %scalar.ph180, !llvm.loop !261

bb.b:                                             ; preds = %._crit_edge.us.i
  %i.cq = trunc nsw i64 %i.cv to i32
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !47
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  %indvar.next176 = add i35 %indvar175, 1
  br i1 %exitcond69.not.i, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i, !llvm.loop !191

._crit_edge.us.i:                                 ; preds = %scalar.ph180.prol.loopexit, %scalar.ph180, %middle.block195
  %.lcssa = phi i64 [ %i.bk, %middle.block195 ], [ %.lcssa202.unr, %scalar.ph180.prol.loopexit ], [ %i.cp, %scalar.ph180 ]
  %i.cs = ashr i64 %.lcssa, %i.ah
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv65.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !111
  %i.cv = sub nsw i64 %i.cu, %i.cs                ; 2 uses
  %i.cw = add i64 %i.cv, 2147483647
  %or.cond.us.i = icmp ult i64 %i.cw, 4294967295
  br i1 %or.cond.us.i, label %bb.b, label %lpc_encode_with_residual_limit_33bps.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !111
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader42.i, label %.lr.ph.i, !llvm.loop !262

.preheader.i:                                     ; preds = %bb.c, %.preheader.preheader.i
  %indvars.iv55.i = phi i64 [ %i.an, %.preheader.preheader.i ], [ %indvars.iv.next56.i, %bb.c ] ; 3 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv55.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !111 ; 2 uses
  %i.dd = add i64 %i.dc, 2147483647
  %or.cond.i = icmp ult i64 %i.dd, 4294967295
  br i1 %or.cond.i, label %bb.c, label %lpc_encode_with_residual_limit_33bps.exit

bb.c:                                             ; preds = %.preheader.i
  %i.de = trunc nsw i64 %i.dc to i32
  %i.df = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv55.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !47
  %indvars.iv.next56.i = add nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.i, !llvm.loop !191

bb.d:                                             ; preds = %._crit_edge
  %i.dg = zext nneg i32 %8 to i64                 ; 2 uses
  %i.dh = lshr i64 %.lcssa128, %i.dg
  %i.di = add i64 %i.dh, %i.e
  %i.dj = icmp ugt i64 %i.di, 2147483647
  br i1 %i.dj, label %.lr.ph.preheader.i62, label %lpc_encode_with_residual_limit_33bps.exit.sink.split

.thread109:                                       ; preds = %._crit_edge.thread
  %i.dk = icmp ugt i32 %i.c, 30
  br i1 %i.dk, label %.preheader.preheader.i55, label %lpc_encode_with_residual_limit_33bps.exit.sink.split

.lr.ph.preheader.i62:                             ; preds = %bb.d
  %wide.trip.count.i63 = zext nneg i32 %6 to i64  ; 7 uses
  %min.iters.check132 = icmp ult i32 %6, 8
  %i.dl = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dl, -32
  %or.cond = or i1 %min.iters.check132, %diff.check
  br i1 %or.cond, label %.lr.ph.i64.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i62
  %n.vec134 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index136 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !47
  %wide.load138 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !47
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index136 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %wide.load137, ptr %i.do, align 4, !tbaa !47
  store <4 x i32> %wide.load138, ptr %i.dp, align 4, !tbaa !47
  %index.next139 = add nuw i64 %index136, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.dq, label %middle.block140, label %vector.body135, !llvm.loop !263

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count
  br i1 %cmp.n141, label %.preheader42.i68, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %.lr.ph.preheader.i62, %middle.block140
  %indvars.iv.i65.ph = phi i64 [ 0, %.lr.ph.preheader.i62 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i63, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64.prol
  %indvars.iv.i65.prol = phi i64 [ %indvars.iv.next.i66.prol, %.lr.ph.i64.prol ], [ %indvars.iv.i65.ph, %.lr.ph.i64.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i64.prol ], [ 0, %.lr.ph.i64.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i65.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !47
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i65.prol
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !47
  %indvars.iv.next.i66.prol = add nuw nsw i64 %indvars.iv.i65.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol, !llvm.loop !264

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader
  %indvars.iv.i65.unr = phi i64 [ %indvars.iv.i65.ph, %.lr.ph.i64.preheader ], [ %indvars.iv.next.i66.prol, %.lr.ph.i64.prol ]
  %i.du = sub nsw i64 %indvars.iv.i65.ph, %wide.trip.count.i63
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %.preheader42.i68, label %.lr.ph.i64

.preheader42.i68:                                 ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %middle.block140
  %i.dw = icmp samesign ult i32 %6, %5
  br i1 %i.dw, label %.preheader.lr.ph.i69, label %lpc_encode_with_residual_limit_33bps.exit

.preheader.lr.ph.i69:                             ; preds = %.preheader42.i68
  %wide.trip.count68.i70 = zext nneg i32 %5 to i64
  %i.dx = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dy = zext nneg i32 %6 to i34
  %min.iters.check144 = icmp ult i32 %6, 28
  %i.dz = trunc nsw i64 %i.dx to i34
  %mul.result = shl nsw i34 %i.dz, 2
  %mul.overflow = icmp ugt i64 %i.dx, 4294967295
  %n.vec146 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n159 = icmp eq i64 %n.vec146, %wide.trip.count
  %xtraiter216 = and i64 %wide.trip.count.i63, 1
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  %i.ea = add nsw i64 %wide.trip.count.i63, -1
  br label %.preheader.us.i72

.preheader.preheader.i55:                         ; preds = %.thread109
  %i.eb = sext i32 %6 to i64
  %wide.trip.count58.i56 = zext nneg i32 %5 to i64
  br label %.preheader.i57

.preheader.us.i72:                                ; preds = %bb.e, %.preheader.lr.ph.i69
  %indvar = phi i34 [ %indvar.next, %bb.e ], [ 0, %.preheader.lr.ph.i69 ] ; 2 uses
  %indvars.iv65.i73 = phi i64 [ %indvars.iv.next66.i81, %bb.e ], [ %wide.trip.count.i63, %.preheader.lr.ph.i69 ] ; 7 uses
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i72
  %i.ec = add i34 %indvar, %i.dy
  %i.ed = shl i34 %i.ec, 2
  %i.ee = add i34 %i.ed, -4                       ; 2 uses
  %i.ef = sub i34 %i.ee, %mul.result
  %i.eg = icmp sgt i34 %i.ef, %i.ee
  %i.eh = or i1 %i.eg, %mul.overflow
  br i1 %i.eh, label %scalar.ph143.preheader, label %vector.body147

vector.body147:                                   ; preds = %vector.scevcheck, %vector.body147
  %index148 = phi i64 [ %index.next156, %vector.body147 ], [ 0, %vector.scevcheck ] ; 3 uses
  %vec.phi149 = phi <2 x i64> [ %i.ex, %vector.body147 ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi150 = phi <2 x i64> [ %i.ey, %vector.body147 ], [ zeroinitializer, %vector.scevcheck ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index148 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %wide.load151 = load <2 x i32>, ptr %i.ei, align 4, !tbaa !47
  %wide.load152 = load <2 x i32>, ptr %i.ej, align 4, !tbaa !47
  %i.ek = sext <2 x i32> %wide.load151 to <2 x i64>
  %i.el = sext <2 x i32> %wide.load152 to <2 x i64>
  %i.em = xor i64 %index148, -1
  %i.en = add nsw i64 %indvars.iv65.i73, %i.em
  %i.eo = shl i64 %i.en, 32
  %i.ep = ashr exact i64 %i.eo, 30
  %i.eq = getelementptr inbounds i8, ptr %3, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -12
  %wide.load153 = load <2 x i32>, ptr %i.er, align 4, !tbaa !47
  %wide.load154 = load <2 x i32>, ptr %i.es, align 4, !tbaa !47
  %reverse = shufflevector <2 x i32> %wide.load153, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse155 = shufflevector <2 x i32> %wide.load154, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.et = sext <2 x i32> %reverse to <2 x i64>
  %i.eu = sext <2 x i32> %reverse155 to <2 x i64>
  %i.ev = mul nsw <2 x i64> %i.et, %i.ek
  %i.ew = mul nsw <2 x i64> %i.eu, %i.el
  %i.ex = add <2 x i64> %i.ev, %vec.phi149        ; 2 uses
  %i.ey = add <2 x i64> %i.ew, %vec.phi150        ; 2 uses
  %index.next156 = add nuw i64 %index148, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next156, %n.vec146
  br i1 %i.ez, label %middle.block157, label %vector.body147, !llvm.loop !265

middle.block157:                                  ; preds = %vector.body147
  %bin.rdx158 = add <2 x i64> %i.ey, %i.ex
  %i.fa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx158) ; 2 uses
  br i1 %cmp.n159, label %._crit_edge.us.i79, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %vector.scevcheck, %.preheader.us.i72, %middle.block157
  %indvars.iv60.i74.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i72 ], [ %n.vec146, %middle.block157 ] ; 5 uses
  %.03444.us.i75.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i72 ], [ %i.fa, %middle.block157 ] ; 2 uses
  br i1 %lcmp.mod217.not, label %scalar.ph143.prol.loopexit, label %scalar.ph143.prol

scalar.ph143.prol:                                ; preds = %scalar.ph143.preheader
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74.ph
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !47
  %i.fd = sext i32 %i.fc to i64
  %i.fe = xor i64 %indvars.iv60.i74.ph, -1
  %i.ff = add nsw i64 %indvars.iv65.i73, %i.fe
  %sext.i76.prol = shl i64 %i.ff, 32
  %i.fg = ashr exact i64 %sext.i76.prol, 30
  %i.fh = getelementptr inbounds i8, ptr %3, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !47
  %i.fj = sext i32 %i.fi to i64
  %i.fk = mul nsw i64 %i.fj, %i.fd
  %i.fl = add nsw i64 %i.fk, %.03444.us.i75.ph    ; 2 uses
  %indvars.iv.next61.i77.prol = or disjoint i64 %indvars.iv60.i74.ph, 1
  br label %scalar.ph143.prol.loopexit

scalar.ph143.prol.loopexit:                       ; preds = %scalar.ph143.prol, %scalar.ph143.preheader
  %.lcssa207.unr = phi i64 [ poison, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %indvars.iv60.i74.unr = phi i64 [ %indvars.iv60.i74.ph, %scalar.ph143.preheader ], [ %indvars.iv.next61.i77.prol, %scalar.ph143.prol ]
  %.03444.us.i75.unr = phi i64 [ %.03444.us.i75.ph, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %i.fm = icmp eq i64 %indvars.iv60.i74.ph, %i.ea
  br i1 %i.fm, label %._crit_edge.us.i79, label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143
  %indvars.iv60.i74 = phi i64 [ %indvars.iv.next61.i77.1, %scalar.ph143 ], [ %indvars.iv60.i74.unr, %scalar.ph143.prol.loopexit ] ; 5 uses
  %.03444.us.i75 = phi i64 [ %i.gi, %scalar.ph143 ], [ %.03444.us.i75.unr, %scalar.ph143.prol.loopexit ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !47
  %i.fp = sext i32 %i.fo to i64
  %i.fq = xor i64 %indvars.iv60.i74, -1
  %i.fr = add nsw i64 %indvars.iv65.i73, %i.fq
  %sext.i76 = shl i64 %i.fr, 32
  %i.fs = ashr exact i64 %sext.i76, 30
  %i.ft = getelementptr inbounds i8, ptr %3, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !47
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fv, %i.fp
  %i.fx = add nsw i64 %i.fw, %.03444.us.i75
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !47
  %i.gb = sext i32 %i.ga to i64
  %reass.sub = sub i64 %indvars.iv65.i73, %indvars.iv60.i74
  %i.gc = shl i64 %reass.sub, 32
  %sext.i76.1 = add i64 %i.gc, -8589934592
  %i.gd = ashr exact i64 %sext.i76.1, 30
  %i.ge = getelementptr inbounds i8, ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !47
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i64 %i.gg, %i.gb
  %i.gi = add nsw i64 %i.gh, %i.fx                ; 2 uses
  %indvars.iv.next61.i77.1 = add nuw nsw i64 %indvars.iv60.i74, 2 ; 2 uses
  %exitcond64.not.i78.1 = icmp eq i64 %indvars.iv.next61.i77.1, %wide.trip.count.i63
  br i1 %exitcond64.not.i78.1, label %._crit_edge.us.i79, label %scalar.ph143, !llvm.loop !266

bb.e:                                             ; preds = %._crit_edge.us.i79
  %i.gj = trunc nsw i64 %i.gp to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i73
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !47
  %indvars.iv.next66.i81 = add nuw nsw i64 %indvars.iv65.i73, 1 ; 2 uses
  %exitcond69.not.i82 = icmp eq i64 %indvars.iv.next66.i81, %wide.trip.count68.i70
  %indvar.next = add i34 %indvar, 1
  br i1 %exitcond69.not.i82, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i72, !llvm.loop !196

._crit_edge.us.i79:                               ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143, %middle.block157
  %.lcssa127 = phi i64 [ %i.fa, %middle.block157 ], [ %.lcssa207.unr, %scalar.ph143.prol.loopexit ], [ %i.gi, %scalar.ph143 ]
  %i.gl = ashr i64 %.lcssa127, %i.dg
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv65.i73
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !47
  %i.go = sext i32 %i.gn to i64
  %i.gp = sub nsw i64 %i.go, %i.gl                ; 2 uses
  %i.gq = add i64 %i.gp, 2147483647
  %or.cond.us.i80 = icmp ult i64 %i.gq, 4294967295
  br i1 %or.cond.us.i80, label %bb.e, label %lpc_encode_with_residual_limit_33bps.exit

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66.3, %.lr.ph.i64 ], [ %indvars.iv.i65.unr, %.lr.ph.i64.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i65
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !47
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i65
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !47
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !47
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !47
  %indvars.iv.next.i66.1 = add nuw nsw i64 %indvars.iv.i65, 2 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.1
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !47
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.1
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !47
  %indvars.iv.next.i66.2 = add nuw nsw i64 %indvars.iv.i65, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.2
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !47
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.2
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !47
  %indvars.iv.next.i66.3 = add nuw nsw i64 %indvars.iv.i65, 4 ; 2 uses
  %exitcond.not.i67.3 = icmp eq i64 %indvars.iv.next.i66.3, %wide.trip.count.i63
  br i1 %exitcond.not.i67.3, label %.preheader42.i68, label %.lr.ph.i64, !llvm.loop !267

.preheader.i57:                                   ; preds = %bb.f, %.preheader.preheader.i55
  %indvars.iv55.i58 = phi i64 [ %i.eb, %.preheader.preheader.i55 ], [ %indvars.iv.next56.i60, %bb.f ] ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv55.i58
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !47 ; 2 uses
  %.not.i59 = icmp eq i32 %i.he, -2147483648
  br i1 %.not.i59, label %lpc_encode_with_residual_limit_33bps.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i57
  %i.hf = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv55.i58
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !47
  %indvars.iv.next56.i60 = add nsw i64 %indvars.iv55.i58, 1 ; 2 uses
  %exitcond59.not.i61 = icmp eq i64 %indvars.iv.next56.i60, %wide.trip.count58.i56
  br i1 %exitcond59.not.i61, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.i57, !llvm.loop !196

lpc_encode_with_residual_limit_33bps.exit.sink.split: ; preds = %.thread109, %bb.d
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !150
  %.not.i = icmp ult i32 %6, 65536                ; 2 uses
  %i.hi = lshr i32 %6, 16
  %spec.select.i = select i1 %.not.i, i32 %6, i32 %i.hi ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.hj = lshr i32 %spec.select.i, 8
  %i.hk = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.hj
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.hk
  %i.hl = zext nneg i32 %.110.i to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !70
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nsw i32 %.1.i, %1
  %i.hq = add i32 %i.hp, %i.hh
  %i.hr = add i32 %i.hq, %i.ho
  %i.hs = icmp slt i32 %i.hr, 33
  %. = select i1 %i.hs, i64 7387800, i64 7387808
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !198
  tail call void %i.hu(ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #13
  br label %lpc_encode_with_residual_limit_33bps.exit

lpc_encode_with_residual_limit_33bps.exit:        ; preds = %bb.f, %.preheader.i57, %bb.c, %.preheader.i, %bb.e, %._crit_edge.us.i79, %bb.b, %._crit_edge.us.i, %lpc_encode_with_residual_limit_33bps.exit.sink.split, %.preheader42.i68, %.preheader42.i
  %.049 = phi i32 [ 0, %.preheader42.i ], [ 0, %lpc_encode_with_residual_limit_33bps.exit.sink.split ], [ 0, %.preheader42.i68 ], [ 0, %bb.c ], [ 1, %._crit_edge.us.i79 ], [ 1, %._crit_edge.us.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %.preheader.i ], [ 0, %bb.f ], [ 1, %.preheader.i57 ]
  ret i32 %.049
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #9

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @ff_lpc_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 344}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 356}
!30 = !{!10, !12, i64 32}
!31 = !{!32, !36, i64 7350000}
!32 = !{!"FlacEncodeContext", !11, i64 0, !33, i64 8, !6, i64 40, !6, i64 44, !7, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !15, i64 80, !7, i64 88, !34, i64 104, !35, i64 7349944, !36, i64 7350000, !37, i64 7350016, !39, i64 7387760, !16, i64 7387768, !6, i64 7387776, !40, i64 7387784, !41, i64 7387800, !6, i64 7387816, !15, i64 7387824}
!33 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !16, i64 8, !16, i64 16, !16, i64 24}
!34 = !{!"FlacFrame", !7, i64 0, !7, i64 6825536, !6, i64 7349816, !7, i64 7349820, !7, i64 7349828, !6, i64 7349832, !6, i64 7349836}
!35 = !{!"CompressionOptions", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!36 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!37 = !{!"LPCContext", !6, i64 0, !6, i64 4, !6, i64 8, !38, i64 16, !38, i64 24, !12, i64 32, !12, i64 40, !7, i64 48}
!38 = !{!"p1 double", !12, i64 0}
!39 = !{!"p1 _ZTS5AVMD5", !12, i64 0}
!40 = !{!"BswapDSPContext", !12, i64 0, !12, i64 8}
!41 = !{!"FLACEncDSPContext", !12, i64 0, !12, i64 8}
!42 = !{!10, !6, i64 348}
!43 = !{!10, !6, i64 652}
!44 = !{!10, !6, i64 516}
!45 = !{!32, !6, i64 56}
!46 = !{!32, !6, i64 40}
!47 = !{!6, !6, i64 0}
!48 = !{!32, !6, i64 44}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!10, !6, i64 424}
!52 = !{!32, !6, i64 7349944}
!53 = !{!32, !6, i64 7349948}
!54 = !{!32, !6, i64 7349952}
!55 = !{!32, !6, i64 7349964}
!56 = !{!32, !6, i64 7349968}
!57 = !{!32, !6, i64 7349972}
!58 = !{!32, !6, i64 7349976}
!59 = !{!32, !6, i64 7349980}
!60 = !{!10, !6, i64 376}
!61 = !{!32, !6, i64 60}
!62 = !{!32, !6, i64 68}
!63 = !{!32, !39, i64 7387760}
!64 = !{!10, !16, i64 72}
!65 = !{!10, !6, i64 80}
!66 = !{!32, !6, i64 76}
!67 = !{!32, !6, i64 64}
!68 = !{!20, !6, i64 0}
!69 = !{!20, !6, i64 4}
!70 = !{!7, !7, i64 0}
!71 = !{!20, !12, i64 16}
!72 = !{!10, !6, i64 352}
!73 = !{!32, !6, i64 72}
!74 = !{!32, !15, i64 80}
!75 = !{!32, !6, i64 7387816}
!76 = !{!32, !15, i64 7387824}
!77 = !{!78, !15, i64 8}
!78 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!79 = !{!80, !6, i64 112}
!80 = !{!"AVFrame", !7, i64 0, !7, i64 64, !81, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !82, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !83, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!81 = !{!"p2 omnipotent char", !28, i64 0}
!82 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!83 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!84 = !{!32, !6, i64 7349920}
!85 = !{!34, !6, i64 7349816}
!86 = !{!87, !6, i64 12}
!87 = !{!"FlacSubframe", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 148, !88, i64 152, !7, i64 1184, !7, i64 263328, !7, i64 328864, !7, i64 591004}
!88 = !{!"RiceContext", !6, i64 0, !6, i64 4, !7, i64 8}
!89 = !{!87, !6, i64 8}
!90 = !{!87, !6, i64 152}
!91 = distinct !{!91, !50}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !93}
!95 = !{!34, !6, i64 7349836}
!96 = !{!16, !16, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"short", !7, i64 0}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !93}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = !{!32, !6, i64 7349984}
!105 = distinct !{!105, !50, !106, !107}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = distinct !{!108, !50, !106, !107}
!109 = distinct !{!109, !50, !107, !106}
!110 = distinct !{!110, !50, !107, !106}
!111 = !{!15, !15, i64 0}
!112 = !{!34, !6, i64 7349832}
!113 = distinct !{!113, !50, !106, !107}
!114 = distinct !{!114, !50, !106, !107}
!115 = distinct !{!115, !50, !106, !107}
!116 = distinct !{!116, !50, !107, !106}
!117 = distinct !{!117, !50, !107, !106}
!118 = distinct !{!118, !50, !107, !106}
!119 = distinct !{!119, !50, !106, !107}
!120 = distinct !{!120, !50, !106, !107}
!121 = distinct !{!121, !50, !106, !107}
!122 = distinct !{!122, !50, !107, !106}
!123 = distinct !{!123, !50, !107, !106}
!124 = distinct !{!124, !50, !107, !106}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50}
!128 = distinct !{!128, !50}
!129 = distinct !{!129, !50}
!130 = !{!32, !6, i64 7349940}
!131 = !{!78, !16, i64 24}
!132 = !{!78, !6, i64 32}
!133 = !{!33, !16, i64 8}
!134 = !{!33, !16, i64 24}
!135 = !{!33, !16, i64 16}
!136 = !{!33, !6, i64 0}
!137 = !{!33, !6, i64 4}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = !{!32, !16, i64 16}
!141 = !{!87, !6, i64 4}
!142 = !{!87, !6, i64 0}
!143 = distinct !{!143, !50}
!144 = distinct !{!144, !50}
!145 = distinct !{!145, !50}
!146 = !{!87, !6, i64 16}
!147 = distinct !{!147, !50}
!148 = distinct !{!148, !50}
!149 = distinct !{!149, !50}
!150 = !{!32, !6, i64 7349960}
!151 = !{!87, !6, i64 148}
!152 = distinct !{!152, !50}
!153 = !{!87, !6, i64 156}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50}
!156 = distinct !{!156, !50}
!157 = distinct !{!157, !50}
!158 = !{!32, !16, i64 7387768}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = !{!80, !15, i64 136}
!162 = !{!35, !6, i64 0}
!163 = !{!35, !6, i64 8}
!164 = !{!35, !6, i64 12}
!165 = !{!35, !6, i64 20}
!166 = !{!35, !6, i64 24}
!167 = !{!35, !6, i64 28}
!168 = !{!35, !6, i64 32}
!169 = !{!35, !6, i64 36}
!170 = !{!35, !6, i64 16}
!171 = distinct !{!171, !50}
!172 = distinct !{!172, !50}
!173 = distinct !{!173, !50}
!174 = distinct !{!174, !50, !106, !107}
!175 = distinct !{!175, !50, !107, !106}
!176 = distinct !{!176, !50}
!177 = distinct !{!177, !50, !106, !107}
!178 = distinct !{!178, !50, !107, !106}
!179 = !{!32, !6, i64 7349956}
!180 = distinct !{!180, !50}
!181 = distinct !{!181, !50}
!182 = distinct !{!182, !50}
!183 = !{!32, !6, i64 7349992}
!184 = distinct !{!184, !50, !106, !107}
!185 = distinct !{!185, !50}
!186 = distinct !{!186, !50, !106, !107}
!187 = distinct !{!187, !50, !106, !107}
!188 = distinct !{!188, !50, !107, !106}
!189 = distinct !{!189, !50, !106, !107}
!190 = distinct !{!190, !50, !106}
!191 = distinct !{!191, !50}
!192 = distinct !{!192, !50, !107, !106}
!193 = distinct !{!193, !50, !106, !107}
!194 = distinct !{!194, !50, !106, !107}
!195 = distinct !{!195, !50, !106}
!196 = distinct !{!196, !50}
!197 = distinct !{!197, !50, !107, !106}
!198 = !{!12, !12, i64 0}
!199 = !{ptr @lpc_encode_choose_datapath}
!200 = distinct !{!200, !50}
!201 = distinct !{!201, !50, !107, !106}
!202 = distinct !{!202, !50, !106, !107}
!203 = distinct !{!203, !50, !107, !106}
!204 = distinct !{!204, !50}
!205 = distinct !{!205, !50, !106, !107}
!206 = distinct !{!206, !50, !107, !106}
!207 = distinct !{!207, !50}
!208 = distinct !{!208, !50}
!209 = distinct !{!209, !50}
!210 = distinct !{!210, !50}
!211 = distinct !{!211, !50}
!212 = distinct !{!212, !50, !106, !107}
!213 = distinct !{!213, !93}
!214 = distinct !{!214, !50, !106}
!215 = distinct !{!215, !50}
!216 = distinct !{!216, !50}
!217 = distinct !{!217, !50}
!218 = distinct !{!218, !50}
!219 = distinct !{!219, !50}
!220 = distinct !{!220, !50, !106, !107}
!221 = distinct !{!221, !93}
!222 = distinct !{!222, !50, !106}
!223 = !{!224}
!224 = distinct !{!224, !225}
!225 = distinct !{!225, !"LVerDomain"}
!226 = !{!227}
!227 = distinct !{!227, !225}
!228 = distinct !{!228, !50, !106, !107}
!229 = distinct !{!229, !93}
!230 = distinct !{!230, !50, !106, !107}
!231 = distinct !{!231, !93}
!232 = distinct !{!232, !50, !106}
!233 = distinct !{!233, !50, !106}
!234 = distinct !{!234, !50}
!235 = distinct !{!235, !50}
!236 = distinct !{!236, !50}
!237 = !{!32, !6, i64 7349988}
!238 = !{!88, !6, i64 0}
!239 = distinct !{!239, !50, !106, !107}
!240 = distinct !{!240, !50, !107, !106}
!241 = distinct !{!241, !50, !106, !107}
!242 = distinct !{!242, !50, !107, !106}
!243 = distinct !{!243, !50}
!244 = distinct !{!244, !50, !106, !107}
!245 = distinct !{!245, !50, !107, !106}
!246 = distinct !{!246, !50}
!247 = distinct !{!247, !50, !248}
!248 = !{!"llvm.loop.peeled.count", i32 1}
!249 = distinct !{!249, !50, !106, !107}
!250 = distinct !{!250, !50, !107, !106}
!251 = distinct !{!251, !50}
!252 = distinct !{!252, !50}
!253 = !{!88, !6, i64 4}
!254 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 1024, !70}
!255 = distinct !{!255, !50}
!256 = distinct !{!256, !50}
!257 = distinct !{!257, !50, !106, !107}
!258 = distinct !{!258, !50, !107, !106}
!259 = distinct !{!259, !50, !106, !107}
!260 = distinct !{!260, !50, !106, !107}
!261 = distinct !{!261, !50, !106}
!262 = distinct !{!262, !50, !107, !106}
!263 = distinct !{!263, !50, !106, !107}
!264 = distinct !{!264, !93}
!265 = distinct !{!265, !50, !106, !107}
!266 = distinct !{!266, !50, !106}
!267 = distinct !{!267, !50, !106}
end_hunk_0
