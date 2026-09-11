Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.agi = trunc i64 %i.agh to i32
  %i.agj = load i32, ptr %i.j, align 8, !tbaa !525 ; 3 uses
  %i.agk = add nsw i32 %i.agj, %i.agi             ; 3 uses
  %i.agl = add nsw i32 %i.agg, 1
  %i.agm = icmp slt i32 %i.agl, %i.agk
  br i1 %i.agm, label %.thread487, label %bb.di

bb.di:                                            ; preds = %._crit_edge
  %i.agn = icmp sgt i32 %i.agg, %i.agk
  br i1 %i.agn, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit407, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ago = call noundef i32 @llvm.smin.i32(i32 %i.agf, i32 %i.agj) ; 2 uses
  %.not.not.not53.i390 = icmp sgt i32 %i.agk, %i.ago
  br i1 %.not.not.not53.i390, label %.lr.ph.i392, label %bb.ds

.lr.ph.i392:                                      ; preds = %bb.dj
  %i.agp = load ptr, ptr %10, align 8
  %i.agq = load ptr, ptr %11, align 8
  %i.agr = sext i32 %i.agj to i64                 ; 3 uses
  %sext.i393 = shl i64 %i.agh, 32
  %i.ags = ashr exact i64 %sext.i393, 32
  %i.agt = add nsw i64 %i.ags, %i.agr
  %i.agu = sext i32 %i.agg to i64
  %i.agv = sext i32 %i.agf to i64                 ; 2 uses
  %i.agw = sext i32 %i.ago to i64
  br label %bb.dk

bb.dk:                                            ; preds = %bb.do, %.lr.ph.i392
  %indvars.iv.i394 = phi i64 [ %i.agt, %.lr.ph.i392 ], [ %indvars.iv.next.i396, %bb.do ] ; 4 uses
  %.03254.i395 = phi i64 [ 0, %.lr.ph.i392 ], [ %i.ahn, %bb.do ] ; 2 uses
  %indvars.iv.next.i396 = add nsw i64 %indvars.iv.i394, -1 ; 4 uses
  %.not.i.i397 = icmp sgt i64 %indvars.iv.i394, %i.agv
  %i.agx = icmp sle i64 %indvars.iv.i394, %i.agu
  %or.cond.i398 = and i1 %.not.i.i397, %i.agx
  br i1 %or.cond.i398, label %bb.dl, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i402

bb.dl:                                            ; preds = %bb.dk
  %i.agy = sub nsw i64 %indvars.iv.next.i396, %i.agv
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agp, i64 %i.agy
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !119
  %i.ahb = zext i32 %i.aha to i64
  %i.ahc = shl nuw nsw i64 %i.ahb, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i402

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i402: ; preds = %bb.dk, %bb.dl
  %i.ahd = phi i64 [ %i.ahc, %bb.dl ], [ 0, %bb.dk ] ; 3 uses
  %.not.i45.i403 = icmp sgt i64 %indvars.iv.i394, %i.agr
  br i1 %.not.i45.i403, label %bb.dm, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i404

bb.dm:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i402
  %i.ahe = sub nsw i64 %indvars.iv.next.i396, %i.agr
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.ahe
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !119
  %i.ahh = zext i32 %i.ahg to i64
  %i.ahi = or disjoint i64 %.03254.i395, %i.ahh
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i404

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i404: ; preds = %bb.dm, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i402
  %i.ahj = phi i64 [ %i.ahi, %bb.dm ], [ %.03254.i395, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i402 ] ; 3 uses
  %i.ahk = icmp ugt i64 %i.ahd, %i.ahj
  br i1 %i.ahk, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit407, label %bb.dn

bb.dn:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i404
  %i.ahl = sub nuw nsw i64 %i.ahj, %i.ahd         ; 2 uses
  %i.ahm = icmp ugt i64 %i.ahl, 1
  br i1 %i.ahm, label %.thread487, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ahn = shl nuw nsw i64 %i.ahl, 32
  %.not.not.not.i405 = icmp sgt i64 %indvars.iv.next.i396, %i.agw
  br i1 %.not.not.not.i405, label %bb.dk, label %.thread.loopexit.i406, !llvm.loop !1300

.thread.loopexit.i406:                            ; preds = %bb.do
  %i.aho = icmp ne i64 %i.ahj, %i.ahd
  br label %bb.ds

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit420
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit420 ] ; 2 uses
  %i.ahp = call noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %10, ptr noundef nonnull align 8 dereferenceable(172) %11)
  %i.ahq = trunc i32 %i.ahp to i8
  %i.ahr = add i8 %i.ahq, 48
  %i.ahs = load ptr, ptr %3, align 8, !tbaa !428
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %indvars.iv
  store i8 %i.ahr, ptr %i.aht, align 1, !tbaa !253
  %i.ahu = load i64, ptr %i.c, align 8, !tbaa !526 ; 7 uses
  %.not14.i.i408 = icmp eq i64 %i.ahu, 0
  br i1 %.not14.i.i408, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit420, label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %.lr.ph
  %i.ahv = load ptr, ptr %10, align 8, !tbaa !520 ; 4 uses
  %xtraiter1714 = and i64 %i.ahu, 1
  %i.ahw = icmp eq i64 %i.ahu, 1
  br i1 %i.ahw, label %.epil.preheader1713, label %.lr.ph.i.i409.new

