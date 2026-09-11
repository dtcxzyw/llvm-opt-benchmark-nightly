Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %xtraiter1690 = and i64 %i.agk, 1
  %i.agm = icmp eq i64 %i.agk, 1
  br i1 %i.agm, label %.epil.preheader1689, label %.lr.ph.i.i444.new

.lr.ph.i.i444.new:                                ; preds = %.lr.ph.i.i444
  %unroll_iter1694 = and i64 %i.agk, -2
  br label %bb.dw

._crit_edge.i.i448.unr-lcssa:                     ; preds = %bb.dw
  %lcmp.mod1691.not = icmp eq i64 %xtraiter1690, 0
  br i1 %lcmp.mod1691.not, label %._crit_edge.i.i448, label %.epil.preheader1689

.epil.preheader1689:                              ; preds = %._crit_edge.i.i448.unr-lcssa, %.lr.ph.i.i444
  %.013.i.i445.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.ahk, %._crit_edge.i.i448.unr-lcssa ]
  %.01112.i.i446.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.ahj, %._crit_edge.i.i448.unr-lcssa ]
  %lcmp.mod1693 = trunc i64 %i.agk to i1
  call void @llvm.assume(i1 %lcmp.mod1693)
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i445.epil.init ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !88
  %i.agp = zext i32 %i.ago to i64
  %i.agq = mul nuw nsw i64 %i.agp, 10
  %i.agr = add nuw nsw i64 %i.agq, %.01112.i.i446.epil.init ; 2 uses
  %i.ags = trunc i64 %i.agr to i32
  store i32 %i.ags, ptr %i.agn, align 4, !tbaa !88
  %i.agt = lshr i64 %i.agr, 32
  br label %._crit_edge.i.i448

._crit_edge.i.i448:                               ; preds = %._crit_edge.i.i448.unr-lcssa, %.epil.preheader1689
  %.lcssa1647 = phi i64 [ %i.ahj, %._crit_edge.i.i448.unr-lcssa ], [ %i.agt, %.epil.preheader1689 ] ; 2 uses
  %i.agu = trunc nuw nsw i64 %.lcssa1647 to i32
  %.not.i.i449 = icmp eq i64 %.lcssa1647, 0
  br i1 %.not.i.i449, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit456, label %bb.dx

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i.i444.new
  %.013.i.i445 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.ahk, %bb.dw ] ; 3 uses
  %.01112.i.i446 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.ahj, %bb.dw ]
  %niter1695 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %niter1695.next.1, %bb.dw ]
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i445 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !88
  %i.agx = zext i32 %i.agw to i64
  %i.agy = mul nuw nsw i64 %i.agx, 10
  %i.agz = add nuw nsw i64 %i.agy, %.01112.i.i446 ; 2 uses
  %i.aha = trunc i64 %i.agz to i32
  store i32 %i.aha, ptr %i.agv, align 4, !tbaa !88
  %i.ahb = lshr i64 %i.agz, 32
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i445
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !88
  %i.ahf = zext i32 %i.ahe to i64
  %i.ahg = mul nuw nsw i64 %i.ahf, 10
  %i.ahh = add nuw nsw i64 %i.ahg, %i.ahb         ; 2 uses
  %i.ahi = trunc i64 %i.ahh to i32
  store i32 %i.ahi, ptr %i.ahd, align 4, !tbaa !88
  %i.ahj = lshr i64 %i.ahh, 32                    ; 3 uses
  %i.ahk = add nuw i64 %.013.i.i445, 2            ; 2 uses
  %niter1695.next.1 = add nuw i64 %niter1695, 2   ; 2 uses
  %niter1695.ncmp.1 = icmp eq i64 %niter1695.next.1, %unroll_iter1694
  br i1 %niter1695.ncmp.1, label %._crit_edge.i.i448.unr-lcssa, label %bb.dw, !llvm.loop !29

bb.dx:                                            ; preds = %._crit_edge.i.i448
  %i.ahl = add i64 %i.agk, 1                      ; 3 uses
  %i.ahm = load i64, ptr %i.a, align 8, !tbaa !370
  %i.ahn = icmp ugt i64 %i.ahl, %i.ahm
  br i1 %i.ahn, label %bb.dy, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i450

bb.dy:                                            ; preds = %bb.dx
  %i.aho = load ptr, ptr %i.b, align 8, !tbaa !368
  invoke void %i.aho(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ahl)
          to label %.noexc455 unwind label %bb.dz, !inline_history !995

.noexc455:                                        ; preds = %bb.dy
  %.pre.i.i.i452 = load i64, ptr %i.c, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i453 = add i64 %.pre.i.i.i452, 1
  %.pre.i454 = load ptr, ptr %5, align 8, !tbaa !369
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i450

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i450: ; preds = %.noexc455, %bb.dx
  %i.ahp = phi ptr [ %i.agl, %bb.dx ], [ %.pre.i454, %.noexc455 ]
  %.pre-phi.i.i.i451 = phi i64 [ %i.ahl, %bb.dx ], [ %.pre2.i.i.i453, %.noexc455 ]
  %i.ahq = phi i64 [ %i.agk, %bb.dx ], [ %.pre.i.i.i452, %.noexc455 ]
  store i64 %.pre-phi.i.i.i451, ptr %i.c, align 8, !tbaa !375
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ahq
  store i32 %i.agu, ptr %i.ahr, align 4, !tbaa !88
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit456

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit456:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i450, %._crit_edge.i.i448, %bb.dv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !999

