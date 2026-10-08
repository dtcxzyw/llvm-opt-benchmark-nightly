Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/mate_parser?download=true
inline.NumInlined: 34
inline.NumDeleted: 7
begin_hunk_0_@Mate_lex:bb.a
  %i.afi = icmp eq i64 %index.next, %n.vec
  br i1 %i.afi, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.afa, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.afc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i698.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1626 = and i64 %i.aex, 2147483644         ; 5 uses
  %i.afj = trunc nuw nsw i64 %n.vec1626 to i32
  %i.afk = getelementptr i8, ptr %i.aek, i64 %n.vec1626
  %i.afl = getelementptr i8, ptr %i.abn, i64 %n.vec1626
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1627 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1631, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1628 = getelementptr i8, ptr %i.aek, i64 %index1627
  %next.gep1629 = getelementptr i8, ptr %i.abn, i64 %index1627
  %wide.load1630 = load <4 x i8>, ptr %next.gep1628, align 1
  store <4 x i8> %wide.load1630, ptr %next.gep1629, align 1
  %index.next1631 = add nuw i64 %index1627, 4     ; 2 uses
  %i.afm = icmp eq i64 %index.next1631, %n.vec1626
  br i1 %i.afm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1632 = icmp eq i64 %i.afa, %n.vec1626
  br i1 %cmp.n1632, label %._crit_edge.loopexit.i, label %.lr.ph.i698.preheader

.lr.ph.i698.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0130160.i.ph = phi i32 [ 0, %iter.check ], [ %i.afd, %vec.epilog.iter.check ], [ %i.afj, %vec.epilog.middle.block ]
  %.0131159.i.ph = phi ptr [ %i.aek, %iter.check ], [ %i.afe, %vec.epilog.iter.check ], [ %i.afk, %vec.epilog.middle.block ]
  %.0132158.i.ph = phi ptr [ %i.abn, %iter.check ], [ %i.aff, %vec.epilog.iter.check ], [ %i.afl, %vec.epilog.middle.block ]
  br label %.lr.ph.i698

.lr.ph.i698:                                      ; preds = %.lr.ph.i698.preheader, %.lr.ph.i698
  %.0130160.i = phi i32 [ %i.afq, %.lr.ph.i698 ], [ %.0130160.i.ph, %.lr.ph.i698.preheader ]
  %.0131159.i = phi ptr [ %i.afn, %.lr.ph.i698 ], [ %.0131159.i.ph, %.lr.ph.i698.preheader ] ; 2 uses
  %.0132158.i = phi ptr [ %i.afp, %.lr.ph.i698 ], [ %.0132158.i.ph, %.lr.ph.i698.preheader ] ; 2 uses
  %i.afn = getelementptr i8, ptr %.0131159.i, i64 1
  %i.afo = load i8, ptr %.0131159.i, align 1
  %i.afp = getelementptr i8, ptr %.0132158.i, i64 1
  store i8 %i.afo, ptr %.0132158.i, align 1
  %i.afq = add nuw nsw i32 %.0130160.i, 1         ; 2 uses
  %exitcond.not.i699 = icmp eq i32 %i.afq, %i.aey
  br i1 %exitcond.not.i699, label %._crit_edge.loopexit.i, label %.lr.ph.i698, !llvm.loop !14

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i698, %vec.epilog.middle.block, %middle.block
  %.pre.i700 = load ptr, ptr %i.as, align 8       ; 2 uses
  %.pre174.i = load i64, ptr %i.at, align 8       ; 2 uses
  %.phi.trans.insert.i = getelementptr [8 x i8], ptr %.pre.i700, i64 %.pre174.i
  %.pre175.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %._crit_edge.i694

._crit_edge.i694:                                 ; preds = %._crit_edge.loopexit.i, %bb.br
  %i.afr = phi ptr [ %.pre175.i, %._crit_edge.loopexit.i ], [ %i.abi, %bb.br ] ; 4 uses
  %i.afs = phi i64 [ %.pre174.i, %._crit_edge.loopexit.i ], [ %i.abj, %bb.br ]
  %i.aft = phi ptr [ %.pre.i700, %._crit_edge.loopexit.i ], [ %i.abk, %bb.br ]
  %i.afu = getelementptr i8, ptr %i.afr, i64 56
  %i.afv = load i32, ptr %i.afu, align 8
  %i.afw = icmp eq i32 %i.afv, 2
  br i1 %i.afw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i694
  %i.afx = getelementptr [8 x i8], ptr %i.aft, i64 %i.afs
  store i32 0, ptr %i.au, align 4
  br label %bb.ci

