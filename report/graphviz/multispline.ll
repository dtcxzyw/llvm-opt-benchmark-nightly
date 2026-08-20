inline.NumInlined: 116
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@makeMultiSpline:bb.a
  %.0123215.i = phi i64 [ 0, %.lr.ph216.split.i.new ], [ %i.agx, %bb.ds ] ; 4 uses
  %niter426 = phi i64 [ 0, %.lr.ph216.split.i.new ], [ %niter426.next.1, %bb.ds ]
  %i.agp = getelementptr inbounds nuw [32 x i8], ptr %i.afl, i64 %.0123215.i ; 2 uses
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %.0123215.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agp, ptr noundef nonnull align 8 dereferenceable(16) %i.agq, i64 16, i1 false), !tbaa.struct !48
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.ags = or disjoint i64 %.0123215.i, 1         ; 3 uses
  %i.agt = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.ags
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agr, ptr noundef nonnull align 8 dereferenceable(16) %i.agt, i64 16, i1 false), !tbaa.struct !48
  %i.agu = getelementptr inbounds nuw [32 x i8], ptr %i.afl, i64 %i.ags ; 2 uses
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.ags
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agu, ptr noundef nonnull align 8 dereferenceable(16) %i.agv, i64 16, i1 false), !tbaa.struct !48
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 16
  %i.agx = add nuw i64 %.0123215.i, 2             ; 4 uses
  %i.agy = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.agx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agw, ptr noundef nonnull align 8 dereferenceable(16) %i.agy, i64 16, i1 false), !tbaa.struct !48
  %niter426.next.1 = add nuw i64 %niter426, 2     ; 2 uses
  %niter426.ncmp.1 = icmp eq i64 %niter426.next.1, %unroll_iter425
  br i1 %niter426.ncmp.1, label %._crit_edge217.loopexit.peel.begin.i.loopexit.unr-lcssa, label %bb.ds, !llvm.loop !162

bb.dt:                                            ; preds = %._crit_edge217.i
  %i.agz = load i32, ptr %.0137218.i, align 8
  %i.aha = and i32 %i.agz, 3
  %i.ahb = icmp eq i32 %i.aha, 3
  %i.ahc = select i1 %i.ahb, i64 56, i64 120
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0137218.i, i64 %i.ahc
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !81
  %i.ahf = call ptr @agnameof(ptr noundef %i.ahe) #18
  %i.ahg = load i32, ptr %.0137218.i, align 8
  %i.ahh = and i32 %i.ahg, 3
  %i.ahi = icmp eq i32 %i.ahh, 2
  %i.ahj = select i1 %i.ahi, i64 56, i64 -8
  %i.ahk = getelementptr inbounds i8, ptr %.0137218.i, i64 %i.ahj
  br label %.loopexit.sink.split.i

.thread171.i:                                     ; preds = %._crit_edge217.i, %bb.dm
  %i.ahl = load i32, ptr %.0137218.i, align 8
  %i.ahm = and i32 %i.ahl, 3
  %i.ahn = icmp eq i32 %i.ahm, 2
  %i.aho = select i1 %i.ahn, i64 56, i64 -8
  %i.ahp = getelementptr inbounds i8, ptr %.0137218.i, i64 %i.aho
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !81
  %i.ahr = icmp ne ptr %i.ahq, %i.tr
  %i.ahs = zext i1 %i.ahr to i32
  %i.aht = load ptr, ptr %7, align 8
  %i.ahu = load i64, ptr %i.adm, align 8
  call fastcc void @finishEdge(ptr noundef nonnull %.0137218.i, ptr %i.aht, i64 %i.ahu, i32 noundef %i.ahs)
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0137218.i, i64 16
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !76
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 232
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !163
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond257.not.i = icmp eq i64 %indvars.iv.next.i98, %wide.trip.count.i95
  br i1 %exitcond257.not.i, label %.loopexit.i, label %bb.dj, !llvm.loop !164

