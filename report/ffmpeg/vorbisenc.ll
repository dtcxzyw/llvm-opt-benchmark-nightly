Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vorbisenc?download=true
inline.NumInlined: 132
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@vorbis_encode_frame:bb.a
  %indvars.iv.next.i.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.i, 2 ; 2 uses
  %niter656.next.1 = add i64 %niter656, 2         ; 2 uses
  %niter656.ncmp.1 = icmp eq i64 %niter656.next.1, %unroll_iter655
  br i1 %niter656.ncmp.1, label %._crit_edge46.i.us.i.loopexit589.unr-lcssa, label %.lr.ph45.split.i.us.i, !llvm.loop !207

.lr.ph45.split.us.preheader.i.us.i:               ; preds = %.lr.ph45.i.us.i
  %i.anq = zext nneg i32 %.fr48.i.us.i to i64     ; 3 uses
  %wide.trip.count59.i.us.i = zext nneg i32 %i.amx to i64
  %xtraiter658 = and i64 %i.anq, 3                ; 3 uses
  %i.anr = icmp ult i32 %.fr48.i.us.i, 4
  %unroll_iter663 = and i64 %i.anq, 2147483644
  %lcmp.mod660.not = icmp eq i64 %xtraiter658, 0
  %lcmp.mod662 = icmp ne i64 %xtraiter658, 0
  br label %.lr.ph45.split.us.i.us.i

.lr.ph45.split.us.i.us.i:                         ; preds = %bb.dy, %.lr.ph45.split.us.preheader.i.us.i
  %indvars.iv56.i.us.i = phi i64 [ 0, %.lr.ph45.split.us.preheader.i.us.i ], [ %indvars.iv.next57.i.us.i, %bb.dy ] ; 5 uses
  %.03044.us.i.us.i = phi float [ f0x7F7FFFFF, %.lr.ph45.split.us.preheader.i.us.i ], [ %.2.us.i.us.i, %bb.dy ] ; 3 uses
  %.03143.us.i.us.i = phi i32 [ -1, %.lr.ph45.split.us.preheader.i.us.i ], [ %.233.us.i.us.i, %bb.dy ] ; 2 uses
  %i.ans = mul nuw nsw i64 %indvars.iv56.i.us.i, %i.anq
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %i.ans ; 5 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.amz, i64 %indvars.iv56.i.us.i
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !54
  %.not37.us.i.us.i = icmp eq i8 %i.anv, 0
  br i1 %.not37.us.i.us.i, label %bb.dy, label %.lr.ph.us.i.us.i

.lr.ph.us.i.us.i:                                 ; preds = %.lr.ph45.split.us.i.us.i
  %i.anw = load ptr, ptr %i.asg, align 8, !tbaa !57
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %indvars.iv56.i.us.i
  %i.any = load float, ptr %i.anx, align 4, !tbaa !50 ; 2 uses
  br i1 %i.anr, label %.epil.preheader657, label %.lr.ph.us.i.us.i.new