bb.bt:                                            ; preds = %._crit_edge.i694
  %i.afy = xor i32 %i.aey, -1                     ; 2 uses
  %.pn.in161.i = getelementptr i8, ptr %i.afr, i64 24
  %.pn162.i = load i32, ptr %.pn.in161.i, align 8 ; 2 uses
  %.0128163.i = add i32 %.pn162.i, %i.afy         ; 2 uses
  %i.afz = icmp slt i32 %.0128163.i, 1
  br i1 %i.afz, label %.lr.ph165.preheader.i, label %._crit_edge166.i

.lr.ph165.preheader.i:                            ; preds = %bb.bt
  %.pre176.i = load ptr, ptr %i.al, align 8
  br label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %bb.bx, %.lr.ph165.preheader.i
  %i.aga = phi i32 [ %.pn162.i, %.lr.ph165.preheader.i ], [ %.pn.i, %bb.bx ] ; 3 uses
  %i.agb = phi ptr [ %.pre176.i, %.lr.ph165.preheader.i ], [ %i.agu, %bb.bx ]
  %i.agc = phi ptr [ %i.afr, %.lr.ph165.preheader.i ], [ %i.agy, %bb.bx ] ; 3 uses
  %i.agd = getelementptr i8, ptr %i.agc, i64 8    ; 3 uses
  %i.age = load ptr, ptr %i.agd, align 8          ; 2 uses
  %i.agf = ptrtoint ptr %i.agb to i64
  %i.agg = ptrtoint ptr %i.age to i64
  %i.agh = sub i64 %i.agf, %i.agg
  %i.agi = getelementptr i8, ptr %i.agc, i64 32
  %i.agj = load i32, ptr %i.agi, align 8
  %.not145.i = icmp eq i32 %i.agj, 0
  br i1 %.not145.i, label %.thread.i697, label %bb.bu

.thread.i697:                                     ; preds = %.lr.ph165.i
  store ptr null, ptr %i.agd, align 8
  br label %.loopexit.i

bb.bu:                                            ; preds = %.lr.ph165.i
  %i.agk = getelementptr i8, ptr %i.agc, i64 24
  %i.agl = shl i32 %i.aga, 1                      ; 2 uses
  %i.agm = icmp slt i32 %i.agl, 1
  br i1 %i.agm, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.agn = sdiv i32 %i.aga, 8
  %i.ago = add i32 %i.agn, %i.aga
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %storemerge146.i = phi i32 [ %i.ago, %bb.bv ], [ %i.agl, %bb.bu ] ; 2 uses
  store i32 %storemerge146.i, ptr %i.agk, align 8
  %i.agp = add i32 %storemerge146.i, 2
  %i.agq = sext i32 %i.agp to i64
  %i.agr = tail call ptr @realloc(ptr noundef %i.age, i64 noundef %i.agq) #30 ; 3 uses
  store ptr %i.agr, ptr %i.agd, align 8
  %.not147.i = icmp eq ptr %i.agr, null
  br i1 %.not147.i, label %.loopexit.i, label %bb.bx

.loopexit.i:                                      ; preds = %bb.bw, %.thread.i697
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.16) #26
  unreachable

bb.bx:                                            ; preds = %bb.bw
  %i.ags = shl i64 %i.agh, 32
  %i.agt = ashr exact i64 %i.ags, 32
  %i.agu = getelementptr i8, ptr %i.agr, i64 %i.agt ; 2 uses
  store ptr %i.agu, ptr %i.al, align 8
  %i.agv = load ptr, ptr %i.as, align 8
  %i.agw = load i64, ptr %i.at, align 8
  %i.agx = getelementptr [8 x i8], ptr %i.agv, i64 %i.agw
  %i.agy = load ptr, ptr %i.agx, align 8          ; 3 uses
  %.pn.in.i = getelementptr i8, ptr %i.agy, i64 24
  %.pn.i = load i32, ptr %.pn.in.i, align 8       ; 2 uses
  %.0128.i = add i32 %.pn.i, %i.afy               ; 2 uses
  %i.agz = icmp slt i32 %.0128.i, 1
  br i1 %i.agz, label %.lr.ph165.i, label %._crit_edge166.i, !llvm.loop !15

