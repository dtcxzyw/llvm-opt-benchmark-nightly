Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_autoit?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 25
begin_hunk_0_@cli_scanautoit:bb.a
  %.sroa.109.26.1.ph.i = phi i32 [ %i.afr, %.preheader458.1.thread.i ], [ %.sroa.109.36.insert.insert377.1.i, %bb.cc ]
  %.ph811.i = phi i32 [ 14, %.preheader458.1.thread.i ], [ 15, %bb.cc ]
  %.sroa.29.26.1.ph.i = add i32 %.sroa.29.5.i, 2
  %i.age = shl nuw nsw i32 %.sroa.109.26.1.ph.i, 1
  br label %.preheader458.4.i

.preheader458.2.i:                                ; preds = %.preheader458.1.i
  %i.agf = shl nuw nsw i32 %.sroa.109.5.i, 3      ; 2 uses
  %i.agg = add i32 %i.ep, -3                      ; 2 uses
  switch i32 %i.agg, label %.preheader458.4.i [
    i32 0, label %.preheader458.3.thread.i
    i32 1, label %bb.cd
  ]

.preheader458.3.thread.i:                         ; preds = %.preheader458.2.i
  %i.agh = add i32 %.sroa.29.5.i, 1
  %i.agi = zext i32 %.sroa.29.5.i to i64
  %i.agj = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.agi
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !8
  %i.agl = zext i8 %i.agk to i32
  %i.agm = shl nuw nsw i32 %i.agl, 8
  %i.agn = zext i32 %i.agh to i64
  %i.ago = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.agn
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !8
  %i.agq = zext i8 %i.agp to i32
  %i.agr = or disjoint i32 %i.agm, %i.agq
  %.sroa.109.36.insert.insert377.2.i = or i32 %i.agr, %i.agf
  %i.ags = shl nuw nsw i32 %.sroa.109.36.insert.insert377.2.i, 1
  br label %.preheader458.5.i.thread

bb.cd:                                            ; preds = %.preheader458.2.i
  %i.agt = shl nuw nsw i32 %.sroa.109.5.i, 4
  %i.agu = add i32 %.sroa.29.5.i, 1
  %i.agv = zext i32 %.sroa.29.5.i to i64
  %i.agw = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.agv
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !8
  %i.agy = zext i8 %i.agx to i32
  %i.agz = shl nuw nsw i32 %i.agy, 8
  %i.aha = zext i32 %i.agu to i64
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.aha
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !8
  %i.ahd = zext i8 %i.ahc to i32
  %i.ahe = or i32 %i.agt, %i.ahd
  %.sroa.109.36.insert.insert377.3.i = or i32 %i.ahe, %i.agz
  br label %.preheader458.5.i.thread

.preheader458.5.i.thread:                         ; preds = %.preheader458.3.thread.i, %bb.cd
  %.sroa.109.26.3.ph.i = phi i32 [ %i.ags, %.preheader458.3.thread.i ], [ %.sroa.109.36.insert.insert377.3.i, %bb.cd ]
  %.ph822.i = phi i32 [ 14, %.preheader458.3.thread.i ], [ 15, %bb.cd ]
  %.sroa.29.26.3.ph.i = add i32 %.sroa.29.5.i, 2
  %i.ahf = shl nuw nsw i32 %.sroa.109.26.3.ph.i, 1
  br label %.preheader458.6.i

.preheader458.4.i:                                ; preds = %.preheader458.2.i, %.preheader458.3.i.thread
  %i.ahg = phi i32 [ %.ph811.i, %.preheader458.3.i.thread ], [ %i.agg, %.preheader458.2.i ]
  %.sroa.29.26.2.i119 = phi i32 [ %.sroa.29.26.1.ph.i, %.preheader458.3.i.thread ], [ %.sroa.29.5.i, %.preheader458.2.i ] ; 6 uses
  %.sroa.109.26.2.i118 = phi i32 [ %i.age, %.preheader458.3.i.thread ], [ %i.agf, %.preheader458.2.i ] ; 2 uses
  %i.ahh = shl nuw nsw i32 %.sroa.109.26.2.i118, 2 ; 2 uses
  %i.ahi = add i32 %i.ahg, -2                     ; 2 uses
  switch i32 %i.ahi, label %.preheader458.6.i [
    i32 0, label %.preheader458.5.thread.i
    i32 1, label %bb.ce
  ]

