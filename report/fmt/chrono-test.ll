Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.ahj = load ptr, ptr %3, align 8, !tbaa !338
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 %indvars.iv
  store i8 %i.ahi, ptr %i.ahk, align 1, !tbaa !232
  %i.ahl = load i64, ptr %i.c, align 8, !tbaa !538 ; 7 uses
  %.not14.i.i443 = icmp eq i64 %i.ahl, 0
  br i1 %.not14.i.i443, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, label %.lr.ph.i.i444

.lr.ph.i.i444:                                    ; preds = %bb.ea
  %i.ahm = load ptr, ptr %5, align 8, !tbaa !532  ; 4 uses
  %xtraiter1504 = and i64 %i.ahl, 1
  %i.ahn = icmp eq i64 %i.ahl, 1
  br i1 %i.ahn, label %.epil.preheader1503, label %.lr.ph.i.i444.new

.lr.ph.i.i444.new:                                ; preds = %.lr.ph.i.i444
  %unroll_iter1508 = and i64 %i.ahl, -2
  br label %bb.eb

._crit_edge.i.i448.unr-lcssa:                     ; preds = %bb.eb
  %lcmp.mod1505.not = icmp eq i64 %xtraiter1504, 0
  br i1 %lcmp.mod1505.not, label %._crit_edge.i.i448, label %.epil.preheader1503

.epil.preheader1503:                              ; preds = %._crit_edge.i.i448.unr-lcssa, %.lr.ph.i.i444
  %.013.i.i445.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.ail, %._crit_edge.i.i448.unr-lcssa ]
  %.01112.i.i446.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.aik, %._crit_edge.i.i448.unr-lcssa ]
  %lcmp.mod1507 = trunc i64 %i.ahl to i1
  call void @llvm.assume(i1 %lcmp.mod1507)
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.013.i.i445.epil.init ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !239
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = mul nuw nsw i64 %i.ahq, 10
  %i.ahs = add nuw nsw i64 %i.ahr, %.01112.i.i446.epil.init ; 2 uses
  %i.aht = trunc i64 %i.ahs to i32
  store i32 %i.aht, ptr %i.aho, align 4, !tbaa !239
  %i.ahu = lshr i64 %i.ahs, 32
  br label %._crit_edge.i.i448

._crit_edge.i.i448:                               ; preds = %._crit_edge.i.i448.unr-lcssa, %.epil.preheader1503
  %.lcssa1461 = phi i64 [ %i.aik, %._crit_edge.i.i448.unr-lcssa ], [ %i.ahu, %.epil.preheader1503 ] ; 2 uses
  %i.ahv = trunc nuw nsw i64 %.lcssa1461 to i32
  %.not.i.i449 = icmp eq i64 %.lcssa1461, 0
  br i1 %.not.i.i449, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, label %bb.ec

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i.i444.new
  %.013.i.i445 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.ail, %bb.eb ] ; 3 uses
  %.01112.i.i446 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.aik, %bb.eb ]
  %niter1509 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %niter1509.next.1, %bb.eb ]
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.013.i.i445 ; 2 uses
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !239
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = mul nuw nsw i64 %i.ahy, 10
  %i.aia = add nuw nsw i64 %i.ahz, %.01112.i.i446 ; 2 uses
  %i.aib = trunc i64 %i.aia to i32
  store i32 %i.aib, ptr %i.ahw, align 4, !tbaa !239
  %i.aic = lshr i64 %i.aia, 32
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %.013.i.i445
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4 ; 2 uses
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !239
  %i.aig = zext i32 %i.aif to i64
  %i.aih = mul nuw nsw i64 %i.aig, 10
  %i.aii = add nuw nsw i64 %i.aih, %i.aic         ; 2 uses
  %i.aij = trunc i64 %i.aii to i32
  store i32 %i.aij, ptr %i.aie, align 4, !tbaa !239
  %i.aik = lshr i64 %i.aii, 32                    ; 3 uses
  %i.ail = add nuw i64 %.013.i.i445, 2            ; 2 uses
  %niter1509.next.1 = add nuw i64 %niter1509, 2   ; 2 uses
  %niter1509.ncmp.1 = icmp eq i64 %niter1509.next.1, %unroll_iter1508
  br i1 %niter1509.ncmp.1, label %._crit_edge.i.i448.unr-lcssa, label %bb.eb, !llvm.loop !102

