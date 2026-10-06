Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.adq = add nsw i32 %.29610.us.i.i.i.i.i, 1
  %i.adr = load <2 x i16>, ptr %i.ach, align 2
  %i.ads = sitofp <2 x i16> %i.adr to <2 x float>
  %i.adt = add nsw i32 %.pre.i.i.i.i.i, 1
  store i32 %i.adt, ptr %i.h, align 4
  br label %stbtt__add_point.exit.us.i.i.i.i.i

stbtt__add_point.exit.us.i.i.i.i.i:               ; preds = %bb.dy, %bb.dv, %bb.du, %bb.dt, %bb.ds
  %.397.us.i.i.i.i.i = phi i32 [ %.29610.us.i.i.i.i.i, %bb.ds ], [ %.29610.us.i.i.i.i.i, %bb.dt ], [ %.29610.us.i.i.i.i.i, %bb.dv ], [ %.29610.us.i.i.i.i.i, %bb.du ], [ %i.adq, %bb.dy ] ; 2 uses
  %.2.us.i.i.i.i.i = phi i32 [ %.19311.us.i.i.i.i.i, %bb.ds ], [ %.19311.us.i.i.i.i.i, %bb.dt ], [ %.19311.us.i.i.i.i.i, %bb.dv ], [ %.19311.us.i.i.i.i.i, %bb.du ], [ %.pre.i.i.i.i.i, %bb.dy ] ; 3 uses
  %i.adu = phi <2 x float> [ %i.acg, %bb.ds ], [ %i.aco, %bb.dt ], [ %i.adj, %bb.dv ], [ %i.adb, %bb.du ], [ %i.ads, %bb.dy ]
  %indvars.iv.next25.i.i.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i.i.i, 1 ; 2 uses
  %exitcond28.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next25.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond28.not.i.i.i.i.i, label %bb.dz, label %bb.ds

bb.dz:                                            ; preds = %stbtt__add_point.exit.us.i.i.i.i.i
  %i.adv = load i32, ptr %i.h, align 4            ; 2 uses
  %i.adw = sub nsw i32 %i.adv, %.2.us.i.i.i.i.i
  %i.adx = sext i32 %.397.us.i.i.i.i.i to i64
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.adx
  store i32 %i.adw, ptr %i.ady, align 4
  %i.adz = sext i32 %i.adv to i64
  %i.aea = shl nsw i64 %i.adz, 3
  %i.aeb = call noalias ptr @malloc(i64 noundef %i.aea) #42 ; 7 uses
  %i.aec = icmp eq ptr %i.aeb, null
  br i1 %i.aec, label %.split.us.i.i.i.i.i, label %.lr.ph15.us.1.i.i.i.i.i

.lr.ph15.us.1.i.i.i.i.i:                          ; preds = %bb.dz
  store i32 0, ptr %i.h, align 4
  br label %bb.ea