.preheader458.5.thread.i:                         ; preds = %.preheader458.4.i
  %i.ahj = add i32 %.sroa.29.26.2.i119, 1
  %i.ahk = zext i32 %.sroa.29.26.2.i119 to i64
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !8
  %i.ahn = zext i8 %i.ahm to i32
  %i.aho = shl nuw nsw i32 %i.ahn, 8
  %i.ahp = zext i32 %i.ahj to i64
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ahp
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !8
  %i.ahs = zext i8 %i.ahr to i32
  %i.aht = or disjoint i32 %i.aho, %i.ahs
  %.sroa.109.36.insert.insert377.4.i = or i32 %i.aht, %i.ahh
  %i.ahu = shl nuw nsw i32 %.sroa.109.36.insert.insert377.4.i, 1
  br label %.preheader458.6.thread.i

bb.ce:                                            ; preds = %.preheader458.4.i
  %i.ahv = shl nuw nsw i32 %.sroa.109.26.2.i118, 3
  %i.ahw = add i32 %.sroa.29.26.2.i119, 1
  %i.ahx = zext i32 %.sroa.29.26.2.i119 to i64
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ahx
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !8
  %i.aia = zext i8 %i.ahz to i32
  %i.aib = shl nuw nsw i32 %i.aia, 8
  %i.aic = zext i32 %i.ahw to i64
  %i.aid = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.aic
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !8
  %i.aif = zext i8 %i.aie to i32
  %i.aig = or i32 %i.ahv, %i.aif
  %.sroa.109.36.insert.insert377.5.i = or i32 %i.aig, %i.aib
  br label %.preheader458.6.thread.i

.preheader458.6.thread.i:                         ; preds = %bb.ce, %.preheader458.5.thread.i
  %.sroa.109.26.5.ph.i = phi i32 [ %i.ahu, %.preheader458.5.thread.i ], [ %.sroa.109.36.insert.insert377.5.i, %bb.ce ]
  %.ph833.i = phi i32 [ 14, %.preheader458.5.thread.i ], [ 15, %bb.ce ]
  %.sroa.29.26.5.ph.i = add i32 %.sroa.29.26.2.i119, 2
  %i.aih = shl nuw nsw i32 %.sroa.109.26.5.ph.i, 1
  br label %.preheader458.7.i

.preheader458.6.i:                                ; preds = %.preheader458.4.i, %.preheader458.5.i.thread
  %i.aii = phi i32 [ %.ph822.i, %.preheader458.5.i.thread ], [ %i.ahi, %.preheader458.4.i ]
  %.sroa.29.26.4.i124 = phi i32 [ %.sroa.29.26.3.ph.i, %.preheader458.5.i.thread ], [ %.sroa.29.26.2.i119, %.preheader458.4.i ] ; 4 uses
  %.sroa.109.26.4.i123 = phi i32 [ %i.ahf, %.preheader458.5.i.thread ], [ %i.ahh, %.preheader458.4.i ]
  %i.aij = shl nuw nsw i32 %.sroa.109.26.4.i123, 2 ; 2 uses
  %i.aik = add i32 %i.aii, -2                     ; 2 uses
  %.not24.i228.6.i = icmp eq i32 %i.aik, 0
  br i1 %.not24.i228.6.i, label %.preheader458.7.thread.i, label %.preheader458.7.i

.preheader458.7.thread.i:                         ; preds = %.preheader458.6.i
  %i.ail = add i32 %.sroa.29.26.4.i124, 1
  %i.aim = zext i32 %.sroa.29.26.4.i124 to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !8
  %i.aip = zext i8 %i.aio to i32
  %i.aiq = shl nuw nsw i32 %i.aip, 8
  %i.air = add i32 %.sroa.29.26.4.i124, 2
  %i.ais = zext i32 %i.ail to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ais
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !8
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = or disjoint i32 %i.aiq, %i.aiv
  %.sroa.109.36.insert.insert377.6.i = or i32 %i.aiw, %i.aij
  %i.aix = shl nuw nsw i32 %.sroa.109.36.insert.insert377.6.i, 1
  br label %bb.cg