.lr.ph.i.i409.new:                                ; preds = %.lr.ph.i.i409
  %unroll_iter1718 = and i64 %i.ahu, -2
  br label %bb.dp

._crit_edge.i.i413.unr-lcssa:                     ; preds = %bb.dp
  %lcmp.mod1715.not = icmp eq i64 %xtraiter1714, 0
  br i1 %lcmp.mod1715.not, label %._crit_edge.i.i413, label %.epil.preheader1713

.epil.preheader1713:                              ; preds = %._crit_edge.i.i413.unr-lcssa, %.lr.ph.i.i409
  %.013.i.i410.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.aiu, %._crit_edge.i.i413.unr-lcssa ]
  %.01112.i.i411.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.ait, %._crit_edge.i.i413.unr-lcssa ]
  %lcmp.mod1717 = trunc i64 %i.ahu to i1
  call void @llvm.assume(i1 %lcmp.mod1717)
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %.013.i.i410.epil.init ; 2 uses
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !119
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = mul nuw nsw i64 %i.ahz, 10
  %i.aib = add nuw nsw i64 %i.aia, %.01112.i.i411.epil.init ; 2 uses
  %i.aic = trunc i64 %i.aib to i32
  store i32 %i.aic, ptr %i.ahx, align 4, !tbaa !119
  %i.aid = lshr i64 %i.aib, 32
  br label %._crit_edge.i.i413

._crit_edge.i.i413:                               ; preds = %._crit_edge.i.i413.unr-lcssa, %.epil.preheader1713
  %.lcssa1671 = phi i64 [ %i.ait, %._crit_edge.i.i413.unr-lcssa ], [ %i.aid, %.epil.preheader1713 ] ; 2 uses
  %i.aie = trunc nuw nsw i64 %.lcssa1671 to i32
  %.not.i.i414 = icmp eq i64 %.lcssa1671, 0
  br i1 %.not.i.i414, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit420, label %bb.dq

bb.dp:                                            ; preds = %bb.dp, %.lr.ph.i.i409.new
  %.013.i.i410 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.aiu, %bb.dp ] ; 3 uses
  %.01112.i.i411 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.ait, %bb.dp ]
  %niter1719 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %niter1719.next.1, %bb.dp ]
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %.013.i.i410 ; 2 uses
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !119
  %i.aih = zext i32 %i.aig to i64
  %i.aii = mul nuw nsw i64 %i.aih, 10
  %i.aij = add nuw nsw i64 %i.aii, %.01112.i.i411 ; 2 uses
  %i.aik = trunc i64 %i.aij to i32
  store i32 %i.aik, ptr %i.aif, align 4, !tbaa !119
  %i.ail = lshr i64 %i.aij, 32
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %.013.i.i410
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 4 ; 2 uses
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !119
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = mul nuw nsw i64 %i.aip, 10
  %i.air = add nuw nsw i64 %i.aiq, %i.ail         ; 2 uses
  %i.ais = trunc i64 %i.air to i32
  store i32 %i.ais, ptr %i.ain, align 4, !tbaa !119
  %i.ait = lshr i64 %i.air, 32                    ; 3 uses
  %i.aiu = add nuw i64 %.013.i.i410, 2            ; 2 uses
  %niter1719.next.1 = add nuw i64 %niter1719, 2   ; 2 uses
  %niter1719.ncmp.1 = icmp eq i64 %niter1719.next.1, %unroll_iter1718
  br i1 %niter1719.ncmp.1, label %._crit_edge.i.i413.unr-lcssa, label %bb.dp, !llvm.loop !35

bb.dq:                                            ; preds = %._crit_edge.i.i413
  %i.aiv = add i64 %i.ahu, 1                      ; 3 uses
  %i.aiw = load i64, ptr %i.a, align 8, !tbaa !521
  %i.aix = icmp ugt i64 %i.aiv, %i.aiw
  br i1 %i.aix, label %bb.dr, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415