bb.ea:                                            ; preds = %stbtt__add_point.exit.us.1.i.i.i.i.i, %.lr.ph15.us.1.i.i.i.i.i
  %indvars.iv24.1.i.i.i.i.i = phi i64 [ 0, %.lr.ph15.us.1.i.i.i.i.i ], [ %indvars.iv.next25.1.i.i.i.i.i, %stbtt__add_point.exit.us.1.i.i.i.i.i ] ; 2 uses
  %.19311.us.1.i.i.i.i.i = phi i32 [ %.2.us.i.i.i.i.i, %.lr.ph15.us.1.i.i.i.i.i ], [ %.2.us.1.i.i.i.i.i, %stbtt__add_point.exit.us.1.i.i.i.i.i ] ; 5 uses
  %.29610.us.1.i.i.i.i.i = phi i32 [ -1, %.lr.ph15.us.1.i.i.i.i.i ], [ %.397.us.1.i.i.i.i.i, %stbtt__add_point.exit.us.1.i.i.i.i.i ] ; 7 uses
  %i.aed = phi <2 x float> [ zeroinitializer, %.lr.ph15.us.1.i.i.i.i.i ], [ %i.afv, %stbtt__add_point.exit.us.1.i.i.i.i.i ] ; 5 uses
  %i.aee = getelementptr inbounds nuw [14 x i8], ptr %i.aag, i64 %indvars.iv24.1.i.i.i.i.i ; 7 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 12
  %i.aeg = load i8, ptr %i.aef, align 2
  switch i8 %i.aeg, label %stbtt__add_point.exit.us.1.i.i.i.i.i [
    i8 1, label %bb.ee
    i8 2, label %bb.ed
    i8 3, label %bb.ec
    i8 4, label %bb.eb
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %i.aei = load <4 x i16>, ptr %i.aeh, align 2
  %i.aej = sitofp <4 x i16> %i.aei to <4 x float> ; 4 uses
  %i.aek = load <2 x i16>, ptr %i.aee, align 2
  %i.ael = sitofp <2 x i16> %i.aek to <2 x float> ; 3 uses
  %i.aem = extractelement <2 x float> %i.ael, i64 0
  %i.aen = extractelement <2 x float> %i.ael, i64 1
  %i.aeo = extractelement <2 x float> %i.aed, i64 0
  %i.aep = extractelement <2 x float> %i.aed, i64 1
  %i.aeq = extractelement <4 x float> %i.aej, i64 0
  %i.aer = extractelement <4 x float> %i.aej, i64 1
  %i.aes = extractelement <4 x float> %i.aej, i64 2
  %i.aet = extractelement <4 x float> %i.aej, i64 3
  call fastcc void @stbtt__tesselate_cubic(ptr noundef nonnull %i.aeb, ptr noundef %i.h, float noundef %i.aeo, float noundef %i.aep, float noundef %i.aeq, float noundef %i.aer, float noundef %i.aes, float noundef %i.aet, float noundef %i.aem, float noundef %i.aen, float noundef %i.yw, i32 noundef 0)
  br label %stbtt__add_point.exit.us.1.i.i.i.i.i

bb.ec:                                            ; preds = %bb.ea
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %i.aev = load <2 x i16>, ptr %i.aeu, align 2
  %i.aew = sitofp <2 x i16> %i.aev to <2 x float> ; 2 uses
  %i.aex = load <2 x i16>, ptr %i.aee, align 2
  %i.aey = sitofp <2 x i16> %i.aex to <2 x float> ; 3 uses
  %i.aez = extractelement <2 x float> %i.aey, i64 0
  %i.afa = extractelement <2 x float> %i.aey, i64 1
  %i.afb = extractelement <2 x float> %i.aed, i64 0
  %i.afc = extractelement <2 x float> %i.aed, i64 1
  %i.afd = extractelement <2 x float> %i.aew, i64 0
  %i.afe = extractelement <2 x float> %i.aew, i64 1
  call fastcc void @stbtt__tesselate_curve(ptr noundef nonnull %i.aeb, ptr noundef %i.h, float noundef %i.afb, float noundef %i.afc, float noundef %i.afd, float noundef %i.afe, float noundef %i.aez, float noundef %i.afa, float noundef %i.yw, i32 noundef 0)
  br label %stbtt__add_point.exit.us.1.i.i.i.i.i

bb.ed:                                            ; preds = %bb.ea
  %i.aff = load i32, ptr %i.h, align 4            ; 2 uses
  %i.afg = add nsw i32 %i.aff, 1
  store i32 %i.afg, ptr %i.h, align 4
  %i.afh = load <2 x i16>, ptr %i.aee, align 2
  %i.afi = sitofp <2 x i16> %i.afh to <2 x float> ; 2 uses
  %i.afj = sext i32 %i.aff to i64
  %i.afk = getelementptr inbounds [8 x i8], ptr %i.aeb, i64 %i.afj
  store <2 x float> %i.afi, ptr %i.afk, align 4
  br label %stbtt__add_point.exit.us.1.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ea
  %i.afl = icmp sgt i32 %.29610.us.1.i.i.i.i.i, -1
  %.pre30.i.i.i.i.i = load i32, ptr %i.h, align 4 ; 4 uses
  br i1 %i.afl, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.afm = sub nsw i32 %.pre30.i.i.i.i.i, %.19311.us.1.i.i.i.i.i
  %i.afn = zext nneg i32 %.29610.us.1.i.i.i.i.i to i64
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.afn
  store i32 %i.afm, ptr %i.afo, align 4
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.afp = add nsw i32 %.pre30.i.i.i.i.i, 1
  store i32 %i.afp, ptr %i.h, align 4
  %i.afq = load <2 x i16>, ptr %i.aee, align 2
  %i.afr = sitofp <2 x i16> %i.afq to <2 x float> ; 2 uses
  %i.afs = add nsw i32 %.29610.us.1.i.i.i.i.i, 1
  %i.aft = sext i32 %.pre30.i.i.i.i.i to i64
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.aeb, i64 %i.aft
  store <2 x float> %i.afr, ptr %i.afu, align 4
  br label %stbtt__add_point.exit.us.1.i.i.i.i.i

stbtt__add_point.exit.us.1.i.i.i.i.i:             ; preds = %bb.eg, %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %.397.us.1.i.i.i.i.i = phi i32 [ %.29610.us.1.i.i.i.i.i, %bb.ea ], [ %.29610.us.1.i.i.i.i.i, %bb.eb ], [ %i.afs, %bb.eg ], [ %.29610.us.1.i.i.i.i.i, %bb.ec ], [ %.29610.us.1.i.i.i.i.i, %bb.ed ] ; 2 uses
  %.2.us.1.i.i.i.i.i = phi i32 [ %.19311.us.1.i.i.i.i.i, %bb.ea ], [ %.19311.us.1.i.i.i.i.i, %bb.eb ], [ %.pre30.i.i.i.i.i, %bb.eg ], [ %.19311.us.1.i.i.i.i.i, %bb.ec ], [ %.19311.us.1.i.i.i.i.i, %bb.ed ] ; 2 uses
  %i.afv = phi <2 x float> [ %i.aed, %bb.ea ], [ %i.ael, %bb.eb ], [ %i.afr, %bb.eg ], [ %i.aey, %bb.ec ], [ %i.afi, %bb.ed ]
  %indvars.iv.next25.1.i.i.i.i.i = add nuw nsw i64 %indvars.iv24.1.i.i.i.i.i, 1 ; 2 uses
  %exitcond28.1.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next25.1.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond28.1.not.i.i.i.i.i, label %stbtt_FlattenCurves.exit.i.i.i.i, label %bb.ea

.split.us.i.i.i.i.i:                              ; preds = %bb.dz
  call void @free(ptr noundef nonnull %i.ace) #39
  br label %stbtt_FlattenCurves.exit.thread.i.i.i.i

stbtt_FlattenCurves.exit.thread.i.i.i.i:          ; preds = %.split.us.i.i.i.i.i, %bb.dr, %._crit_edge.i.i.i.i.i, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_FlattenCurves.exit.i.i.i.i:                 ; preds = %stbtt__add_point.exit.us.1.i.i.i.i.i
  %i.afw = load i32, ptr %i.h, align 4
  %i.afx = sub nsw i32 %i.afw, %.2.us.1.i.i.i.i.i
  %i.afy = sext i32 %.397.us.1.i.i.i.i.i to i64
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.afy
  store i32 %i.afx, ptr %i.afz, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #39
  %min.iters.check609 = icmp ult i32 %spec.select.i.i.i.i.i.lcssa, 8
  br i1 %min.iters.check609, label %.lr.ph.i23.i.i.i.i.preheader, label %vector.ph610

vector.ph610:                                     ; preds = %stbtt_FlattenCurves.exit.i.i.i.i
  %n.vec611 = and i64 %i.acc, 2147483640          ; 3 uses
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph610
  %index613 = phi i64 [ 0, %vector.ph610 ], [ %index.next617, %vector.body612 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph610 ], [ %i.agc, %vector.body612 ]
  %vec.phi614 = phi <4 x i32> [ zeroinitializer, %vector.ph610 ], [ %i.agd, %vector.body612 ]
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %index613 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %wide.load615 = load <4 x i32>, ptr %i.aga, align 4
  %wide.load616 = load <4 x i32>, ptr %i.agb, align 4
  %i.agc = add <4 x i32> %wide.load615, %vec.phi  ; 2 uses
  %i.agd = add <4 x i32> %wide.load616, %vec.phi614 ; 2 uses
  %index.next617 = add nuw i64 %index613, 8       ; 2 uses
  %i.age = icmp eq i64 %index.next617, %n.vec611
  br i1 %i.age, label %middle.block618, label %vector.body612, !llvm.loop !30

middle.block618:                                  ; preds = %vector.body612
  %bin.rdx = add <4 x i32> %i.agd, %i.agc
  %i.agf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n619 = icmp eq i64 %n.vec611, %i.acc
  br i1 %cmp.n619, label %._crit_edge.i27.i.i.i.i, label %.lr.ph.i23.i.i.i.i.preheader

.lr.ph.i23.i.i.i.i.preheader:                     ; preds = %stbtt_FlattenCurves.exit.i.i.i.i, %middle.block618
  %indvars.iv.i24.i.i.i.i.ph = phi i64 [ 0, %stbtt_FlattenCurves.exit.i.i.i.i ], [ %n.vec611, %middle.block618 ]
  %.0873.i.i.i.i.i.ph = phi i32 [ 0, %stbtt_FlattenCurves.exit.i.i.i.i ], [ %i.agf, %middle.block618 ]
  br label %.lr.ph.i23.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %.lr.ph.i23.i.i.i.i.preheader, %.lr.ph.i23.i.i.i.i
  %indvars.iv.i24.i.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i.i, %.lr.ph.i23.i.i.i.i ], [ %indvars.iv.i24.i.i.i.i.ph, %.lr.ph.i23.i.i.i.i.preheader ] ; 2 uses
  %.0873.i.i.i.i.i = phi i32 [ %i.agi, %.lr.ph.i23.i.i.i.i ], [ %.0873.i.i.i.i.i.ph, %.lr.ph.i23.i.i.i.i.preheader ]
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv.i24.i.i.i.i
  %i.agh = load i32, ptr %i.agg, align 4
  %i.agi = add nsw i32 %i.agh, %.0873.i.i.i.i.i   ; 2 uses
  %indvars.iv.next.i25.i.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i.i = icmp eq i64 %indvars.iv.next.i25.i.i.i.i, %i.acc
  br i1 %exitcond.not.i26.i.i.i.i, label %._crit_edge.i27.i.i.i.i, label %.lr.ph.i23.i.i.i.i, !llvm.loop !31

