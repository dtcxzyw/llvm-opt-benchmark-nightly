Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh_contact?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3ComputeMeshManifolds:bb.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @12, i64 %i.oi) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7404.us:                                    ; preds = %bb.ax
  %i.acu = zext i32 %i.nr to i64, !nosanitize !9
  %i.acv = zext i32 %.07917342.us7371.us to i64, !nosanitize !9
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @13, i64 %i.acu, i64 %i.acv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7407.us:                                    ; preds = %bb.ay
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @14, i64 %i.op, i64 %i.si) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7411.us:                                    ; preds = %bb.az
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 %i.or, i64 %i.ss) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7415.us:                                    ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @17, i64 %i.sz) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7442.us.a:                                  ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @20, i64 %i.ov) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7448.us.a:                                  ; preds = %bb.bg
  %i.acw = zext nneg i32 %i.tn to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @21, i64 %i.acw, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7457.us:                                    ; preds = %bb.bh
  %i.acx = zext i32 %i.tu to i64, !nosanitize !9
  %i.acy = zext i8 %i.ts to i64
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @22, i64 %i.acx, i64 %i.acy) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7467.us:                                    ; preds = %bb.bl
  %i.acz = zext nneg i32 %.07947341.us7372.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @23, i64 %i.acz, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7470.us:                                    ; preds = %bb.bm
  %i.ada = zext i32 %.07917342.us7371.us to i64, !nosanitize !9
  %i.adb = zext nneg i32 %.fr22899 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @24, i64 %i.ada, i64 %i.adb) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7548.us:                                    ; preds = %bb.ci
  %i.adc = zext nneg i32 %.07737345.us7368.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @25, i64 %i.adc, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7551.us:                                    ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %i.pj, i64 %i.aav) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7555.us:                                    ; preds = %bb.ck
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @28, i64 %i.abc) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7538.us:                                    ; preds = %bb.ce
  %i.add = zext nneg i32 %.07737345.us7368.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @29, i64 %i.add, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7541.us:                                    ; preds = %bb.cf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.pj, i64 %i.zv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7545.us:                                    ; preds = %bb.cg
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @31, i64 %i.aac) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7489.us:                                    ; preds = %bb.bq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @33, i64 %i.vs) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7495.us.a:                                  ; preds = %.lr.ph.us.us.epil.preheader, %.lr.ph.us.us, %.lr.ph.us.us.1
  %.lcssa22413 = phi i64 [ %i.wd, %.lr.ph.us.us.1 ], [ %i.wb, %.lr.ph.us.us ], [ %i.wp, %.lr.ph.us.us.epil.preheader ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.vs, i64 %.lcssa22413) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7528.us:                                    ; preds = %bb.ca
  %i.ade = zext nneg i32 %.07737345.us7368.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @35, i64 %i.ade, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7531.us:                                    ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.pj, i64 %i.yv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7535.us:                                    ; preds = %bb.cc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.zc) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7508.us:                                    ; preds = %bb.bt
  %i.adf = zext nneg i32 %.07847343.us7370.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @38, i64 %i.adf, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7511.us:                                    ; preds = %bb.bu
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @39, i64 %i.pf, i64 %i.xe) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7515.us:                                    ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.xl) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7518.us:                                    ; preds = %bb.bw
  %i.adg = zext nneg i32 %.07787344.us7369.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @42, i64 %i.adg, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7521.us:                                    ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @43, i64 %i.ph, i64 %i.xv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7525.us:                                    ; preds = %bb.by
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @44, i64 %i.yc) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7561.us:                                    ; preds = %bb.cm
  %i.adh = zext nneg i32 %.07847343.us7370.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @45, i64 %i.adh, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7564.us:                                    ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @46, i64 %i.pf, i64 %i.abo) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7568.us:                                    ; preds = %bb.co
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @47, i64 %i.abv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7571.us:                                    ; preds = %bb.cp
  %i.adi = zext nneg i32 %.07787344.us7369.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @48, i64 %i.adi, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7574.us:                                    ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @49, i64 %i.ph, i64 %i.acf) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7578.us:                                    ; preds = %bb.cr
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @50, i64 %i.acm) #8, !nosanitize !9
  unreachable, !nosanitize !9

.critedge:                                        ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  br label %._crit_edge7785.thread

._crit_edge7348.loopexit:                         ; preds = %bb.ct, %bb.ar
  %.0784.lcssa.ph = phi i32 [ %.07847343.us7370.us, %bb.ar ], [ %.4788.ph.us.us, %bb.ct ]
  %.0778.lcssa.ph = phi i32 [ %.07787344.us7369.us, %bb.ar ], [ %.4782.ph.us.us, %bb.ct ]
  %.0773.lcssa.ph = phi i32 [ %.07737345.us7368.us, %bb.ar ], [ %.4777.ph.us.us, %bb.ct ]
  %.pre = load i32, ptr %i.oa, align 8, !tbaa !120
  br label %._crit_edge7348

._crit_edge7348:                                  ; preds = %._crit_edge7348.loopexit, %.lr.ph7347.split.us, %.lr.ph7347.split.split, %bb.aq
  %i.adj = phi i32 [ %i.ob, %bb.aq ], [ %i.ob, %.lr.ph7347.split.split ], [ %i.ob, %.lr.ph7347.split.us ], [ %.pre, %._crit_edge7348.loopexit ]
  %.0784.lcssa = phi i32 [ 0, %bb.aq ], [ 0, %.lr.ph7347.split.split ], [ 0, %.lr.ph7347.split.us ], [ %.0784.lcssa.ph, %._crit_edge7348.loopexit ] ; 4 uses
  %.0778.lcssa = phi i32 [ 0, %bb.aq ], [ 0, %.lr.ph7347.split.split ], [ 0, %.lr.ph7347.split.us ], [ %.0778.lcssa.ph, %._crit_edge7348.loopexit ] ; 2 uses
  %.0773.lcssa = phi i32 [ 0, %bb.aq ], [ 0, %.lr.ph7347.split.split ], [ 0, %.lr.ph7347.split.us ], [ %.0773.lcssa.ph, %._crit_edge7348.loopexit ] ; 4 uses
  %i.adk = icmp eq i32 %i.adj, 5
  br i1 %i.adk, label %bb.cw, label %.preheader1328