bb.dz:                                            ; preds = %bb.dy, %.lr.ph
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %._crit_edge
  %i.aht = load i64, ptr %i.c, align 8, !tbaa !375
  %i.ahu = trunc i64 %i.aht to i32
  %i.ahv = load i32, ptr %i.e, align 8, !tbaa !374 ; 3 uses
  %i.ahw = add nsw i32 %i.ahv, %i.ahu             ; 3 uses
  %i.ahx = load i64, ptr %i.h, align 8, !tbaa !375 ; 2 uses
  %i.ahy = trunc i64 %i.ahx to i32
  %i.ahz = load i32, ptr %i.j, align 8, !tbaa !374 ; 3 uses
  %i.aia = add nsw i32 %i.ahz, %i.ahy             ; 3 uses
  %i.aib = add nsw i32 %i.ahw, 1
  %i.aic = icmp slt i32 %i.aib, %i.aia
  br i1 %i.aic, label %.thread552, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aid = icmp sgt i32 %i.ahw, %i.aia
  br i1 %i.aid, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aie = call noundef i32 @llvm.smin.i32(i32 %i.ahv, i32 %i.ahz) ; 2 uses
  %.not.not.not53.i457 = icmp sgt i32 %i.aia, %i.aie
  br i1 %.not.not.not53.i457, label %.lr.ph.i459, label %bb.ei

.lr.ph.i459:                                      ; preds = %bb.ec
  %i.aif = load ptr, ptr %5, align 8
  %i.aig = load ptr, ptr %6, align 8
  %i.aih = sext i32 %i.ahz to i64                 ; 3 uses
  %sext.i460 = shl i64 %i.ahx, 32
  %i.aii = ashr exact i64 %sext.i460, 32
  %i.aij = add nsw i64 %i.aii, %i.aih
  %i.aik = sext i32 %i.ahw to i64
  %i.ail = sext i32 %i.ahv to i64                 ; 2 uses
  %i.aim = sext i32 %i.aie to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.lr.ph.i459
  %indvars.iv.i461 = phi i64 [ %i.aij, %.lr.ph.i459 ], [ %indvars.iv.next.i463, %bb.eh ] ; 4 uses
  %.03254.i462 = phi i64 [ 0, %.lr.ph.i459 ], [ %i.ajd, %bb.eh ] ; 2 uses
  %indvars.iv.next.i463 = add nsw i64 %indvars.iv.i461, -1 ; 4 uses
  %.not.i.i464 = icmp sgt i64 %indvars.iv.i461, %i.ail
  %i.ain = icmp sle i64 %indvars.iv.i461, %i.aik
  %or.cond.i465 = and i1 %.not.i.i464, %i.ain
  br i1 %or.cond.i465, label %bb.ee, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i469

bb.ee:                                            ; preds = %bb.ed
  %i.aio = sub nsw i64 %indvars.iv.next.i463, %i.ail
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.aif, i64 %i.aio
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !88
  %i.air = zext i32 %i.aiq to i64
  %i.ais = shl nuw nsw i64 %i.air, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i469

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i469: ; preds = %bb.ed, %bb.ee
  %i.ait = phi i64 [ %i.ais, %bb.ee ], [ 0, %bb.ed ] ; 3 uses
  %.not.i45.i470 = icmp sgt i64 %indvars.iv.i461, %i.aih
  br i1 %.not.i45.i470, label %bb.ef, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i471

bb.ef:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i469
  %i.aiu = sub nsw i64 %indvars.iv.next.i463, %i.aih
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aig, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !88
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = or disjoint i64 %.03254.i462, %i.aix
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i471

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i471: ; preds = %bb.ef, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i469
  %i.aiz = phi i64 [ %i.aiy, %bb.ef ], [ %.03254.i462, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i469 ] ; 3 uses
  %i.aja = icmp ugt i64 %i.ait, %i.aiz
  br i1 %i.aja, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.eg

bb.eg:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i471
  %i.ajb = sub nuw nsw i64 %i.aiz, %i.ait         ; 2 uses
  %i.ajc = icmp ugt i64 %i.ajb, 1
  br i1 %i.ajc, label %.thread552, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ajd = shl nuw nsw i64 %i.ajb, 32
  %.not.not.not.i472 = icmp sgt i64 %indvars.iv.next.i463, %i.aim
  br i1 %.not.not.not.i472, label %bb.ed, label %.thread.loopexit.i473, !llvm.loop !994

.thread.loopexit.i473:                            ; preds = %bb.eh
  %i.aje = icmp ne i64 %i.aiz, %i.ait
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ec, %.thread.loopexit.i473
  %.4.i458.ph = phi i1 [ false, %bb.ec ], [ %i.aje, %.thread.loopexit.i473 ]
  %i.ajf = and i32 %i.age, 1
  %.not100 = icmp eq i32 %i.ajf, 0
  %or.cond115 = or i1 %.not100, %.4.i458.ph
  br i1 %or.cond115, label %.thread552, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit474

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit474: ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i471, %bb.eb, %bb.ei
  %i.ajg = icmp eq i32 %i.age, 9
  br i1 %i.ajg, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.ajh = load ptr, ptr %3, align 8, !tbaa !269
  %i.aji = sext i32 %i.acl to i64
  %i.ajj = getelementptr inbounds i8, ptr %i.ajh, i64 %i.aji
  store i8 58, ptr %i.ajj, align 1, !tbaa !202
  br i1 %.not619, label %.critedge, label %.lr.ph617