._crit_edge166.i:                                 ; preds = %bb.bx, %bb.bt
  %i.aha = phi ptr [ %i.afr, %bb.bt ], [ %i.agy, %bb.bx ]
  %.0128.lcssa.i = phi i32 [ %.0128163.i, %bb.bt ], [ %.0128.i, %bb.bx ]
  %i.ahb = tail call i32 @llvm.umin.i32(i32 %.0128.lcssa.i, i32 8192) ; 3 uses
  %i.ahc = getelementptr i8, ptr %i.aha, i64 36
  %i.ahd = load i32, ptr %i.ahc, align 4
  %.not.i695 = icmp eq i32 %i.ahd, 0
  br i1 %.not.i695, label %bb.cd, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge166.i
  %sext144.i = shl i64 %i.aex, 32
  %i.ahe = ashr exact i64 %sext144.i, 32          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ahb to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.bz ] ; 3 uses
  %i.ahf = load ptr, ptr %i.av, align 8
  %i.ahg = tail call i32 @getc(ptr noundef %i.ahf) ; 3 uses
  switch i32 %i.ahg, label %bb.bz [
    i32 -1, label %.critedge.split.loop.exit.i
    i32 10, label %.critedge.split.loop.exit.i
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ahh = trunc i32 %i.ahg to i8
  %i.ahi = load ptr, ptr %i.as, align 8
  %i.ahj = load i64, ptr %i.at, align 8
  %i.ahk = getelementptr [8 x i8], ptr %i.ahi, i64 %i.ahj
  %i.ahl = load ptr, ptr %i.ahk, align 8
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8
  %i.aho = getelementptr i8, ptr %i.ahn, i64 %i.ahe
  %i.ahp = getelementptr i8, ptr %i.aho, i64 %indvars.iv.i
  store i8 %i.ahh, ptr %i.ahp, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond173.not.i, label %.critedge.i696, label %bb.by, !llvm.loop !16

.critedge.split.loop.exit.i:                      ; preds = %bb.by, %bb.by
  %i.ahq = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i696

.critedge.i696:                                   ; preds = %bb.bz, %.critedge.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ %i.ahq, %.critedge.split.loop.exit.i ], [ %i.ahb, %bb.bz ] ; 4 uses
  switch i32 %i.ahg, label %bb.cc [
    i32 10, label %.thread151.i
    i32 -1, label %bb.ca
  ]

.thread151.i:                                     ; preds = %.critedge.i696
  %i.ahr = load ptr, ptr %i.as, align 8
  %i.ahs = load i64, ptr %i.at, align 8
  %i.aht = getelementptr [8 x i8], ptr %i.ahr, i64 %i.ahs
  %i.ahu = load ptr, ptr %i.aht, align 8
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 %i.ahe
  %i.ahy = add nuw i32 %.0.lcssa.i, 1
  %i.ahz = zext nneg i32 %.0.lcssa.i to i64
  %i.aia = getelementptr i8, ptr %i.ahx, i64 %i.ahz
  store i8 10, ptr %i.aia, align 1
  br label %bb.cc

bb.ca:                                            ; preds = %.critedge.i696
  %i.aib = load ptr, ptr %i.av, align 8
  %i.aic = tail call i32 @ferror(ptr noundef %i.aib) #27
  %.not143.i = icmp eq i32 %i.aic, 0
  br i1 %.not143.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.17) #26
  unreachable

bb.cc:                                            ; preds = %bb.ca, %.thread151.i, %.critedge.i696
  %.1153.i = phi i32 [ %i.ahy, %.thread151.i ], [ %.0.lcssa.i, %bb.ca ], [ %.0.lcssa.i, %.critedge.i696 ] ; 2 uses
  store i32 %.1153.i, ptr %i.au, align 4
  br label %.critedge2.i