.preheader458.7.i:                                ; preds = %.preheader458.6.i, %.preheader458.6.thread.i
  %.sroa.109.26.6.i = phi i32 [ %i.aih, %.preheader458.6.thread.i ], [ %i.aij, %.preheader458.6.i ]
  %.sroa.29.26.6.i = phi i32 [ %.sroa.29.26.5.ph.i, %.preheader458.6.thread.i ], [ %.sroa.29.26.4.i124, %.preheader458.6.i ] ; 4 uses
  %i.aiy = phi i32 [ %.ph833.i, %.preheader458.6.thread.i ], [ %i.aik, %.preheader458.6.i ]
  %i.aiz = shl nuw nsw i32 %.sroa.109.26.6.i, 1   ; 2 uses
  %i.aja = add i32 %i.aiy, -1                     ; 2 uses
  %.not24.i228.7.i = icmp eq i32 %i.aja, 0
  br i1 %.not24.i228.7.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.preheader458.7.i
  %i.ajb = add i32 %.sroa.29.26.6.i, 1
  %i.ajc = zext i32 %.sroa.29.26.6.i to i64
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ajc
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !8
  %i.ajf = zext i8 %i.aje to i32
  %i.ajg = shl nuw nsw i32 %i.ajf, 8
  %i.ajh = add i32 %.sroa.29.26.6.i, 2
  %i.aji = zext i32 %i.ajb to i64
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.aji
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !8
  %i.ajl = zext i8 %i.ajk to i32
  %i.ajm = or disjoint i32 %i.ajg, %i.ajl
  %.sroa.109.36.insert.insert377.7.i = or i32 %i.ajm, %i.aiz
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.preheader458.7.i, %.preheader458.7.thread.i
  %.sroa.109.26.7.i = phi i32 [ %.sroa.109.36.insert.insert377.7.i, %bb.cf ], [ %i.aiz, %.preheader458.7.i ], [ %i.aix, %.preheader458.7.thread.i ] ; 2 uses
  %.sroa.29.26.7.i = phi i32 [ %i.ajh, %bb.cf ], [ %.sroa.29.26.6.i, %.preheader458.7.i ], [ %i.air, %.preheader458.7.thread.i ]
  %i.ajn = phi i32 [ 16, %bb.cf ], [ %i.aja, %.preheader458.7.i ], [ 15, %.preheader458.7.thread.i ]
  %i.ajo = shl nuw nsw i32 %.sroa.109.26.7.i, 1
  %i.ajp = add i32 %i.ajn, -1
  %i.ajq = lshr i32 %.sroa.109.26.7.i, 15
  %i.ajr = trunc nuw i32 %i.ajq to i8
  br label %getbits.exit231.i