.loopexit.sink.split.i:                           ; preds = %bb.dt, %bb.dk, %.loopexit182.i
  %.sink320.in.i = phi ptr [ %i.afe, %bb.dk ], [ %i.ahk, %bb.dt ], [ %i.acz, %.loopexit182.i ]
  %.sink.i = phi ptr [ %i.aez, %bb.dk ], [ %i.ahf, %bb.dt ], [ %i.acu, %.loopexit182.i ]
  %.sink320.i = load ptr, ptr %.sink320.in.i, align 8, !tbaa !81
  %i.ahz = call ptr @agnameof(ptr noundef %.sink320.i) #18
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.5, ptr noundef %.sink.i, ptr noundef %i.ahz) #18
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.thread171.i, %.loopexit.sink.split.i, %gv_calloc.exit158.i
  %.6.i = phi i32 [ 1, %.loopexit.sink.split.i ], [ 0, %gv_calloc.exit158.i ], [ 0, %.thread171.i ]
  %i.aia = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.aib = icmp ugt i64 %i.aia, 2
  br i1 %i.aib, label %.lr.ph223.i, label %._crit_edge224.i

._crit_edge224.i:                                 ; preds = %.lr.ph223.i, %.loopexit.i
  call void @free(ptr noundef nonnull %i.xn) #18
  br label %.thread174.i

.lr.ph223.i:                                      ; preds = %.loopexit.i, %.lr.ph223.i
  %.0221.i94 = phi i64 [ %i.aie, %.lr.ph223.i ], [ 0, %.loopexit.i ] ; 3 uses
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %.0221.i94
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !80
  call void @free(ptr noundef %i.aid) #18
  %i.aie = add nuw i64 %.0221.i94, 1
  %i.aif = add nuw i64 %.0221.i94, 3
  %i.aig = load i64, ptr %i.ts, align 8, !tbaa !35
  %i.aih = icmp ult i64 %i.aif, %i.aig
  br i1 %i.aih, label %.lr.ph223.i, label %._crit_edge224.i, !llvm.loop !165

.thread174.i:                                     ; preds = %._crit_edge224.i, %.thread.i108, %bb.cd, %bb.cb
  %.6178.i = phi i32 [ 1, %bb.cb ], [ %.6.i, %._crit_edge224.i ], [ 1, %.thread.i108 ], [ 0, %bb.cd ]
  %i.aii = load ptr, ptr %5, align 8, !tbaa !37
  br label %genroute.exit