.lr.ph.us.i.us.i.new:                             ; preds = %.lr.ph.us.i.us.i, %.lr.ph.us.i.us.i.new
  %indvars.iv51.i.us.i = phi i64 [ %indvars.iv.next52.i.us.i.3, %.lr.ph.us.i.us.i.new ], [ 0, %.lr.ph.us.i.us.i ] ; 6 uses
  %.02940.us.i.us.i = phi float [ %i.aow, %.lr.ph.us.i.us.i.new ], [ %i.any, %.lr.ph.us.i.us.i ]
  %niter664 = phi i64 [ %niter664.next.3, %.lr.ph.us.i.us.i.new ], [ 0, %.lr.ph.us.i.us.i ]
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %indvars.iv51.i.us.i
  %i.aoa = load float, ptr %i.anz, align 4, !tbaa !50
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %indvars.iv51.i.us.i
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !50
  %i.aod = fneg nsz float %i.aoa
  %i.aoe = call nsz float @llvm.fmuladd.f32(float %i.aod, float %i.aoc, float %.02940.us.i.us.i)
  %indvars.iv.next52.i.us.i = or disjoint i64 %indvars.iv51.i.us.i, 1 ; 2 uses
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %indvars.iv.next52.i.us.i
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !50
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %indvars.iv.next52.i.us.i
  %i.aoi = load float, ptr %i.aoh, align 4, !tbaa !50
  %i.aoj = fneg nsz float %i.aog
  %i.aok = call nsz float @llvm.fmuladd.f32(float %i.aoj, float %i.aoi, float %i.aoe)
  %indvars.iv.next52.i.us.i.1 = or disjoint i64 %indvars.iv51.i.us.i, 2 ; 2 uses
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %indvars.iv.next52.i.us.i.1
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !50
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %indvars.iv.next52.i.us.i.1
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !50
  %i.aop = fneg nsz float %i.aom
  %i.aoq = call nsz float @llvm.fmuladd.f32(float %i.aop, float %i.aoo, float %i.aok)
  %indvars.iv.next52.i.us.i.2 = or disjoint i64 %indvars.iv51.i.us.i, 3 ; 2 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %indvars.iv.next52.i.us.i.2
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !50
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %indvars.iv.next52.i.us.i.2
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !50
  %i.aov = fneg nsz float %i.aos
  %i.aow = call nsz float @llvm.fmuladd.f32(float %i.aov, float %i.aou, float %i.aoq) ; 3 uses
  %indvars.iv.next52.i.us.i.3 = add nuw nsw i64 %indvars.iv51.i.us.i, 4 ; 2 uses
  %niter664.next.3 = add i64 %niter664, 4         ; 2 uses
  %niter664.ncmp.3 = icmp eq i64 %niter664.next.3, %unroll_iter663
  br i1 %niter664.ncmp.3, label %._crit_edge.us.i.us.i.unr-lcssa, label %.lr.ph.us.i.us.i.new, !llvm.loop !208

._crit_edge.us.i.us.i.unr-lcssa:                  ; preds = %.lr.ph.us.i.us.i.new
  br i1 %lcmp.mod660.not, label %._crit_edge.us.i.us.i, label %.epil.preheader657

.epil.preheader657:                               ; preds = %._crit_edge.us.i.us.i.unr-lcssa, %.lr.ph.us.i.us.i
  %indvars.iv51.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.us.i ], [ %indvars.iv.next52.i.us.i.3, %._crit_edge.us.i.us.i.unr-lcssa ]
  %.02940.us.i.us.i.epil.init = phi float [ %i.any, %.lr.ph.us.i.us.i ], [ %i.aow, %._crit_edge.us.i.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod662)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %.epil.preheader657
  %indvars.iv51.i.us.i.epil = phi i64 [ %indvars.iv51.i.us.i.epil.init, %.epil.preheader657 ], [ %indvars.iv.next52.i.us.i.epil, %bb.dx ] ; 3 uses
  %.02940.us.i.us.i.epil = phi float [ %.02940.us.i.us.i.epil.init, %.epil.preheader657 ], [ %i.apc, %bb.dx ]
  %epil.iter659 = phi i64 [ 0, %.epil.preheader657 ], [ %epil.iter659.next, %bb.dx ]
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %indvars.iv51.i.us.i.epil
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !50
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %indvars.iv51.i.us.i.epil
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !50
  %i.apb = fneg nsz float %i.aoy
  %i.apc = call nsz float @llvm.fmuladd.f32(float %i.apb, float %i.apa, float %.02940.us.i.us.i.epil) ; 2 uses
  %indvars.iv.next52.i.us.i.epil = add nuw nsw i64 %indvars.iv51.i.us.i.epil, 1
  %epil.iter659.next = add i64 %epil.iter659, 1   ; 2 uses
  %epil.iter659.cmp.not = icmp eq i64 %epil.iter659.next, %xtraiter658
  br i1 %epil.iter659.cmp.not, label %._crit_edge.us.i.us.i, label %bb.dx, !llvm.loop !212