.preheader1328:                                   ; preds = %._crit_edge7348
  %i.adl = icmp sgt i32 %.0778.lcssa, 0
  br i1 %i.adl, label %.lr.ph, label %.loopexit1322

.lr.ph:                                           ; preds = %.preheader1328
  %i.adm = ptrtoint ptr %.fr8556 to i64, !nosanitize !9 ; 3 uses
  %.not8557 = icmp eq ptr %.fr8556, null, !nosanitize !9
  %i.adn = ptrtoint ptr %19 to i64                ; 15 uses
  %i.ado = load i32, ptr %i.kk, align 8           ; 2 uses
  %.not1929.i = icmp sgt i32 %i.ado, 0            ; 3 uses
  %wide.trip.count.i1060 = zext nneg i32 %i.ado to i64 ; 6 uses
  %i.adp = ptrtoint ptr %.fr8568 to i64           ; 3 uses
  %i.adq = icmp ne ptr %.fr8568, null             ; 2 uses
  br i1 %.not8557, label %.split7675, label %.lr.ph.split.preheader, !prof !19

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count13672 = zext nneg i32 %.0778.lcssa to i64
  br label %.lr.ph.split

bb.cw:                                            ; preds = %._crit_edge7348
  %i.adr = icmp sgt i32 %.0784.lcssa, 1
  br i1 %i.adr, label %bb.cx, label %bb.fs

bb.cx:                                            ; preds = %bb.cw
  %i.ads = add nsw i32 %.0784.lcssa, -1
  %i.adt = zext nneg i32 %i.ads to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  %i.adu = ptrtoint ptr %.fr8559 to i64           ; 30 uses
  %.not8560 = icmp ne ptr %.fr8559, null          ; 3 uses
  %i.adv = ptrtoint ptr %24 to i64                ; 12 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.cx
  %.0823.ph = phi i64 [ 0, %bb.cx ], [ %.0823.ph.be, %.outer.backedge ] ; 14 uses
  %.0818.ph = phi i64 [ %i.adt, %bb.cx ], [ %.0818.ph.be, %.outer.backedge ]
  %.0815.ph = phi i64 [ 0, %bb.cx ], [ %.0815.ph.be, %.outer.backedge ]
  br label %.outer22085

.outer22085:                                      ; preds = %.outer, %bb.eu
  %.0818.ph22086 = phi i64 [ %.0818.ph, %.outer ], [ %i.ako, %bb.eu ] ; 10 uses
  %.0815.ph22087 = phi i64 [ %.0815.ph, %.outer ], [ %.0815, %bb.eu ]
  %sext1003 = shl i64 %.0818.ph22086, 32
  %i.adw = ashr exact i64 %sext1003, 29           ; 3 uses
  %i.adx = getelementptr inbounds i8, ptr %.fr8559, i64 %i.adw ; 11 uses
  %i.ady = add i64 %i.adw, %i.adu                 ; 4 uses
  %i.adz = icmp ne i64 %i.ady, 0
  %i.aea = icmp uge i64 %i.ady, %i.adu
  %i.aeb = icmp slt i64 %i.adw, 0
  %i.aec = xor i1 %i.aeb, %i.aea
  %i.aed = and i1 %i.adz, %i.aec                  ; 2 uses
  %i.aee = ptrtoint ptr %i.adx to i64             ; 2 uses
  %i.aef = and i64 %i.aee, 3
  %i.aeg = icmp eq i64 %i.aef, 0
  %i.aeh = ptrtoint ptr %i.adx to i64             ; 2 uses
  %i.aei = and i64 %i.aeh, 3
  %i.aej = icmp eq i64 %i.aei, 0
  br label %bb.cy

bb.cy:                                            ; preds = %.outer22085, %bb.fc
  %.0815 = phi i64 [ %.1829, %bb.fc ], [ %.0815.ph22087, %.outer22085 ] ; 15 uses
  %i.aek = sub i64 %.0818.ph22086, %.0815         ; 2 uses
  %i.ael = add i64 %i.aek, -15
  %i.aem = icmp ult i64 %i.ael, -16
  br i1 %i.aem, label %bb.df, label %.preheader1325

.preheader1325:                                   ; preds = %bb.cy
  %.08377701 = add i64 %.0815, 1                  ; 3 uses
  %.not9847702 = icmp ugt i64 %.08377701, %.0818.ph22086
  br i1 %.not9847702, label %._crit_edge, label %.preheader1324.lr.ph

.preheader1324.lr.ph:                             ; preds = %.preheader1325
  br i1 %.not8560, label %.preheader1324.us, label %.preheader1324, !prof !10

.preheader1324.us:                                ; preds = %.preheader1324.lr.ph, %.critedge5.us
  %.08377703.us = phi i64 [ %.0837.us, %.critedge5.us ], [ %.08377701, %.preheader1324.lr.ph ] ; 3 uses
  %i.aen = icmp ugt i64 %.08377703.us, %.0815
  br i1 %i.aen, label %.lr.ph7679.us, label %.critedge5.us