.lr.ph617:                                        ; preds = %bb.ej, %bb.el
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %bb.el ], [ %i.afv, %bb.ej ] ; 3 uses
  %indvars.iv.next667 = add nsw i64 %indvars.iv666, -1 ; 2 uses
  %i.ajk = load ptr, ptr %3, align 8, !tbaa !269
  %9 = and i64 %indvars.iv.next667, 4294967295
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %9 ; 2 uses
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !202
  %i.ajn = icmp eq i8 %i.ajm, 58
  br i1 %i.ajn, label %bb.el, label %.critedge

.critedge:                                        ; preds = %.lr.ph617, %bb.el, %bb.ej
  %i.ajo = load ptr, ptr %3, align 8, !tbaa !269  ; 2 uses
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !202
  %i.ajq = icmp eq i8 %i.ajp, 58
  br i1 %i.ajq, label %bb.em, label %.loopexit

bb.ek:                                            ; preds = %._crit_edge
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %.lr.ph617
  store i8 48, ptr %i.ajl, align 1, !tbaa !202
  %i.ajs = load ptr, ptr %3, align 8, !tbaa !269
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 %indvars.iv666
  %i.aju = getelementptr i8, ptr %i.ajt, i64 -2   ; 2 uses
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !202
  %i.ajw = add i8 %i.ajv, 1
  store i8 %i.ajw, ptr %i.aju, align 1, !tbaa !202
  %10 = trunc nuw i64 %indvars.iv666 to i32
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %.lr.ph617, label %.critedge, !llvm.loop !1000

bb.em:                                            ; preds = %.critedge
  store i8 49, ptr %i.ajo, align 1, !tbaa !202
  %i.ajx = and i32 %1, 4
  %.not101 = icmp eq i32 %i.ajx, 0
  br i1 %.not101, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajy = load i64, ptr %i.agd, align 8, !tbaa !270 ; 2 uses
  %i.ajz = add i64 %i.ajy, 1                      ; 3 uses
  %i.aka = load i64, ptr %i.afw, align 8, !tbaa !271
  %i.akb = icmp ugt i64 %i.ajz, %i.aka
  br i1 %i.akb, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.akc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !272
  invoke void %i.akd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ajz)
          to label %.noexc478 unwind label %bb.eq, !inline_history !998

.noexc478:                                        ; preds = %bb.eo
  %.pre.i476 = load i64, ptr %i.agd, align 8, !tbaa !270 ; 2 uses
  %.pre2.i477 = add i64 %.pre.i476, 1
  br label %bb.ep

bb.ep:                                            ; preds = %.noexc478, %bb.en
  %.pre-phi.i475 = phi i64 [ %i.ajz, %bb.en ], [ %.pre2.i477, %.noexc478 ]
  %i.ake = phi i64 [ %i.ajy, %bb.en ], [ %.pre.i476, %.noexc478 ]
  %i.akf = load ptr, ptr %3, align 8, !tbaa !269
  store i64 %.pre-phi.i475, ptr %i.agd, align 8, !tbaa !270
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.ake
  store i8 48, ptr %i.akg, align 1, !tbaa !202
  br label %.loopexit

bb.eq:                                            ; preds = %bb.eo
  %i.akh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.er:                                            ; preds = %bb.em
  %i.aki = load i32, ptr %4, align 4, !tbaa !88
  %i.akj = add nsw i32 %i.aki, 1
  store i32 %i.akj, ptr %4, align 4, !tbaa !88
  br label %.loopexit

bb.es:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.akk = add nsw i32 %i.age, 1
  br label %.thread552

.thread552:                                       ; preds = %bb.eg, %bb.ea, %bb.es, %bb.ei
  %.076 = phi i32 [ %i.akk, %bb.es ], [ %i.age, %bb.ei ], [ %i.age, %bb.ea ], [ %i.age, %bb.eg ]
  %i.akl = trunc i32 %.076 to i8
  %i.akm = add i8 %i.akl, 48
  %i.akn = load ptr, ptr %3, align 8, !tbaa !269
  %i.ako = sext i32 %i.acl to i64
  %i.akp = getelementptr inbounds i8, ptr %i.akn, i64 %i.ako
  store i8 %i.akm, ptr %i.akp, align 1, !tbaa !202
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread552, %bb.ep, %bb.er, %.critedge, %bb.ds
  %i.akq = load ptr, ptr %8, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.akq, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v116detail6bigintD2Ev.exit, label %bb.et

bb.et:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.akq) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit

_ZN3fmt3v116detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.akr = load ptr, ptr %7, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.akr, %i.n
  br i1 %.not.i.i.i480, label %_ZN3fmt3v116detail6bigintD2Ev.exit481, label %bb.eu