._crit_edge.i27.i.i.i.i:                          ; preds = %.lr.ph.i23.i.i.i.i, %middle.block618
  %.lcssa = phi i32 [ %i.agf, %middle.block618 ], [ %i.agi, %.lr.ph.i23.i.i.i.i ]
  %i.agj = add nsw i32 %.lcssa, 1
  %i.agk = sext i32 %i.agj to i64
  %i.agl = mul nsw i64 %i.agk, 20
  %i.agm = call noalias ptr @malloc(i64 noundef %i.agl) #42 ; 9 uses
  %i.agn = icmp eq ptr %i.agm, null
  br i1 %i.agn, label %stbtt__rasterize.exit.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %._crit_edge.i27.i.i.i.i, %._crit_edge10.i.i.i.i.i
  %indvars.iv27.i.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i.i, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %.08314.i.i.i.i.i = phi i32 [ %i.ags, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %.18812.i.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i.i, %._crit_edge10.i.i.i.i.i ], [ 0, %._crit_edge.i27.i.i.i.i ] ; 2 uses
  %i.ago = sext i32 %.08314.i.i.i.i.i to i64
  %i.agp = getelementptr inbounds [8 x i8], ptr %i.aeb, i64 %i.ago ; 4 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv27.i.i.i.i.i
  %i.agr = load i32, ptr %i.agq, align 4          ; 4 uses
  %i.ags = add nsw i32 %i.agr, %.08314.i.i.i.i.i
  %i.agt = icmp sgt i32 %i.agr, 0
  br i1 %i.agt, label %.lr.ph9.preheader.i.i.i.i.i, label %._crit_edge10.i.i.i.i.i