genroute.exit:                                    ; preds = %bb.cl, %.thread174.i
  %.sink321.i = phi ptr [ %i.vu, %bb.cl ], [ %i.aii, %.thread174.i ]
  %.1.i93 = phi i32 [ 0, %bb.cl ], [ %.6178.i, %.thread174.i ]
  call void @free(ptr noundef %.sink321.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.aij = load ptr, ptr %i.sk, align 8, !tbaa !147
  call void @free(ptr noundef %i.aij) #18
  %i.aik = load i64, ptr %i.te, align 8, !tbaa !144 ; 2 uses
  %.not18.i = icmp eq i64 %i.aik, 0
  br i1 %.not18.i, label %freeTripoly.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %genroute.exit, %._crit_edge.i112
  %i.ail = phi i64 [ %i.air, %._crit_edge.i112 ], [ %i.aik, %genroute.exit ]
  %.014.i = phi i64 [ %i.ais, %._crit_edge.i112 ], [ 0, %genroute.exit ] ; 2 uses
  %i.aim = load ptr, ptr %i.tf, align 8, !tbaa !148
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %.014.i
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !138 ; 2 uses
  %.not12.i = icmp eq ptr %i.aio, null
  br i1 %.not12.i, label %._crit_edge.i112, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph16.i, %.lr.ph.i109
  %.01113.i = phi ptr [ %i.aiq, %.lr.ph.i109 ], [ %i.aio, %.lr.ph16.i ] ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.01113.i, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !132 ; 2 uses
  call void @free(ptr noundef nonnull %.01113.i) #18
  %.not.i110 = icmp eq ptr %i.aiq, null
  br i1 %.not.i110, label %._crit_edge.loopexit.i, label %.lr.ph.i109, !llvm.loop !166

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i109
  %.pre.i111 = load i64, ptr %i.te, align 8, !tbaa !144
  br label %._crit_edge.i112

._crit_edge.i112:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph16.i
  %i.air = phi i64 [ %.pre.i111, %._crit_edge.loopexit.i ], [ %i.ail, %.lr.ph16.i ] ; 2 uses
  %i.ais = add nuw i64 %.014.i, 1                 ; 2 uses
  %i.ait = icmp ult i64 %i.ais, %i.air
  br i1 %i.ait, label %.lr.ph16.i, label %freeTripoly.exit, !llvm.loop !167

freeTripoly.exit:                                 ; preds = %._crit_edge.i112, %genroute.exit
  %i.aiu = load ptr, ptr %i.tf, align 8, !tbaa !148
  call void @free(ptr noundef %i.aiu) #18
  call void @free(ptr noundef nonnull %i.sk) #18
  br label %bb.du

bb.du:                                            ; preds = %triPath.exit, %freeTripoly.exit
  %.060 = phi i32 [ %.1.i93, %freeTripoly.exit ], [ -1, %triPath.exit ]
  %i.aiv = load i32, ptr %i.s, align 8, !tbaa !67 ; 3 uses
  %i.aiw = icmp sgt i32 %i.aiv, 0
  br i1 %i.aiw, label %.lr.ph.preheader.i, label %resetGraph.exit

.lr.ph.preheader.i:                               ; preds = %bb.du
  %.val66 = load ptr, ptr %i.v, align 8, !tbaa !20 ; 2 uses
  %wide.trip.count.i114 = zext nneg i32 %i.aiv to i64 ; 2 uses
  %xtraiter435 = and i64 %wide.trip.count.i114, 7 ; 3 uses
  %i.aix = icmp ult i32 %i.aiv, 8
  br i1 %i.aix, label %.lr.ph.i115.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter439 = and i64 %wide.trip.count.i114, 2147483640
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.lr.ph.i115, %.lr.ph.preheader.i.new
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i117.7, %.lr.ph.i115 ] ; 9 uses
  %.02.i = phi ptr [ %.val66, %.lr.ph.preheader.i.new ], [ %i.akc, %.lr.ph.i115 ] ; 9 uses
  %niter440 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter440.next.7, %.lr.ph.i115 ]
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.aiz = load i64, ptr %i.aiy, align 8, !tbaa !75
  store i64 %i.aiz, ptr %.02.i, align 8, !tbaa !86
  %i.aja = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !75
  store i64 %i.ajd, ptr %i.aja, align 8, !tbaa !86
  %i.aje = getelementptr inbounds nuw i8, ptr %.02.i, i64 64
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !75
  store i64 %i.ajh, ptr %i.aje, align 8, !tbaa !86
  %i.aji = getelementptr inbounds nuw i8, ptr %.02.i, i64 96
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 24
  %i.ajl = load i64, ptr %i.ajk, align 8, !tbaa !75
  store i64 %i.ajl, ptr %i.aji, align 8, !tbaa !86
  %i.ajm = getelementptr inbounds nuw i8, ptr %.02.i, i64 128
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 32
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !75
  store i64 %i.ajp, ptr %i.ajm, align 8, !tbaa !86
  %i.ajq = getelementptr inbounds nuw i8, ptr %.02.i, i64 160
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 40
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !75
  store i64 %i.ajt, ptr %i.ajq, align 8, !tbaa !86
  %i.aju = getelementptr inbounds nuw i8, ptr %.02.i, i64 192
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 48
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !75
  store i64 %i.ajx, ptr %i.aju, align 8, !tbaa !86
  %i.ajy = getelementptr inbounds nuw i8, ptr %.02.i, i64 224
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 56
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !75
  store i64 %i.akb, ptr %i.ajy, align 8, !tbaa !86
  %i.akc = getelementptr inbounds nuw i8, ptr %.02.i, i64 256 ; 2 uses
  %indvars.iv.next.i117.7 = add nuw nsw i64 %indvars.iv.i116, 8 ; 2 uses
  %niter440.next.7 = add i64 %niter440, 8         ; 2 uses
  %niter440.ncmp.7 = icmp eq i64 %niter440.next.7, %unroll_iter439
  br i1 %niter440.ncmp.7, label %resetGraph.exit.loopexit.unr-lcssa, label %.lr.ph.i115, !llvm.loop !168

resetGraph.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i115
  %lcmp.mod437.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod437.not, label %resetGraph.exit, label %.lr.ph.i115.epil.preheader