bb.ec:                                            ; preds = %._crit_edge.i.i448
  %i.aim = add i64 %i.ahl, 1                      ; 3 uses
  %i.ain = load i64, ptr %i.a, align 8, !tbaa !533
  %i.aio = icmp ugt i64 %i.aim, %i.ain
  br i1 %i.aio, label %bb.ed, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

bb.ed:                                            ; preds = %bb.ec
  %i.aip = load ptr, ptr %i.b, align 8, !tbaa !531
  invoke void %i.aip(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.aim)
          to label %.noexc455 unwind label %bb.ee, !inline_history !5717

.noexc455:                                        ; preds = %bb.ed
  %.pre.i.i.i452 = load i64, ptr %i.c, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i.i453 = add i64 %.pre.i.i.i452, 1
  %.pre.i454 = load ptr, ptr %5, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450: ; preds = %.noexc455, %bb.ec
  %i.aiq = phi ptr [ %i.ahm, %bb.ec ], [ %.pre.i454, %.noexc455 ]
  %.pre-phi.i.i.i451 = phi i64 [ %i.aim, %bb.ec ], [ %.pre2.i.i.i453, %.noexc455 ]
  %i.air = phi i64 [ %i.ahl, %bb.ec ], [ %.pre.i.i.i452, %.noexc455 ]
  store i64 %.pre-phi.i.i.i451, ptr %i.c, align 8, !tbaa !538
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %i.air
  store i32 %i.ahv, ptr %i.ais, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450, %._crit_edge.i.i448, %bb.ea
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5721

bb.ee:                                            ; preds = %bb.ed, %.lr.ph
  %i.ait = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ef:                                            ; preds = %._crit_edge
  %i.aiu = load i64, ptr %i.c, align 8, !tbaa !538
  %i.aiv = trunc i64 %i.aiu to i32
  %i.aiw = load i32, ptr %i.e, align 8, !tbaa !537 ; 3 uses
  %i.aix = add nsw i32 %i.aiw, %i.aiv             ; 3 uses
  %i.aiy = load i64, ptr %i.h, align 8, !tbaa !538 ; 2 uses
  %i.aiz = trunc i64 %i.aiy to i32
  %i.aja = load i32, ptr %i.j, align 8, !tbaa !537 ; 3 uses
  %i.ajb = add nsw i32 %i.aja, %i.aiz             ; 3 uses
  %i.ajc = add nsw i32 %i.aix, 1
  %i.ajd = icmp slt i32 %i.ajc, %i.ajb
  br i1 %i.ajd, label %.thread552, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aje = icmp sgt i32 %i.aix, %i.ajb
  br i1 %i.aje, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ajf = call noundef i32 @llvm.smin.i32(i32 %i.aiw, i32 %i.aja) ; 2 uses
  %.not.not.not53.i457 = icmp sgt i32 %i.ajb, %i.ajf
  br i1 %.not.not.not53.i457, label %.lr.ph.i459, label %bb.en

.lr.ph.i459:                                      ; preds = %bb.eh
  %i.ajg = load ptr, ptr %5, align 8
  %i.ajh = load ptr, ptr %6, align 8
  %i.aji = sext i32 %i.aja to i64                 ; 3 uses
  %sext.i460 = shl i64 %i.aiy, 32
  %i.ajj = ashr exact i64 %sext.i460, 32
  %i.ajk = add nsw i64 %i.ajj, %i.aji
  %i.ajl = sext i32 %i.aix to i64
  %i.ajm = sext i32 %i.aiw to i64                 ; 2 uses
  %i.ajn = sext i32 %i.ajf to i64
  br label %bb.ei

bb.ei:                                            ; preds = %bb.em, %.lr.ph.i459
  %indvars.iv.i461 = phi i64 [ %i.ajk, %.lr.ph.i459 ], [ %indvars.iv.next.i463, %bb.em ] ; 4 uses
  %.03254.i462 = phi i64 [ 0, %.lr.ph.i459 ], [ %i.ake, %bb.em ] ; 2 uses
  %indvars.iv.next.i463 = add nsw i64 %indvars.iv.i461, -1 ; 4 uses
  %.not.i.i464 = icmp sgt i64 %indvars.iv.i461, %i.ajm
  %i.ajo = icmp sle i64 %indvars.iv.i461, %i.ajl
  %or.cond.i465 = and i1 %.not.i.i464, %i.ajo
  br i1 %or.cond.i465, label %bb.ej, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