bb.eu:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.akr) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit481

_ZN3fmt3v116detail6bigintD2Ev.exit481:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.aks = load ptr, ptr %6, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i482 = icmp eq ptr %i.aks, %i.i
  br i1 %.not.i.i.i482, label %_ZN3fmt3v116detail6bigintD2Ev.exit483, label %bb.ev

bb.ev:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit481
  call void @free(ptr noundef %i.aks) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit483

_ZN3fmt3v116detail6bigintD2Ev.exit483:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit481, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.akt = load ptr, ptr %5, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i484 = icmp eq ptr %i.akt, %i.d
  br i1 %.not.i.i.i484, label %_ZN3fmt3v116detail6bigintD2Ev.exit485, label %bb.ew

bb.ew:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit483
  call void @free(ptr noundef %i.akt) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit485

_ZN3fmt3v116detail6bigintD2Ev.exit485:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit483, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void

.body:                                            ; preds = %.loopexit566, %.loopexit.split-lp, %bb.bm, %bb.bq, %bb.dq, %bb.dz, %bb.ci, %bb.ch, %bb.eq, %bb.ek
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.akh, %bb.eq ], [ %i.sv, %bb.bm ], [ %i.afj, %bb.dq ], [ %i.ahs, %bb.dz ], [ %i.tc, %bb.bq ], [ %i.wo, %bb.ch ], [ %i.wp, %bb.ci ], [ %i.ajr, %bb.ek ], [ %lpad.loopexit, %.loopexit566 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aku = load ptr, ptr %8, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i486 = icmp eq ptr %i.aku, %i.s
  br i1 %.not.i.i.i486, label %_ZN3fmt3v116detail6bigintD2Ev.exit487, label %bb.ex

bb.ex:                                            ; preds = %.body
  call void @free(ptr noundef %i.aku) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit487

_ZN3fmt3v116detail6bigintD2Ev.exit487:            ; preds = %bb.ex, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.akv = load ptr, ptr %7, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i488 = icmp eq ptr %i.akv, %i.n
  br i1 %.not.i.i.i488, label %_ZN3fmt3v116detail6bigintD2Ev.exit489, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit487
  call void @free(ptr noundef %i.akv) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit489

_ZN3fmt3v116detail6bigintD2Ev.exit489:            ; preds = %bb.ey, %_ZN3fmt3v116detail6bigintD2Ev.exit487
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.akw = load ptr, ptr %6, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.akw, %i.i
  br i1 %.not.i.i.i490, label %_ZN3fmt3v116detail6bigintD2Ev.exit491, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit489
  call void @free(ptr noundef %i.akw) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit491

_ZN3fmt3v116detail6bigintD2Ev.exit491:            ; preds = %bb.ez, %_ZN3fmt3v116detail6bigintD2Ev.exit489
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.akx = load ptr, ptr %5, align 8, !tbaa !369  ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.akx, %i.d
  br i1 %.not.i.i.i492, label %_ZN3fmt3v116detail6bigintD2Ev.exit493, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.akx) #12
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit493

_ZN3fmt3v116detail6bigintD2Ev.exit493:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit491, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn105.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !369
  store i32 1, ptr %i.b, align 4, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !370
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !368
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !1004
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !370
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !375
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.k, align 8, !tbaa !374
  br label %_ZN3fmt3v116detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !369
  store i32 5, ptr %i.n, align 4, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !370
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !368
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !1004
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !370
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  br i1 %i.fp, label %bb.ac, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fq = and i64 %i.fj, 4294967280
  %i.fr = mul nuw nsw i64 %i.fq, 100              ; 3 uses
  %i.fs = lshr i64 %i.fr, 32                      ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next.i.1
  %i.fu = shl nuw nsw i64 %i.fs, 1
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2
  store i16 %i.fw, ptr %i.ft, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.ey, 6 ; 2 uses
  %i.fx = icmp samesign ult i64 %indvars.iv.next.i.2, %i.ez
  br i1 %i.fx, label %bb.ad, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fy = and i64 %i.fr, 4294967232
  %i.fz = mul nuw nsw i64 %i.fy, 100              ; 2 uses
  %i.ga = lshr i64 %i.fz, 32                      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.next.i.2
  %i.gc = shl nuw nsw i64 %i.ga, 1
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2
  store i16 %i.ge, ptr %i.gb, align 1
  br label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.fb, %.lr.ph.i ], [ %i.fj, %bb.ab ], [ %i.fr, %bb.ac ], [ %i.fz, %bb.ad ]
  %.lcssa289 = phi i64 [ %i.fc, %.lr.ph.i ], [ %i.fk, %bb.ab ], [ %i.fs, %bb.ac ], [ %i.ga, %bb.ad ] ; 2 uses
  %i.gf = icmp samesign ult i32 %.0187, 10
  br i1 %i.gf, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.af, label %.thread269

.thread269:                                       ; preds = %bb.aa, %bb.ae
  %.2210266275 = phi i64 [ %.lcssa290, %bb.ae ], [ %.0208, %bb.aa ]
  %.1205268274.in = phi i64 [ %.lcssa289, %bb.ae ], [ %.0204.in, %bb.aa ]
  %i.gg = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.gh = sub nuw nsw i32 8, %i.eh
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr @.str.69, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !1152
  %.not130 = icmp ugt i32 %i.gk, %i.gg
  br i1 %.not130, label %bb.ao, label %.critedge134