._crit_edge.us.i.us.i:                            ; preds = %bb.dx, %._crit_edge.us.i.us.i.unr-lcssa
  %.lcssa597 = phi float [ %i.aow, %._crit_edge.us.i.us.i.unr-lcssa ], [ %i.apc, %bb.dx ] ; 2 uses
  %i.apd = fcmp nsz ogt float %.03044.us.i.us.i, %.lcssa597 ; 2 uses
  %i.ape = trunc nuw nsw i64 %indvars.iv56.i.us.i to i32
  %.132.us.i.us.i = select i1 %i.apd, i32 %i.ape, i32 %.03143.us.i.us.i
  %.1.us.i.us.i = select nsz i1 %i.apd, float %.lcssa597, float %.03044.us.i.us.i
  br label %bb.dy

bb.dy:                                            ; preds = %._crit_edge.us.i.us.i, %.lr.ph45.split.us.i.us.i
  %.233.us.i.us.i = phi i32 [ %.132.us.i.us.i, %._crit_edge.us.i.us.i ], [ %.03143.us.i.us.i, %.lr.ph45.split.us.i.us.i ] ; 2 uses
  %.2.us.i.us.i = phi nsz float [ %.1.us.i.us.i, %._crit_edge.us.i.us.i ], [ %.03044.us.i.us.i, %.lr.ph45.split.us.i.us.i ]
  %indvars.iv.next57.i.us.i = add nuw nsw i64 %indvars.iv56.i.us.i, 1 ; 2 uses
  %exitcond60.not.i.us.i = icmp eq i64 %indvars.iv.next57.i.us.i, %wide.trip.count59.i.us.i
  br i1 %exitcond60.not.i.us.i, label %._crit_edge46.i.us.i, label %.lr.ph45.split.us.i.us.i, !llvm.loop !207

._crit_edge46.i.us.i.loopexit589.unr-lcssa:       ; preds = %bb.dw
  %lcmp.mod652.not = icmp eq i64 %xtraiter650, 0
  br i1 %lcmp.mod652.not, label %._crit_edge46.i.us.i, label %.lr.ph45.split.i.us.i.epil.preheader

.lr.ph45.split.i.us.i.epil.preheader:             ; preds = %._crit_edge46.i.us.i.loopexit589.unr-lcssa, %.lr.ph45.split.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph45.split.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.1, %._crit_edge46.i.us.i.loopexit589.unr-lcssa ] ; 3 uses
  %.03044.i.us.i.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph45.split.preheader.i.us.i ], [ %.2.i.us.i.1, %._crit_edge46.i.us.i.loopexit589.unr-lcssa ]
  %.03143.i.us.i.epil.init = phi i32 [ -1, %.lr.ph45.split.preheader.i.us.i ], [ %.233.i.us.i.1, %._crit_edge46.i.us.i.loopexit589.unr-lcssa ] ; 2 uses
  %lcmp.mod654 = trunc i32 %i.amx to i1
  call void @llvm.assume(i1 %lcmp.mod654)
  %i.apf = getelementptr inbounds nuw i8, ptr %i.amz, i64 %indvars.iv.i.us.i.epil.init
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !54
  %.not37.i.us.i.epil = icmp eq i8 %i.apg, 0
  br i1 %.not37.i.us.i.epil, label %._crit_edge46.i.us.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph45.split.i.us.i.epil.preheader
  %i.aph = load ptr, ptr %i.asg, align 8, !tbaa !57
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.i.us.i.epil.init
  %i.apj = load float, ptr %i.api, align 4, !tbaa !50
  %i.apk = fcmp nsz ogt float %.03044.i.us.i.epil.init, %i.apj
  %i.apl = trunc nuw nsw i64 %indvars.iv.i.us.i.epil.init to i32
  %.132.i.us.i.epil = select i1 %i.apk, i32 %i.apl, i32 %.03143.i.us.i.epil.init
  br label %._crit_edge46.i.us.i