bb.dr:                                            ; preds = %bb.dq
  %i.aiy = load ptr, ptr %i.b, align 8, !tbaa !519
  call void %i.aiy(ptr noundef nonnull align 8 dereferenceable(172) %10, i64 noundef %i.aiv) #26, !inline_history !36
  %.pre.i.i.i417 = load i64, ptr %i.c, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i.i418 = add i64 %.pre.i.i.i417, 1
  %.pre.i419 = load ptr, ptr %10, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415: ; preds = %bb.dr, %bb.dq
  %i.aiz = phi ptr [ %i.ahv, %bb.dq ], [ %.pre.i419, %bb.dr ]
  %.pre-phi.i.i.i416 = phi i64 [ %i.aiv, %bb.dq ], [ %.pre2.i.i.i418, %bb.dr ]
  %i.aja = phi i64 [ %i.ahu, %bb.dq ], [ %.pre.i.i.i417, %bb.dr ]
  store i64 %.pre-phi.i.i.i416, ptr %i.c, align 8, !tbaa !526
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.aja
  store i32 %i.aie, ptr %i.ajb, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit420

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit420:    ; preds = %.lr.ph, %._crit_edge.i.i413, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1302

bb.ds:                                            ; preds = %bb.dj, %.thread.loopexit.i406
  %.4.i391.ph = phi i1 [ false, %bb.dj ], [ %i.aho, %.thread.loopexit.i406 ]
  %i.ajc = and i32 %i.agc, 1
  %.not86 = icmp eq i32 %i.ajc, 0
  %or.cond91 = or i1 %.not86, %.4.i391.ph
  br i1 %or.cond91, label %.thread487, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit407

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit407: ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i404, %bb.di, %bb.ds
  %i.ajd = icmp eq i32 %i.agc, 9
  br i1 %i.ajd, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit407
  %i.aje = load ptr, ptr %3, align 8, !tbaa !428
  %i.ajf = sext i32 %i.ack to i64
  %i.ajg = getelementptr inbounds i8, ptr %i.aje, i64 %i.ajf
  store i8 58, ptr %i.ajg, align 1, !tbaa !253
  br i1 %.not552, label %.critedge, label %.lr.ph550

.lr.ph550:                                        ; preds = %bb.dt, %bb.du
  %indvars.iv599 = phi i64 [ %indvars.iv.next600, %bb.du ], [ %i.aft, %bb.dt ] ; 3 uses
  %indvars.iv.next600 = add nsw i64 %indvars.iv599, -1 ; 2 uses
  %i.ajh = load ptr, ptr %3, align 8, !tbaa !428
  %14 = and i64 %indvars.iv.next600, 4294967295
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %14 ; 2 uses
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !253
  %i.ajk = icmp eq i8 %i.ajj, 58
  br i1 %i.ajk, label %bb.du, label %.critedge

.critedge:                                        ; preds = %.lr.ph550, %bb.du, %bb.dt
  %i.ajl = load ptr, ptr %3, align 8, !tbaa !428  ; 2 uses
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !253
  %i.ajn = icmp eq i8 %i.ajm, 58
  br i1 %i.ajn, label %bb.dv, label %.loopexit

bb.du:                                            ; preds = %.lr.ph550
  store i8 48, ptr %i.aji, align 1, !tbaa !253
  %i.ajo = load ptr, ptr %3, align 8, !tbaa !428
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 %indvars.iv599
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 -2   ; 2 uses
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !253
  %i.ajs = add i8 %i.ajr, 1
  store i8 %i.ajs, ptr %i.ajq, align 1, !tbaa !253
  %15 = trunc nuw i64 %indvars.iv599 to i32
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %.lr.ph550, label %.critedge, !llvm.loop !1303

bb.dv:                                            ; preds = %.critedge
  store i8 49, ptr %i.ajl, align 1, !tbaa !253
  %i.ajt = and i32 %1, 4
  %.not87 = icmp eq i32 %i.ajt, 0
  br i1 %.not87, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aju = load i64, ptr %i.agb, align 8, !tbaa !429 ; 2 uses
  %i.ajv = add i64 %i.aju, 1                      ; 3 uses
  %i.ajw = load i64, ptr %i.afu, align 8, !tbaa !427
  %i.ajx = icmp ugt i64 %i.ajv, %i.ajw
  br i1 %i.ajx, label %bb.dx, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit424

bb.dx:                                            ; preds = %bb.dw
  %i.ajy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !440
  call void %i.ajz(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ajv) #26, !inline_history !30
  %.pre.i422 = load i64, ptr %i.agb, align 8, !tbaa !429 ; 2 uses
  %.pre2.i423 = add i64 %.pre.i422, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit424

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit424: ; preds = %bb.dw, %bb.dx
  %.pre-phi.i421 = phi i64 [ %i.ajv, %bb.dw ], [ %.pre2.i423, %bb.dx ]
  %i.aka = phi i64 [ %i.aju, %bb.dw ], [ %.pre.i422, %bb.dx ]
  %i.akb = load ptr, ptr %3, align 8, !tbaa !428
  store i64 %.pre-phi.i421, ptr %i.agb, align 8, !tbaa !429
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.aka
  store i8 48, ptr %i.akc, align 1, !tbaa !253
  br label %.loopexit

bb.dy:                                            ; preds = %bb.dv
  %i.akd = load i32, ptr %4, align 4, !tbaa !119
  %i.ake = add nsw i32 %i.akd, 1
  store i32 %i.ake, ptr %4, align 4, !tbaa !119
  br label %.loopexit