.lr.ph9.preheader.i.i.i.i.i:                      ; preds = %.lr.ph15.i.i.i.i.i
  %i.agu = add nsw i32 %i.agr, -1
  %wide.trip.count25.i.i.i.i.i = zext nneg i32 %i.agr to i64
  br label %.lr.ph9.i.i.i.i.i

.lr.ph9.i.i.i.i.i:                                ; preds = %.lr.ph9._crit_edge.i.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i
  %indvars.iv22.i.i.i.i.i = phi i64 [ 0, %.lr.ph9.preheader.i.i.i.i.i ], [ %indvars.iv.next23.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 5 uses
  %.0856.i.i.i.i.i = phi i32 [ %i.agu, %.lr.ph9.preheader.i.i.i.i.i ], [ %.pre-phi36.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ]
  %.0856.i.i.i.i.i.a = phi i32 [ %.18812.i.i.i.i.i, %.lr.ph9.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 3 uses
  %10 = sext i32 %.0856.i.i.i.i.i to i64          ; 3 uses
  %11 = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = load float, ptr %12, align 4              ; 2 uses
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %indvars.iv22.i.i.i.i.i
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 4
  %i.agx = load float, ptr %i.agw, align 4        ; 2 uses
  %i.agy = fcmp oeq float %13, %i.agx
  br i1 %i.agy, label %.lr.ph9._crit_edge.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph9.i.i.i.i.i
  %i.agz = sext i32 %.0856.i.i.i.i.i.a to i64
  %i.aha = getelementptr inbounds [20 x i8], ptr %i.agm, i64 %i.agz ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  %i.ahc = fcmp ogt float %13, %i.agx             ; 3 uses
  %spec.store.select.i.i.i.i.i = zext i1 %i.ahc to i32
  store i32 %spec.store.select.i.i.i.i.i, ptr %i.ahb, align 4
  %i.ahd = select i1 %i.ahc, i64 %10, i64 %indvars.iv22.i.i.i.i.i
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %i.ahd
  %i.ahf = select i1 %i.ahc, i64 %indvars.iv22.i.i.i.i.i, i64 %10
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %i.ahf
  %i.ahh = load <2 x float>, ptr %i.ahe, align 4
  %i.ahi = load <2 x float>, ptr %i.ahg, align 4
  %i.ahj = shufflevector <2 x float> %i.ahh, <2 x float> %i.ahi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahj, <4 x float> %i.zf, <4 x float> zeroinitializer)
  store <4 x float> %i.ahk, ptr %i.aha, align 4
  %i.ahl = add nsw i32 %.0856.i.i.i.i.i.a, 1
  br label %.lr.ph9._crit_edge.i.i.i.i.i

.lr.ph9._crit_edge.i.i.i.i.i:                     ; preds = %bb.eh, %.lr.ph9.i.i.i.i.i
  %.3.i.i.i.i.i = phi i32 [ %i.ahl, %bb.eh ], [ %.0856.i.i.i.i.i.a, %.lr.ph9.i.i.i.i.i ] ; 2 uses
  %.pre-phi36.i.i.i.i.i = trunc i64 %indvars.iv22.i.i.i.i.i to i32
  %indvars.iv.next23.i.i.i.i.i = add nuw nsw i64 %indvars.iv22.i.i.i.i.i, 1 ; 2 uses
  %exitcond26.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next23.i.i.i.i.i, %wide.trip.count25.i.i.i.i.i
  br i1 %exitcond26.not.i.i.i.i.i, label %._crit_edge10.i.i.i.i.i, label %.lr.ph9.i.i.i.i.i

._crit_edge10.i.i.i.i.i:                          ; preds = %.lr.ph9._crit_edge.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %.2.lcssa.i.i.i.i.i = phi i32 [ %.18812.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.3.i.i.i.i.i, %.lr.ph9._crit_edge.i.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i.i, %i.acc
  br i1 %exitcond31.not.i.i.i.i.i, label %._crit_edge16.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

._crit_edge16.i.i.i.i.i:                          ; preds = %._crit_edge10.i.i.i.i.i
  call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.agm, i32 noundef %.2.lcssa.i.i.i.i.i)
  %i.ahm = icmp sgt i32 %.2.lcssa.i.i.i.i.i, 1
  br i1 %i.ahm, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %stbtt__sort_edges.exit.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %._crit_edge16.i.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.el, %.lr.ph.preheader.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i, %bb.el ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %i.ahn = getelementptr inbounds nuw [20 x i8], ptr %i.agm, i64 %indvars.iv.i.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4
  %i.aho = load <2 x float>, ptr %i.ahn, align 4
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 12, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ej, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i.i, %bb.ej ] ; 4 uses
  %i.ahp = getelementptr [20 x i8], ptr %i.agm, i64 %indvars.iv31.i.i.i.i.i.i.i ; 3 uses
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -16
  %i.ahr = load float, ptr %i.ahq, align 4
  %i.ahs = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i.i, %i.ahr
  br i1 %i.ahs, label %bb.ej, label %.thread.split.loop.exit.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.aht = getelementptr i8, ptr %i.ahp, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ahp, ptr noundef nonnull align 4 dereferenceable(20) %i.aht, i64 20, i1 false)
  %indvars.iv.next32.i.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i.i, -1
  %i.ahu = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i.i, 1
  br i1 %i.ahu, label %bb.ei, label %.thread.i.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i.i:            ; preds = %bb.ei
  %i.ahv = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ej, %.thread.split.loop.exit.i.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.ahv, %.thread.split.loop.exit.i.i.i.i.i.i.i ], [ 0, %bb.ej ] ; 2 uses
  %i.ahw = zext i32 %.021.lcssa.i.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i.i, %i.ahw
  br i1 %.not.i.i.i.i.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.ahx = sext i32 %.021.lcssa.i.i.i.i.i.i.i to i64
  %i.ahy = getelementptr inbounds [20 x i8], ptr %i.agm, i64 %i.ahx ; 2 uses
  store <2 x float> %i.aho, ptr %i.ahy, align 4
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i.i, i64 12, i1 false)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %stbtt__sort_edges.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