bb.cd:                                            ; preds = %._crit_edge166.i
  %i.aid = tail call ptr @__errno_location() #28  ; 3 uses
  store i32 0, ptr %i.aid, align 4
  %sext.i = shl i64 %i.aex, 32
  %i.aie = ashr exact i64 %sext.i, 32
  %i.aif = zext nneg i32 %i.ahb to i64
  br label %fread.inline.exit.i

fread.inline.exit.i:                              ; preds = %bb.cd, %bb.ch
  %i.aig = load ptr, ptr %i.av, align 8
  %i.aih = load ptr, ptr %i.as, align 8
  %i.aii = load i64, ptr %i.at, align 8
  %i.aij = getelementptr [8 x i8], ptr %i.aih, i64 %i.aii
  %i.aik = load ptr, ptr %i.aij, align 8
  %i.ail = getelementptr i8, ptr %i.aik, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8
  %i.ain = getelementptr i8, ptr %i.aim, i64 %i.aie
  %i.aio = tail call i64 @fread(ptr noundef %i.ain, i64 noundef 1, i64 noundef range(i64 1, 2147483648) %i.aif, ptr noundef %i.aig)
  %i.aip = trunc i64 %i.aio to i32                ; 3 uses
  store i32 %i.aip, ptr %i.au, align 4
  %i.aiq = icmp eq i32 %i.aip, 0
  br i1 %i.aiq, label %bb.ce, label %.critedge2.i

bb.ce:                                            ; preds = %fread.inline.exit.i
  %i.air = load ptr, ptr %i.av, align 8
  %i.ais = tail call i32 @ferror(ptr noundef %i.air) #27
  %.not140.i = icmp eq i32 %i.ais, 0
  br i1 %.not140.i, label %.critedge2.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ait = load i32, ptr %i.aid, align 4
  %.not141.i = icmp eq i32 %i.ait, 4
  br i1 %.not141.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.17) #26
  unreachable

bb.ch:                                            ; preds = %bb.cf
  store i32 0, ptr %i.aid, align 4
  %i.aiu = load ptr, ptr %i.av, align 8
  tail call void @clearerr(ptr noundef %i.aiu) #27
  br label %fread.inline.exit.i, !llvm.loop !17

.critedge2.i:                                     ; preds = %bb.ce, %fread.inline.exit.i, %bb.cc
  %i.aiv = phi i32 [ %.1153.i, %bb.cc ], [ %i.aip, %fread.inline.exit.i ], [ 0, %bb.ce ]
  %i.aiw = load ptr, ptr %i.as, align 8
  %i.aix = load i64, ptr %i.at, align 8
  %i.aiy = getelementptr [8 x i8], ptr %i.aiw, i64 %i.aix
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge2.i, %bb.bs
  %.sink194.in.i = phi ptr [ %i.aiy, %.critedge2.i ], [ %i.afx, %bb.bs ]
  %.sink.i = phi i32 [ %i.aiv, %.critedge2.i ], [ 0, %bb.bs ]
  %.sink194.i = load ptr, ptr %.sink194.in.i, align 8
  %i.aiz = getelementptr i8, ptr %.sink194.i, i64 28
  store i32 %.sink.i, ptr %i.aiz, align 4
  %i.aja = load i32, ptr %i.au, align 4
  %i.ajb = icmp eq i32 %i.aja, 0
  br i1 %i.ajb, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.ajc = icmp eq i32 %i.aey, 0
  br i1 %i.ajc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ajd = load ptr, ptr %i.av, align 8
  tail call void @Mate_restart(ptr noundef %i.ajd, ptr noundef %0)
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.aje = load ptr, ptr %i.as, align 8
  %i.ajf = load i64, ptr %i.at, align 8
  %i.ajg = getelementptr [8 x i8], ptr %i.aje, i64 %i.ajf
  %i.ajh = load ptr, ptr %i.ajg, align 8
  %i.aji = getelementptr i8, ptr %i.ajh, i64 56
  store i32 2, ptr %i.aji, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.ci
  %.0129.i = phi i32 [ 1, %bb.ck ], [ 2, %bb.cl ], [ 0, %bb.ci ]
  %i.ajj = load i32, ptr %i.au, align 4           ; 2 uses
  %i.ajk = add i32 %i.ajj, %i.aey                 ; 3 uses
  %i.ajl = load ptr, ptr %i.as, align 8           ; 2 uses
  %i.ajm = load i64, ptr %i.at, align 8           ; 2 uses
  %i.ajn = getelementptr [8 x i8], ptr %i.ajl, i64 %i.ajm
  %i.ajo = load ptr, ptr %i.ajn, align 8          ; 2 uses
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 24
  %i.ajq = load i32, ptr %i.ajp, align 8
  %i.ajr = icmp sgt i32 %i.ajk, %i.ajq
  br i1 %i.ajr, label %bb.cn, label %yy_get_next_buffer.exit