bb.dz:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit407
  %i.akf = add nsw i32 %i.agc, 1
  br label %.thread487

.thread487:                                       ; preds = %bb.dn, %._crit_edge, %bb.dz, %bb.ds
  %.074 = phi i32 [ %i.akf, %bb.dz ], [ %i.agc, %bb.ds ], [ %i.agc, %._crit_edge ], [ %i.agc, %bb.dn ]
  %i.akg = trunc i32 %.074 to i8
  %i.akh = add i8 %i.akg, 48
  %i.aki = load ptr, ptr %3, align 8, !tbaa !428
  %i.akj = sext i32 %i.ack to i64
  %i.akk = getelementptr inbounds i8, ptr %i.aki, i64 %i.akj
  store i8 %i.akh, ptr %i.akk, align 1, !tbaa !253
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %.thread487, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit424, %bb.dy, %.critedge, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.akl = load ptr, ptr %13, align 8, !tbaa !520 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.akl, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.akl) #26
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.akm = load ptr, ptr %12, align 8, !tbaa !520 ; 2 uses
  %.not.i.i.i425 = icmp eq ptr %i.akm, %i.n
  br i1 %.not.i.i.i425, label %_ZN3fmt3v126detail6bigintD2Ev.exit426, label %bb.eb

bb.eb:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.akm) #26
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit426

_ZN3fmt3v126detail6bigintD2Ev.exit426:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.akn = load ptr, ptr %11, align 8, !tbaa !520 ; 2 uses
  %.not.i.i.i427 = icmp eq ptr %i.akn, %i.i
  br i1 %.not.i.i.i427, label %_ZN3fmt3v126detail6bigintD2Ev.exit428, label %bb.ec

bb.ec:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit426
  call void @free(ptr noundef %i.akn) #26
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit428

_ZN3fmt3v126detail6bigintD2Ev.exit428:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit426, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ako = load ptr, ptr %10, align 8, !tbaa !520 ; 2 uses
  %.not.i.i.i429 = icmp eq ptr %i.ako, %i.d
  br i1 %.not.i.i.i429, label %_ZN3fmt3v126detail6bigintD2Ev.exit430, label %bb.ed

bb.ed:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit428
  call void @free(ptr noundef %i.ako) #26
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit430

_ZN3fmt3v126detail6bigintD2Ev.exit430:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit428, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !520
  store i32 1, ptr %i.b, align 4, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !521
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !519
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1) #26, !inline_history !34
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !521
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.k, align 8, !tbaa !525
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !520
  store i32 5, ptr %i.n, align 4, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !521
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !519
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1) #26, !inline_history !34
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !521
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !526
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !525
  %.019 = ashr i32 %i.m, 1                        ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.021 = phi i32 [ %.019, %.lr.ph ], [ %.0, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit ] ; 2 uses
  tail call void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0)
  %i.y = and i32 %.021, %1
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.v, align 8, !tbaa !526  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !520   ; 4 uses
  %xtraiter = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.z, -2
  br label %bb.h

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i.epil.init ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !119
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !119
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa39 = phi i64 [ %i.ay, %._crit_edge.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %.lcssa39 to i32
  %.not.i.i17 = icmp eq i64 %.lcssa39, 0
  br i1 %.not.i.i17, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.az, %bb.h ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, %.01112.i.i      ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !119
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !119
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 5
  %i.aw = add nuw nsw i64 %i.av, %i.aq            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !119
  %i.ay = lshr i64 %i.aw, 32                      ; 3 uses
  %i.az = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.h, !llvm.loop !35

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ba = add i64 %i.z, 1                         ; 3 uses
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !521
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !519
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ba) #26, !inline_history !36
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.aa, %bb.i ], [ %.pre.i, %bb.j ]
  %.pre-phi.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %.pre2.i.i.i, %bb.j ]
  %i.bf = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i, %bb.j ]
  store i64 %.pre-phi.i.i.i, ptr %i.v, align 8, !tbaa !526
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.aj, ptr %i.bg, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.g, %bb.f
  %.0 = ashr i32 %.021, 1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !1307