stbtt__sort_edges.exit.i.i.i.i.i:                 ; preds = %bb.el, %._crit_edge16.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #39
  %i.ahz = icmp sgt i32 %i.zx, 64
  br i1 %i.ahz, label %bb.em, label %bb.en

bb.em:                                            ; preds = %stbtt__sort_edges.exit.i.i.i.i.i
  %i.aia = shl nuw nsw i32 %i.zx, 1
  %i.aib = or disjoint i32 %i.aia, 1
  %i.aic = zext nneg i32 %i.aib to i64
  %i.aid = shl nuw nsw i64 %i.aic, 2
  %i.aie = call noalias ptr @malloc(i64 noundef %i.aid) #42
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %stbtt__sort_edges.exit.i.i.i.i.i
  %.080.i.i.i.i.i.i = phi ptr [ %i.aie, %bb.em ], [ %i.g, %stbtt__sort_edges.exit.i.i.i.i.i ] ; 43 uses
  %i.aif = sext i32 %i.zx to i64                  ; 3 uses
  %i.aig = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %i.aif ; 9 uses
  %i.aih = sitofp i32 %i.zy to float
  %i.aii = fadd float %i.aih, 1.000000e+00
  %i.aij = sext i32 %.2.lcssa.i.i.i.i.i to i64
  %i.aik = getelementptr inbounds [20 x i8], ptr %i.agm, i64 %i.aij
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 4
  store float %i.aii, ptr %i.ail, align 4
  %i.aim = icmp sgt i32 %i.aaa, 0
  br i1 %i.aim, label %.lr.ph64.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i:                             ; preds = %bb.en
  %i.ain = sitofp i32 %i.zw to float
  %i.aio = icmp ne i32 %i.zz, 0
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aig, i64 4 ; 2 uses
  %i.aiq = shl nsw i64 %i.aif, 2
  %i.air = add nsw i32 %i.zx, 1
  %i.ais = sext i32 %i.air to i64
  %i.ait = shl nsw i64 %i.ais, 2
  %i.aiu = icmp sgt i32 %i.zx, 0                  ; 2 uses
  %i.aiv = sitofp i32 %i.zx to float              ; 3 uses
  %wide.trip.count.i.i92.i.i.i.i.i = zext nneg i32 %i.zx to i64
  br label %bb.eo