.lr.ph7679.us:                                    ; preds = %.preheader1324.us, %bb.de
  %.08387678.us7705 = phi i64 [ %i.afu, %bb.de ], [ %.08377703.us, %.preheader1324.us ] ; 4 uses
  %i.aeo = trunc i64 %.08387678.us7705 to i32
  %sext.us7706 = shl i64 %.08387678.us7705, 32
  %i.aep = ashr exact i64 %sext.us7706, 29        ; 3 uses
  %i.aeq = getelementptr inbounds i8, ptr %.fr8559, i64 %i.aep ; 4 uses
  %i.aer = add i64 %i.aep, %i.adu, !nosanitize !9 ; 3 uses
  %i.aes = icmp ne i64 %i.aer, 0
  %i.aet = icmp uge i64 %i.aer, %i.adu, !nosanitize !9
  %i.aeu = icmp slt i64 %i.aep, 0
  %i.aev = xor i1 %i.aeu, %i.aet
  %i.aew = and i1 %i.aes, %i.aev, !nosanitize !9
  br i1 %i.aew, label %bb.cz, label %.split7682.us.a, !prof !10, !nosanitize !9

bb.cz:                                            ; preds = %.lr.ph7679.us
  %i.aex = ptrtoint ptr %i.aeq to i64, !nosanitize !9 ; 2 uses
  %i.aey = and i64 %i.aex, 3, !nosanitize !9
  %i.aez = icmp eq i64 %i.aey, 0, !nosanitize !9
  br i1 %i.aez, label %bb.da, label %.split7686.a, !prof !10, !nosanitize !9

bb.da:                                            ; preds = %bb.cz
  %i.afa = load float, ptr %i.aeq, align 4, !tbaa !161
  %i.afb = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aeo, i32 -1) ; 2 uses
  %i.afc = extractvalue { i32, i1 } %i.afb, 1, !nosanitize !9
  br i1 %i.afc, label %.split7714.us, label %bb.db, !prof !19, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  %i.afd = extractvalue { i32, i1 } %i.afb, 0, !nosanitize !9 ; 2 uses
  %i.afe = sext i32 %i.afd to i64                 ; 2 uses
  %i.aff = getelementptr inbounds [8 x i8], ptr %.fr8559, i64 %i.afe ; 4 uses
  %i.afg = shl nsw i64 %i.afe, 3
  %i.afh = add i64 %i.afg, %i.adu, !nosanitize !9 ; 3 uses
  %i.afi = icmp ne i64 %i.afh, 0
  %i.afj = icmp uge i64 %i.afh, %i.adu, !nosanitize !9
  %i.afk = icmp slt i32 %i.afd, 0
  %i.afl = xor i1 %i.afk, %i.afj
  %i.afm = and i1 %i.afi, %i.afl, !nosanitize !9
  br i1 %i.afm, label %bb.dc, label %.split7717.us, !prof !10, !nosanitize !9

bb.dc:                                            ; preds = %bb.db
  %i.afn = ptrtoint ptr %i.aff to i64, !nosanitize !9 ; 2 uses
  %i.afo = and i64 %i.afn, 3, !nosanitize !9
  %i.afp = icmp eq i64 %i.afo, 0, !nosanitize !9
  br i1 %i.afp, label %bb.dd, label %.split7721.us, !prof !10, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  %i.afq = load float, ptr %i.aff, align 4, !tbaa !161
  %i.afr = fcmp olt float %i.afa, %i.afq
  br i1 %i.afr, label %bb.de, label %.critedge5.us

bb.de:                                            ; preds = %bb.dd
  %i.afs = load i64, ptr %i.aeq, align 4
  %i.aft = load i64, ptr %i.aff, align 4
  store i64 %i.aft, ptr %i.aeq, align 4
  store i64 %i.afs, ptr %i.aff, align 4
  %i.afu = add i64 %.08387678.us7705, -1          ; 2 uses
  %i.afv = icmp ugt i64 %i.afu, %.0815
  br i1 %i.afv, label %.lr.ph7679.us, label %.critedge5.us, !llvm.loop !33

.critedge5.us:                                    ; preds = %bb.de, %bb.dd, %.preheader1324.us
  %.0837.us = add i64 %.08377703.us, 1            ; 2 uses
  %.not984.us = icmp ugt i64 %.0837.us, %.0818.ph22086
  br i1 %.not984.us, label %._crit_edge, label %.preheader1324.us, !llvm.loop !34

bb.df:                                            ; preds = %bb.cy
  %i.afw = lshr i64 %i.aek, 1
  %i.afx = add i64 %i.afw, %.0815
  %sext1001 = shl i64 %i.afx, 32
  %i.afy = ashr exact i64 %sext1001, 29           ; 3 uses
  %i.afz = getelementptr inbounds i8, ptr %.fr8559, i64 %i.afy ; 12 uses
  %i.aga = add i64 %i.afy, %i.adu, !nosanitize !9 ; 3 uses
  %i.agb = icmp eq i64 %i.aga, 0
  %i.agc = xor i1 %.not8560, %i.agb
  %i.agd = icmp uge i64 %i.aga, %i.adu, !nosanitize !9
  %i.age = icmp slt i64 %i.afy, 0
  %i.agf = xor i1 %i.age, %i.agd
  %i.agg = and i1 %i.agc, %i.agf, !nosanitize !9
  br i1 %i.agg, label %bb.dh, label %bb.dg, !prof !10, !nosanitize !9

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @52, i64 %i.adu, i64 %i.aga) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dh:                                            ; preds = %bb.df
  %i.agh = ptrtoint ptr %i.afz to i64, !nosanitize !9 ; 2 uses
  %i.agi = and i64 %i.agh, 3, !nosanitize !9
  %i.agj = icmp eq i64 %i.agi, 0, !nosanitize !9
  %i.agk = and i1 %.not8560, %i.agj
  br i1 %i.agk, label %bb.dj, label %bb.di, !prof !10, !nosanitize !9