._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !525
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !525
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !526 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !520   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !119 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !119 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !119
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1308

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !119 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !119
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1309

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !521
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !519
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg) #26, !inline_history !33
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !526 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !520
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !526
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !526  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !525  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !526  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !525  ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i91 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i91, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !37

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !119  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !119  ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !521 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !519
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ab) #26, !inline_history !1310
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !521
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !526
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !520 ; 13 uses
  br i1 %i.aj, label %.lr.ph.i, label %.lr.ph.preheader.i.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 5 uses
  %i.an = zext i32 %i.ak to i64                   ; 5 uses
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !119
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !119
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !119
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !119
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !119
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1312

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %2 = xor i32 %i.k, -1
  %3 = add i32 %i.e, %2
  %i.bi = zext i32 %3 to i64
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %4 = add nuw nsw i64 %i.bj, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %4, i1 false), !tbaa !119
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !525
  %i.bl = sub nsw i32 %i.bk, %i.y                 ; 2 uses
  store i32 %i.bl, ptr %i.d, align 8, !tbaa !525
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !526
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !119
  %i.bo = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !119
  %i.bp = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !119
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !119
  %i.bu = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !119
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !119
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !119
  %i.cb = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !119
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !1313

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cd = phi i32 [ %i.e, %select.unfold ], [ %i.bl, %.lr.ph.preheader.i.i ]
  %i.ce = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ch = phi i32 [ %i.cd, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.ci = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ew, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cj = phi i64 [ %i.ce, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.er, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.es, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.ck = trunc i64 %i.cj to i32
  %.not21.i = icmp eq i64 %i.ci, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.cl = load i32, ptr %i.j, align 8, !tbaa !525
  %i.cm = sub i32 %i.cl, %i.ch
  %i.cn = load ptr, ptr %1, align 8, !tbaa !520   ; 3 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !520   ; 4 uses
  %i.cp = sext i32 %i.cm to i64                   ; 2 uses
  %xtraiter121 = and i64 %i.ci, 1
  %i.cq = icmp eq i64 %i.ci, 1
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.ci, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cp, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dx, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dw, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.024.i.epil.init
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !119
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !119
  %i.cv = zext i32 %i.cu to i64
  %i.cw = zext i32 %i.cs to i64
  %i.cx = add nuw nsw i64 %.01822.i.epil.init, %i.cw
  %i.cy = sub nsw i64 %i.cv, %i.cx                ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.ct, align 4, !tbaa !119
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.du, %._crit_edge.i.unr-lcssa ], [ %i.cy, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.da = icmp sgt i64 %.lcssa, -1
  br i1 %i.da, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cp, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dx, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dw, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.024.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !119
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv.i15 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !119
  %i.df = zext i32 %i.de to i64
  %i.dg = zext i32 %i.dc to i64
  %i.dh = add nuw nsw i64 %.01822.i, %i.dg
  %i.di = sub nsw i64 %i.df, %i.dh                ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.dd, align 4, !tbaa !119
  %i.dk = lshr i64 %i.di, 63
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.024.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !119
  %i.do = getelementptr [4 x i8], ptr %i.co, i64 %indvars.iv.i15
  %i.dp = getelementptr i8, ptr %i.do, i64 4      ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !119
  %i.dr = zext i32 %i.dq to i64
  %i.ds = zext i32 %i.dn to i64
  %i.dt = add nuw nsw i64 %i.dk, %i.ds
  %i.du = sub nsw i64 %i.dr, %i.dt                ; 3 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dp, align 4, !tbaa !119
  %i.dw = lshr i64 %i.du, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.dx = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !1314

bb.h:                                             ; preds = %._crit_edge.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !119
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !119
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.eb = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 1) ; 2 uses
  %i.ec = trunc i64 %i.cj to i32                  ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %.lr.ph95, label %.critedge.i.i

.lr.ph95:                                         ; preds = %._crit_edge.thread.i
  %i.ee = and i64 %i.cj, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ef = trunc nuw i64 %i.ei to i32              ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.j, label %.critedge.i.i, !llvm.loop !38

bb.j:                                             ; preds = %.lr.ph95, %bb.i
  %i.eh = phi i32 [ %i.ec, %.lr.ph95 ], [ %i.ef, %bb.i ]
  %indvars.iv.i14.i94 = phi i64 [ %i.ee, %.lr.ph95 ], [ %i.ei, %bb.i ]
  %i.ei = add nsw i64 %indvars.iv.i14.i94, -1     ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !119
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !38

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !38

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.eh, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.em = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.en = load i64, ptr %i.cf, align 8, !tbaa !521 ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  br i1 %i.eo, label %bb.k, label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.ep = load ptr, ptr %i.cg, align 8, !tbaa !519
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.em) #26, !inline_history !1315
  %.pre.i.i.i.i = load i64, ptr %i.cf, align 8, !tbaa !521
  br label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.eq = phi i64 [ %i.en, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.er = tail call noundef i64 @llvm.umin.i64(i64 %i.em, i64 %i.eq) ; 4 uses
  store i64 %i.er, ptr %i.a, align 8, !tbaa !526
  %i.es = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.et = trunc nuw i64 %i.er to i32              ; 2 uses
  %i.eu = load i32, ptr %i.d, align 8, !tbaa !525 ; 2 uses
  %i.ev = add nsw i32 %i.eu, %i.et                ; 2 uses
  %i.ew = load i64, ptr %i.g, align 8, !tbaa !526 ; 3 uses
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  %i.ey = load i32, ptr %i.j, align 8, !tbaa !525
  %i.ez = add nsw i32 %i.ey, %i.ex                ; 2 uses
  %.not.i18 = icmp eq i32 %i.ev, %i.ez
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fa = icmp sgt i32 %i.ev, %i.ez
  br i1 %i.fa, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fb = sub nsw i32 %i.et, %i.ex
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  br i1 %i.fo, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fp = and i64 %i.fi, 4294967280
  %i.fq = mul nuw nsw i64 %i.fp, 100              ; 3 uses
  %i.fr = lshr i64 %i.fq, 32                      ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next.i.1
  %i.ft = shl nuw nsw i64 %i.fr, 1
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2
  store i16 %i.fv, ptr %i.fs, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.ex, 6 ; 2 uses
  %i.fw = icmp samesign ult i64 %indvars.iv.next.i.2, %i.ey
  br i1 %i.fw, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fx = and i64 %i.fq, 4294967232
  %i.fy = mul nuw nsw i64 %i.fx, 100              ; 2 uses
  %i.fz = lshr i64 %i.fy, 32                      ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next.i.2
  %i.gb = shl nuw nsw i64 %i.fz, 1
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2
  store i16 %i.gd, ptr %i.ga, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.fa, %.lr.ph.i ], [ %i.fi, %bb.z ], [ %i.fq, %bb.aa ], [ %i.fy, %bb.ab ]
  %.lcssa289 = phi i64 [ %i.fb, %.lr.ph.i ], [ %i.fj, %bb.z ], [ %i.fr, %bb.aa ], [ %i.fz, %bb.ab ] ; 2 uses
  %i.ge = icmp samesign ult i32 %.0187, 10
  br i1 %i.ge, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ad, label %.thread269