bb.ej:                                            ; preds = %bb.ei
  %i.ajp = sub nsw i64 %indvars.iv.next.i463, %i.ajm
  %i.ajq = getelementptr inbounds [4 x i8], ptr %i.ajg, i64 %i.ajp
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !239
  %i.ajs = zext i32 %i.ajr to i64
  %i.ajt = shl nuw nsw i64 %i.ajs, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469: ; preds = %bb.ei, %bb.ej
  %i.aju = phi i64 [ %i.ajt, %bb.ej ], [ 0, %bb.ei ] ; 3 uses
  %.not.i45.i470 = icmp sgt i64 %indvars.iv.i461, %i.aji
  br i1 %.not.i45.i470, label %bb.ek, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

bb.ek:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.ajv = sub nsw i64 %indvars.iv.next.i463, %i.aji
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.ajv
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !239
  %i.ajy = zext i32 %i.ajx to i64
  %i.ajz = or disjoint i64 %.03254.i462, %i.ajy
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471: ; preds = %bb.ek, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.aka = phi i64 [ %i.ajz, %bb.ek ], [ %.03254.i462, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469 ] ; 3 uses
  %i.akb = icmp ugt i64 %i.aju, %i.aka
  br i1 %i.akb, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.el

bb.el:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471
  %i.akc = sub nuw nsw i64 %i.aka, %i.aju         ; 2 uses
  %i.akd = icmp ugt i64 %i.akc, 1
  br i1 %i.akd, label %.thread552, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ake = shl nuw nsw i64 %i.akc, 32
  %.not.not.not.i472 = icmp sgt i64 %indvars.iv.next.i463, %i.ajn
  br i1 %.not.not.not.i472, label %bb.ei, label %.thread.loopexit.i473, !llvm.loop !5716

.thread.loopexit.i473:                            ; preds = %bb.em
  %i.akf = icmp ne i64 %i.aka, %i.aju
  br label %bb.en

bb.en:                                            ; preds = %bb.eh, %.thread.loopexit.i473
  %.4.i458.ph = phi i1 [ false, %bb.eh ], [ %i.akf, %.thread.loopexit.i473 ]
  %i.akg = and i32 %i.ahf, 1
  %.not100 = icmp eq i32 %i.akg, 0
  %or.cond115 = or i1 %.not100, %.4.i458.ph
  br i1 %or.cond115, label %.thread552, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474: ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471, %bb.eg, %bb.en
  %i.akh = icmp eq i32 %i.ahf, 9
  br i1 %i.akh, label %bb.eo, label %bb.ex

bb.eo:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.aki = load ptr, ptr %3, align 8, !tbaa !338
  %9 = sext i32 %i.adm to i64
  %i.akj = getelementptr inbounds i8, ptr %i.aki, i64 %9
  store i8 58, ptr %i.akj, align 1, !tbaa !232
  br i1 %.not619, label %.critedge, label %.lr.ph617

.lr.ph617:                                        ; preds = %bb.eo, %bb.eq
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %bb.eq ], [ %i.agw, %bb.eo ] ; 3 uses
  %indvars.iv.next667 = add nsw i64 %indvars.iv666, -1 ; 2 uses
  %i.akk = load ptr, ptr %3, align 8, !tbaa !338
  %i.akl = and i64 %indvars.iv.next667, 4294967295
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.akl ; 2 uses
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !232
  %i.ako = icmp eq i8 %i.akn, 58
  br i1 %i.ako, label %bb.eq, label %.critedge

.critedge:                                        ; preds = %.lr.ph617, %bb.eq, %bb.eo
  %i.akp = load ptr, ptr %3, align 8, !tbaa !338  ; 2 uses
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !232
  %i.akr = icmp eq i8 %i.akq, 58
  br i1 %i.akr, label %bb.er, label %.loopexit