bb.af:                                            ; preds = %bb.ae
  %i.gl = icmp ugt i64 %i.eg, 5000000000
  br i1 %i.gl, label %.critedge134.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = icmp eq i64 %i.eg, 5000000000
  %i.gn = trunc i64 %.lcssa289 to i1
  %i.go = or i1 %i.db, %i.gn
  %or.cond223 = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ah:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.gp = zext i64 %i.eg to i128
  %i.gq = mul nuw nsw i128 %i.gp, 1844674407370955162
  %i.gr = lshr i128 %i.gq, 64                     ; 2 uses
  %i.gs = trunc i128 %i.gr to i32
  %i.gt = trunc i64 %i.eg to i32
  %.neg127 = mul i32 %i.gs, -10
  %i.gu = add i32 %.neg127, %i.gt                 ; 3 uses
  %i.gv = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gw = load ptr, ptr %4, align 8, !tbaa !269
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 9 ; 3 uses
  %i.gy = and i32 %i.gv, 1
  %.not.i142 = icmp eq i32 %i.gy, 0
  %i.gz = trunc nuw nsw i128 %i.gr to i64
  %i.ha = and i64 %i.gz, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hb = mul nuw nsw i64 %i.ha, 720575941
  %i.hc = lshr i64 %i.hb, 24
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %i.he = lshr i64 %i.hd, 32                      ; 2 uses
  %i.hf = trunc nuw nsw i64 %i.he to i8
  %i.hg = add nuw nsw i8 %i.hf, 48
  store i8 %i.hg, ptr %i.gx, align 1, !tbaa !202
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.hh = mul nuw nsw i64 %i.ha, 450359963
  %i.hi = lshr i64 %i.hh, 20
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %i.hk = lshr i64 %i.hj, 32                      ; 2 uses
  %i.hl = shl nuw nsw i64 %i.hk, 1
  %i.hm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2
  store i16 %i.hn, ptr %i.gx, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3211 = phi i64 [ %i.hj, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.2206.in = phi i64 [ %i.hk, %bb.aj ], [ %i.he, %bb.ai ]
  %.0.i143 = phi i32 [ 2, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.ho = icmp samesign ult i32 %.0.i143, %i.gv
  br i1 %i.ho, label %.lr.ph.i144, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.ak
  %i.hp = zext nneg i32 %.0.i143 to i64
  %i.hq = zext nneg i32 %i.gv to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.hs, %bb.al ]
  %indvars.iv.i145 = phi i64 [ %i.hp, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.al ] ; 2 uses
  %i.hr = and i64 %.4, 4294967295
  %i.hs = mul nuw nsw i64 %i.hr, 100              ; 3 uses
  %i.ht = lshr i64 %i.hs, 32                      ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i145
  %i.hv = shl nuw nsw i64 %i.ht, 1
  %i.hw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2
  store i16 %i.hx, ptr %i.hu, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hy = icmp samesign ult i64 %indvars.iv.next.i146, %i.hq
  br i1 %i.hy, label %bb.al, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1148

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.al
  %i.hz = icmp samesign ult i32 %.0187, 18
  br i1 %i.hz, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.am

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ak, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.ht, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ak ]
  %.5214 = phi i64 [ %i.hs, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ak ]
  %i.ia = trunc i64 %.5214 to i32                 ; 2 uses
  %i.ib = sub nuw nsw i32 17, %.0187
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr @.str.69, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !1152
  %.not128 = icmp ugt i32 %i.ie, %i.ia
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.if = lshr i32 %i.ia, 31
  %i.ig = icmp ne i32 %i.gu, 0
  %i.ih = or i1 %i.ig, %i.db
  %i.ii = zext i1 %i.ih to i32
  %i.ij = or i32 %i.ii, %.3207215
  %i.ik = and i32 %i.if, %i.ij
  %i.il = trunc nuw i32 %i.ik to i1
  br i1 %i.il, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.im = icmp ugt i32 %i.gu, 5
  br i1 %i.im, label %.critedge134.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.in = icmp eq i32 %i.gu, 5
  %i.io = trunc i64 %i.ht to i1
  %i.ip = or i1 %i.db, %i.io
  %or.cond225 = select i1 %i.in, i1 %i.ip, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.ao:                                            ; preds = %.thread269
  %.1205268274 = trunc nsw i64 %.1205268274.in to i32
  %i.iq = lshr i32 %i.gg, 31
  %i.ir = or i64 %i.eg, %i.cy
  %i.is = icmp ne i64 %i.ir, 0
  %i.it = zext i1 %i.is to i32
  %i.iu = or i32 %.1205268274, %i.it
  %i.iv = and i32 %i.iu, %i.iq
  %i.iw = trunc nuw i32 %i.iv to i1
  br i1 %i.iw, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.an, %bb.ag, %.split217, %bb.af, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.am
  %i.ix = load ptr, ptr %4, align 8, !tbaa !269
  %i.iy = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.iz = getelementptr i8, ptr %i.ix, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 -1     ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !202
  %i.jc = add i8 %i.jb, 1
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !202
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.ao
  %i.jd = load ptr, ptr %4, align 8, !tbaa !269
  %i.je = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.jf = getelementptr i8, ptr %i.jd, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 -1     ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !202
  %i.ji = add i8 %i.jh, 1
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !202
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.jj = phi i64 [ %i.iy, %.critedge134.thread ], [ %i.je, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %indvars.iv = phi i64 [ %i.jj, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.jk = load ptr, ptr %4, align 8, !tbaa !269
  %6 = and i64 %indvars.iv.next, 4294967295
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %6 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !202
  %i.jn = icmp sgt i8 %i.jm, 57
  br i1 %i.jn, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ap, %.critedge134
  %i.jo = phi i64 [ 1, %.critedge134 ], [ %i.jj, %bb.ap ], [ %i.jj, %.lr.ph ]
  %i.jp = load ptr, ptr %4, align 8, !tbaa !269   ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !202
  %i.jr = icmp sgt i8 %i.jq, 57
  br i1 %i.jr, label %bb.aq, label %.critedge136

bb.ap:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.jl, align 1, !tbaa !202
  %i.js = load ptr, ptr %4, align 8, !tbaa !269
  %i.jt = getelementptr i8, ptr %i.js, i64 %indvars.iv
  %i.ju = getelementptr i8, ptr %i.jt, i64 -2     ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !202
  %i.jw = add i8 %i.jv, 1
  store i8 %i.jw, ptr %i.ju, align 1, !tbaa !202
  %7 = trunc nuw i64 %indvars.iv to i32
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %.lr.ph, label %.critedge, !llvm.loop !1149

bb.aq:                                            ; preds = %.critedge
  store i8 49, ptr %i.jp, align 1, !tbaa !202
  br i1 %i.d, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jx = add nuw nsw i32 %.0187, 1
  %i.jy = load ptr, ptr %4, align 8, !tbaa !269
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jo
  store i8 48, ptr %i.jz, align 1, !tbaa !202
  br label %.critedge136

bb.as:                                            ; preds = %bb.aq
  %i.ka = add nsw i32 %i.ec, 1
  store i32 %i.ka, ptr %i.a, align 4, !tbaa !88
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.an, %bb.ag, %.critedge, %bb.as, %bb.ar, %bb.ao
  %.1188 = phi i32 [ %i.jx, %bb.ar ], [ %.0187, %bb.as ], [ %.0187, %.critedge ], [ %.0187, %bb.ao ], [ 9, %bb.ag ], [ 18, %bb.an ], [ %.0187, %.split217 ]
  %i.kb = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !271 ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kb
  br i1 %i.ke, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge136
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !272
  tail call void %i.kg(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.kb), !inline_history !28
  %.pre.i148 = load i64, ptr %i.kc, align 8, !tbaa !271
  br label %bb.au

.thread219:                                       ; preds = %bb.p
  %i.kh = add nsw i32 %i.aq, -3
  %i.ki = add nsw i32 %i.kh, %.0106
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !88
  br i1 %3, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.critedge136
  %i.kj = phi i64 [ %i.kd, %.critedge136 ], [ %.pre.i148, %bb.at ]
  %i.kk = tail call noundef i64 @llvm.umin.i64(i64 %i.kb, i64 %i.kj)
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !270
  br label %.thread

bb.av:                                            ; preds = %.thread219
  %i.km = fptrunc double %0 to float
  %i.kn = bitcast float %i.km to i32              ; 2 uses
  %i.ko = and i32 %i.kn, 8388607                  ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i128             ; 2 uses
  %i.kq = and i32 %i.kn, 2139095040               ; 3 uses
  %i.kr = icmp eq i32 %i.kq, 0                    ; 2 uses
  %i.ks = lshr exact i32 %i.kq, 23
  %i.kt = or disjoint i128 %i.kp, 8388608
  %i.ku = add nsw i32 %i.ks, -150
  %storemerge.i = select i1 %i.kr, i128 %i.kp, i128 %i.kt
  %.0.i150 = select i1 %i.kr, i32 -149, i32 %i.ku
  %i.kv = icmp eq i32 %i.ko, 0
  %i.kw = icmp samesign ugt i32 %i.kq, 16777215
  %i.kx = and i1 %i.kv, %i.kw
  br label %bb.ax

bb.aw:                                            ; preds = %.thread219
  %i.ky = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.kz = or disjoint i128 %i.ky, 4503599627370496
  %i.la = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.ky, i128 %i.kz
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.la
  %i.lb = icmp eq i64 %i.ad, 0
  %i.lc = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.ld = and i1 %i.lb, %i.lc
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.av ], [ %storemerge.i151, %bb.aw ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.av ], [ %.0.i152, %bb.aw ]
  %i.le = phi i1 [ %i.kx, %bb.av ], [ %i.ld, %bb.aw ]
  %spec.select = zext i1 %i.le to i32             ; 2 uses
  %i.lf = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.lf, i32 %spec.select
  %i.lg = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !366
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !88
  call void @_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v11::detail::basic_fp") align 16 %5, i32 noundef %.1111, i32 noundef %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.au, %bb.s, %bb.w, %bb.v, %bb.ax
  br i1 %i.d, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %.thread
  %i.lh = load i64, ptr %2, align 8, !tbaa !294
  %i.li = and i64 %i.lh, 8192
  %.not227 = icmp eq i64 %i.li, 0
  br i1 %.not227, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !270 ; 2 uses
  %.not132237 = icmp eq i64 %i.lk, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.az
  %.promoted = load i32, ptr %i.a, align 4
  %i.ll = load ptr, ptr %4, align 8, !tbaa !269
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph239, %bb.bb
  %.0238 = phi i64 [ %i.lk, %.lr.ph239 ], [ %i.ln, %bb.bb ] ; 5 uses
  %i.lm = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lr, %bb.bb ]
  %i.ln = add i64 %.0238, -1                      ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !202
  %i.lq = icmp eq i8 %i.lp, 48
  br i1 %i.lq, label %bb.bb, label %.critedge3