.thread269:                                       ; preds = %bb.y, %bb.ac
  %.2210266275 = phi i64 [ %.lcssa290, %bb.ac ], [ %.0208, %bb.y ]
  %.1205268274.in = phi i64 [ %.lcssa289, %bb.ac ], [ %.0204.in, %bb.y ]
  %i.gf = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.gg = sub nuw nsw i32 8, %i.eg
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @.str.84, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !1431
  %.not130 = icmp ugt i32 %i.gj, %i.gf
  br i1 %.not130, label %bb.am, label %.critedge134

bb.ad:                                            ; preds = %bb.ac
  %i.gk = icmp ugt i64 %i.ef, 5000000000
  br i1 %i.gk, label %.critedge134.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gl = icmp eq i64 %i.ef, 5000000000
  %i.gm = trunc i64 %.lcssa289 to i1
  %i.gn = or i1 %i.db, %i.gm
  %or.cond223 = select i1 %i.gl, i1 %i.gn, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.af:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.go = zext i64 %i.ef to i128
  %i.gp = mul nuw nsw i128 %i.go, 1844674407370955162
  %i.gq = lshr i128 %i.gp, 64                     ; 2 uses
  %i.gr = trunc i128 %i.gq to i32
  %i.gs = trunc i64 %i.ef to i32
  %.neg127 = mul i32 %i.gr, -10
  %i.gt = add i32 %.neg127, %i.gs                 ; 3 uses
  %i.gu = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gv = load ptr, ptr %4, align 8, !tbaa !428
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 9 ; 3 uses
  %i.gx = and i32 %i.gu, 1
  %.not.i142 = icmp eq i32 %i.gx, 0
  %i.gy = trunc nuw nsw i128 %i.gq to i64
  %i.gz = and i64 %i.gy, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = mul nuw nsw i64 %i.gz, 720575941
  %i.hb = lshr i64 %i.ha, 24
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %i.hd = lshr i64 %i.hc, 32                      ; 2 uses
  %i.he = trunc nuw nsw i64 %i.hd to i8
  %i.hf = add nuw nsw i8 %i.he, 48
  store i8 %i.hf, ptr %i.gw, align 1, !tbaa !253
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.hg = mul nuw nsw i64 %i.gz, 450359963
  %i.hh = lshr i64 %i.hg, 20
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %i.hj = lshr i64 %i.hi, 32                      ; 2 uses
  %i.hk = shl nuw nsw i64 %i.hj, 1
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2
  store i16 %i.hm, ptr %i.gw, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.3211 = phi i64 [ %i.hi, %bb.ah ], [ %i.hc, %bb.ag ] ; 2 uses
  %.2206.in = phi i64 [ %i.hj, %bb.ah ], [ %i.hd, %bb.ag ]
  %.0.i143 = phi i32 [ 2, %bb.ah ], [ 1, %bb.ag ] ; 2 uses
  %i.hn = icmp samesign ult i32 %.0.i143, %i.gu
  br i1 %i.hn, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.ai
  %i.ho = zext nneg i32 %.0.i143 to i64
  %i.hp = zext nneg i32 %i.gu to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.hr, %bb.aj ]
  %indvars.iv.i145 = phi i64 [ %i.ho, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.aj ] ; 2 uses
  %i.hq = and i64 %.4, 4294967295
  %i.hr = mul nuw nsw i64 %i.hq, 100              ; 3 uses
  %i.hs = lshr i64 %i.hr, 32                      ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i145
  %i.hu = shl nuw nsw i64 %i.hs, 1
  %i.hv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2
  store i16 %i.hw, ptr %i.ht, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hx = icmp samesign ult i64 %indvars.iv.next.i146, %i.hp
  br i1 %i.hx, label %bb.aj, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1427

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.aj
  %i.hy = icmp samesign ult i32 %.0187, 18
  br i1 %i.hy, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.ak

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ai, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.hs, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ai ]
  %.5214 = phi i64 [ %i.hr, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ai ]
  %i.hz = trunc i64 %.5214 to i32                 ; 2 uses
  %i.ia = sub nuw nsw i32 17, %.0187
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @.str.84, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !1431
  %.not128 = icmp ugt i32 %i.id, %i.hz
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.ie = lshr i32 %i.hz, 31
  %i.if = icmp ne i32 %i.gt, 0
  %i.ig = or i1 %i.if, %i.db
  %i.ih = zext i1 %i.ig to i32
  %i.ii = or i32 %i.ih, %.3207215
  %i.ij = and i32 %i.ie, %i.ii
  %i.ik = trunc nuw i32 %i.ij to i1
  br i1 %i.ik, label %.critedge134.thread, label %.critedge136