bb.eo:                                            ; preds = %._crit_edge56.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i
  %.0..i.i.i.i.i.i = phi ptr [ null, %.lr.ph64.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.062.i.i.i.i.i.i = phi ptr [ %i.agm, %.lr.ph64.i.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 3 uses
  %.07561.i.i.i.i.i.i = phi i32 [ %i.zz, %.lr.ph64.i.i.i.i.i.i ], [ %i.bpo, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.07660.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph64.i.i.i.i.i.i ], [ %i.bpp, %._crit_edge56.i.i.i.i.i.i ] ; 3 uses
  %.sroa.11.059.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph64.i.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.058.i.i.i.i.i.i = phi ptr [ null, %.lr.ph64.i.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.057.i.i.i.i.i.i = phi ptr [ null, %.lr.ph64.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge56.i.i.i.i.i.i ] ; 2 uses
  %i.aiw = sitofp i32 %.07561.i.i.i.i.i.i to float ; 39 uses
  %i.aix = fadd float %i.aiw, 1.000000e+00        ; 53 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i.i, i8 0, i64 %i.aiq, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aig, i8 0, i64 %i.ait, i1 false)
  %.not9038.i.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i.i, null
  br i1 %.not9038.i.i.i.i.i.i, label %.preheader37.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.preheader37.i.i.i.i.i.i:                         ; preds = %bb.eq, %bb.eo
  %.sroa.7.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.7.058.i.i.i.i.i.i, %bb.eo ], [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ] ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %.062.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aiz = load float, ptr %i.aiy, align 4        ; 2 uses
  %i.aja = fcmp ugt float %i.aiz, %i.aix
  br i1 %i.aja, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph45.i.i.i.i.i.i

.lr.ph45.i.i.i.i.i.i:                             ; preds = %.preheader37.i.i.i.i.i.i
  %i.ajb = icmp eq i32 %.07660.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.aio, %i.ajb
  br label %bb.er

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.eo, %bb.eq
  %i.ajc = phi ptr [ %i.aji, %bb.eq ], [ %.0..i.i.i.i.i.i, %bb.eo ] ; 6 uses
  %.07840.i.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i.i, %bb.eq ], [ %i.f, %bb.eo ] ; 2 uses
  %.sroa.7.139.i.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i.i, %bb.eq ], [ %.sroa.7.058.i.i.i.i.i.i, %bb.eo ] ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 28
  %i.aje = load float, ptr %i.ajd, align 4
  %i.ajf = fcmp ugt float %i.aje, %i.aiw
  br i1 %i.ajf, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ajg = load ptr, ptr %i.ajc, align 8
  store ptr %i.ajg, ptr %.07840.i.i.i.i.i.i, align 8
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajc, i64 20
  store float 0.000000e+00, ptr %i.ajh, align 4
  store ptr %.sroa.7.139.i.i.i.i.i.i, ptr %i.ajc, align 8
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph.i.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i.i = phi ptr [ %.sroa.7.139.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ajc, %bb.ep ] ; 2 uses
  %.179.i.i.i.i.i.i = phi ptr [ %i.ajc, %.lr.ph.i.i.i.i.i.i ], [ %.07840.i.i.i.i.i.i, %bb.ep ] ; 2 uses
  %i.aji = load ptr, ptr %.179.i.i.i.i.i.i, align 8 ; 2 uses
  %.not90.i.i.i.i.i.i = icmp eq ptr %i.aji, null
  br i1 %.not90.i.i.i.i.i.i, label %.preheader37.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.er:                                            ; preds = %stbtt__new_active.exit.thread.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i
  %i.ajj = phi float [ %i.aiz, %.lr.ph45.i.i.i.i.i.i ], [ %i.alc, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.ajk = phi ptr [ %i.aiy, %.lr.ph45.i.i.i.i.i.i ], [ %i.alb, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.144.i.i.i.i.i.i = phi ptr [ %.062.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %i.ala, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 7 uses
  %.sroa.11.143.i.i.i.i.i.i = phi i32 [ %.sroa.11.059.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.7.342.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.141.i.i.i.i.i.i = phi ptr [ %.sroa.0.057.i.i.i.i.i.i, %.lr.ph45.i.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i.i, %stbtt__new_active.exit.thread.i.i.i.i.i.i ] ; 5 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.144.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.ajm = load float, ptr %i.ajl, align 4        ; 3 uses
  %i.ajn = fcmp une float %i.ajj, %i.ajm
  br i1 %i.ajn, label %bb.es, label %stbtt__new_active.exit.thread.i.i.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.342.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ajo = load ptr, ptr %.sroa.7.342.i.i.i.i.i.i, align 8
  br label %bb.ex

bb.eu:                                            ; preds = %bb.es
  %i.ajp = icmp eq i32 %.sroa.11.143.i.i.i.i.i.i, 0
  br i1 %i.ajp, label %bb.ev, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.eu
  %i.ajq = add nsw i32 %.sroa.11.143.i.i.i.i.i.i, -1
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ajr = call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #42 ; 3 uses
  %i.ajs = icmp eq ptr %i.ajr, null
  br i1 %i.ajs, label %stbtt__new_active.exit.thread.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.ev
  store ptr %.sroa.0.141.i.i.i.i.i.i, ptr %i.ajr, align 8
  %.pre71.pre.i.i.i.i.i.i = load float, ptr %i.ajl, align 4
  %.pre72.pre.i.i.i.i.i.i = load float, ptr %i.ajk, align 4
  br label %bb.ew
end_hunk_0