.lr.ph.i115.epil.preheader:                       ; preds = %resetGraph.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i116.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i117.7, %resetGraph.exit.loopexit.unr-lcssa ]
  %.02.i.epil.init = phi ptr [ %.val66, %.lr.ph.preheader.i ], [ %i.akc, %resetGraph.exit.loopexit.unr-lcssa ]
  %lcmp.mod438 = icmp ne i64 %xtraiter435, 0
  call void @llvm.assume(i1 %lcmp.mod438)
  br label %.lr.ph.i115.epil

.lr.ph.i115.epil:                                 ; preds = %.lr.ph.i115.epil, %.lr.ph.i115.epil.preheader
  %indvars.iv.i116.epil = phi i64 [ %indvars.iv.i116.epil.init, %.lr.ph.i115.epil.preheader ], [ %indvars.iv.next.i117.epil, %.lr.ph.i115.epil ] ; 2 uses
  %.02.i.epil = phi ptr [ %.02.i.epil.init, %.lr.ph.i115.epil.preheader ], [ %i.akf, %.lr.ph.i115.epil ] ; 2 uses
  %epil.iter436 = phi i64 [ 0, %.lr.ph.i115.epil.preheader ], [ %epil.iter436.next, %.lr.ph.i115.epil ]
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i116.epil
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !75
  store i64 %i.ake, ptr %.02.i.epil, align 8, !tbaa !86
  %i.akf = getelementptr inbounds nuw i8, ptr %.02.i.epil, i64 32
  %indvars.iv.next.i117.epil = add nuw nsw i64 %indvars.iv.i116.epil, 1
  %epil.iter436.next = add i64 %epil.iter436, 1   ; 2 uses
  %epil.iter436.cmp.not = icmp eq i64 %epil.iter436.next, %xtraiter435
  br i1 %epil.iter436.cmp.not, label %resetGraph.exit, label %.lr.ph.i115.epil, !llvm.loop !169