._crit_edge46.i.us.i:                             ; preds = %._crit_edge46.i.us.i.loopexit589.unr-lcssa, %bb.dz, %.lr.ph45.split.i.us.i.epil.preheader, %bb.dy, %.preheader.i.us.i
  %.031.lcssa.i.us.i = phi i32 [ %.233.us.i.us.i, %bb.dy ], [ -1, %.preheader.i.us.i ], [ %.233.i.us.i.1, %._crit_edge46.i.us.i.loopexit589.unr-lcssa ], [ %.132.i.us.i.epil, %bb.dz ], [ %.03143.i.us.i.epil.init, %.lr.ph45.split.i.us.i.epil.preheader ] ; 2 uses
  %i.apm = ptrtoint ptr %.sroa.54.38 to i64
  %i.apn = sub i64 %i.adn, %i.apm                 ; 2 uses
  %.tr.i.i.i.us.i = trunc i64 %i.apn to i32
  %i.apo = shl i32 %.tr.i.i.i.us.i, 3
  %i.app = add i32 %.sroa.27.18, -32
  %i.apq = add i32 %i.app, %i.apo
  %i.apr = sext i32 %.031.lcssa.i.us.i to i64     ; 2 uses
  %i.aps = getelementptr inbounds i8, ptr %i.amz, i64 %i.apr
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !54
  %i.apu = zext i8 %i.apt to i32                  ; 3 uses
  %i.apv = icmp slt i32 %i.apq, %i.apu
  br i1 %i.apv, label %.loopexit, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge46.i.us.i
  %i.apw = load ptr, ptr %i.ash, align 8, !tbaa !53
  %i.apx = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.apr
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !44 ; 2 uses
  %i.apz = sub nsw i32 32, %.sroa.27.18
  %i.aqa = shl i32 %i.apy, %i.apz
  %i.aqb = or i32 %i.aqa, %.sroa.0.18             ; 2 uses
  %.not.i.i.i.i.us.i = icmp sgt i32 %.sroa.27.18, %i.apu
  br i1 %.not.i.i.i.i.us.i, label %put_vector.exit.us.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aqc = icmp ugt i64 %i.apn, 3
  br i1 %i.aqc, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  store i32 %i.aqb, ptr %.sroa.54.38, align 1, !tbaa !54
  %i.aqd = getelementptr inbounds nuw i8, ptr %.sroa.54.38, i64 4
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.54.39 = phi ptr [ %i.aqd, %bb.ed ], [ %.sroa.54.38, %bb.ec ]
  %i.aqe = lshr i32 %i.apy, %.sroa.27.18
  %i.aqf = add nsw i32 %.sroa.27.18, 32
  %.pre61.i.us.i = load ptr, ptr %i.asf, align 8, !tbaa !56
  %.pre411.i = load i32, ptr %i.agq, align 8, !tbaa !48
  br label %put_vector.exit.us.i

put_vector.exit.us.i:                             ; preds = %bb.ee, %bb.ea
  %.sroa.54.40 = phi ptr [ %.sroa.54.38, %bb.ea ], [ %.sroa.54.39, %bb.ee ] ; 2 uses
  %i.aqg = phi i32 [ %.fr48.i.us.i, %bb.ea ], [ %.pre411.i, %bb.ee ] ; 6 uses
  %i.aqh = phi ptr [ %i.amu, %bb.ea ], [ %.pre61.i.us.i, %bb.ee ] ; 4 uses
  %.020.i.i.i.i.us.i = phi i32 [ %i.aqb, %bb.ea ], [ %i.aqe, %bb.ee ] ; 2 uses
  %.0.i.i.i.i.us.i = phi i32 [ %.sroa.27.18, %bb.ea ], [ %i.aqf, %bb.ee ]
  %i.aqi = sub nsw i32 %.0.i.i.i.i.us.i, %i.apu   ; 2 uses
  %i.aqj = mul i32 %i.aqg, %.031.lcssa.i.us.i
  %i.aqk = sext i32 %i.aqj to i64                 ; 2 uses
  %i.aql = getelementptr [4 x i8], ptr %i.aqh, i64 %i.aqk ; 7 uses
  %.not215.not.us.i = icmp eq ptr %i.aqh, null
  br i1 %.not215.not.us.i, label %.loopexit, label %.preheader.us.i215

.preheader.us.i215:                               ; preds = %put_vector.exit.us.i
  %i.aqm = icmp sgt i32 %i.aqg, 0
  br i1 %i.aqm, label %.lr.ph344.us.preheader.i, label %._crit_edge345.us.i