bb.bb:                                            ; preds = %bb.ba
  %i.lr = add nsw i32 %i.lm, 1                    ; 2 uses
  store i32 %i.lr, ptr %i.a, align 4, !tbaa !88
  %.not132 = icmp eq i64 %i.ln, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ba, !llvm.loop !1150

.critedge3.thread:                                ; preds = %bb.bb, %bb.az
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !271
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ba
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !271 ; 2 uses
  %i.lw = icmp ugt i64 %.0238, %i.lv
  br i1 %i.lw, label %bb.bc, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit154

bb.bc:                                            ; preds = %.critedge3
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !272
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238), !inline_history !28
  %.pre.i153 = load i64, ptr %i.lu, align 8, !tbaa !271
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.bc
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.bc ], [ 0, %.critedge3.thread ]
  %i.lz = phi i64 [ %i.lv, %.critedge3 ], [ %.pre.i153, %bb.bc ], [ %i.lt, %.critedge3.thread ]
  %i.ma = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.lz)
  store i64 %i.ma, ptr %i.lj, align 8, !tbaa !270
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit154, %bb.ay, %.thread
  %i.mb = load i32, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.mb, %bb.bd ]
  ret i32 %.0105
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEdEET0_S5_T1_NS0_12format_specsENS1_10locale_refE(ptr %0, double noundef %1, ptr noundef byval(%"struct.fmt::v11::format_specs") align 8 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.172, align 8            ; 5 uses
  %5 = alloca %class.anon.157, align 8            ; 5 uses
  %6 = alloca %"struct.fmt::v11::format_specs", align 8 ; 7 uses
  %7 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.164", align 8 ; 5 uses
  %8 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 14 uses
  %9 = alloca %"struct.fmt::v11::detail::big_decimal_fp", align 8 ; 7 uses
  %i.a = bitcast double %1 to i64
  %i.b = icmp slt i64 %i.a, 0
  %i.c = load i64, ptr %2, align 8                ; 6 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 10
  %i.f = and i32 %i.e, 3
  %i.g = select i1 %i.b, i32 1, i32 %i.f          ; 5 uses
  %i.h = tail call double @llvm.fabs.f64(double %1)
  %i.i = fcmp ueq double %i.h, +inf
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = load i64, ptr %6, align 8, !tbaa !294    ; 3 uses
  %i.l = and i64 %i.k, 229376
  %i.m = icmp eq i64 %i.l, 32768
  br i1 %i.m, label %bb.c, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !202
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.d, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

bb.d:                                             ; preds = %bb.c
  store i8 32, ptr %i.n, align 8, !tbaa !202
  %i.q = and i64 %i.k, 4294770687
  store i64 %i.q, ptr %6, align 8, !tbaa !294
  br label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.r = and i64 %i.k, 4096
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM4Tree6ToJSONB5cxx11Ev:bb.a

bb.ah:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i8 noundef signext 10)
          to label %bb.ai unwind label %bb.ak     ; 0 uses

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ef = load ptr, ptr %5, align 8, !tbaa !262   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.ai
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !202
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.al

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %5, align 8, !tbaa !262   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ak
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !202
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.aj ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.el, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.body

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.er, ptr %0, align 8, !tbaa !264, !alias.scope !1194
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.es, align 8, !tbaa !263, !alias.scope !1194
  store i8 0, ptr %i.er, align 8, !tbaa !202, !alias.scope !1194
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !285, !noalias !1194 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.eu, null
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !1194 ; 2 uses
  %i.ex = icmp ugt ptr %i.eu, %i.ew
  %.08.i.i.i = select i1 %i.ex, ptr %i.eu, ptr %i.ew ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !286, !noalias !1194 ; 2 uses
  %i.fa = ptrtoint ptr %.08.i.i.i to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ez, i64 noundef %i.fc)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !262, !alias.scope !1194 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.er
  br i1 %i.fg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.an
  %i.fh = load i64, ptr %i.er, align 8, !tbaa !202, !alias.scope !1194
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #41
  br label %.body