resetGraph.exit:                                  ; preds = %resetGraph.exit.loopexit.unr-lcssa, %.lr.ph.i115.epil, %bb.du
  call void @free(ptr noundef %i.am) #18
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addEndpoint(ptr nofree noundef captures(none) %0, double %1, double %2, i32 %.16.val.452.val, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.item, align 8               ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = sext i32 %.16.val.452.val to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %trunc = trunc nuw i32 %4 to i8
  switch i8 %trunc, label %bb.j [
    i8 4, label %bb.b
    i8 6, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 1, label %bb.f
    i8 9, label %bb.g
    i8 8, label %bb.h
    i8 12, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = fadd double %1, 0.000000e+00
  %i.k = fadd double %2, 1.000000e+00             ; 3 uses
  %i.l = fadd double %1, -1.000000e+00
  %i.m = fadd double %1, 1.000000e+00
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.n = fadd double %1, 1.000000e+00             ; 2 uses
  %i.o = fadd double %2, 1.000000e+00             ; 2 uses
  %i.p = fadd double %1, 0.000000e+00
  %i.q = fadd double %2, 0.000000e+00
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.r = fadd double %1, 1.000000e+00             ; 3 uses
  %i.s = fadd double %2, 0.000000e+00
  %i.t = fadd double %2, 1.000000e+00
  %i.u = fadd double %2, -1.000000e+00
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.v = fadd double %1, 1.000000e+00             ; 2 uses
  %i.w = fadd double %2, -1.000000e+00            ; 2 uses
  %i.x = fadd double %2, 0.000000e+00
  %i.y = fadd double %1, 0.000000e+00
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.z = fadd double %1, 0.000000e+00
  %i.aa = fadd double %2, -1.000000e+00           ; 3 uses
  %i.ab = fadd double %1, 1.000000e+00
  %i.ac = fadd double %1, -1.000000e+00
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ad = fadd double %1, -1.000000e+00           ; 2 uses
  %i.ae = fadd double %2, -1.000000e+00           ; 2 uses
  %i.af = fadd double %1, 0.000000e+00
  %i.ag = fadd double %2, 0.000000e+00
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.ah = fadd double %1, -1.000000e+00           ; 3 uses
  %i.ai = fadd double %2, 0.000000e+00
  %i.aj = fadd double %2, -1.000000e+00
  %i.ak = fadd double %2, 1.000000e+00
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.al = fadd double %1, -1.000000e+00           ; 2 uses
  %i.am = fadd double %2, 1.000000e+00            ; 2 uses
  %i.an = fadd double %2, 0.000000e+00
  %i.ao = fadd double %1, 0.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.053.0 = phi double [ undef, %bb.a ], [ %i.m, %bb.b ], [ %i.n, %bb.c ], [ %i.r, %bb.d ], [ %i.y, %bb.e ], [ %i.ac, %bb.f ], [ %i.ad, %bb.g ], [ %i.ah, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %.sroa.12.0 = phi double [ undef, %bb.a ], [ %i.k, %bb.b ], [ %i.q, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], [ %i.ak, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %.sroa.056.0 = phi double [ undef, %bb.a ], [ %i.l, %bb.b ], [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %bb.e ], [ %i.ab, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.1258.0 = phi double [ undef, %bb.a ], [ %i.k, %bb.b ], [ %i.o, %bb.c ], [ %i.t, %bb.d ], [ %i.x, %bb.e ], [ %i.aa, %bb.f ], [ %i.ae, %bb.g ], [ %i.aj, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.sroa.060.0 = phi double [ undef, %bb.a ], [ %i.j, %bb.b ], [ %i.n, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %bb.e ], [ %i.z, %bb.f ], [ %i.ad, %bb.g ], [ %i.ah, %bb.h ], [ %i.al, %bb.i ]
  %.sroa.11.0 = phi double [ undef, %bb.a ], [ %i.k, %bb.b ], [ %i.o, %bb.c ], [ %i.s, %bb.d ], [ %i.w, %bb.e ], [ %i.aa, %bb.f ], [ %i.ae, %bb.g ], [ %i.ai, %bb.h ], [ %i.am, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !85
  %i.ar = sext i32 %3 to i64
  %i.as = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  store i64 0, ptr %i.as, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %1, ptr %i.at, align 8, !tbaa !38
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store double %2, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !38
  %i.au = icmp slt i32 %i.e, %i.g
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.av = add nsw i32 %i.g, -1                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.az = sext i32 %i.e to i64
  %i.ba = sext i32 %i.av to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.03.us = phi i32 [ %7, %.lr.ph.split.us ], [ %i.e, %.lr.ph ] ; 5 uses
  %6 = icmp slt i32 %.03.us, %i.av
  %7 = add i32 %.03.us, 1                         ; 3 uses
  %.sroa.7.0.us = select i1 %6, i32 %7, i32 %i.e  ; 3 uses
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 %.03.us, i32 %.sroa.7.0.us)
  %spec.select13.i.us = call i32 @llvm.smin.i32(i32 %.03.us, i32 %.sroa.7.0.us)
  store i32 %spec.select13.i.us, ptr %i.ax, align 8, !tbaa !46
  store i32 %spec.select.i.us, ptr %i.ay, align 4, !tbaa !46
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !61
  %i.bd = call ptr %i.bc(ptr noundef nonnull %i.bb, ptr noundef nonnull %5, i32 noundef 4) #18, !inline_history !170
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.sroa.7.0.insert.ext.us = zext i32 %.sroa.7.0.us to i64
  %.sroa.7.0.insert.shift.us = shl nuw i64 %.sroa.7.0.insert.ext.us, 32
  %.sroa.0.0.insert.ext.us = zext i32 %.03.us to i64
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.7.0.insert.shift.us, %.sroa.0.0.insert.ext.us
  call fastcc void @addTriEdge(ptr noundef nonnull %i.ap, i32 noundef %3, i32 noundef %i.bf, i64 %.sroa.0.0.insert.insert.us)
  %exitcond6.not = icmp eq i32 %7, %i.g
  br i1 %exitcond6.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !171

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.l
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.l ] ; 5 uses
  %i.bg = icmp slt i64 %indvars.iv, %i.ba
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bh = trunc i64 %indvars.iv.next to i32       ; 2 uses
  %.sroa.7.0 = select i1 %i.bg, i32 %i.bh, i32 %i.e ; 4 uses
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bj, i32 %.sroa.7.0)
  %spec.select13.i = call i32 @llvm.smin.i32(i32 %i.bj, i32 %.sroa.7.0)
  store i32 %spec.select13.i, ptr %i.ax, align 8, !tbaa !46
  store i32 %spec.select.i, ptr %i.ay, align 4, !tbaa !46
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !61
  %i.bl = call ptr %i.bk(ptr noundef nonnull %i.bi, ptr noundef nonnull %5, i32 noundef 4) #18, !inline_history !170
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.bp = load double, ptr %i.bo, align 8         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8         ; 2 uses
  %i.bs = call double @area2(double %i.bp, double %i.br, double %.sroa.056.0, double %.sroa.1258.0, double %1, double %2) #18
  %i.bt = fcmp ult double %i.bs, -1.000000e-10
  br i1 %i.bt, label %inCone.exit.thread, label %inCone.exit

inCone.exit:                                      ; preds = %.lr.ph.split
  %i.bu = call double @area2(double %i.bp, double %i.br, double %1, double %2, double %.sroa.053.0, double %.sroa.12.0) #18
  %i.bv = fcmp ult double %i.bu, -1.000000e-10
  br i1 %i.bv, label %inCone.exit.thread, label %bb.k

inCone.exit.thread:                               ; preds = %.lr.ph.split, %inCone.exit
  %i.bw = sext i32 %.sroa.7.0 to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.bw ; 3 uses
  %i.by = load double, ptr %i.bx, align 8         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8         ; 2 uses
  %i.cb = call double @area2(double %i.by, double %i.ca, double %.sroa.056.0, double %.sroa.1258.0, double %1, double %2) #18
  %i.cc = fcmp ult double %i.cb, -1.000000e-10
  br i1 %i.cc, label %inCone.exit191.thread, label %inCone.exit191

inCone.exit191:                                   ; preds = %inCone.exit.thread
  %i.cd = call double @area2(double %i.by, double %i.ca, double %1, double %2, double %.sroa.053.0, double %.sroa.12.0) #18
  %i.ce = fcmp ult double %i.cd, -1.000000e-10
  br i1 %i.ce, label %inCone.exit191.thread, label %bb.k

inCone.exit191.thread:                            ; preds = %inCone.exit.thread, %inCone.exit191
  %i.cf = load double, ptr %i.bo, align 8
  %i.cg = load double, ptr %i.bq, align 8
  %i.ch = load double, ptr %i.bx, align 8
  %i.ci = load double, ptr %i.bz, align 8
  %i.cj = call fastcc i32 @raySeg(double %1, double %2, double %.sroa.060.0, double %.sroa.11.0, double %i.cf, double %i.cg, double %i.ch, double %i.ci)
  %.not144 = icmp eq i32 %i.cj, 0
  br i1 %.not144, label %bb.l, label %bb.k

bb.k:                                             ; preds = %inCone.exit191.thread, %inCone.exit191, %inCone.exit
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0.0.insert.ext = and i64 %indvars.iv, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  call fastcc void @addTriEdge(ptr noundef nonnull %i.ap, i32 noundef %3, i32 noundef %i.bn, i64 %.sroa.0.0.insert.insert)
  br label %bb.l

bb.l:                                             ; preds = %inCone.exit191.thread, %bb.k
  %exitcond.not = icmp eq i32 %i.g, %i.bh
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.l, %.lr.ph.split.us, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare ptr @dtopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal nonnull ptr @newItem(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 81) 32) #19 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.1, i64 noundef 32) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !46
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !57
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmpItem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !46     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !46     ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, %i.h
  %. = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addTriEdge(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %mul.ov.i = icmp slt i32 %i.d, -1
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, i64 noundef %i.f, i64 noundef 24) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = sext i32 %i.d to i64
  %i.j = mul nsw i64 %i.i, 24                     ; 2 uses
  %i.k = mul nsw i64 %i.f, 24                     ; 3 uses
  %i.l = icmp eq i32 %i.e, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.b) #18
  br label %gv_recalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.k) #23 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.1, i64 noundef %i.k) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.r = sub nuw nsw i64 %i.k, %i.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.q, i8 0, i64 %i.r, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %bb.g
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.m, %bb.g ] ; 2 uses
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !27
  %i.s = load i32, ptr %i.c, align 8, !tbaa !172
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %.0.i.i, i64 %i.t ; 4 uses
end_hunk_0