.lr.ph344.us.preheader.i:                         ; preds = %.preheader.us.i215
  %wide.trip.count396.i = zext nneg i32 %i.aqg to i64 ; 7 uses
  %min.iters.check572 = icmp ult i32 %i.aqg, 8
  br i1 %min.iters.check572, label %.lr.ph344.us.i.preheader, label %vector.memcheck573

vector.memcheck573:                               ; preds = %.lr.ph344.us.preheader.i
  %4 = add nsw i64 %i.amv, %wide.trip.count396.i
  %i.aqn = add nsw i64 %4, %i.agl
  %i.aqo = shl nsw i64 %i.aqn, 2
  %i.aqp = getelementptr i8, ptr %invariant.gep693, i64 %i.aqo
  %i.aqq = add nsw i64 %i.aqk, %wide.trip.count396.i
  %i.aqr = shl nsw i64 %i.aqq, 2
  %i.aqs = getelementptr i8, ptr %i.aqh, i64 %i.aqr
  %bound0574 = icmp ult ptr %i.amw, %i.aqs
  %bound1575 = icmp ult ptr %i.aql, %i.aqp
  %found.conflict576 = and i1 %bound0574, %bound1575
  br i1 %found.conflict576, label %.lr.ph344.us.i.preheader, label %vector.ph577

vector.ph577:                                     ; preds = %vector.memcheck573
  %n.vec578 = and i64 %wide.trip.count396.i, 2147483640 ; 3 uses
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 3 uses
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %index580 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16
  %wide.load581 = load <4 x float>, ptr %i.aqt, align 4, !tbaa !50, !alias.scope !252
  %wide.load582 = load <4 x float>, ptr %i.aqu, align 4, !tbaa !50, !alias.scope !252
  %i.aqv = getelementptr [4 x i8], ptr %i.amw, i64 %index580 ; 3 uses
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 16   ; 2 uses
  %wide.load583 = load <4 x float>, ptr %i.aqv, align 4, !tbaa !50, !alias.scope !253, !noalias !252
  %wide.load584 = load <4 x float>, ptr %i.aqw, align 4, !tbaa !50, !alias.scope !253, !noalias !252
  %i.aqx = fsub nsz <4 x float> %wide.load583, %wide.load581
  %i.aqy = fsub nsz <4 x float> %wide.load584, %wide.load582
  store <4 x float> %i.aqx, ptr %i.aqv, align 4, !tbaa !50, !alias.scope !253, !noalias !252
  store <4 x float> %i.aqy, ptr %i.aqw, align 4, !tbaa !50, !alias.scope !253, !noalias !252
  %index.next585 = add nuw i64 %index580, 8       ; 2 uses
  %i.aqz = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.aqz, label %middle.block586, label %vector.body579, !llvm.loop !216

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %n.vec578, %wide.trip.count396.i
  br i1 %cmp.n587, label %._crit_edge345.us.i, label %.lr.ph344.us.i.preheader

.lr.ph344.us.i.preheader:                         ; preds = %vector.memcheck573, %.lr.ph344.us.preheader.i, %middle.block586
  %indvars.iv393.i.ph = phi i64 [ 0, %vector.memcheck573 ], [ 0, %.lr.ph344.us.preheader.i ], [ %n.vec578, %middle.block586 ] ; 3 uses
  %xtraiter665 = and i64 %wide.trip.count396.i, 3 ; 2 uses
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br i1 %lcmp.mod666.not, label %.lr.ph344.us.i.prol.loopexit, label %.lr.ph344.us.i.prol