getbits.exit231.i:                                ; preds = %bb.cg, %bb.cb
  %.sroa.158.13.i = phi i32 [ 1, %bb.cb ], [ 0, %bb.cg ]
  %.sroa.109.27.i = phi i32 [ %.sroa.109.6407794.i, %bb.cb ], [ %i.ajo, %bb.cg ]
  %.sroa.92.11.i = phi i32 [ %.sroa.92.4408793.i, %bb.cb ], [ %i.ajp, %bb.cg ]
  %.sroa.29.27.i = phi i32 [ %.sroa.29.6409790.i, %bb.cb ], [ %.sroa.29.26.7.i, %bb.cg ]
  %.021.i230.i = phi i8 [ 0, %bb.cb ], [ %i.ajr, %bb.cg ]
  %i.ajs = zext i32 %.sroa.20.0532.i to i64
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ajs
  store i8 %.021.i230.i, ptr %i.ajt, align 1, !tbaa !8
  %i.aju = add nuw i32 %.sroa.20.0532.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block671, %vec.epilog.middle.block685, %getbits.exit231.i
  %.sroa.158.4.i = phi i32 [ %.sroa.158.13.i, %getbits.exit231.i ], [ %.sroa.158.2.i, %middle.block671 ], [ %.sroa.158.2.i, %vec.epilog.middle.block685 ], [ %.sroa.158.2.i, %.lr.ph.i ], [ %.sroa.158.2.i, %.lr.ph.i.prol.loopexit ]
  %.sroa.109.3.i = phi i32 [ %.sroa.109.27.i, %getbits.exit231.i ], [ %.sroa.109.2.i, %middle.block671 ], [ %.sroa.109.2.i, %vec.epilog.middle.block685 ], [ %.sroa.109.2.i, %.lr.ph.i ], [ %.sroa.109.2.i, %.lr.ph.i.prol.loopexit ]
  %.sroa.92.3.i = phi i32 [ %.sroa.92.11.i, %getbits.exit231.i ], [ %.sroa.92.2.i, %middle.block671 ], [ %.sroa.92.2.i, %vec.epilog.middle.block685 ], [ %.sroa.92.2.i, %.lr.ph.i ], [ %.sroa.92.2.i, %.lr.ph.i.prol.loopexit ]
  %.sroa.29.3.i = phi i32 [ %.sroa.29.27.i, %getbits.exit231.i ], [ %.sroa.29.2.i, %middle.block671 ], [ %.sroa.29.2.i, %vec.epilog.middle.block685 ], [ %.sroa.29.2.i, %.lr.ph.i ], [ %.sroa.29.2.i, %.lr.ph.i.prol.loopexit ]
  %.sroa.20.3.i = phi i32 [ %i.aju, %getbits.exit231.i ], [ %i.acy, %middle.block671 ], [ %i.adj, %vec.epilog.middle.block685 ], [ %.lcssa712.unr, %.lr.ph.i.prol.loopexit ], [ %i.afd, %.lr.ph.i ] ; 2 uses
  %.not173.i = icmp eq i32 %.sroa.158.4.i, 0      ; 2 uses
  %i.ajv = icmp ult i32 %.sroa.20.3.i, %i.dt
  %i.ajw = select i1 %.not173.i, i1 %i.ajv, i1 false
  br i1 %i.ajw, label %.lr.ph533.i, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %.loopexit.i
  call void @free(ptr noundef %i.dn) #12
  br i1 %.not173.i, label %bb.ch, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ai, %._crit_edge.i, %.thread438.i
  %.str.17.sink.i = phi ptr [ @.str.17, %._crit_edge.i ], [ @.str.17, %.thread438.i ], [ @.str.18, %bb.ai ]
  %.sroa.62.1.ph.i = phi i32 [ %i.dt, %._crit_edge.i ], [ %i.dt, %.thread438.i ], [ %i.db, %bb.ai ]
  %.sroa.0.0.ph.i = phi ptr [ %i.dz, %._crit_edge.i ], [ %i.dz, %.thread438.i ], [ %i.dn, %bb.ai ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.17.sink.i) #12
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split.i, %._crit_edge.i
  %.sroa.62.1.i = phi i32 [ %i.dt, %._crit_edge.i ], [ %.sroa.62.1.ph.i, %.sink.split.i ] ; 7 uses
  %.sroa.0.0.i = phi ptr [ %i.dz, %._crit_edge.i ], [ %.sroa.0.0.ph.i, %.sink.split.i ] ; 11 uses
  %i.ajx = icmp ult i32 %.sroa.62.1.i, 2
  br i1 %i.ajx, label %u2a.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ajy = icmp ugt i32 %.sroa.62.1.i, 4
  br i1 %i.ajy, label %bb.cj, label %.lr.ph.preheader.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ajz = load i8, ptr %.sroa.0.0.i, align 1, !tbaa !8
  %i.aka = icmp eq i8 %i.ajz, -1
  br i1 %i.aka, label %bb.ck, label %.lr.ph.preheader.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !8
  %i.akd = icmp eq i8 %i.akc, -2
  br i1 %i.akd, label %bb.cl, label %.lr.ph.preheader.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2 ; 2 uses
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !8
  %.not.i232.i = icmp eq i8 %i.akf, 0
  br i1 %.not.i232.i, label %.lr.ph.preheader.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.akg = add i32 %.sroa.62.1.i, -2
  br label %.lr.ph49.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.akh = call i32 @llvm.umin.i32(i32 %.sroa.62.1.i, i32 20) ; 2 uses
  %i.aki = and i32 %i.akh, 30
  %i.akj = zext nneg i32 %i.akh to i64
  %3 = add nsw i64 %i.akj, -2                     ; 2 uses
  %4 = lshr i64 %3, 1                             ; 2 uses
  %5 = add nuw i64 %4, 1                          ; 2 uses
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter807 = and i64 %5, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.co, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.co ] ; 3 uses
  %.045.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.akr, %bb.co ]
  %niter808 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i, %bb.co ]
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %indvars.iv.i.i ; 2 uses
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !8
  %.not43.i.i = icmp eq i8 %i.akl, 0
  br i1 %.not43.i.i, label %.lr.ph.i.i.1, label %7