bb.cn:                                            ; preds = %bb.cm
  %i.ajs = ashr i32 %i.ajj, 1
  %i.ajt = add i32 %i.ajk, %i.ajs                 ; 2 uses
  %i.aju = getelementptr i8, ptr %i.ajo, i64 8
  %i.ajv = load ptr, ptr %i.aju, align 8
  %i.ajw = sext i32 %i.ajt to i64
  %i.ajx = tail call ptr @realloc(ptr noundef %i.ajv, i64 noundef %i.ajw) #30
  %i.ajy = load ptr, ptr %i.as, align 8
  %i.ajz = load i64, ptr %i.at, align 8
  %i.aka = getelementptr [8 x i8], ptr %i.ajy, i64 %i.ajz
  %i.akb = load ptr, ptr %i.aka, align 8
  %i.akc = getelementptr i8, ptr %i.akb, i64 8
  store ptr %i.ajx, ptr %i.akc, align 8
  %i.akd = load ptr, ptr %i.as, align 8
  %i.ake = load i64, ptr %i.at, align 8
  %i.akf = getelementptr [8 x i8], ptr %i.akd, i64 %i.ake
  %i.akg = load ptr, ptr %i.akf, align 8          ; 2 uses
  %i.akh = getelementptr i8, ptr %i.akg, i64 8
  %i.aki = load ptr, ptr %i.akh, align 8
  %.not148.i = icmp eq ptr %i.aki, null
  br i1 %.not148.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.18) #26
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.akj = add i32 %i.ajt, -2
  %i.akk = getelementptr i8, ptr %i.akg, i64 24
  store i32 %i.akj, ptr %i.akk, align 8
  %.pre177.i = load i32, ptr %i.au, align 4
  %.pre178.i = load ptr, ptr %i.as, align 8
  %.pre179.i = load i64, ptr %i.at, align 8
  %.pre180.i = add i32 %.pre177.i, %i.aey
  br label %yy_get_next_buffer.exit

yy_get_next_buffer.exit:                          ; preds = %bb.cm, %bb.cp
  %.pre-phi.i = phi i32 [ %.pre180.i, %bb.cp ], [ %i.ajk, %bb.cm ] ; 2 uses
  %i.akl = phi i64 [ %.pre179.i, %bb.cp ], [ %i.ajm, %bb.cm ]
  %i.akm = phi ptr [ %.pre178.i, %bb.cp ], [ %i.ajl, %bb.cm ]
  store i32 %.pre-phi.i, ptr %i.au, align 4
  %i.akn = getelementptr [8 x i8], ptr %i.akm, i64 %i.akl
  %i.ako = load ptr, ptr %i.akn, align 8
  %i.akp = getelementptr i8, ptr %i.ako, i64 8
  %i.akq = load ptr, ptr %i.akp, align 8
  %i.akr = sext i32 %.pre-phi.i to i64
  %i.aks = getelementptr i8, ptr %i.akq, i64 %i.akr
  store i8 0, ptr %i.aks, align 1
  %i.akt = load ptr, ptr %i.as, align 8
  %i.aku = load i64, ptr %i.at, align 8
  %i.akv = getelementptr [8 x i8], ptr %i.akt, i64 %i.aku
  %i.akw = load ptr, ptr %i.akv, align 8
  %i.akx = getelementptr i8, ptr %i.akw, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8
  %i.akz = load i32, ptr %i.au, align 4
  %i.ala = add i32 %i.akz, 1
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr i8, ptr %i.aky, i64 %i.alb
  store i8 0, ptr %i.alc, align 1
  %i.ald = load ptr, ptr %i.as, align 8           ; 2 uses
  %i.ale = load i64, ptr %i.at, align 8           ; 2 uses
  %i.alf = getelementptr [8 x i8], ptr %i.ald, i64 %i.ale
  %i.alg = load ptr, ptr %i.alf, align 8
  %i.alh = getelementptr i8, ptr %i.alg, i64 8
  %i.ali = load ptr, ptr %i.alh, align 8          ; 8 uses
  store ptr %i.ali, ptr %i.aq, align 8
  switch i32 %.0129.i, label %default.unreachable1374 [
    i32 1, label %yy_get_previous_state.exit715
    i32 0, label %bb.cq
    i32 2, label %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread735_crit_edge
  ]

yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread735_crit_edge: ; preds = %yy_get_next_buffer.exit
  %i.alj = getelementptr [8 x i8], ptr %i.ald, i64 %i.ale
  %.pre1270 = load ptr, ptr %i.alj, align 8
  %.phi.trans.insert1271 = getelementptr i8, ptr %.pre1270, i64 8
  %.pre1272 = load ptr, ptr %.phi.trans.insert1271, align 8
  %.pre1273 = load i32, ptr %i.au, align 4
  %.pre1276 = sext i32 %.pre1273 to i64
  br label %yy_get_next_buffer.exit.thread735

bb.cq:                                            ; preds = %yy_get_next_buffer.exit
  %i.alk = ptrtoint ptr %.2356 to i64
  %i.all = ptrtoint ptr %i.aaq to i64
  %i.alm = xor i64 %i.all, -1
  %i.aln = add i64 %i.alm, %i.alk
  %sext1472 = shl i64 %i.aln, 32
  %i.alo = ashr exact i64 %sext1472, 32
end_hunk_0
begin_hunk_1_@Mate_lex_init_extra:bb.a
  store i32 22, ptr %i.b, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %calloc = tail call dereferenceable_or_null(144) ptr @calloc(i64 1, i64 144) ; 3 uses
  store ptr %calloc, ptr %1, align 8
  %i.c = icmp eq ptr %calloc, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__errno_location() #28
  store i32 12, ptr %i.d, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %0, ptr %calloc, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) uwtable