.lr.ph344.us.i.prol:                              ; preds = %.lr.ph344.us.i.preheader, %.lr.ph344.us.i.prol
  %indvars.iv393.i.prol = phi i64 [ %indvars.iv.next394.i.prol, %.lr.ph344.us.i.prol ], [ %indvars.iv393.i.ph, %.lr.ph344.us.i.preheader ] ; 3 uses
  %prol.iter667 = phi i64 [ %prol.iter667.next, %.lr.ph344.us.i.prol ], [ 0, %.lr.ph344.us.i.preheader ]
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %indvars.iv393.i.prol
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !50
  %gep451.i.prol = getelementptr [4 x i8], ptr %i.amw, i64 %indvars.iv393.i.prol ; 2 uses
  %i.arc = load float, ptr %gep451.i.prol, align 4, !tbaa !50
  %i.ard = fsub nsz float %i.arc, %i.arb
  store float %i.ard, ptr %gep451.i.prol, align 4, !tbaa !50
  %indvars.iv.next394.i.prol = add nuw nsw i64 %indvars.iv393.i.prol, 1 ; 2 uses
  %prol.iter667.next = add i64 %prol.iter667, 1   ; 2 uses
  %prol.iter667.cmp.not = icmp eq i64 %prol.iter667.next, %xtraiter665
  br i1 %prol.iter667.cmp.not, label %.lr.ph344.us.i.prol.loopexit, label %.lr.ph344.us.i.prol, !llvm.loop !217

.lr.ph344.us.i.prol.loopexit:                     ; preds = %.lr.ph344.us.i.prol, %.lr.ph344.us.i.preheader
  %indvars.iv393.i.unr = phi i64 [ %indvars.iv393.i.ph, %.lr.ph344.us.i.preheader ], [ %indvars.iv.next394.i.prol, %.lr.ph344.us.i.prol ]
  %i.are = sub nsw i64 %indvars.iv393.i.ph, %wide.trip.count396.i
  %i.arf = icmp ugt i64 %i.are, -4
  br i1 %i.arf, label %._crit_edge345.us.i, label %.lr.ph344.us.i

.lr.ph344.us.i:                                   ; preds = %.lr.ph344.us.i.prol.loopexit, %.lr.ph344.us.i
  %indvars.iv393.i = phi i64 [ %indvars.iv.next394.i.3, %.lr.ph344.us.i ], [ %indvars.iv393.i.unr, %.lr.ph344.us.i.prol.loopexit ] ; 6 uses
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %indvars.iv393.i
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !50
  %gep451.i = getelementptr [4 x i8], ptr %i.amw, i64 %indvars.iv393.i ; 2 uses
  %i.ari = load float, ptr %gep451.i, align 4, !tbaa !50
  %i.arj = fsub nsz float %i.ari, %i.arh
  store float %i.arj, ptr %gep451.i, align 4, !tbaa !50
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 1 ; 2 uses
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %indvars.iv.next394.i
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !50
  %gep451.i.1 = getelementptr [4 x i8], ptr %i.amw, i64 %indvars.iv.next394.i ; 2 uses
  %i.arm = load float, ptr %gep451.i.1, align 4, !tbaa !50
  %i.arn = fsub nsz float %i.arm, %i.arl
  store float %i.arn, ptr %gep451.i.1, align 4, !tbaa !50
  %indvars.iv.next394.i.1 = add nuw nsw i64 %indvars.iv393.i, 2 ; 2 uses
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %indvars.iv.next394.i.1
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !50
  %gep451.i.2 = getelementptr [4 x i8], ptr %i.amw, i64 %indvars.iv.next394.i.1 ; 2 uses
  %i.arq = load float, ptr %gep451.i.2, align 4, !tbaa !50
  %i.arr = fsub nsz float %i.arq, %i.arp
  store float %i.arr, ptr %gep451.i.2, align 4, !tbaa !50
  %indvars.iv.next394.i.2 = add nuw nsw i64 %indvars.iv393.i, 3 ; 2 uses
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %indvars.iv.next394.i.2
  %i.art = load float, ptr %i.ars, align 4, !tbaa !50
  %gep451.i.3 = getelementptr [4 x i8], ptr %i.amw, i64 %indvars.iv.next394.i.2 ; 2 uses
  %i.aru = load float, ptr %gep451.i.3, align 4, !tbaa !50
  %i.arv = fsub nsz float %i.aru, %i.art
  store float %i.arv, ptr %gep451.i.3, align 4, !tbaa !50
  %indvars.iv.next394.i.3 = add nuw nsw i64 %indvars.iv393.i, 4 ; 2 uses
  %exitcond397.not.i.3 = icmp eq i64 %indvars.iv.next394.i.3, %wide.trip.count396.i
  br i1 %exitcond397.not.i.3, label %._crit_edge345.us.i, label %.lr.ph344.us.i, !llvm.loop !218