bb.ao:                                            ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.fj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.an

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ao, %bb.am
  %i.fk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fk, ptr %3, align 8, !tbaa !54
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fm = getelementptr i8, ptr %i.fk, i64 -24
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds i8, ptr %3, i64 %i.fn
  store ptr %i.fl, ptr %i.fo, align 8, !tbaa !54
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.fp, ptr %i.m, align 8, !tbaa !54
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fq, align 8, !tbaa !54
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !262 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !202
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #41
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fq, align 8, !tbaa !54
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fx) #12
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fy, ptr %3, align 8, !tbaa !54
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ga = getelementptr i8, ptr %i.fy, i64 -24
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds i8, ptr %3, i64 %i.gb
  store ptr %i.fz, ptr %i.gc, align 8, !tbaa !54
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.gd, align 8, !tbaa !288
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ge) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

.body:                                            ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.pn8 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.cw, %bb.x ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fe, %bb.an ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4Tree17LinearModelToJSONB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::locale", align 8       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %4, align 8, !tbaa !54
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.c
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 17, ptr %i.k, align 8, !tbaa !413
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.86, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.n = sext i32 %2 to i64                       ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load double, ptr %i.p, align 8, !tbaa !118
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.q)
          to label %_ZNSolsEd.exit unwind label %bb.d ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.77, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZNSolsEd.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.n ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !201
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.87, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.preheader unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.preheader: ; preds = %bb.c
  %5 = add nsw i32 %i.ae, -1                      ; 2 uses
  %.not = icmp eq i32 %i.ae, 1                    ; 2 uses
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.preheader
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  br label %.lr.ph

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.preheader
  %.pre-phi = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.preheader ], [ %wide.trip.count, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 ] ; 2 uses
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.n
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.pre-phi
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !88
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.al)
          to label %bb.h unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %.noexc, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.invoke, %bb.k, %_ZNSolsEd.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %bb.h, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 ] ; 2 uses
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.n
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !88
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.at)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.82, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35._crit_edge, label %.lr.ph, !llvm.loop !1195

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35._crit_edge
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.88, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.h
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.82, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.89, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.preheader unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45._crit_edge, label %.lr.ph63