define hidden noundef i32 @Mate_lex_destroy(ptr noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not22 = icmp eq ptr %i.c, null
  br i1 %.not22, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 52
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = getelementptr i8, ptr %0, i64 128
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = getelementptr i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.a, align 8
  %i.k = getelementptr [8 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph, %Mate_pop_buffer_state.exit
  %i.n = phi ptr [ %i.ay, %Mate_pop_buffer_state.exit ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.o = phi ptr [ %i.ax, %Mate_pop_buffer_state.exit ], [ %i.k, %.lr.ph ]
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %i.q = load i32, ptr %i.p, align 8
  %.not13.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i, label %Mate__delete_buffer.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @free(ptr noundef %i.s) #27
  br label %Mate__delete_buffer.exit

Mate__delete_buffer.exit:                         ; preds = %.critedge.i, %bb.b
  tail call void @free(ptr noundef nonnull %i.n) #27
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = load i64, ptr %i.a, align 8
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  store ptr null, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i20 = icmp eq ptr %i.w, null
  br i1 %.not.i20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %Mate__delete_buffer.exit
  %i.x = load i64, ptr %i.a, align 8
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %.not20.i = icmp eq ptr %i.z, null
  br i1 %.not20.i, label %Mate_pop_buffer_state.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c
  store ptr null, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %.not13.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not13.i.i, label %Mate__delete_buffer.exit.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @free(ptr noundef %i.ad) #27
  br label %Mate__delete_buffer.exit.i

Mate__delete_buffer.exit.i:                       ; preds = %bb.d, %.critedge.i.i
  tail call void @free(ptr noundef nonnull %i.z) #27
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = load i64, ptr %i.a, align 8
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  store ptr null, ptr %i.ag, align 8
  %i.ah = load i64, ptr %i.a, align 8             ; 2 uses
  %.not21.i = icmp eq i64 %i.ah, 0
  br i1 %.not21.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Mate__delete_buffer.exit.i
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %Mate__delete_buffer.exit.i
  %i.aj = phi i64 [ %i.ai, %bb.e ], [ 0, %Mate__delete_buffer.exit.i ]
  %i.ak = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not22.i = icmp eq ptr %i.ak, null
  br i1 %.not22.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %i.aj ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.am, null
  br i1 %.not23.i, label %Mate_pop_buffer_state.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.am, i64 28
  %i.ao = load i32, ptr %i.an, align 4
  store i32 %i.ao, ptr %i.d, align 4
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  store ptr %i.ar, ptr %i.e, align 8
  store ptr %i.ar, ptr %i.f, align 8
  %i.as = load ptr, ptr %i.al, align 8
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.g, align 8
  %i.au = load i8, ptr %i.ar, align 1
  store i8 %i.au, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 8
  br label %Mate_pop_buffer_state.exit

Mate_pop_buffer_state.exit:                       ; preds = %bb.c, %bb.g, %bb.h
  %i.av = phi ptr [ %i.ak, %bb.g ], [ %i.w, %bb.c ], [ %i.ak, %bb.h ] ; 2 uses
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.critedge, label %.critedge.i, !llvm.loop !21

.critedge:                                        ; preds = %Mate_pop_buffer_state.exit, %Mate__delete_buffer.exit, %bb.f, %.lr.ph, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.c, %.lr.ph ], [ null, %bb.f ], [ null, %Mate__delete_buffer.exit ], [ %i.av, %Mate_pop_buffer_state.exit ]
  tail call void @free(ptr noundef %.lcssa) #27
  store ptr null, ptr %i.b, align 8
  %i.ba = getelementptr i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void @free(ptr noundef %i.bb) #27
  tail call void @free(ptr noundef %0) #27
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden zeroext i1 @mate_load_config(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Mate_scanner_state_t, align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 16 uses
  %3 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %4 = alloca %struct.except_catch, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i8 1, ptr %i.a, align 1
  %i.d = call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.3) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 208
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call ptr @__errno_location() #28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = call ptr @g_strerror(i32 noundef %i.h) #28
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef %i.i)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %calloc.i = call dereferenceable_or_null(144) ptr @calloc(i64 1, i64 144) ; 5 uses
  %i.j = icmp eq ptr %calloc.i, null
  br i1 %i.j, label %bb.d, label %g_strdup_inline.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @__errno_location() #28
  store i32 12, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %1, i64 208
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call ptr @g_strerror(i32 noundef 12) #28
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.m, ptr noundef nonnull @.str.13, ptr noundef %i.n)
  %i.o = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.t