._crit_edge345.us.i:                              ; preds = %.lr.ph344.us.i.prol.loopexit, %.lr.ph344.us.i, %middle.block586, %.preheader.us.i215
  %i.arw = add nsw i32 %i.aqg, %.1184347.us.i     ; 2 uses
  %i.arx = icmp slt i32 %i.arw, %i.abb
  br i1 %i.arx, label %bb.dt, label %.critedge.us.i, !llvm.loop !219

.critedge.us.i:                                   ; preds = %._crit_edge334.us.i, %._crit_edge345.us.i, %.preheader284.us.i, %bb.df, %bb.db
  %.sroa.54.33 = phi ptr [ %.sroa.54.32, %bb.db ], [ %.sroa.54.32, %bb.df ], [ %.sroa.54.32, %.preheader284.us.i ], [ %.sroa.54.40, %._crit_edge345.us.i ], [ %.sroa.54.36, %._crit_edge334.us.i ] ; 3 uses
  %.sroa.27.15 = phi i32 [ %.sroa.27.14, %bb.db ], [ %.sroa.27.14, %bb.df ], [ %.sroa.27.14, %.preheader284.us.i ], [ %i.aqi, %._crit_edge345.us.i ], [ %i.alg, %._crit_edge334.us.i ] ; 3 uses
  %.sroa.0.15 = phi i32 [ %.sroa.0.14, %bb.db ], [ %.sroa.0.14, %bb.df ], [ %.sroa.0.14, %.preheader284.us.i ], [ %.020.i.i.i.i.us.i, %._crit_edge345.us.i ], [ %.020.i.i.i.i233.us.i, %._crit_edge334.us.i ] ; 3 uses
  %indvars.iv.next399.i = add nuw nsw i64 %indvars.iv398.i, 1 ; 2 uses
  %exitcond403.not.i = icmp eq i64 %indvars.iv.next399.i, %wide.trip.count391.i
  br i1 %exitcond403.not.i, label %._crit_edge351.us.i, label %bb.db, !llvm.loop !220

.lr.ph342.us.i:                                   ; preds = %bb.df
  %i.ary = add nsw i32 %i.agk, %i.afx             ; 2 uses
  %i.arz = sdiv i32 %i.ary, 2
  %i.asa = srem i32 %i.ary, 2
  %i.asb = shl i32 %i.asa, %i.l
  %i.asc = getelementptr inbounds nuw i8, ptr %i.agh, i64 56 ; 2 uses
  %.phi.trans.insert.i226.us.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.asd = getelementptr inbounds nuw i8, ptr %i.agh, i64 64 ; 4 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  br label %bb.dg

.lr.ph348.us.i:                                   ; preds = %.preheader284.us.i
  %i.asf = getelementptr inbounds nuw i8, ptr %i.agh, i64 56 ; 2 uses
  %.phi.trans.insert.i.us.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.asg = getelementptr inbounds nuw i8, ptr %i.agh, i64 64 ; 4 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %.pre.i214 = load ptr, ptr %i.asf, align 8, !tbaa !56
  %invariant.gep693 = getelementptr i8, ptr %invariant.gep691, i64 %i.afy
  br label %bb.dt

._crit_edge351.us.i:                              ; preds = %.critedge.us.i
  %i.asi = add nuw nsw i32 %.2193352.us.i, 1      ; 2 uses
  %indvars.iv.next405.i = add nsw i64 %indvars.iv404.i, 1 ; 3 uses
  %i.asj = icmp slt i32 %i.asi, %i.abs
  %i.ask = icmp slt i64 %indvars.iv.next405.i, %.pre-phi
  %i.asl = select i1 %i.asj, i1 %i.ask, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.asl, label %.preheader286.us.i, label %.loopexit.loopexit.i, !llvm.loop !221