bb.di:                                            ; preds = %bb.dh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @53, i64 %i.agh) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dj:                                            ; preds = %bb.dh
  %i.agl = load float, ptr %i.afz, align 4, !tbaa !161 ; 3 uses
  %i.agm = trunc i64 %.0815 to i32
  %i.agn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.agm, i32 1), !nosanitize !9 ; 2 uses
  %i.ago = extractvalue { i32, i1 } %i.agn, 1, !nosanitize !9
  br i1 %i.ago, label %bb.dk, label %bb.dl, !prof !19, !nosanitize !9

bb.dk:                                            ; preds = %bb.dj
  %i.agp = and i64 %.0815, 4294967295
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @54, i64 %i.agp, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dl:                                            ; preds = %bb.dj
  %i.agq = extractvalue { i32, i1 } %i.agn, 0, !nosanitize !9 ; 2 uses
  %i.agr = sext i32 %i.agq to i64                 ; 2 uses
  %i.ags = getelementptr inbounds [8 x i8], ptr %.fr8559, i64 %i.agr ; 8 uses
  %i.agt = shl nsw i64 %i.agr, 3
  %i.agu = add i64 %i.agt, %i.adu, !nosanitize !9 ; 3 uses
  %i.agv = icmp ne i64 %i.agu, 0
  %i.agw = icmp uge i64 %i.agu, %i.adu, !nosanitize !9
  %i.agx = icmp slt i32 %i.agq, 0
  %i.agy = xor i1 %i.agx, %i.agw
  %i.agz = and i1 %i.agv, %i.agy, !nosanitize !9
  br i1 %i.agz, label %bb.dn, label %bb.dm, !prof !10, !nosanitize !9

bb.dm:                                            ; preds = %bb.dl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.adu, i64 %i.agu) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dn:                                            ; preds = %bb.dl
  %i.aha = ptrtoint ptr %i.ags to i64, !nosanitize !9 ; 2 uses
  %i.ahb = and i64 %i.aha, 3, !nosanitize !9
  %i.ahc = icmp eq i64 %i.ahb, 0, !nosanitize !9
  br i1 %i.ahc, label %bb.dp, label %bb.do, !prof !10, !nosanitize !9

bb.do:                                            ; preds = %bb.dn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @56, i64 %i.aha) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.dp:                                            ; preds = %bb.dn
  %i.ahd = load float, ptr %i.ags, align 4, !tbaa !161
  %i.ahe = fcmp olt float %i.agl, %i.ahd
  br i1 %i.ahe, label %bb.dq, label %bb.dy

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.aed, label %bb.ds, label %bb.dr, !prof !10, !nosanitize !9

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @57, i64 %i.adu, i64 %i.ady) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ds:                                            ; preds = %bb.dq
  br i1 %i.aej, label %bb.du, label %bb.dt, !prof !10, !nosanitize !9

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @58, i64 %i.aeh) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.du:                                            ; preds = %bb.ds
  %i.ahf = load float, ptr %i.adx, align 4, !tbaa !161
  %i.ahg = fcmp olt float %i.ahf, %i.agl
  %i.ahh = load i64, ptr %i.ags, align 4          ; 4 uses
end_hunk_0
begin_hunk_1_@b3ComputeMeshManifolds:bb.a
.loopexit13676:                                   ; preds = %.lr.ph20687, %bb.el
  %.lcssa11888 = phi i64 [ %i.ajk, %bb.el ], [ %i.aiv, %.lr.ph20687 ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @64, i64 %.lcssa11888) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.em:                                            ; preds = %bb.el
  %i.ajn = load float, ptr %i.ajd, align 4, !tbaa !161
  %i.ajo = fcmp olt float %i.ajn, %i.aiz
  br i1 %i.ajo, label %.peel.next, label %.preheader1323, !llvm.loop !35

.preheader1323:                                   ; preds = %bb.em, %bb.ek
  %.lcssa11887 = phi i64 [ %i.ait, %bb.ek ], [ %i.ajb, %bb.em ] ; 2 uses
  %.lcssa11884 = phi ptr [ %i.aiu, %bb.ek ], [ %i.ajd, %bb.em ] ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %.preheader1323, %bb.er
  %.1829 = phi i64 [ %i.ajp, %bb.er ], [ %.082820685, %.preheader1323 ] ; 7 uses
  %i.ajp = add i64 %.1829, -1                     ; 4 uses
  %sext1006 = shl i64 %i.ajp, 32
  %i.ajq = ashr exact i64 %sext1006, 29           ; 3 uses
  %i.ajr = getelementptr inbounds i8, ptr %.fr8559, i64 %i.ajq ; 5 uses
  %i.ajs = add i64 %i.ajq, %i.adu, !nosanitize !9 ; 3 uses
  %i.ajt = icmp ne i64 %i.ajs, 0
  %i.aju = icmp uge i64 %i.ajs, %i.adu, !nosanitize !9
  %i.ajv = icmp slt i64 %i.ajq, 0
  %i.ajw = xor i1 %i.ajv, %i.aju
  %i.ajx = and i1 %i.ajt, %i.ajw, !nosanitize !9
  br i1 %i.ajx, label %bb.ep, label %bb.eo, !prof !10, !nosanitize !9

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @65, i64 %i.adu, i64 %i.ajs) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ep:                                            ; preds = %bb.en
  %i.ajy = ptrtoint ptr %i.ajr to i64, !nosanitize !9 ; 2 uses
  %i.ajz = and i64 %i.ajy, 3, !nosanitize !9
  %i.aka = icmp eq i64 %i.ajz, 0, !nosanitize !9
  br i1 %i.aka, label %bb.er, label %bb.eq, !prof !10, !nosanitize !9