.lr.ph63:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 552
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count69 = zext nneg i32 %smax to i64
  br label %bb.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.n
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.pre-phi
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !118
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.bh)
          to label %_ZNSolsEd.exit47 unwind label %bb.e ; 2 uses

bb.i:                                             ; preds = %.lr.ph63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %indvars.iv66 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next67, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 ] ; 2 uses
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.n
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv66
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !118
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, double noundef %i.bn)
          to label %_ZNSolsEd.exit49 unwind label %bb.j

_ZNSolsEd.exit49:                                 ; preds = %bb.i
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.82, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZNSolsEd.exit49
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45._crit_edge, label %bb.i, !llvm.loop !1196

bb.j:                                             ; preds = %_ZNSolsEd.exit49, %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSolsEd.exit47:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45._crit_edge
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.88, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.invoke unwind label %bb.e ; 0 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.90, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.invoke unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.invoke: ; preds = %bb.k, %_ZNSolsEd.exit47
  %i.bt = phi ptr [ %i.bi, %_ZNSolsEd.exit47 ], [ %i.f, %bb.k ]
  %i.bu = phi ptr [ @.str.6, %_ZNSolsEd.exit47 ], [ @.str.91, %bb.k ]
  %i.bv = phi i64 [ 1, %_ZNSolsEd.exit47 ], [ 16, %bb.k ]
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull %i.bu, i64 noundef %i.bv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !264, !alias.scope !1203
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !263, !alias.scope !1203
  store i8 0, ptr %i.bx, align 8, !tbaa !202, !alias.scope !1203
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !285, !noalias !1203 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !1203 ; 2 uses
  %i.cd = icmp ugt ptr %i.ca, %i.cc
  %.08.i.i.i = select i1 %i.cd, ptr %i.ca, ptr %i.cc ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !286, !noalias !1203 ; 2 uses
  %i.cg = ptrtoint ptr %.08.i.i.i to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.cf, i64 noundef %i.ci)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !262, !alias.scope !1203 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bx
  br i1 %i.cm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.cn = load i64, ptr %i.bx, align 8, !tbaa !202, !alias.scope !1203
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #41
  br label %.body

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  %i.cq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cq, ptr %4, align 8, !tbaa !54
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %4, i64 %i.ct
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !54
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cv, ptr %i.f, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cw, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !262 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !202
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #41
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cw, align 8, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #12
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.de, ptr %4, align 8, !tbaa !54
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dg = getelementptr i8, ptr %i.de, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %4, i64 %i.dh
  store ptr %i.df, ptr %i.di, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !288
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dk) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

.body:                                            ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e, %bb.g, %bb.j, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.d ], [ %i.aw, %bb.g ], [ %i.bq, %bb.j ], [ %i.ao, %bb.e ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ck, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4Tree10NodeToJSONB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::locale", align 8       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::locale", align 8       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.y = load ptr, ptr %6, align 8, !tbaa !54
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds i8, ptr %6, i64 %i.aa
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %5, ptr noundef nonnull align 8 dereferenceable(264) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %.noexc
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 81 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 17, ptr %i.ai, align 8, !tbaa !413
  %i.aj = icmp sgt i32 %2, -1
  br i1 %i.aj, label %bb.c, label %bb.ct

bb.c:                                             ; preds = %bb.b
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.92, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i8 10, ptr %i.x, align 1, !tbaa !202
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ad, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !261
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.x, i64 noundef 1)
          to label %bb.f unwind label %bb.u       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_2