.split.us.i217:                                   ; preds = %bb.dc
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7, i32 noundef 967, ptr noundef nonnull @__PRETTY_FUNCTION__.residue_encode) #15
  unreachable

.split356.us.i:                                   ; preds = %bb.dd
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.7, i32 noundef 968, ptr noundef nonnull @__PRETTY_FUNCTION__.residue_encode) #15
  unreachable

.split360.us.i:                                   ; preds = %bb.dt
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.7, i32 noundef 900, ptr noundef nonnull @__PRETTY_FUNCTION__.put_vector) #15
  unreachable

.split358.us.i:                                   ; preds = %._crit_edge326.us.i
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.7, i32 noundef 900, ptr noundef nonnull @__PRETTY_FUNCTION__.put_vector) #15
  unreachable

.thread.i:                                        ; preds = %put_vector.exit270.us.i, %._crit_edge46.i228.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit

._crit_edge363.i:                                 ; preds = %.loopexit.i213
  %indvars.iv.next408.i = add nuw nsw i64 %indvars.iv407.i, 1 ; 2 uses
  %exitcond410.not.i = icmp eq i64 %indvars.iv.next408.i, 8
  br i1 %exitcond410.not.i, label %.loopexit339, label %.preheader290.i, !llvm.loop !222

.loopexit:                                        ; preds = %._crit_edge.i218, %put_vector.exit.us.i, %._crit_edge46.i.us.i, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13) #12
  br label %.thread

.loopexit339:                                     ; preds = %._crit_edge363.i, %.preheader294.i
  %.sroa.54.44 = phi ptr [ %.sroa.54.1.lcssa, %.preheader294.i ], [ %.sroa.54.30, %._crit_edge363.i ] ; 2 uses
  %.sroa.27.20 = phi i32 [ %.sroa.27.1.lcssa, %.preheader294.i ], [ %.sroa.27.12, %._crit_edge363.i ] ; 2 uses
  %.sroa.0.20 = phi i32 [ %.sroa.0.1.lcssa, %.preheader294.i ], [ %.sroa.0.12, %._crit_edge363.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.asm = icmp slt i32 %.sroa.27.20, 32
  br i1 %i.asm, label %.lr.ph.i231, label %flush_put_bits.exit

.lr.ph.i231:                                      ; preds = %.loopexit339, %bb.eg
  %.sroa.54.45 = phi ptr [ %i.asp, %bb.eg ], [ %.sroa.54.44, %.loopexit339 ] ; 3 uses
  %.sroa.27.21 = phi i32 [ %i.asr, %bb.eg ], [ %.sroa.27.20, %.loopexit339 ] ; 2 uses
  %.sroa.0.21 = phi i32 [ %i.asq, %bb.eg ], [ %.sroa.0.20, %.loopexit339 ] ; 2 uses
  %i.asn = icmp ult ptr %.sroa.54.45, %i.ht
  br i1 %i.asn, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i231
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 160) #12
  call void @abort() #15
  unreachable

bb.eg:                                            ; preds = %.lr.ph.i231
  %i.aso = trunc i32 %.sroa.0.21 to i8
  %i.asp = getelementptr inbounds nuw i8, ptr %.sroa.54.45, i64 1 ; 2 uses
  store i8 %i.aso, ptr %.sroa.54.45, align 1, !tbaa !54
  %i.asq = lshr i32 %.sroa.0.21, 8
  %i.asr = add nsw i32 %.sroa.27.21, 8
  %i.ass = icmp slt i32 %.sroa.27.21, 24
  br i1 %i.ass, label %.lr.ph.i231, label %flush_put_bits.exit, !llvm.loop !0

flush_put_bits.exit:                              ; preds = %bb.eg, %.loopexit339
  %.sroa.54.46 = phi ptr [ %.sroa.54.44, %.loopexit339 ], [ %i.asp, %bb.eg ]
  %i.ast = ptrtoint ptr %.sroa.54.46 to i64
  %i.asu = ptrtoint ptr %spec.select.i179 to i64
  %i.asv = sub i64 %i.ast, %i.asu
  %i.asw = trunc i64 %i.asv to i32
end_hunk_0