bb.eq:                                            ; preds = %bb.ep
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @66, i64 %i.ajy) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.er:                                            ; preds = %bb.ep
  %i.akb = load float, ptr %i.ajr, align 4, !tbaa !161
  %i.akc = fcmp olt float %i.aiz, %i.akb
  br i1 %i.akc, label %bb.en, label %bb.es, !llvm.loop !36

bb.es:                                            ; preds = %bb.er
  %.not1007 = icmp ult i64 %.lcssa11887, %i.ajp
  %i.akd = load i64, ptr %i.ajr, align 4          ; 2 uses
  br i1 %.not1007, label %.peel.begin, label %bb.et

.peel.begin:                                      ; preds = %bb.es
  %i.ake = load i64, ptr %.lcssa11884, align 4
  store i64 %i.akd, ptr %.lcssa11884, align 4
  store i64 %i.ake, ptr %i.ajr, align 4
  %i.akf = add i64 %.lcssa11887, 1                ; 2 uses
  %sext1005.peel = shl i64 %i.akf, 32
  %i.akg = ashr exact i64 %sext1005.peel, 29      ; 3 uses
  %i.akh = add i64 %i.akg, %i.adu, !nosanitize !9 ; 3 uses
  %i.aki = icmp ne i64 %i.akh, 0
  %i.akj = icmp uge i64 %i.akh, %i.adu, !nosanitize !9
  %i.akk = icmp slt i64 %i.akg, 0
  %i.akl = xor i1 %i.akk, %i.akj
  %i.akm = and i1 %i.aki, %i.akl, !nosanitize !9
  br i1 %i.akm, label %.lr.ph20687, label %.loopexit, !prof !164, !nosanitize !9

bb.et:                                            ; preds = %bb.es
  %i.akn = load i64, ptr %i.ahz, align 4
  store i64 %i.akd, ptr %i.ahz, align 4
  store i64 %i.akn, ptr %i.ajr, align 4
  %i.ako = add i64 %.1829, -2                     ; 5 uses
  %i.akp = sub i64 %i.ako, %.0815
  %i.akq = sub i64 %.0818.ph22086, %.1829
  %.not1008 = icmp ult i64 %i.akp, %i.akq
  br i1 %.not1008, label %bb.fc, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.akr = icmp eq i64 %.1829, %.0818.ph22086
  br i1 %i.akr, label %.outer22085, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aks = icmp ult i64 %.0823.ph, 32, !nosanitize !9
  br i1 %i.aks, label %bb.ex, label %bb.ew, !prof !10, !nosanitize !9

bb.ew:                                            ; preds = %bb.ev
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @68, i64 %.0823.ph) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ex:                                            ; preds = %bb.ev
  %i.akt = getelementptr inbounds nuw [16 x i8], ptr %24, i64 %.0823.ph ; 2 uses
  %i.aku = shl nuw nsw i64 %.0823.ph, 4
  %i.akv = add i64 %i.aku, %i.adv, !nosanitize !9 ; 3 uses
  %.not1012 = icmp ult i64 %i.akv, %i.adv, !nosanitize !9
  br i1 %.not1012, label %bb.ey, label %bb.ez, !prof !19, !nosanitize !9

bb.ey:                                            ; preds = %bb.ex
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.adv, i64 %i.akv) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ez:                                            ; preds = %bb.ex
  %.not1011 = icmp eq i64 %i.akv, 0, !nosanitize !9
  store i64 %.0815, ptr %i.akt, align 16, !tbaa !166
  br i1 %.not1011, label %bb.fa, label %bb.fb, !prof !19, !nosanitize !9

bb.fa:                                            ; preds = %bb.ez
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.adv, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fb:                                            ; preds = %bb.ez
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  store i64 %i.ako, ptr %i.akw, align 8, !tbaa !167
  %i.akx = add nuw nsw i64 %.0823.ph, 1
  br label %.outer.backedge

bb.fc:                                            ; preds = %bb.et
  %i.aky = icmp eq i64 %.0815, %i.ako
  br i1 %i.aky, label %bb.cy, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.akz = icmp ult i64 %.0823.ph, 32, !nosanitize !9
  br i1 %i.akz, label %bb.ff, label %bb.fe, !prof !10, !nosanitize !9

bb.fe:                                            ; preds = %bb.fd
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @71, i64 %.0823.ph) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ff:                                            ; preds = %bb.fd
  %i.ala = getelementptr inbounds nuw [16 x i8], ptr %24, i64 %.0823.ph ; 2 uses
  %i.alb = shl nuw nsw i64 %.0823.ph, 4
  %i.alc = add i64 %i.alb, %i.adv, !nosanitize !9 ; 3 uses
  %.not1010 = icmp ult i64 %i.alc, %i.adv, !nosanitize !9
  br i1 %.not1010, label %bb.fg, label %bb.fh, !prof !19, !nosanitize !9