7:                                                ; preds = %.lr.ph.i.i
  %8 = getelementptr inbounds nuw i8, ptr %i.akk, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !8
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %7, %.lr.ph.i.i
  %12 = phi i32 [ 0, %.lr.ph.i.i ], [ %11, %7 ]
  %13 = add i32 %12, %.045.i.i
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %indvars.iv.i.i ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !8
  %.not43.i.i.1 = icmp eq i8 %16, 0
  br i1 %.not43.i.i.1, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i.1
  %i.akm = getelementptr inbounds nuw i8, ptr %14, i64 3
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !8
  %i.ako = icmp eq i8 %i.akn, 0
  %i.akp = zext i1 %i.ako to i32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i.i.1
  %i.akq = phi i32 [ 0, %.lr.ph.i.i.1 ], [ %i.akp, %bb.cn ]
  %i.akr = add i32 %i.akq, %13                    ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %niter808, 2 ; 2 uses
  %niter808.ncmp.1.not = icmp eq i64 %indvars.iv.next.i.i, %unroll_iter807
  br i1 %niter808.ncmp.1.not, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !20

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.co
  %17 = and i64 %3, 2
  %lcmp.mod804.not.not = icmp eq i64 %17, 0
  br i1 %lcmp.mod804.not.not, label %.lr.ph.i.i.epil.preheader, label %._crit_edge.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.045.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.akr, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod806 = trunc i64 %5 to i1
  call void @llvm.assume(i1 %lcmp.mod806)
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %19 = load i8, ptr %18, align 1, !tbaa !8
  %.not43.i.i.epil = icmp eq i8 %19, 0
  br i1 %.not43.i.i.epil, label %._crit_edge.i.i.epilog-lcssa, label %20

20:                                               ; preds = %.lr.ph.i.i.epil.preheader
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !8
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i32
  br label %._crit_edge.i.i.epilog-lcssa

._crit_edge.i.i.epilog-lcssa:                     ; preds = %20, %.lr.ph.i.i.epil.preheader
  %25 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %24, %20 ]
  %26 = add i32 %25, %.045.i.i.epil.init
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %._crit_edge.i.i.epilog-lcssa
  %.lcssa713 = phi i32 [ %i.akr, %._crit_edge.i.i.unr-lcssa ], [ %26, %._crit_edge.i.i.epilog-lcssa ]
  %i.aks = shl i32 %.lcssa713, 2
  %.not42.i.i = icmp ult i32 %i.aks, %i.aki
  br i1 %.not42.i.i, label %u2a.exit.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %._crit_edge.i.i, %bb.cm
  %.035.i.i = phi i32 [ %i.akg, %bb.cm ], [ %.sroa.62.1.i, %._crit_edge.i.i ] ; 2 uses
  %.034.i.i = phi ptr [ %i.ake, %bb.cm ], [ %.sroa.0.0.i, %._crit_edge.i.i ]
  %i.akt = zext i32 %.035.i.i to i64
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i, %.lr.ph49.preheader.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next54.i.i, %.lr.ph49.i.i ] ; 2 uses
  %.03646.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph49.preheader.i.i ], [ %i.akw, %.lr.ph49.i.i ] ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv53.i.i
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !8
  %i.akw = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 1
  store i8 %i.akv, ptr %.03646.i.i, align 1, !tbaa !8
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 2 ; 2 uses
  %i.akx = icmp samesign ult i64 %indvars.iv.next54.i.i, %i.akt
  br i1 %i.akx, label %.lr.ph49.i.i, label %u2a.exit.loopexit.i, !llvm.loop !21

u2a.exit.loopexit.i:                              ; preds = %.lr.ph49.i.i
  %i.aky = lshr i32 %.035.i.i, 1
  br label %u2a.exit.i