bb.ep:                                            ; preds = %._crit_edge
  %i.aks = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eq:                                            ; preds = %.lr.ph617
  store i8 48, ptr %i.akm, align 1, !tbaa !232
  %i.akt = load ptr, ptr %3, align 8, !tbaa !338
  %i.aku = getelementptr i8, ptr %i.akt, i64 %indvars.iv666
  %i.akv = getelementptr i8, ptr %i.aku, i64 -2   ; 2 uses
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !232
  %i.akx = add i8 %i.akw, 1
  store i8 %i.akx, ptr %i.akv, align 1, !tbaa !232
  %i.aky = trunc nuw i64 %indvars.iv666 to i32
  %i.akz = icmp sgt i32 %i.aky, 2
  br i1 %i.akz, label %.lr.ph617, label %.critedge, !llvm.loop !5722

bb.er:                                            ; preds = %.critedge
  store i8 49, ptr %i.akp, align 1, !tbaa !232
  %i.ala = and i32 %1, 4
  %.not101 = icmp eq i32 %i.ala, 0
  br i1 %.not101, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.alb = load i64, ptr %i.ahe, align 8, !tbaa !354 ; 2 uses
  %i.alc = add i64 %i.alb, 1                      ; 3 uses
  %i.ald = load i64, ptr %i.agx, align 8, !tbaa !339
  %i.ale = icmp ugt i64 %i.alc, %i.ald
  br i1 %i.ale, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.alf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !260
  invoke void %i.alg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.alc)
          to label %.noexc478 unwind label %bb.ev, !inline_history !5720

.noexc478:                                        ; preds = %bb.et
  %.pre.i476 = load i64, ptr %i.ahe, align 8, !tbaa !354 ; 2 uses
  %.pre2.i477 = add i64 %.pre.i476, 1
  br label %bb.eu

bb.eu:                                            ; preds = %.noexc478, %bb.es
  %.pre-phi.i475 = phi i64 [ %i.alc, %bb.es ], [ %.pre2.i477, %.noexc478 ]
  %i.alh = phi i64 [ %i.alb, %bb.es ], [ %.pre.i476, %.noexc478 ]
  %i.ali = load ptr, ptr %3, align 8, !tbaa !338
  store i64 %.pre-phi.i475, ptr %i.ahe, align 8, !tbaa !354
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.alh
  store i8 48, ptr %i.alj, align 1, !tbaa !232
  br label %.loopexit

bb.ev:                                            ; preds = %bb.et
  %i.alk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ew:                                            ; preds = %bb.er
  %i.all = load i32, ptr %4, align 4, !tbaa !239
  %i.alm = add nsw i32 %i.all, 1
  store i32 %i.alm, ptr %4, align 4, !tbaa !239
  br label %.loopexit

bb.ex:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.aln = add nsw i32 %i.ahf, 1
  br label %.thread552

.thread552:                                       ; preds = %bb.el, %bb.ef, %bb.ex, %bb.en
  %.076 = phi i32 [ %i.aln, %bb.ex ], [ %i.ahf, %bb.en ], [ %i.ahf, %bb.ef ], [ %i.ahf, %bb.el ]
  %i.alo = trunc i32 %.076 to i8
  %i.alp = add i8 %i.alo, 48
  %i.alq = load ptr, ptr %3, align 8, !tbaa !338
  %10 = sext i32 %i.adm to i64
  %i.alr = getelementptr inbounds i8, ptr %i.alq, i64 %10
  store i8 %i.alp, ptr %i.alr, align 1, !tbaa !232
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread552, %bb.eu, %bb.ew, %.critedge, %bb.dx
  %i.als = load ptr, ptr %8, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.als, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.ey

bb.ey:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.als) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.alt = load ptr, ptr %7, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.alt, %i.n
  br i1 %.not.i.i.i480, label %_ZN3fmt3v126detail6bigintD2Ev.exit481, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.alt) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit481

_ZN3fmt3v126detail6bigintD2Ev.exit481:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.alu = load ptr, ptr %6, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i482 = icmp eq ptr %i.alu, %i.i
  br i1 %.not.i.i.i482, label %_ZN3fmt3v126detail6bigintD2Ev.exit483, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481
  call void @free(ptr noundef %i.alu) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit483

_ZN3fmt3v126detail6bigintD2Ev.exit483:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.alv = load ptr, ptr %5, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i484 = icmp eq ptr %i.alv, %i.d
  br i1 %.not.i.i.i484, label %_ZN3fmt3v126detail6bigintD2Ev.exit485, label %bb.fb

bb.fb:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483
  call void @free(ptr noundef %i.alv) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit485

_ZN3fmt3v126detail6bigintD2Ev.exit485:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