bb.ak:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.il = icmp ugt i32 %i.gt, 5
  br i1 %i.il, label %.critedge134.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.im = icmp eq i32 %i.gt, 5
  %i.in = trunc i64 %i.hs to i1
  %i.io = or i1 %i.db, %i.in
  %or.cond225 = select i1 %i.im, i1 %i.io, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %.thread269
  %.1205268274 = trunc nsw i64 %.1205268274.in to i32
  %i.ip = lshr i32 %i.gf, 31
  %i.iq = or i64 %i.ef, %i.cy
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %i.it = or i32 %.1205268274, %i.is
  %i.iu = and i32 %i.it, %i.ip
  %i.iv = trunc nuw i32 %i.iu to i1
  br i1 %i.iv, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.al, %bb.ae, %.split217, %bb.ad, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.ak
  %i.iw = load ptr, ptr %4, align 8, !tbaa !428
  %i.ix = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.iy = getelementptr i8, ptr %i.iw, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 -1     ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !253
  %i.jb = add i8 %i.ja, 1
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !253
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.am
  %i.jc = load ptr, ptr %4, align 8, !tbaa !428
  %i.jd = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.je = getelementptr i8, ptr %i.jc, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.je, i64 -1     ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !253
  %i.jh = add i8 %i.jg, 1
  store i8 %i.jh, ptr %i.jf, align 1, !tbaa !253
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.ji = phi i64 [ %i.ix, %.critedge134.thread ], [ %i.jd, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %indvars.iv = phi i64 [ %i.ji, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.jj = load ptr, ptr %4, align 8, !tbaa !428
  %7 = and i64 %indvars.iv.next, 4294967295
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %7 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !253
  %i.jm = icmp sgt i8 %i.jl, 57
  br i1 %i.jm, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.an, %.critedge134
  %i.jn = phi i64 [ 1, %.critedge134 ], [ %i.ji, %bb.an ], [ %i.ji, %.lr.ph ]
  %i.jo = load ptr, ptr %4, align 8, !tbaa !428   ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !253
  %i.jq = icmp sgt i8 %i.jp, 57
  br i1 %i.jq, label %bb.ao, label %.critedge136

bb.an:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.jk, align 1, !tbaa !253
  %i.jr = load ptr, ptr %4, align 8, !tbaa !428
  %i.js = getelementptr i8, ptr %i.jr, i64 %indvars.iv
  %i.jt = getelementptr i8, ptr %i.js, i64 -2     ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !253
  %i.jv = add i8 %i.ju, 1
  store i8 %i.jv, ptr %i.jt, align 1, !tbaa !253
  %8 = trunc nuw i64 %indvars.iv to i32
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %.lr.ph, label %.critedge, !llvm.loop !1428

bb.ao:                                            ; preds = %.critedge
  store i8 49, ptr %i.jo, align 1, !tbaa !253
  br i1 %i.d, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jw = add nuw nsw i32 %.0187, 1
  %i.jx = load ptr, ptr %4, align 8, !tbaa !428
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jn
  store i8 48, ptr %i.jy, align 1, !tbaa !253
  br label %.critedge136

bb.aq:                                            ; preds = %bb.ao
  %i.jz = add nsw i32 %i.eb, 1
  store i32 %i.jz, ptr %i.a, align 4, !tbaa !119
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.al, %bb.ae, %.critedge, %bb.aq, %bb.ap, %bb.am
  %.1188 = phi i32 [ %i.jw, %bb.ap ], [ %.0187, %bb.aq ], [ %.0187, %.critedge ], [ %.0187, %bb.am ], [ 9, %bb.ae ], [ 18, %bb.al ], [ %.0187, %.split217 ]
  %i.ka = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !427 ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.ka
  br i1 %i.kd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge136
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !440
  tail call void %i.kf(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ka) #26, !inline_history !32
  %.pre.i148 = load i64, ptr %i.kb, align 8, !tbaa !427
  br label %bb.as

.thread219:                                       ; preds = %bb.n
  %i.kg = add nsw i32 %i.aq, -3
  %i.kh = add nsw i32 %i.kg, %.0106
  store i32 %i.kh, ptr %i.a, align 4, !tbaa !119
  br i1 %3, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.ar, %.critedge136
  %i.ki = phi i64 [ %i.kc, %.critedge136 ], [ %.pre.i148, %bb.ar ]
  %i.kj = tail call noundef i64 @llvm.umin.i64(i64 %i.ka, i64 %i.ki)
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !429
  br label %.thread

bb.at:                                            ; preds = %.thread219
  %i.kl = fptrunc double %0 to float
  %i.km = bitcast float %i.kl to i32              ; 2 uses
  %i.kn = and i32 %i.km, 8388607                  ; 2 uses
  %i.ko = zext nneg i32 %i.kn to i128             ; 2 uses
  %i.kp = and i32 %i.km, 2139095040               ; 3 uses
  %i.kq = icmp eq i32 %i.kp, 0                    ; 2 uses
  %i.kr = lshr exact i32 %i.kp, 23
  %i.ks = or disjoint i128 %i.ko, 8388608
  %i.kt = add nsw i32 %i.kr, -150
  %storemerge.i = select i1 %i.kq, i128 %i.ko, i128 %i.ks
  %.0.i150 = select i1 %i.kq, i32 -149, i32 %i.kt
  %i.ku = icmp eq i32 %i.kn, 0
  %i.kv = icmp samesign ugt i32 %i.kp, 16777215
  %i.kw = and i1 %i.ku, %i.kv
  br label %bb.av

bb.au:                                            ; preds = %.thread219
  %i.kx = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.ky = or disjoint i128 %i.kx, 4503599627370496
  %i.kz = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.kx, i128 %i.ky
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.kz
  %i.la = icmp eq i64 %i.ad, 0
  %i.lb = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.lc = and i1 %i.la, %i.lb
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.at ], [ %storemerge.i151, %bb.au ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.at ], [ %.0.i152, %bb.au ]
  %i.ld = phi i1 [ %i.kw, %bb.at ], [ %i.lc, %bb.au ]
  %spec.select = zext i1 %i.ld to i32             ; 2 uses
  %i.le = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.le, i32 %spec.select
  %i.lf = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %6, align 16, !tbaa !517
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !119
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp") align 16 %6, i32 noundef %.1111, i32 noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.as, %bb.q, %bb.u, %bb.t, %bb.av
  br i1 %i.d, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.thread
  %i.lg = load i32, ptr %2, align 4, !tbaa !442
  %i.lh = and i32 %i.lg, 8192
  %.not227 = icmp eq i32 %i.lh, 0
  br i1 %.not227, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !429 ; 2 uses
  %.not132237 = icmp eq i64 %i.lj, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.ax
  %.promoted = load i32, ptr %i.a, align 4
  %i.lk = load ptr, ptr %4, align 8, !tbaa !428
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph239, %bb.az
  %.0238 = phi i64 [ %i.lj, %.lr.ph239 ], [ %i.lm, %bb.az ] ; 5 uses
  %i.ll = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lq, %bb.az ]
  %i.lm = add i64 %.0238, -1                      ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !253
  %i.lp = icmp eq i8 %i.lo, 48
  br i1 %i.lp, label %bb.az, label %.critedge3