u2a.exit.i:                                       ; preds = %u2a.exit.loopexit.i, %._crit_edge.i.i, %bb.ch, %.thread845.i
  %.sroa.0.0848.i = phi ptr [ %.sroa.0.0.i, %._crit_edge.i.i ], [ %.sroa.0.0.i, %bb.ch ], [ %.sroa.0.0.i, %u2a.exit.loopexit.i ], [ %i.dz, %.thread845.i ] ; 4 uses
  %.138.i.i = phi i32 [ %.sroa.62.1.i, %._crit_edge.i.i ], [ %.sroa.62.1.i, %bb.ch ], [ %i.aky, %u2a.exit.loopexit.i ], [ 0, %.thread845.i ] ; 3 uses
  %i.akz = add i32 %.0123.ph.i, 1                 ; 2 uses
  %i.ala = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1023, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.h, i32 noundef %i.akz) #12 ; 0 uses
  store i8 0, ptr %i.by, align 1, !tbaa !8
  %i.alb = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.d, i32 noundef 578, i32 noundef 448) #12 ; 7 uses
  %i.alc = icmp slt i32 %i.alb, 0
  br i1 %i.alc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %u2a.exit.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.d) #12
  call void @free(ptr noundef %.sroa.0.0848.i) #12
  br label %ea05.exit

bb.cq:                                            ; preds = %u2a.exit.i
  %i.ald = call i32 @cli_writen(i32 noundef %i.alb, ptr noundef nonnull %.sroa.0.0848.i, i32 noundef %.138.i.i) #12
  %.not182.i = icmp eq i32 %i.ald, %.138.i.i
  br i1 %.not182.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %.138.i.i) #12
  %i.ale = call i32 @close(i32 noundef %i.alb) #12 ; 0 uses
  call void @free(ptr noundef nonnull %.sroa.0.0848.i) #12
  br label %ea05.exit

bb.cs:                                            ; preds = %bb.cq
  call void @free(ptr noundef nonnull %.sroa.0.0848.i) #12
  %i.alf = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not183.i = icmp eq i8 %i.alf, 0
  br i1 %.not183.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.d) #12
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #12
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.alg = call i32 @fsync(i32 noundef %i.alb) #12 ; 0 uses
  %i.alh = call i64 @lseek(i32 noundef %i.alb, i64 noundef 0, i32 noundef 0) #12 ; 0 uses
  %i.ali = call i32 @cli_magic_scandesc(i32 noundef %i.alb, ptr noundef %1) #12
  %i.alj = icmp eq i32 %i.ali, 1
  %i.alk = call i32 @close(i32 noundef %i.alb) #12 ; 0 uses
  %i.all = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !8
  %.not185.i = icmp eq i8 %i.all, 0               ; 2 uses
  br i1 %i.alj, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not185.i, label %bb.cx, label %ea05.exit

bb.cx:                                            ; preds = %bb.cw
  %i.alm = call i32 @unlink(ptr noundef nonnull %i.d) #12 ; 0 uses
  br label %ea05.exit

bb.cy:                                            ; preds = %bb.cv
  br i1 %.not185.i, label %bb.cz, label %.outer.i.backedge

bb.cz:                                            ; preds = %bb.cy
  %i.aln = call i32 @unlink(ptr noundef nonnull %i.d) #12 ; 0 uses
  br label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.cz, %bb.cy
  br label %.outer.i, !llvm.loop !13

.outer.i:                                         ; preds = %.outer.i.backedge, %.preheader470.preheader.i
  %.0123.ph.i = phi i32 [ 0, %.preheader470.preheader.i ], [ %i.akz, %.outer.i.backedge ] ; 2 uses
  br label %.backedge.i

bb.da:                                            ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %i.cb) #12
  br label %ea05.exit

ea05.exit:                                        ; preds = %.critedge.i, %bb.l, %bb.n, %bb.q, %bb.r, %bb.t, %bb.w, %bb.af, %bb.h, %bb.k, %bb.y, %bb.ah, %bb.ao, %bb.cp, %bb.cr, %bb.cw, %bb.cx, %bb.da
  %.0126.i = phi i32 [ -102, %bb.da ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.ah ], [ -123, %bb.cp ], [ -123, %bb.cr ], [ 1, %bb.cx ], [ -114, %bb.ao ], [ 1, %bb.cw ], [ 0, %bb.y ], [ 0, %.critedge.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.t ], [ -114, %bb.af ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.it

bb.db:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.alo = call i64 @lseek(i32 noundef %0, i64 noundef 16, i32 noundef 1) #12 ; 0 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.alr = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.alu = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.alv = getelementptr inbounds nuw i8, ptr %i.b, i64 1023
  br label %.outer.i22

.outer.i22:                                       ; preds = %.outer.i22.backedge, %bb.db
  %.0189.ph.i = phi i32 [ 0, %bb.db ], [ %i.asi, %.outer.i22.backedge ] ; 2 uses
  br label %.backedge.i42

.backedge.i42:                                    ; preds = %.backedge.i42.backedge, %.outer.i22
  %i.alw = load ptr, ptr %i.alp, align 8, !tbaa !41 ; 2 uses
  %.not.i23 = icmp eq ptr %i.alw, null
  br i1 %.not.i23, label %.critedge.i24, label %bb.dc

bb.dc:                                            ; preds = %.backedge.i42
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !45 ; 2 uses
  %i.alz = add i32 %i.aly, -1
  %or.cond304.not.i = icmp ult i32 %i.alz, %.0189.ph.i
  br i1 %or.cond304.not.i, label %bb.ir, label %.critedge.i24

.critedge.i24:                                    ; preds = %bb.dc, %.backedge.i42
  %i.ama = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 8) #12
  %.not249.i = icmp eq i32 %i.ama, 8
  br i1 %.not249.i, label %bb.dd, label %ea06.exit