.body:                                            ; preds = %.loopexit897, %.loopexit.split-lp898, %.loopexit566, %.loopexit.split-lp, %bb.bs, %bb.bw, %bb.dv, %bb.ee, %bb.cn, %bb.ev, %bb.ep
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.alk, %bb.ev ], [ %i.tx, %bb.bs ], [ %i.agk, %bb.dv ], [ %i.ait, %bb.ee ], [ %i.ue, %bb.bw ], [ %i.xq, %bb.cn ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.aks, %bb.ep ], [ %lpad.loopexit, %.loopexit566 ], [ %lpad.loopexit899, %.loopexit897 ], [ %lpad.loopexit.split-lp900, %.loopexit.split-lp898 ]
  %i.alw = load ptr, ptr %8, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i486 = icmp eq ptr %i.alw, %i.s
  br i1 %.not.i.i.i486, label %_ZN3fmt3v126detail6bigintD2Ev.exit487, label %bb.fc

bb.fc:                                            ; preds = %.body
  call void @free(ptr noundef %i.alw) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit487

_ZN3fmt3v126detail6bigintD2Ev.exit487:            ; preds = %bb.fc, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.alx = load ptr, ptr %7, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i488 = icmp eq ptr %i.alx, %i.n
  br i1 %.not.i.i.i488, label %_ZN3fmt3v126detail6bigintD2Ev.exit489, label %bb.fd

bb.fd:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @free(ptr noundef %i.alx) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit489

_ZN3fmt3v126detail6bigintD2Ev.exit489:            ; preds = %bb.fd, %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.aly = load ptr, ptr %6, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.aly, %i.i
  br i1 %.not.i.i.i490, label %_ZN3fmt3v126detail6bigintD2Ev.exit491, label %bb.fe

bb.fe:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @free(ptr noundef %i.aly) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit491

_ZN3fmt3v126detail6bigintD2Ev.exit491:            ; preds = %bb.fe, %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.alz = load ptr, ptr %5, align 8, !tbaa !532  ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.alz, %i.d
  br i1 %.not.i.i.i492, label %_ZN3fmt3v126detail6bigintD2Ev.exit493, label %bb.ff

bb.ff:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.alz) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit493

_ZN3fmt3v126detail6bigintD2Ev.exit493:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn105.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !532
  store i32 1, ptr %i.b, align 4, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !533
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !531
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !5726
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !533
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !538
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.k, align 8, !tbaa !537
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !532
  store i32 5, ptr %i.n, align 4, !tbaa !239
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !533
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !531
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !5726
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !533
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !538
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !537
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
  %i.z = load i64, ptr %i.v, align 8, !tbaa !538  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !532   ; 4 uses
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
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !239
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !239
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a
._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !537
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !537
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !538 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !532   ; 3 uses
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
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !239 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !239 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !239
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !5729

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
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !239 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !239
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !5730

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !533
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !531
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg), !inline_history !5731
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !538 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !532
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !538
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !239
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !538  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !537  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !538  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !537  ; 3 uses
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
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !103

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !239  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !239  ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !103

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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !533 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !531
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ab), !inline_history !5732
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !533
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !538
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !532 ; 13 uses
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
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !239
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !239
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !239
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !5733

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
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !239
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !239
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !5734

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = xor i32 %i.k, -1
  %i.bj = add i32 %i.e, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bm, i1 false), !tbaa !239
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !537
  %i.bo = sub nsw i32 %i.bn, %i.y                 ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !537
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !538
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !239
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !239
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !239
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !239
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !239
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !239
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !239
  %i.ce = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !239
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !5735

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cg = phi i32 [ %i.e, %select.unfold ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %i.ch = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ck = phi i32 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ex, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cl = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ez, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cm = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ev, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cn = trunc i64 %i.cm to i32
  %.not21.i = icmp eq i64 %i.cl, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.co = load i32, ptr %i.j, align 8, !tbaa !537
  %i.cp = sub i32 %i.co, %i.ck
  %i.cq = load ptr, ptr %1, align 8, !tbaa !532   ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !532   ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %xtraiter121 = and i64 %i.cl, 1
  %i.ct = icmp eq i64 %i.cl, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ea, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !239
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !239
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01822.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !239
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %._crit_edge.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cs, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ea, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !239
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !239
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !239
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !239
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !239
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !239
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
end_hunk_1