bb.fg:                                            ; preds = %bb.ff
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @72, i64 %i.adv, i64 %i.alc) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fh:                                            ; preds = %bb.ff
  %.not1009 = icmp eq i64 %i.alc, 0, !nosanitize !9
  store i64 %.1829, ptr %i.ala, align 16, !tbaa !166
  br i1 %.not1009, label %bb.fi, label %bb.fj, !prof !19, !nosanitize !9

bb.fi:                                            ; preds = %bb.fh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @73, i64 %i.adv, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fj:                                            ; preds = %bb.fh
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  store i64 %.0818.ph22086, ptr %i.ald, align 8, !tbaa !167
  %i.ale = add nuw nsw i64 %.0823.ph, 1
  br label %.outer.backedge

.preheader1324:                                   ; preds = %.preheader1324.lr.ph, %.critedge5
  %.08377703 = phi i64 [ %.0837, %.critedge5 ], [ %.08377701, %.preheader1324.lr.ph ] ; 3 uses
  %i.alf = icmp ugt i64 %.08377703, %.0815
  br i1 %i.alf, label %.lr.ph7679.split.us, label %.critedge5

.lr.ph7679.split.us:                              ; preds = %.preheader1324
  %sext.us = shl i64 %.08377703, 32               ; 2 uses
  %i.alg = ashr exact i64 %sext.us, 29            ; 2 uses
  %i.alh = icmp eq i64 %sext.us, 0
  %i.ali = icmp uge i64 %i.alg, %i.adu, !nosanitize !9
  %i.alj = and i1 %i.alh, %i.ali
  br i1 %i.alj, label %.split7686.a, label %.split7682.us.a, !prof !10, !nosanitize !9

.split7682.us.a:                                  ; preds = %.lr.ph7679.us, %.lr.ph7679.split.us
  %.us-phi7684.a = phi i64 [ %i.alg, %.lr.ph7679.split.us ], [ %i.aer, %.lr.ph7679.us ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @74, i64 %i.adu, i64 %.us-phi7684.a) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7686.a:                                     ; preds = %bb.cz, %.lr.ph7679.split.us
  %.us-phi7687.a = phi i64 [ 0, %.lr.ph7679.split.us ], [ %i.aex, %bb.cz ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %.us-phi7687.a) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7714.us:                                    ; preds = %bb.da
  %i.alk = and i64 %.08387678.us7705, 4294967295
  call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @76, i64 %i.alk, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7717.us:                                    ; preds = %bb.db
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.adu, i64 %i.afh) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split7721.us:                                    ; preds = %bb.dc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @78, i64 %i.afn) #8, !nosanitize !9
  unreachable, !nosanitize !9

.critedge5:                                       ; preds = %.preheader1324
  %.0837 = add i64 %.08377703, 1                  ; 2 uses
  %.not984 = icmp ugt i64 %.0837, %.0818.ph22086
  br i1 %.not984, label %._crit_edge, label %.preheader1324, !llvm.loop !34

._crit_edge:                                      ; preds = %.critedge5, %.critedge5.us, %.preheader1325
  %i.all = icmp eq i64 %.0823.ph, 0
  br i1 %i.all, label %bb.fr, label %bb.fk

bb.fk:                                            ; preds = %._crit_edge
  %i.alm = add i64 %.0823.ph, -1                  ; 3 uses
  %i.aln = icmp ult i64 %.0823.ph, 33
  br i1 %i.aln, label %bb.fm, label %bb.fl, !prof !10, !nosanitize !9

bb.fl:                                            ; preds = %bb.fk
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @79, i64 %i.alm) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fm:                                            ; preds = %bb.fk
  %i.alo = getelementptr [16 x i8], ptr %24, i64 %.0823.ph ; 2 uses
  %i.alp = shl nuw nsw i64 %i.alm, 4
  %i.alq = add i64 %i.alp, %i.adv, !nosanitize !9 ; 3 uses
  %.not986 = icmp ult i64 %i.alq, %i.adv, !nosanitize !9
  br i1 %.not986, label %bb.fn, label %bb.fo, !prof !19, !nosanitize !9

bb.fn:                                            ; preds = %bb.fm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.adv, i64 %i.alq) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fo:                                            ; preds = %bb.fm
  %.not985 = icmp eq i64 %i.alq, 0, !nosanitize !9
  br i1 %.not985, label %bb.fp, label %bb.fq, !prof !19, !nosanitize !9

bb.fp:                                            ; preds = %bb.fo
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.adv, i64 0) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fq:                                            ; preds = %bb.fo
  %25 = getelementptr i8, ptr %i.alo, i64 -16
  %i.alr = load i64, ptr %25, align 16, !tbaa !166
  %i.als = getelementptr i8, ptr %i.alo, i64 -8
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !167
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.fq, %bb.fj, %bb.fb
  %.0823.ph.be = phi i64 [ %i.akx, %bb.fb ], [ %i.ale, %bb.fj ], [ %i.alm, %bb.fq ]
  %.0818.ph.be = phi i64 [ %.0818.ph22086, %bb.fb ], [ %i.ako, %bb.fj ], [ %i.alt, %bb.fq ]
  %.0815.ph.be = phi i64 [ %.1829, %bb.fb ], [ %.0815, %bb.fj ], [ %i.alr, %bb.fq ]
  br label %.outer

bb.fr:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.cw
  %i.alu = icmp sgt i32 %.0784.lcssa, 0
  br i1 %i.alu, label %.lr.ph7733, label %.loopexit1322