bb.dd:                                            ; preds = %.critedge.i24
  %.val322.i = load i32, ptr %i.a, align 16
  %.not250.i = icmp eq i32 %.val322.i, 1388987243
  br i1 %.not250.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #12
  br label %ea06.exit

bb.df:                                            ; preds = %bb.dd
  %.val321.i = load i32, ptr %i.alq, align 4      ; 2 uses
  %i.amb = xor i32 %.val321.i, 44476              ; 3 uses
  %i.amc = shl i32 %i.amb, 1                      ; 10 uses
  %i.amd = icmp slt i32 %i.amc, 0
  br i1 %i.amd, label %ea06.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ame = icmp ult i32 %i.amb, 300
  br i1 %i.ame, label %bb.dh, label %bb.do

bb.dh:                                            ; preds = %bb.dg
  %i.amf = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.amc) #12
  %.not251.i = icmp eq i32 %i.amf, %i.amc
  br i1 %.not251.i, label %bb.di, label %ea06.exit

bb.di:                                            ; preds = %bb.dh
  %i.amg = trunc nuw nsw i32 %i.amb to i16
  %i.amh = add nuw nsw i16 %i.amg, -19649
  call fastcc void @LAME_decrypt(ptr noundef %i.a, i32 noundef %i.amc, i16 noundef zeroext %i.amh)
  %i.ami = icmp eq i32 %i.amc, 0
  br i1 %i.ami, label %u2a.exit.i50, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.amj = icmp samesign ult i32 %i.amc, 5
  %i.amk = load i8, ptr %i.a, align 16
  %i.aml = icmp ne i8 %i.amk, -1
  %or.cond691.not833.i = select i1 %i.amj, i1 true, i1 %i.aml
  %i.amm = load i8, ptr %i.alr, align 1
  %i.amn = icmp ne i8 %i.amm, -2
  %or.cond694.not830.i = select i1 %or.cond691.not833.i, i1 true, i1 %i.amn
  %i.amo = load i8, ptr %i.als, align 2
  %.not.i.i = icmp eq i8 %i.amo, 0
  %or.cond827.i = select i1 %or.cond694.not830.i, i1 true, i1 %.not.i.i
  br i1 %or.cond827.i, label %.lr.ph.preheader.i.i51, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.amp = add nsw i32 %i.amc, -2
  br label %.lr.ph49.preheader.i.i43

.lr.ph.preheader.i.i51:                           ; preds = %bb.dj
  %i.amq = call i32 @llvm.umin.i32(i32 %i.amc, i32 20) ; 2 uses
  %i.amr = zext nneg i32 %i.amq to i64
  br label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %bb.dm, %.lr.ph.preheader.i.i51
  %indvars.iv.i.i53 = phi i64 [ 0, %.lr.ph.preheader.i.i51 ], [ %indvars.iv.next.i.i56, %bb.dm ] ; 2 uses
  %.045.i.i54 = phi i32 [ 0, %.lr.ph.preheader.i.i51 ], [ %i.amz, %bb.dm ]
  %i.ams = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i53 ; 2 uses
  %i.amt = load i8, ptr %i.ams, align 2, !tbaa !8
  %.not43.i.i55 = icmp eq i8 %i.amt, 0
  br i1 %.not43.i.i55, label %bb.dm, label %bb.dl
end_hunk_0