bb.az:                                            ; preds = %bb.ay
  %i.lq = add nsw i32 %i.ll, 1                    ; 2 uses
  store i32 %i.lq, ptr %i.a, align 4, !tbaa !119
  %.not132 = icmp eq i64 %i.lm, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ay, !llvm.loop !1429

.critedge3.thread:                                ; preds = %bb.az, %bb.ax
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ay
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !427 ; 2 uses
  %i.lv = icmp ugt i64 %.0238, %i.lu
  br i1 %i.lv, label %bb.ba, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.ba:                                            ; preds = %.critedge3
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !440
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238) #26, !inline_history !32
  %.pre.i153 = load i64, ptr %i.lt, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.ba
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.ba ], [ 0, %.critedge3.thread ]
  %i.ly = phi i64 [ %i.lu, %.critedge3 ], [ %.pre.i153, %bb.ba ], [ %i.ls, %.critedge3.thread ]
  %i.lz = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.ly)
  store i64 %i.lz, ptr %i.li, align 8, !tbaa !429
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.aw, %.thread
  %i.ma = load i32, ptr %i.a, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.ma, %bb.bb ]
  ret i32 %.0105
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #1 comdat {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 6 uses
  %7 = alloca %class.anon.856, align 4            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !442    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #26
  %i.d = load ptr, ptr %6, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !459
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !461  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #26, !inline_history !39
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
end_hunk_1