.lr.ph7733:                                       ; preds = %bb.fs
  %i.alv = ptrtoint ptr %.fr8559 to i64, !nosanitize !9 ; 5 uses
  %.not8561 = icmp eq ptr %.fr8559, null, !nosanitize !9
  %i.alw = ptrtoint ptr %.fr8556 to i64           ; 4 uses
  %i.alx = ptrtoint ptr %.fr8568 to i64           ; 3 uses
  %i.aly = icmp ne ptr %.fr8568, null             ; 2 uses
  br i1 %.not8561, label %.split7740, label %.lr.ph7733.split, !prof !19

.lr.ph7733.split:                                 ; preds = %.lr.ph7733
  %.not8562 = icmp eq ptr %.fr8556, null
  br i1 %.not8562, label %.lr.ph7733.split.split.us, label %.lr.ph7733.split.split.preheader, !prof !19

.lr.ph7733.split.split.preheader:                 ; preds = %.lr.ph7733.split
  %wide.trip.count13684 = zext nneg i32 %.0784.lcssa to i64
  br label %.lr.ph7733.split.split

.lr.ph7733.split.split.us:                        ; preds = %.lr.ph7733.split
  %i.alz = and i64 %i.alv, 3, !nosanitize !9
  %i.ama = icmp eq i64 %i.alz, 0, !nosanitize !9
  br i1 %i.ama, label %bb.ft, label %.split7740, !prof !10, !nosanitize !9

bb.ft:                                            ; preds = %.lr.ph7733.split.split.us
  %i.amb = getelementptr inbounds nuw i8, ptr %.fr8559, i64 4
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !168 ; 2 uses
  %i.amd = sext i32 %i.amc to i64
  %i.ame = shl nsw i64 %i.amd, 3                  ; 2 uses
  %i.amf = icmp eq i32 %i.amc, 0
  %i.amg = icmp uge i64 %i.ame, %i.alw, !nosanitize !9
  %i.amh = and i1 %i.amf, %i.amg
  br i1 %i.amh, label %.split7759, label %.split7755.us, !prof !10, !nosanitize !9

.lr.ph7733.split.split:                           ; preds = %.lr.ph7733.split.split.preheader, %.critedge1014
  %indvars.iv13681 = phi i64 [ 0, %.lr.ph7733.split.split.preheader ], [ %indvars.iv.next13682, %.critedge1014 ] ; 3 uses
  %.67731 = phi i32 [ %.0773.lcssa, %.lr.ph7733.split.split.preheader ], [ %.7, %.critedge1014 ] ; 11 uses
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %.fr8559, i64 %indvars.iv13681 ; 2 uses
  %i.amj = shl nuw nsw i64 %indvars.iv13681, 3
  %i.amk = add i64 %i.amj, %i.alv, !nosanitize !9 ; 2 uses
  %.not8563 = icmp ult i64 %i.amk, %i.alv, !nosanitize !9
  br i1 %.not8563, label %.split7736.us, label %bb.fu, !prof !19, !nosanitize !9

.split7736.us:                                    ; preds = %.lr.ph7733.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.alv, i64 %i.amk) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fu:                                            ; preds = %.lr.ph7733.split.split
  %i.aml = ptrtoint ptr %i.ami to i64, !nosanitize !9 ; 2 uses
  %i.amm = and i64 %i.aml, 3, !nosanitize !9
  %i.amn = icmp eq i64 %i.amm, 0, !nosanitize !9
  br i1 %i.amn, label %bb.fv, label %.split7740, !prof !10, !nosanitize !9

.split7740:                                       ; preds = %bb.fu, %.lr.ph7733, %.lr.ph7733.split.split.us
  %.us-phi7741 = phi i64 [ 0, %.lr.ph7733 ], [ %i.alv, %.lr.ph7733.split.split.us ], [ %i.aml, %bb.fu ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %.us-phi7741) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fv:                                            ; preds = %bb.fu
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ami, i64 4
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !168 ; 2 uses
  %i.amq = sext i32 %i.amp to i64                 ; 2 uses
  %i.amr = getelementptr inbounds [8 x i8], ptr %.fr8556, i64 %i.amq ; 2 uses
  %i.ams = shl nsw i64 %i.amq, 3
  %i.amt = add i64 %i.ams, %i.alw, !nosanitize !9 ; 3 uses
  %i.amu = icmp ne i64 %i.amt, 0
  %i.amv = icmp uge i64 %i.amt, %i.alw, !nosanitize !9
  %i.amw = icmp slt i32 %i.amp, 0
  %i.amx = xor i1 %i.amw, %i.amv
  %i.amy = and i1 %i.amu, %i.amx, !nosanitize !9
  br i1 %i.amy, label %bb.fw, label %.split7755.us, !prof !10, !nosanitize !9

.split7755.us:                                    ; preds = %bb.fv, %bb.ft
  %.us-phi7757 = phi i64 [ %i.ame, %bb.ft ], [ %i.amt, %bb.fv ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.alw, i64 %.us-phi7757) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fw:                                            ; preds = %bb.fv
  %i.amz = ptrtoint ptr %i.amr to i64, !nosanitize !9 ; 2 uses
  %i.ana = and i64 %i.amz, 7, !nosanitize !9
  %i.anb = icmp eq i64 %i.ana, 0, !nosanitize !9
  br i1 %i.anb, label %bb.fx, label %.split7759, !prof !10, !nosanitize !9

.split7759:                                       ; preds = %bb.fw, %bb.ft
  %.us-phi7760 = phi i64 [ 0, %bb.ft ], [ %i.amz, %bb.fw ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %.us-phi7760) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fx:                                            ; preds = %bb.fw
  %i.anc = load ptr, ptr %i.amr, align 8, !tbaa !158 ; 7 uses
  %i.and = icmp ne ptr %i.anc, null, !nosanitize !9
  %i.ane = ptrtoint ptr %i.anc to i64, !nosanitize !9 ; 2 uses
  %i.anf = and i64 %i.ane, 7, !nosanitize !9
  %i.ang = icmp eq i64 %i.anf, 0, !nosanitize !9
  %i.anh = and i1 %i.and, %i.ang, !nosanitize !9
  br i1 %i.anh, label %bb.fz, label %bb.fy, !prof !10, !nosanitize !9