g_strdup_inline.exit:                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %calloc.i, i64 8
  store ptr %i.d, ptr %i.p, align 8
  %i.q = call ptr @g_ptr_array_new()
  %i.r = getelementptr i8, ptr %1, i64 200        ; 4 uses
  store ptr %i.q, ptr %i.r, align 8
  store ptr %1, ptr %2, align 8
  %i.s = call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #29 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %i.t, align 8
  %i.u = call noalias ptr @g_strdup(ptr noundef %0)
  store ptr %i.u, ptr %i.s, align 8
  %i.v = getelementptr i8, ptr %i.s, i64 8
  store i32 1, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.r, align 8
  call void @g_ptr_array_add(ptr noundef %i.w, ptr noundef %i.s)
  %i.x = call ptr @MateParserAlloc(ptr noundef nonnull @g_malloc)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 0, ptr %i.z, align 8
  store ptr %2, ptr %calloc.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @except_setup_try(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @mate_load_config.catch_spec, i64 noundef 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = call i32 @_setjmp(ptr noundef nonnull %i.aa) #34
  %.not47 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sink = select i1 %.not47, ptr null, ptr %i.ac
  store volatile ptr %.sink, ptr %i.b, align 8
  %.0..0..0..0. = load volatile i32, ptr %i.c, align 4
  %i.ad = and i32 %.0..0..0..0., 1
  %.not48 = icmp eq i32 %i.ad, 0
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %g_strdup_inline.exit
  %.0..0..0..0.1 = load volatile i32, ptr %i.c, align 4
  %i.ae = or i32 %.0..0..0..0.1, 2
  store volatile i32 %i.ae, ptr %i.c, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %g_strdup_inline.exit
  %.0..0..0..0.2 = load volatile i32, ptr %i.c, align 4
  %i.af = and i32 %.0..0..0..0.2, -2
  store volatile i32 %i.af, ptr %i.c, align 4
  %.0..0..0..0.3 = load volatile i32, ptr %i.c, align 4
  %i.ag = icmp eq i32 %.0..0..0..0.3, 0
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.0..0..0..0.9 = load volatile ptr, ptr %i.b, align 8
  %i.ah = icmp eq ptr %.0..0..0..0.9, null
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = call i32 @Mate_lex(ptr noundef nonnull %calloc.i) ; 0 uses
  %i.aj = load ptr, ptr %i.y, align 8
  call void @MateParser(ptr noundef %i.aj, i32 noundef 0, ptr noundef null, ptr noundef %1)
  %i.ak = load ptr, ptr %i.y, align 8
  call void @MateParserFree(ptr noundef %i.ak, ptr noundef nonnull @g_free)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0..0..0..0.4 = load volatile i32, ptr %i.c, align 4
  %i.al = icmp eq i32 %.0..0..0..0.4, 0
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.10 = load volatile ptr, ptr %i.b, align 8
  %.not49 = icmp eq ptr %.0..0..0..0.10, null
  br i1 %.not49, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.0..0..0..0.11 = load volatile ptr, ptr %i.b, align 8
  %i.am = getelementptr i8, ptr %.0..0..0..0.11, i64 8
  %i.an = load volatile i64, ptr %i.am, align 8
  %i.ao = icmp eq i64 %i.an, 65535
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.5 = load volatile i32, ptr %i.c, align 4
  %i.ap = or i32 %.0..0..0..0.5, 1
  store volatile i32 %i.ap, ptr %i.c, align 4
  store volatile i8 0, ptr %i.a, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0..0..0..0.6 = load volatile i32, ptr %i.c, align 4
  %i.aq = icmp eq i32 %.0..0..0..0.6, 0
  br i1 %i.aq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.0..0..0..0.12 = load volatile ptr, ptr %i.b, align 8
  %.not50 = icmp eq ptr %.0..0..0..0.12, null
  br i1 %.not50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0..0..0..0.7 = load volatile i32, ptr %i.c, align 4
  %i.ar = or i32 %.0..0..0..0.7, 1
  store volatile i32 %i.ar, ptr %i.c, align 4
  store volatile i8 0, ptr %i.a, align 1
  %i.as = getelementptr i8, ptr %1, i64 208
  %i.at = load ptr, ptr %i.as, align 8
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.at, ptr noundef nonnull @.str.14)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.0..0..0..0.8 = load volatile i32, ptr %i.c, align 4
  %i.au = and i32 %.0..0..0..0.8, 1
  %.not51 = icmp eq i32 %i.au, 0
  br i1 %.not51, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.0..0..0..0.13 = load volatile ptr, ptr %i.b, align 8
  %.not52 = icmp eq ptr %.0..0..0..0.13, null
  br i1 %.not52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.0..0..0..0.14 = load volatile ptr, ptr %i.b, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.14) #26
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aw = load volatile ptr, ptr %i.av, align 8
  call void @except_free(ptr noundef %i.aw)
  %i.ax = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ay = call i32 @Mate_lex_destroy(ptr noundef nonnull %calloc.i) ; 0 uses
  %i.az = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %i.ba = load ptr, ptr %i.r, align 8
  call void @g_ptr_array_foreach(ptr noundef %i.ba, ptr noundef nonnull @ptr_array_free, ptr noundef null)
  %i.bb = load ptr, ptr %i.r, align 8
  %i.bc = call ptr @g_ptr_array_free(ptr noundef %i.bb, i32 noundef 1) ; 0 uses
  %.0..0..0..0.26 = load volatile i8, ptr %i.a, align 1, !range !22, !noundef !23
  %i.bd = trunc nuw i8 %.0..0..0..0.26 to i1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ %i.bd, %bb.s ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_ptr_array_new() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @MateParserAlloc(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @except_setup_try(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare void @MateParserFree(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) #6

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_rethrow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @except_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @except_pop() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @g_ptr_array_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ptr_array_free(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.a)
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_ptr_array_free(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind null_pointer_is_valid willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: alwaysinline nobuiltin null_pointer_is_valid sspstrong uwtable
declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind null_pointer_is_valid
declare void @clearerr(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
end_hunk_1