bb.fy:                                            ; preds = %bb.fx
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @86, i64 %i.ane) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.fz:                                            ; preds = %bb.fx
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anc, i64 40 ; 3 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anc, i64 44 ; 3 uses
  %i.ank = load i32, ptr %i.ani, align 8, !tbaa !151
  %i.anl = load i32, ptr %i.anj, align 4, !tbaa !169
  %i.anm = call fastcc zeroext i1 @b3AddEdge(ptr noundef %19, i32 noundef %i.ank, i32 noundef %i.anl)
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anc, i64 48 ; 3 uses
  %i.ano = load i32, ptr %i.anj, align 4, !tbaa !169
  %i.anp = load i32, ptr %i.ann, align 8, !tbaa !170
  %i.anq = call fastcc zeroext i1 @b3AddEdge(ptr noundef %19, i32 noundef %i.ano, i32 noundef %i.anp)
  %i.anr = load i32, ptr %i.ann, align 8, !tbaa !170
  %i.ans = load i32, ptr %i.ani, align 8, !tbaa !151
  %i.ant = call fastcc zeroext i1 @b3AddEdge(ptr noundef %19, i32 noundef %i.anr, i32 noundef %i.ans)
  %i.anu = load i32, ptr %i.ani, align 8, !tbaa !151
  %i.anv = call fastcc zeroext i1 @b3AddVertex(ptr noundef %20, i32 noundef %i.anu)
  %i.anw = load i32, ptr %i.anj, align 4, !tbaa !169
  %i.anx = call fastcc zeroext i1 @b3AddVertex(ptr noundef %20, i32 noundef %i.anw)
  %i.any = load i32, ptr %i.ann, align 8, !tbaa !170
  %i.anz = call fastcc zeroext i1 @b3AddVertex(ptr noundef %20, i32 noundef %i.any)
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anc, i64 56
  %i.aob = load i32, ptr %i.aoa, align 8, !tbaa !143
  switch i32 %i.aob, label %.critedge1014 [
    i32 8, label %.split1309
    i32 7, label %.split1312
    i32 3, label %bb.ga
    i32 4, label %.split1310
    i32 5, label %.split1311
    i32 6, label %.split
  ]

.split1310:                                       ; preds = %bb.fz
  br i1 %i.anq, label %bb.gb, label %.critedge1014

.split1311:                                       ; preds = %bb.fz
  br i1 %i.ant, label %bb.gb, label %.critedge1014

.split:                                           ; preds = %bb.fz
  br i1 %i.anv, label %bb.gb, label %.critedge1014

.split1312:                                       ; preds = %bb.fz
  br i1 %i.anx, label %bb.gb, label %.critedge1014

.split1309:                                       ; preds = %bb.fz
  br i1 %i.anz, label %bb.gb, label %.critedge1014

bb.ga:                                            ; preds = %bb.fz
  br i1 %i.anm, label %bb.gb, label %.critedge1014

bb.gb:                                            ; preds = %.split1312, %.split1311, %.split1310, %.split1309, %.split, %bb.ga
  %i.aoc = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.67731, i32 1), !nosanitize !9 ; 2 uses
  %i.aod = extractvalue { i32, i1 } %i.aoc, 0, !nosanitize !9
  %i.aoe = extractvalue { i32, i1 } %i.aoc, 1, !nosanitize !9
  br i1 %i.aoe, label %bb.gc, label %bb.gd, !prof !19, !nosanitize !9

bb.gc:                                            ; preds = %bb.gb
  %i.aof = zext nneg i32 %.67731 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @87, i64 %i.aof, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.gd:                                            ; preds = %bb.gb
  %i.aog = sext i32 %.67731 to i64                ; 2 uses
  %i.aoh = getelementptr inbounds [8 x i8], ptr %.fr8568, i64 %i.aog ; 2 uses
  %i.aoi = shl nsw i64 %i.aog, 3
  %i.aoj = add i64 %i.aoi, %i.alx, !nosanitize !9 ; 3 uses
  %i.aok = icmp eq i64 %i.aoj, 0
  %i.aol = xor i1 %i.aly, %i.aok
  %i.aom = icmp uge i64 %i.aoj, %i.alx, !nosanitize !9
  %i.aon = icmp slt i32 %.67731, 0
  %i.aoo = xor i1 %i.aon, %i.aom
  %i.aop = and i1 %i.aol, %i.aoo, !nosanitize !9
  br i1 %i.aop, label %bb.gf, label %bb.ge, !prof !10, !nosanitize !9

bb.ge:                                            ; preds = %bb.gd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 %i.alx, i64 %i.aoj) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.gf:                                            ; preds = %bb.gd
  %i.aoq = ptrtoint ptr %i.aoh to i64, !nosanitize !9 ; 2 uses
  %i.aor = and i64 %i.aoq, 7, !nosanitize !9
  %i.aos = icmp eq i64 %i.aor, 0, !nosanitize !9
  %i.aot = and i1 %i.aly, %i.aos
  br i1 %i.aot, label %bb.gh, label %bb.gg, !prof !10, !nosanitize !9

bb.gg:                                            ; preds = %bb.gf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @89, i64 %i.aoq) #8, !nosanitize !9
end_hunk_1
