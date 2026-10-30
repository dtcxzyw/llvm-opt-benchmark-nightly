Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4cli?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  br i1 %i.ko, label %bb.dy, label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.kq, label %bb.dz, label %.preheader739.backedge

bb.dz:                                            ; preds = %bb.dy
  %i.kr = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ks = lshr i64 %i.kn, 10
  %i.kt = trunc i64 %i.ks to i32
  %i.ku = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kr, ptr noundef nonnull @.str.46, i32 noundef %i.kt) #23 ; 0 uses
  br label %.preheader739.backedge

bb.ea:                                            ; preds = %bb.dx
  br i1 %i.kq, label %bb.eb, label %.preheader739.backedge

bb.eb:                                            ; preds = %bb.ea
  %i.kv = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kw = trunc nuw nsw i64 %i.kn to i32
  %i.kx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kv, ptr noundef nonnull @.str.47, i32 noundef %i.kw) #23 ; 0 uses
  br label %.preheader739.backedge

bb.ec:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.ed:                                            ; preds = %.tail734.thread.thread
  tail call void @BMK_setBenchSeparately(i32 noundef 1) #22
  br label %.thread563

bb.ee:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.ef:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

bb.eg:                                            ; preds = %.tail734.thread.thread
  %i.ky = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 4 uses
  store ptr %i.ky, ptr %i.d, align 8, !tbaa !17
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !10  ; 3 uses
  %i.la = add i8 %i.kz, -48
  %or.cond19.i526 = icmp ult i8 %i.la, 10
  br i1 %or.cond19.i526, label %.lr.ph.i535, label %.critedge.i527

.lr.ph.i535:                                      ; preds = %bb.eg, %.lr.ph.i535
  %i.lb = phi i8 [ %i.lh, %.lr.ph.i535 ], [ %i.kz, %bb.eg ]
  %.020.i536 = phi i32 [ %i.lf, %.lr.ph.i535 ], [ 0, %bb.eg ]
  %i.lc = phi ptr [ %i.lg, %.lr.ph.i535 ], [ %i.ky, %bb.eg ]
  %i.ld = mul i32 %.020.i536, 10
  %narrow.i537 = add nsw i8 %i.lb, -48
  %i.le = zext nneg i8 %narrow.i537 to i32
  %i.lf = add i32 %i.ld, %i.le                    ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 4 uses
  store ptr %i.lg, ptr %i.d, align 8, !tbaa !17
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !10  ; 3 uses
  %i.li = add i8 %i.lh, -48
  %or.cond.i538 = icmp ult i8 %i.li, 10
  br i1 %or.cond.i538, label %.lr.ph.i535, label %.critedge.i527, !llvm.loop !0

.critedge.i527:                                   ; preds = %.lr.ph.i535, %bb.eg
  %.lcssa11841187.lcssa1195 = phi ptr [ %i.ky, %bb.eg ], [ %i.lg, %.lr.ph.i535 ] ; 4 uses
  %.0.lcssa.i528 = phi i32 [ 0, %bb.eg ], [ %i.lf, %.lr.ph.i535 ] ; 2 uses
  %.lcssa.i530 = phi i8 [ %i.kz, %bb.eg ], [ %i.lh, %.lr.ph.i535 ] ; 2 uses
  switch i8 %.lcssa.i530, label %readU32FromChar.exit539 [
    i8 75, label %bb.eh
    i8 77, label %bb.eh
  ]

bb.eh:                                            ; preds = %.critedge.i527, %.critedge.i527
  %i.lj = icmp eq i8 %.lcssa.i530, 77
  %spec.select.v.i531 = select i1 %i.lj, i32 20, i32 10
  %spec.select.i532 = shl i32 %.0.lcssa.i528, %spec.select.v.i531 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 1 ; 3 uses
  store ptr %i.lk, ptr %i.d, align 8, !tbaa !17
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !10  ; 2 uses
  %i.lm = icmp eq i8 %i.ll, 105
  br i1 %i.lm, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ln = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 2 ; 3 uses
  store ptr %i.ln, ptr %i.d, align 8, !tbaa !17
  %.pre.i534 = load i8, ptr %i.ln, align 1, !tbaa !10
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.lcssa11841187.lcssa1194 = phi ptr [ %i.ln, %bb.ei ], [ %i.lk, %bb.eh ]
  %i.lo = phi i8 [ %.pre.i534, %bb.ei ], [ %i.ll, %bb.eh ]
  %i.lp = phi i64 [ 2, %bb.ei ], [ 1, %bb.eh ]
  %i.lq = icmp eq i8 %i.lo, 66
  br i1 %i.lq, label %bb.ek, label %readU32FromChar.exit539

bb.ek:                                            ; preds = %bb.ej
  %i.lr = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1195, i64 %i.lp
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  br label %readU32FromChar.exit539

readU32FromChar.exit539:                          ; preds = %.critedge.i527, %bb.ej, %bb.ek
  %.lcssa11841187.lcssa1196 = phi ptr [ %i.ls, %bb.ek ], [ %.lcssa11841187.lcssa1194, %bb.ej ], [ %.lcssa11841187.lcssa1195, %.critedge.i527 ]
  %.2.i533 = phi i32 [ %spec.select.i532, %bb.ek ], [ %spec.select.i532, %bb.ej ], [ %.0.lcssa.i528, %.critedge.i527 ]
  %i.lt = getelementptr inbounds i8, ptr %.lcssa11841187.lcssa1196, i64 -1 ; 2 uses
  store ptr %i.lt, ptr %i.d, align 8, !tbaa !17
  %i.lu = load i32, ptr @displayLevel, align 4, !tbaa !12
  tail call void @BMK_setNotificationLevel(i32 noundef %i.lu) #22
  tail call void @BMK_setNbSeconds(i32 noundef %.2.i533) #22
  br label %.thread563

bb.el:                                            ; preds = %.tail734.thread.thread
  br label %.thread563

.thread1544:                                      ; preds = %.tail734.thread.thread, %.tail734
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

.thread563.loopexit:                              ; preds = %.preheader739, %bb.dn
  store ptr %.lcssa11841187, ptr %i.d, align 8
  br label %.thread563

.thread563:                                       ; preds = %.thread563.loopexit, %bb.ee, %.tail734.thread.thread, %bb.dh, %bb.di, %bb.el, %readU32FromChar.exit539, %bb.ef, %bb.ed, %bb.ec, %bb.dj, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %readU32FromChar.exit509, %readU32FromChar.exit494
  %.lcssa11841187.lcssa1193 = phi ptr [ %i.lt, %readU32FromChar.exit539 ], [ %i.hp, %readU32FromChar.exit494 ], [ %i.ep, %bb.el ], [ %i.il, %readU32FromChar.exit509 ], [ %i.iw, %bb.da ], [ %i.ep, %bb.db ], [ %i.ep, %bb.dc ], [ %i.ep, %bb.dd ], [ %i.ep, %bb.de ], [ %i.ep, %bb.df ], [ %i.ep, %bb.dg ], [ %i.ep, %bb.di ], [ %i.ep, %bb.dh ], [ %i.ep, %bb.dj ], [ %i.ep, %bb.ef ], [ %i.ep, %bb.ee ], [ %i.ep, %bb.ec ], [ %i.ep, %bb.ed ], [ %i.ep, %.tail734.thread.thread ], [ %.lcssa11841187, %.thread563.loopexit ] ; 2 uses
  %.2340 = phi i32 [ %.1339.ph1208, %readU32FromChar.exit539 ], [ %.1339.ph1208, %readU32FromChar.exit494 ], [ %.1339.ph1208, %bb.el ], [ %.1339.ph1208, %readU32FromChar.exit509 ], [ %.1339.ph1208, %bb.da ], [ 1, %bb.db ], [ %.1339.ph1208, %bb.dc ], [ %.1339.ph1208, %bb.dd ], [ %.1339.ph1208, %bb.de ], [ %.1339.ph1208, %bb.df ], [ %.1339.ph1208, %bb.dg ], [ %.1339.ph1208, %bb.di ], [ %.1339.ph1208, %bb.dh ], [ %.1339.ph1208, %bb.dj ], [ %.1339.ph1208, %bb.ef ], [ %.1339.ph1208, %bb.ee ], [ %.1339.ph1208, %bb.ec ], [ %.1339.ph1208, %bb.ed ], [ %.1339.ph1208, %.tail734.thread.thread ], [ %.1339.ph1208, %.thread563.loopexit ] ; 2 uses
  %.3336 = phi i32 [ %.2335.ph1209, %readU32FromChar.exit539 ], [ %.2335.ph1209, %readU32FromChar.exit494 ], [ %.2335.ph1209, %bb.el ], [ %.2335.ph1209, %readU32FromChar.exit509 ], [ %.2335.ph1209, %bb.da ], [ %.2335.ph1209, %bb.db ], [ %.2335.ph1209, %bb.dc ], [ 1, %bb.dd ], [ %.2335.ph1209, %bb.de ], [ %.2335.ph1209, %bb.df ], [ %.2335.ph1209, %bb.dg ], [ %.2335.ph1209, %bb.di ], [ %.2335.ph1209, %bb.dh ], [ %.2335.ph1209, %bb.dj ], [ %.2335.ph1209, %bb.ef ], [ %.2335.ph1209, %bb.ee ], [ %.2335.ph1209, %bb.ec ], [ %.2335.ph1209, %bb.ed ], [ %.2335.ph1209, %.tail734.thread.thread ], [ %.2335.ph1209, %.thread563.loopexit ] ; 2 uses
  %.2331 = phi i32 [ %.1330.ph1210, %readU32FromChar.exit539 ], [ %.1330.ph1210, %readU32FromChar.exit494 ], [ %.1330.ph1210, %bb.el ], [ %.1330.ph1210, %readU32FromChar.exit509 ], [ %.1330.ph1210, %bb.da ], [ %.1330.ph1210, %bb.db ], [ %.1330.ph1210, %bb.dc ], [ %.1330.ph1210, %bb.dd ], [ %.1330.ph1210, %bb.de ], [ 1, %bb.df ], [ %.1330.ph1210, %bb.dg ], [ %.1330.ph1210, %bb.di ], [ %.1330.ph1210, %bb.dh ], [ %.1330.ph1210, %bb.dj ], [ %.1330.ph1210, %bb.ef ], [ %.1330.ph1210, %bb.ee ], [ %.1330.ph1210, %bb.ec ], [ %.1330.ph1210, %bb.ed ], [ %.1330.ph1210, %.tail734.thread.thread ], [ %.1330.ph1210, %.thread563.loopexit ] ; 2 uses
  %.2326 = phi i32 [ %.1325.ph1211, %readU32FromChar.exit539 ], [ %.1325.ph1211, %readU32FromChar.exit494 ], [ 1, %bb.el ], [ %.1325.ph1211, %readU32FromChar.exit509 ], [ %.1325.ph1211, %bb.da ], [ %.1325.ph1211, %bb.db ], [ %.1325.ph1211, %bb.dc ], [ %.1325.ph1211, %bb.dd ], [ %.1325.ph1211, %bb.de ], [ %.1325.ph1211, %bb.df ], [ %.1325.ph1211, %bb.dg ], [ %.1325.ph1211, %bb.di ], [ %.1325.ph1211, %bb.dh ], [ %.1325.ph1211, %bb.dj ], [ %.1325.ph1211, %bb.ef ], [ %.1325.ph1211, %bb.ee ], [ %.1325.ph1211, %bb.ec ], [ %.1325.ph1211, %bb.ed ], [ %.1325.ph1211, %.tail734.thread.thread ], [ %.1325.ph1211, %.thread563.loopexit ] ; 2 uses
  %.3321 = phi i32 [ %.2320.ph1212, %readU32FromChar.exit539 ], [ %.2320.ph1212, %readU32FromChar.exit494 ], [ %.2320.ph1212, %bb.el ], [ %.2320.ph1212, %readU32FromChar.exit509 ], [ %.2320.ph1212, %bb.da ], [ %.2320.ph1212, %bb.db ], [ %.2320.ph1212, %bb.dc ], [ %.2320.ph1212, %bb.dd ], [ %.2320.ph1212, %bb.de ], [ %.2320.ph1212, %bb.df ], [ %.2320.ph1212, %bb.dg ], [ %.2320.ph1212, %bb.di ], [ %.2320.ph1212, %bb.dh ], [ %.2320.ph1212, %bb.dj ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ec ], [ %.2320.ph1212, %bb.ed ], [ %.2320.ph1212, %.tail734.thread.thread ], [ %.2320.ph1212, %.thread563.loopexit ] ; 2 uses
  %.3308 = phi i32 [ %.2307.ph1213, %readU32FromChar.exit539 ], [ %.2307.ph1213, %readU32FromChar.exit494 ], [ %.2307.ph1213, %bb.el ], [ %.2.i503, %readU32FromChar.exit509 ], [ %.2307.ph1213, %bb.da ], [ %.2307.ph1213, %bb.db ], [ %.2307.ph1213, %bb.dc ], [ %.2307.ph1213, %bb.dd ], [ %.2307.ph1213, %bb.de ], [ %.2307.ph1213, %bb.df ], [ %.2307.ph1213, %bb.dg ], [ %.2307.ph1213, %bb.di ], [ %.2307.ph1213, %bb.dh ], [ %.2307.ph1213, %bb.dj ], [ %.2307.ph1213, %bb.ef ], [ %.2307.ph1213, %bb.ee ], [ %.2307.ph1213, %bb.ec ], [ %.2307.ph1213, %bb.ed ], [ %.2307.ph1213, %.tail734.thread.thread ], [ %.2307.ph1213, %.thread563.loopexit ] ; 2 uses
  %.4299 = phi i32 [ %.3298.ph1214, %readU32FromChar.exit539 ], [ %.3298.ph1214, %readU32FromChar.exit494 ], [ %.3298.ph1214, %bb.el ], [ %.3298.ph1214, %readU32FromChar.exit509 ], [ %.3298.ph1214, %bb.da ], [ %.3298.ph1214, %bb.db ], [ %spec.store.select2, %bb.dc ], [ %.3298.ph1214, %bb.dd ], [ 3, %bb.de ], [ %.3298.ph1214, %bb.df ], [ %.3298.ph1214, %bb.dg ], [ %.3298.ph1214, %bb.di ], [ %.3298.ph1214, %bb.dh ], [ %.3298.ph1214, %bb.dj ], [ %.3298.ph1214, %bb.ef ], [ %.3298.ph1214, %bb.ee ], [ 4, %bb.ec ], [ %.3298.ph1214, %bb.ed ], [ 1, %.tail734.thread.thread ], [ %.3298.ph1214, %.thread563.loopexit ] ; 2 uses
  %.4288 = phi ptr [ %.3287.ph1215, %readU32FromChar.exit539 ], [ %.3287.ph1215, %readU32FromChar.exit494 ], [ %.3287.ph1215, %bb.el ], [ %.3287.ph1215, %readU32FromChar.exit509 ], [ %.3287.ph1215, %bb.da ], [ %.3287.ph1215, %bb.db ], [ %.3287.ph1215, %bb.dc ], [ @.str.3, %bb.dd ], [ %.3287.ph1215, %bb.de ], [ %.3287.ph1215, %bb.df ], [ %.3287.ph1215, %bb.dg ], [ %.3287.ph1215, %bb.di ], [ %.3287.ph1215, %bb.dh ], [ %.3287.ph1215, %bb.dj ], [ %.3287.ph1215, %bb.ef ], [ %.3287.ph1215, %bb.ee ], [ %.3287.ph1215, %bb.ec ], [ %.3287.ph1215, %bb.ed ], [ %.3287.ph1215, %.tail734.thread.thread ], [ %.3287.ph1215, %.thread563.loopexit ] ; 2 uses
  %.3282 = phi ptr [ %.1280.ph1216, %readU32FromChar.exit539 ], [ %.1280.ph1216, %readU32FromChar.exit494 ], [ %.1280.ph1216, %bb.el ], [ %.1280.ph1216, %readU32FromChar.exit509 ], [ %.2281, %bb.da ], [ %.1280.ph1216, %bb.db ], [ %.1280.ph1216, %bb.dc ], [ %.1280.ph1216, %bb.dd ], [ %.1280.ph1216, %bb.de ], [ %.1280.ph1216, %bb.df ], [ %.1280.ph1216, %bb.dg ], [ %.1280.ph1216, %bb.di ], [ %.1280.ph1216, %bb.dh ], [ %.1280.ph1216, %bb.dj ], [ %.1280.ph1216, %bb.ef ], [ %.1280.ph1216, %bb.ee ], [ %.1280.ph1216, %bb.ec ], [ %.1280.ph1216, %bb.ed ], [ %.1280.ph1216, %.tail734.thread.thread ], [ %.1280.ph1216, %.thread563.loopexit ] ; 2 uses
  %.5266 = phi i64 [ %.1262.ph1217, %readU32FromChar.exit539 ], [ %.1262.ph1217, %readU32FromChar.exit494 ], [ %.1262.ph1217, %bb.el ], [ %.1262.ph1217, %readU32FromChar.exit509 ], [ %.1262.ph1217, %bb.da ], [ 8388608, %bb.db ], [ %.1262.ph1217, %bb.dc ], [ %.1262.ph1217, %bb.dd ], [ %.1262.ph1217, %bb.de ], [ %.1262.ph1217, %bb.df ], [ %.1262.ph1217, %bb.dg ], [ %.1262.ph1217, %bb.di ], [ %.1262.ph1217, %bb.dh ], [ %.1262.ph1217, %bb.dj ], [ %.1262.ph1217, %bb.ef ], [ %.1262.ph1217, %bb.ee ], [ %.1262.ph1217, %bb.ec ], [ %.1262.ph1217, %bb.ed ], [ %.1262.ph1217, %.tail734.thread.thread ], [ %.2263, %.thread563.loopexit ] ; 2 uses
  %.3259 = phi i32 [ %.1257.ph1218, %readU32FromChar.exit539 ], [ %.1257.ph1218, %readU32FromChar.exit494 ], [ %.1257.ph1218, %bb.el ], [ %.1257.ph1218, %readU32FromChar.exit509 ], [ %.1257.ph1218, %bb.da ], [ %.1257.ph1218, %bb.db ], [ %.1257.ph1218, %bb.dc ], [ %.1257.ph1218, %bb.dd ], [ %.1257.ph1218, %bb.de ], [ %.1257.ph1218, %bb.df ], [ %.1257.ph1218, %bb.dg ], [ %.1257.ph1218, %bb.di ], [ %.1257.ph1218, %bb.dh ], [ %.1257.ph1218, %bb.dj ], [ %.1257.ph1218, %bb.ef ], [ 1, %bb.ee ], [ %.1257.ph1218, %bb.ec ], [ %.1257.ph1218, %bb.ed ], [ %.1257.ph1218, %.tail734.thread.thread ], [ %.1257.ph1218, %.thread563.loopexit ] ; 2 uses
  %.2250 = phi i32 [ %.1249.ph1219, %readU32FromChar.exit539 ], [ %.2.i488, %readU32FromChar.exit494 ], [ %.1249.ph1219, %bb.el ], [ %.1249.ph1219, %readU32FromChar.exit509 ], [ %.1249.ph1219, %bb.da ], [ %.1249.ph1219, %bb.db ], [ %.1249.ph1219, %bb.dc ], [ %.1249.ph1219, %bb.dd ], [ %.1249.ph1219, %bb.de ], [ %.1249.ph1219, %bb.df ], [ %.1249.ph1219, %bb.dg ], [ %.1249.ph1219, %bb.di ], [ %.1249.ph1219, %bb.dh ], [ %.1249.ph1219, %bb.dj ], [ %.1249.ph1219, %bb.ef ], [ %.1249.ph1219, %bb.ee ], [ %.1249.ph1219, %bb.ec ], [ %.1249.ph1219, %bb.ed ], [ %.1249.ph1219, %.tail734.thread.thread ], [ %.1249.ph1219, %.thread563.loopexit ] ; 2 uses
  %.5 = phi i32 [ %.3.ph1221, %readU32FromChar.exit539 ], [ %.3.ph1221, %readU32FromChar.exit494 ], [ %.3.ph1221, %bb.el ], [ %.3.ph1221, %readU32FromChar.exit509 ], [ %.4, %bb.da ], [ %.3.ph1221, %bb.db ], [ %.3.ph1221, %bb.dc ], [ %.3.ph1221, %bb.dd ], [ %.3.ph1221, %bb.de ], [ %.3.ph1221, %bb.df ], [ %.3.ph1221, %bb.dg ], [ %.3.ph1221, %bb.di ], [ %.3.ph1221, %bb.dh ], [ %.3.ph1221, %bb.dj ], [ %.3.ph1221, %bb.ef ], [ %.3.ph1221, %bb.ee ], [ %.3.ph1221, %bb.ec ], [ %.3.ph1221, %bb.ed ], [ %.3.ph1221, %.tail734.thread.thread ], [ %.3.ph1221, %.thread563.loopexit ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.lcssa11841187.lcssa1193, i64 1 ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !10  ; 2 uses
  %.not42911121149 = icmp eq i8 %i.lw, 0
  br i1 %.not42911121149, label %.thread566, label %.lr.ph.lr.ph, !llvm.loop !20

bb.em:                                            ; preds = %bb.o, %bb.n
  %.not448 = icmp eq i32 %.13191242, 0
  br i1 %.not448, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.lx = add i32 %.02681250, 1
  %i.ly = zext i32 %.02681250 to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ly
  store ptr %i.bm, ptr %i.lz, align 8, !tbaa !17
  br label %.thread566

bb.eo:                                            ; preds = %bb.em
  %.not449 = icmp eq ptr %.02911247, null
  br i1 %.not449, label %.thread566, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.not450 = icmp eq ptr %.12851248, null
  br i1 %.not450, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.ma = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(5) @.str.124) #25
  %.not451 = icmp eq i32 %i.ma, 0
  %spec.store.select3 = select i1 %.not451, ptr @.str.48, ptr %i.bm
  br label %.thread566

bb.er:                                            ; preds = %bb.ep
  %i.mb = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not452 = icmp eq i32 %i.mb, 0
  br i1 %.not452, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.mc = load ptr, ptr @stderr, align 8, !tbaa !15
  %.not453 = icmp eq i32 %.03291240, 0
  %i.md = select i1 %.not453, ptr @.str.51, ptr @.str.50
  %i.me = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mc, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.md, ptr noundef nonnull %i.bm) #23 ; 0 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.not454 = icmp eq i32 %.03291240, 0
  br i1 %.not454, label %bb.eu, label %.thread566

bb.eu:                                            ; preds = %bb.et
  tail call void @exit(i32 noundef 1) #27
  unreachable

.thread621:                                       ; preds = %bb.ba, %bb.ck, %.tail734.thread.thread.thread, %bb.cl, %bb.bc
  %.3327.ph610 = phi i32 [ %.03241241, %bb.bc ], [ %.1325.ph1211, %bb.cl ], [ %.1325.ph1211, %.tail734.thread.thread.thread ], [ %.1325.ph1211, %bb.ck ], [ %.03241241, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hs

.thread643:                                       ; preds = %bb.bo, %bb.bl, %bb.bm, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.hs

bb.ev:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.thread566

.thread566:                                       ; preds = %.thread563, %.outer740.backedge, %bb.cf, %bb.eo, %bb.bv, %bb.bt, %bb.ay, %bb.ac, %.lr.ph1256, %.tail, %bb.u, %bb.r, %bb.v, %bb.y, %bb.aa, %bb.w, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ab, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.an, %bb.be, %bb.bg, %bb.by, %bb.ax, %bb.q, %bb.et, %bb.eq, %bb.en, %bb.bz, %bb.ev
  %.6605 = phi i32 [ %.1, %bb.ev ], [ %.02391255, %bb.eo ], [ %.02391255, %bb.en ], [ %.02391255, %bb.bv ], [ %.02391255, %bb.bt ], [ %.02391255, %bb.ay ], [ %.02391255, %bb.ac ], [ %.02391255, %.lr.ph1256 ], [ %.02391255, %.tail ], [ %.02391255, %bb.u ], [ %.02391255, %bb.r ], [ %.02391255, %bb.v ], [ %.02391255, %bb.y ], [ %.02391255, %bb.aa ], [ %.02391255, %bb.w ], [ %.02391255, %bb.ae ], [ %.02391255, %bb.ag ], [ %.02391255, %bb.ai ], [ %.02391255, %bb.ak ], [ %.02391255, %bb.am ], [ %.02391255, %bb.ab ], [ %.02391255, %bb.ap ], [ %.02391255, %bb.ar ], [ %.02391255, %bb.at ], [ %.02391255, %bb.av ], [ %.02391255, %bb.an ], [ %.02391255, %bb.be ], [ %.02391255, %bb.bg ], [ %.02391255, %bb.eq ], [ %.02391255, %bb.by ], [ %.02391255, %bb.ax ], [ %.02391255, %bb.q ], [ %.02391255, %bb.et ], [ %.3.ph1221, %bb.cf ], [ %.3.ph1221, %.outer740.backedge ], [ %.02391255, %bb.bz ], [ %.5, %.thread563 ]
  %.4244604 = phi i32 [ %.02401254, %bb.ev ], [ %.02401254, %bb.eo ], [ %.02401254, %bb.en ], [ %i.eg, %bb.bv ], [ -1, %bb.bt ], [ %.02401254, %bb.ay ], [ %.02401254, %bb.ac ], [ %.02401254, %.lr.ph1256 ], [ %.02401254, %.tail ], [ %.02401254, %bb.u ], [ %.02401254, %bb.r ], [ %.02401254, %bb.v ], [ %.02401254, %bb.y ], [ %.02401254, %bb.aa ], [ %.02401254, %bb.w ], [ %.02401254, %bb.ae ], [ %.02401254, %bb.ag ], [ %.02401254, %bb.ai ], [ %.02401254, %bb.ak ], [ %.02401254, %bb.am ], [ %.02401254, %bb.ab ], [ %.02401254, %bb.ap ], [ %.02401254, %bb.ar ], [ %.02401254, %bb.at ], [ %.02401254, %bb.av ], [ %.02401254, %bb.an ], [ %.02401254, %bb.be ], [ %.02401254, %bb.bg ], [ %.02401254, %bb.eq ], [ 12, %bb.by ], [ %.02401254, %bb.ax ], [ %.02401254, %bb.q ], [ %.02401254, %bb.et ], [ %.3243.ph7411151, %bb.cf ], [ %.3243.ph741.be, %.outer740.backedge ], [ %.02401254, %bb.bz ], [ %.3243.ph7411151, %.thread563 ] ; 2 uses
  %.3251603 = phi i32 [ %.02481253, %bb.ev ], [ %.02481253, %bb.eo ], [ %.02481253, %bb.en ], [ %.02481253, %bb.bv ], [ %.02481253, %bb.bt ], [ %.02481253, %bb.ay ], [ %.02481253, %bb.ac ], [ %.02481253, %.lr.ph1256 ], [ %.02481253, %.tail ], [ %.02481253, %bb.u ], [ %.02481253, %bb.r ], [ %.02481253, %bb.v ], [ %.02481253, %bb.y ], [ %.02481253, %bb.aa ], [ %.02481253, %bb.w ], [ %.02481253, %bb.ae ], [ %.02481253, %bb.ag ], [ %.02481253, %bb.ai ], [ %.02481253, %bb.ak ], [ %.02481253, %bb.am ], [ %.02481253, %bb.ab ], [ %.02481253, %bb.ap ], [ %.02481253, %bb.ar ], [ %.02481253, %bb.at ], [ %.02481253, %bb.av ], [ %.02481253, %bb.an ], [ %.02481253, %bb.be ], [ %.02481253, %bb.bg ], [ %.02481253, %bb.eq ], [ %.02481253, %bb.by ], [ %.02481253, %bb.ax ], [ %.02481253, %bb.q ], [ %.02481253, %bb.et ], [ %.1249.ph1219, %bb.cf ], [ %.1249.ph1219, %.outer740.backedge ], [ %.02481253, %bb.bz ], [ %.2250, %.thread563 ] ; 2 uses
  %.4260602 = phi i32 [ %.02561252, %bb.ev ], [ %.02561252, %bb.eo ], [ %.02561252, %bb.en ], [ %.02561252, %bb.bv ], [ %.02561252, %bb.bt ], [ %.02561252, %bb.ay ], [ %.02561252, %bb.ac ], [ %.02561252, %.lr.ph1256 ], [ %.02561252, %.tail ], [ %.02561252, %bb.u ], [ %.02561252, %bb.r ], [ %.02561252, %bb.v ], [ %.02561252, %bb.y ], [ %.02561252, %bb.aa ], [ %.02561252, %bb.w ], [ %.02561252, %bb.ae ], [ %.02561252, %bb.ag ], [ %.02561252, %bb.ai ], [ %.02561252, %bb.ak ], [ %.02561252, %bb.am ], [ %.02561252, %bb.ab ], [ %.02561252, %bb.ap ], [ %.02561252, %bb.ar ], [ %.02561252, %bb.at ], [ %.02561252, %bb.av ], [ %.02561252, %bb.an ], [ %.02561252, %bb.be ], [ %.02561252, %bb.bg ], [ %.02561252, %bb.eq ], [ %.02561252, %bb.by ], [ %.02561252, %bb.ax ], [ %.02561252, %bb.q ], [ %.02561252, %bb.et ], [ %.1257.ph1218, %bb.cf ], [ %.1257.ph1218, %.outer740.backedge ], [ %.02561252, %bb.bz ], [ %.3259, %.thread563 ] ; 2 uses
  %.6267601 = phi i64 [ %.02611251, %bb.ev ], [ %.02611251, %bb.eo ], [ %.02611251, %bb.en ], [ %.02611251, %bb.bv ], [ %.02611251, %bb.bt ], [ %.02611251, %bb.ay ], [ %.02611251, %bb.ac ], [ %.02611251, %.lr.ph1256 ], [ %.02611251, %.tail ], [ %.02611251, %bb.u ], [ %.02611251, %bb.r ], [ %.02611251, %bb.v ], [ %.02611251, %bb.y ], [ %.02611251, %bb.aa ], [ %.02611251, %bb.w ], [ %.02611251, %bb.ae ], [ %.02611251, %bb.ag ], [ %.02611251, %bb.ai ], [ %.02611251, %bb.ak ], [ %.02611251, %bb.am ], [ %.02611251, %bb.ab ], [ %.02611251, %bb.ap ], [ %.02611251, %bb.ar ], [ %.02611251, %bb.at ], [ %.02611251, %bb.av ], [ %.02611251, %bb.an ], [ %.02611251, %bb.be ], [ %.02611251, %bb.bg ], [ %.02611251, %bb.eq ], [ %.02611251, %bb.by ], [ %.02611251, %bb.ax ], [ %.02611251, %bb.q ], [ %.02611251, %bb.et ], [ %.1262.ph1217, %bb.cf ], [ %.1262.ph1217, %.outer740.backedge ], [ %.02611251, %bb.bz ], [ %.5266, %.thread563 ] ; 2 uses
  %.1269600 = phi i32 [ %.02681250, %bb.ev ], [ %.02681250, %bb.eo ], [ %i.lx, %bb.en ], [ %.02681250, %bb.bv ], [ %.02681250, %bb.bt ], [ %.02681250, %bb.ay ], [ %.02681250, %bb.ac ], [ %.02681250, %.lr.ph1256 ], [ %.02681250, %.tail ], [ %.02681250, %bb.u ], [ %.02681250, %bb.r ], [ %.02681250, %bb.v ], [ %.02681250, %bb.y ], [ %.02681250, %bb.aa ], [ %.02681250, %bb.w ], [ %.02681250, %bb.ae ], [ %.02681250, %bb.ag ], [ %.02681250, %bb.ai ], [ %.02681250, %bb.ak ], [ %.02681250, %bb.am ], [ %.02681250, %bb.ab ], [ %.02681250, %bb.ap ], [ %.02681250, %bb.ar ], [ %.02681250, %bb.at ], [ %.02681250, %bb.av ], [ %.02681250, %bb.an ], [ %.02681250, %bb.be ], [ %.02681250, %bb.bg ], [ %.02681250, %bb.eq ], [ %.02681250, %bb.by ], [ %.02681250, %bb.ax ], [ %.02681250, %bb.q ], [ %.02681250, %bb.et ], [ %.02681250, %bb.cf ], [ %.02681250, %.outer740.backedge ], [ %.02681250, %bb.bz ], [ %.02681250, %.thread563 ] ; 4 uses
  %.4283599 = phi ptr [ %.02791249, %bb.ev ], [ %.02791249, %bb.eo ], [ %.02791249, %bb.en ], [ %.02791249, %bb.bv ], [ %.02791249, %bb.bt ], [ %.02791249, %bb.ay ], [ %.02791249, %bb.ac ], [ %.02791249, %.lr.ph1256 ], [ %.02791249, %.tail ], [ %.02791249, %bb.u ], [ %.02791249, %bb.r ], [ %.02791249, %bb.v ], [ %.02791249, %bb.y ], [ %.02791249, %bb.aa ], [ %.02791249, %bb.w ], [ %.02791249, %bb.ae ], [ %.02791249, %bb.ag ], [ %.02791249, %bb.ai ], [ %.02791249, %bb.ak ], [ %.02791249, %bb.am ], [ %.02791249, %bb.ab ], [ %.02791249, %bb.ap ], [ %.02791249, %bb.ar ], [ %.02791249, %bb.at ], [ %.02791249, %bb.av ], [ %.02791249, %bb.an ], [ %.02791249, %bb.be ], [ %.02791249, %bb.bg ], [ %.02791249, %bb.eq ], [ %.02791249, %bb.by ], [ %.02791249, %bb.ax ], [ %.02791249, %bb.q ], [ %.02791249, %bb.et ], [ %.1280.ph1216, %bb.cf ], [ %.1280.ph1216, %.outer740.backedge ], [ %.02791249, %bb.bz ], [ %.3282, %.thread563 ] ; 3 uses
  %.5289598 = phi ptr [ %.12851248, %bb.ev ], [ %.12851248, %bb.eo ], [ %.12851248, %bb.en ], [ %.12851248, %bb.bv ], [ %.12851248, %bb.bt ], [ %.12851248, %bb.ay ], [ @.str.3, %bb.ac ], [ %.12851248, %.lr.ph1256 ], [ %.12851248, %.tail ], [ %.12851248, %bb.u ], [ %.12851248, %bb.r ], [ %.12851248, %bb.v ], [ %.12851248, %bb.y ], [ %.12851248, %bb.aa ], [ %.12851248, %bb.w ], [ %.12851248, %bb.ae ], [ %.12851248, %bb.ag ], [ %.12851248, %bb.ai ], [ %.12851248, %bb.ak ], [ %.12851248, %bb.am ], [ @.str.3, %bb.ab ], [ %.12851248, %bb.ap ], [ %.12851248, %bb.ar ], [ %.12851248, %bb.at ], [ %.12851248, %bb.av ], [ %.12851248, %bb.an ], [ %.12851248, %bb.be ], [ %.12851248, %bb.bg ], [ %spec.store.select3, %bb.eq ], [ %.12851248, %bb.by ], [ %.12851248, %bb.ax ], [ %.1285..str.3, %bb.q ], [ %.12851248, %bb.et ], [ %.3287.ph1215, %bb.cf ], [ %.3287.ph1215, %.outer740.backedge ], [ %.12851248, %bb.bz ], [ %.4288, %.thread563 ] ; 2 uses
  %.2293597 = phi ptr [ %.02911247, %bb.ev ], [ %i.bm, %bb.eo ], [ %.02911247, %bb.en ], [ %.02911247, %bb.bv ], [ %.02911247, %bb.bt ], [ %.02911247, %bb.ay ], [ %.02911247, %bb.ac ], [ %.02911247, %.lr.ph1256 ], [ %.02911247, %.tail ], [ %.02911247, %bb.u ], [ %.02911247, %bb.r ], [ %.02911247, %bb.v ], [ %.02911247, %bb.y ], [ %.02911247, %bb.aa ], [ %.02911247, %bb.w ], [ %.02911247, %bb.ae ], [ %.02911247, %bb.ag ], [ %.02911247, %bb.ai ], [ %.02911247, %bb.ak ], [ %.02911247, %bb.am ], [ %.02911247, %bb.ab ], [ %.02911247, %bb.ap ], [ %.02911247, %bb.ar ], [ %.02911247, %bb.at ], [ %.02911247, %bb.av ], [ %.02911247, %bb.an ], [ %.02911247, %bb.be ], [ %.02911247, %bb.bg ], [ %.02911247, %bb.eq ], [ %.02911247, %bb.by ], [ %.02911247, %bb.ax ], [ %.str.1..0291, %bb.q ], [ %.02911247, %bb.et ], [ %.02911247, %bb.cf ], [ %.02911247, %.outer740.backedge ], [ %.02911247, %bb.bz ], [ %.02911247, %.thread563 ] ; 2 uses
  %.5300596 = phi i32 [ %.22971246, %bb.ev ], [ %.22971246, %bb.eo ], [ %.22971246, %bb.en ], [ %.22971246, %bb.bv ], [ %.22971246, %bb.bt ], [ %.22971246, %bb.ay ], [ %.22971246, %bb.ac ], [ %.22971246, %.lr.ph1256 ], [ %.22971246, %.tail ], [ %spec.store.select, %bb.u ], [ 1, %bb.r ], [ %.22971246, %bb.v ], [ %.22971246, %bb.y ], [ %.22971246, %bb.aa ], [ 3, %bb.w ], [ %.22971246, %bb.ae ], [ %.22971246, %bb.ag ], [ %.22971246, %bb.ai ], [ %.22971246, %bb.ak ], [ %.22971246, %bb.am ], [ %.22971246, %bb.ab ], [ %.22971246, %bb.ap ], [ %.22971246, %bb.ar ], [ %.22971246, %bb.at ], [ %.22971246, %bb.av ], [ 5, %bb.an ], [ %.22971246, %bb.be ], [ %.22971246, %bb.bg ], [ %.22971246, %bb.eq ], [ %.22971246, %bb.by ], [ %.22971246, %bb.ax ], [ %.22971246, %bb.q ], [ %.22971246, %bb.et ], [ %.3298.ph1214, %bb.cf ], [ %.3298.ph1214, %.outer740.backedge ], [ %.22971246, %bb.bz ], [ %.4299, %.thread563 ] ; 5 uses
  %.4309595 = phi i32 [ %i.dy, %bb.ev ], [ %.03051245, %bb.eo ], [ %.03051245, %bb.en ], [ %.03051245, %bb.bv ], [ %.03051245, %bb.bt ], [ %.03051245, %bb.ay ], [ %.03051245, %bb.ac ], [ %.03051245, %.lr.ph1256 ], [ %.03051245, %.tail ], [ %.03051245, %bb.u ], [ %.03051245, %bb.r ], [ %.03051245, %bb.v ], [ %.03051245, %bb.y ], [ %.03051245, %bb.aa ], [ %.03051245, %bb.w ], [ %.03051245, %bb.ae ], [ %.03051245, %bb.ag ], [ %.03051245, %bb.ai ], [ %.03051245, %bb.ak ], [ %.03051245, %bb.am ], [ %.03051245, %bb.ab ], [ %.03051245, %bb.ap ], [ %.03051245, %bb.ar ], [ %.03051245, %bb.at ], [ %.03051245, %bb.av ], [ %.03051245, %bb.an ], [ %.03051245, %bb.be ], [ %.03051245, %bb.bg ], [ %.03051245, %bb.eq ], [ %.03051245, %bb.by ], [ %.03051245, %bb.ax ], [ %.03051245, %bb.q ], [ %.03051245, %bb.et ], [ %.2307.ph1213, %bb.cf ], [ %.2307.ph1213, %.outer740.backedge ], [ %.03051245, %bb.bz ], [ %.3308, %.thread563 ] ; 2 uses
  %.1311594 = phi i32 [ %.03101244, %bb.ev ], [ %.03101244, %bb.eo ], [ %.03101244, %bb.en ], [ %.03101244, %bb.bv ], [ %.03101244, %bb.bt ], [ %.03101244, %bb.ay ], [ %.03101244, %bb.ac ], [ %.03101244, %.lr.ph1256 ], [ %.03101244, %.tail ], [ %.03101244, %bb.u ], [ %.03101244, %bb.r ], [ %.03101244, %bb.v ], [ %.03101244, %bb.y ], [ %.03101244, %bb.aa ], [ %.03101244, %bb.w ], [ %.03101244, %bb.ae ], [ %.03101244, %bb.ag ], [ %.03101244, %bb.ai ], [ 1, %bb.ak ], [ %.03101244, %bb.am ], [ %.03101244, %bb.ab ], [ %.03101244, %bb.ap ], [ %.03101244, %bb.ar ], [ %.03101244, %bb.at ], [ %.03101244, %bb.av ], [ %.03101244, %bb.an ], [ %.03101244, %bb.be ], [ %.03101244, %bb.bg ], [ %.03101244, %bb.eq ], [ %.03101244, %bb.by ], [ %.03101244, %bb.ax ], [ %.03101244, %bb.q ], [ %.03101244, %bb.et ], [ %.03101244, %bb.cf ], [ %.03101244, %.outer740.backedge ], [ %.03101244, %bb.bz ], [ %.03101244, %.thread563 ] ; 2 uses
  %.1317592 = phi i32 [ 0, %bb.ev ], [ %.03161243, %bb.eo ], [ %.03161243, %bb.en ], [ 0, %bb.bv ], [ 0, %bb.bt ], [ 0, %bb.ay ], [ 0, %bb.ac ], [ %.03161243, %.lr.ph1256 ], [ 1, %.tail ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.w ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.am ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.an ], [ 0, %bb.be ], [ 0, %bb.bg ], [ %.03161243, %bb.eq ], [ 0, %bb.by ], [ 0, %bb.ax ], [ 0, %bb.q ], [ %.03161243, %bb.et ], [ 0, %bb.cf ], [ 0, %.outer740.backedge ], [ 0, %bb.bz ], [ 0, %.thread563 ]
  %.4322591 = phi i32 [ %.13191242, %bb.ev ], [ 0, %bb.eo ], [ 1, %bb.en ], [ %.13191242, %bb.bv ], [ %.13191242, %bb.bt ], [ %.13191242, %bb.ay ], [ %.13191242, %bb.ac ], [ %.13191242, %.lr.ph1256 ], [ %.13191242, %.tail ], [ %.13191242, %bb.u ], [ %.13191242, %bb.r ], [ 1, %bb.v ], [ %.13191242, %bb.y ], [ %.13191242, %bb.aa ], [ %.13191242, %bb.w ], [ %.13191242, %bb.ae ], [ %.13191242, %bb.ag ], [ %.13191242, %bb.ai ], [ %.13191242, %bb.ak ], [ %.13191242, %bb.am ], [ %.13191242, %bb.ab ], [ %.13191242, %bb.ap ], [ %.13191242, %bb.ar ], [ %.13191242, %bb.at ], [ %.13191242, %bb.av ], [ 1, %bb.an ], [ %.13191242, %bb.be ], [ %.13191242, %bb.bg ], [ 0, %bb.eq ], [ %.13191242, %bb.by ], [ %.13191242, %bb.ax ], [ %.13191242, %bb.q ], [ 0, %bb.et ], [ %.2320.ph1212, %bb.cf ], [ %.2320.ph1212, %.outer740.backedge ], [ %.13191242, %bb.bz ], [ %.3321, %.thread563 ] ; 2 uses
  %.3327590 = phi i32 [ %.03241241, %bb.ev ], [ %.03241241, %bb.eo ], [ %.03241241, %bb.en ], [ %.03241241, %bb.bv ], [ %.03241241, %bb.bt ], [ %.03241241, %bb.ay ], [ %.03241241, %bb.ac ], [ %.03241241, %.lr.ph1256 ], [ %.03241241, %.tail ], [ %.03241241, %bb.u ], [ %.03241241, %bb.r ], [ %.03241241, %bb.v ], [ %.03241241, %bb.y ], [ %.03241241, %bb.aa ], [ %.03241241, %bb.w ], [ %.03241241, %bb.ae ], [ %.03241241, %bb.ag ], [ %.03241241, %bb.ai ], [ %.03241241, %bb.ak ], [ %.03241241, %bb.am ], [ %.03241241, %bb.ab ], [ %.03241241, %bb.ap ], [ %.03241241, %bb.ar ], [ %.03241241, %bb.at ], [ %.03241241, %bb.av ], [ %.03241241, %bb.an ], [ %.03241241, %bb.be ], [ %.03241241, %bb.bg ], [ %.03241241, %bb.eq ], [ %.03241241, %bb.by ], [ %.03241241, %bb.ax ], [ %.03241241, %bb.q ], [ %.03241241, %bb.et ], [ %.1325.ph1211, %bb.cf ], [ %.1325.ph1211, %.outer740.backedge ], [ %.03241241, %bb.bz ], [ %.2326, %.thread563 ] ; 2 uses
  %.3332589 = phi i32 [ %.03291240, %bb.ev ], [ %.03291240, %bb.eo ], [ %.03291240, %bb.en ], [ %.03291240, %bb.bv ], [ %.03291240, %bb.bt ], [ %.03291240, %bb.ay ], [ %.03291240, %bb.ac ], [ %.03291240, %.lr.ph1256 ], [ %.03291240, %.tail ], [ %.03291240, %bb.u ], [ %.03291240, %bb.r ], [ %.03291240, %bb.v ], [ %.03291240, %bb.y ], [ %.03291240, %bb.aa ], [ %.03291240, %bb.w ], [ %.03291240, %bb.ae ], [ %.03291240, %bb.ag ], [ %.03291240, %bb.ai ], [ %.03291240, %bb.ak ], [ %.03291240, %bb.am ], [ %.03291240, %bb.ab ], [ %.03291240, %bb.ap ], [ %.03291240, %bb.ar ], [ %.03291240, %bb.at ], [ %.03291240, %bb.av ], [ %.03291240, %bb.an ], [ %.03291240, %bb.be ], [ %.03291240, %bb.bg ], [ %.03291240, %bb.eq ], [ %.03291240, %bb.by ], [ %.03291240, %bb.ax ], [ %.03291240, %bb.q ], [ 1, %bb.et ], [ %.1330.ph1210, %bb.cf ], [ %.1330.ph1210, %.outer740.backedge ], [ %.03291240, %bb.bz ], [ %.2331, %.thread563 ]
  %.4337588 = phi i32 [ %.13341239, %bb.ev ], [ %.13341239, %bb.eo ], [ %.13341239, %bb.en ], [ %.13341239, %bb.bv ], [ %.13341239, %bb.bt ], [ %.13341239, %bb.ay ], [ 1, %bb.ac ], [ %.13341239, %.lr.ph1256 ], [ %.13341239, %.tail ], [ %.13341239, %bb.u ], [ %.13341239, %bb.r ], [ %.13341239, %bb.v ], [ %.13341239, %bb.y ], [ %.13341239, %bb.aa ], [ %.13341239, %bb.w ], [ %.13341239, %bb.ae ], [ %.13341239, %bb.ag ], [ %.13341239, %bb.ai ], [ %.13341239, %bb.ak ], [ %.13341239, %bb.am ], [ 1, %bb.ab ], [ %.13341239, %bb.ap ], [ %.13341239, %bb.ar ], [ %.13341239, %bb.at ], [ %.13341239, %bb.av ], [ %.13341239, %bb.an ], [ %.13341239, %bb.be ], [ %.13341239, %bb.bg ], [ %.13341239, %bb.eq ], [ %.13341239, %bb.by ], [ %.13341239, %bb.ax ], [ %.13341239, %bb.q ], [ %.13341239, %bb.et ], [ %.2335.ph1209, %bb.cf ], [ %.2335.ph1209, %.outer740.backedge ], [ %.13341239, %bb.bz ], [ %.3336, %.thread563 ] ; 2 uses
  %.3341587 = phi i32 [ %.03381238, %bb.ev ], [ %.03381238, %bb.eo ], [ %.03381238, %bb.en ], [ %.03381238, %bb.bv ], [ %.03381238, %bb.bt ], [ %.03381238, %bb.ay ], [ %.03381238, %bb.ac ], [ %.03381238, %.lr.ph1256 ], [ %.03381238, %.tail ], [ %.03381238, %bb.u ], [ %.03381238, %bb.r ], [ %.03381238, %bb.v ], [ %.03381238, %bb.y ], [ %.03381238, %bb.aa ], [ %.03381238, %bb.w ], [ %.03381238, %bb.ae ], [ %.03381238, %bb.ag ], [ %.03381238, %bb.ai ], [ %.03381238, %bb.ak ], [ %.03381238, %bb.am ], [ %.03381238, %bb.ab ], [ %.03381238, %bb.ap ], [ %.03381238, %bb.ar ], [ %.03381238, %bb.at ], [ %.03381238, %bb.av ], [ %.03381238, %bb.an ], [ %.03381238, %bb.be ], [ %.03381238, %bb.bg ], [ %.03381238, %bb.eq ], [ %.03381238, %bb.by ], [ %.03381238, %bb.ax ], [ %.03381238, %bb.q ], [ %.03381238, %bb.et ], [ %.1339.ph1208, %bb.cf ], [ %.1339.ph1208, %.outer740.backedge ], [ %.03381238, %bb.bz ], [ %.2340, %.thread563 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.mf = add nsw i32 %.6605, 1                   ; 2 uses
  %i.mg = icmp slt i32 %i.mf, %0
  br i1 %i.mg, label %.lr.ph1256, label %._crit_edge.loopexit, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.thread566
  %3 = icmp eq i32 %.5300596, 1
  %4 = icmp eq i32 %.5300596, 4                   ; 2 uses
  %5 = or i1 %3, %4
  %i.mh = icmp eq i32 %.4260602, 0
  %6 = icmp eq i32 %.1269600, 0
  %7 = zext i32 %.1269600 to i64
  %8 = icmp eq ptr %.4283599, null
  %9 = icmp eq i32 %.5300596, 3
  %i.mi = icmp ne i32 %.1311594, 0
  %i.mj = icmp eq i32 %.3341587, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %exeNameMatch.exit477.thread
  %.0338.lcssa = phi i1 [ true, %exeNameMatch.exit477.thread ], [ %i.mj, %._crit_edge.loopexit ]
  %.1334.lcssa = phi i32 [ %.0318, %exeNameMatch.exit477.thread ], [ %.4337588, %._crit_edge.loopexit ]
  %.0324.lcssa = phi i32 [ 0, %exeNameMatch.exit477.thread ], [ %.3327590, %._crit_edge.loopexit ] ; 8 uses
  %.1319.lcssa = phi i32 [ %.0318, %exeNameMatch.exit477.thread ], [ %.4322591, %._crit_edge.loopexit ] ; 4 uses
  %.0310.lcssa = phi i1 [ false, %exeNameMatch.exit477.thread ], [ %i.mi, %._crit_edge.loopexit ]
  %.0305.lcssa = phi i32 [ %.1.i463, %exeNameMatch.exit477.thread ], [ %.4309595, %._crit_edge.loopexit ]
  %.2297.lcssa = phi i1 [ false, %exeNameMatch.exit477.thread ], [ %5, %._crit_edge.loopexit ]
  %10 = phi i1 [ false, %exeNameMatch.exit477.thread ], [ %4, %._crit_edge.loopexit ]
  %11 = phi i1 [ false, %exeNameMatch.exit477.thread ], [ %9, %._crit_edge.loopexit ]
  %.2297.lcssa.a = phi i32 [ %i.bf, %exeNameMatch.exit477.thread ], [ %.5300596, %._crit_edge.loopexit ]
  %.0291.lcssa = phi ptr [ null, %exeNameMatch.exit477.thread ], [ %.2293597, %._crit_edge.loopexit ]
  %.1285.lcssa = phi ptr [ %.0284, %exeNameMatch.exit477.thread ], [ %.5289598, %._crit_edge.loopexit ]
  %.0279.lcssa = phi i1 [ true, %exeNameMatch.exit477.thread ], [ %8, %._crit_edge.loopexit ]
  %.0279.lcssa.a = phi ptr [ null, %exeNameMatch.exit477.thread ], [ %.4283599, %._crit_edge.loopexit ] ; 3 uses
  %.0268.lcssa = phi i1 [ true, %exeNameMatch.exit477.thread ], [ %6, %._crit_edge.loopexit ]
  %wide.trip.count.i = phi i64 [ 0, %exeNameMatch.exit477.thread ], [ %7, %._crit_edge.loopexit ]
  %.0268.lcssa.a = phi i32 [ 0, %exeNameMatch.exit477.thread ], [ %.1269600, %._crit_edge.loopexit ] ; 3 uses
  %.0261.lcssa = phi i64 [ %i.ao, %exeNameMatch.exit477.thread ], [ %.6267601, %._crit_edge.loopexit ]
  %.0256.lcssa = phi i1 [ true, %exeNameMatch.exit477.thread ], [ %i.mh, %._crit_edge.loopexit ]
  %.0248.lcssa = phi i32 [ -10000, %exeNameMatch.exit477.thread ], [ %.3251603, %._crit_edge.loopexit ]
  %.0240.lcssa = phi i32 [ %.1.i, %exeNameMatch.exit477.thread ], [ %.4244604, %._crit_edge.loopexit ] ; 5 uses
  %i.mk = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.ml = icmp ugt i32 %i.mk, 2
  br i1 %i.ml, label %bb.ew, label %.thread653

bb.ew:                                            ; preds = %._crit_edge
  %i.mm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mn = tail call ptr @LZ4_versionString() #22
  %i.mo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mm, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef %i.mn, i32 noundef 64, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #23 ; 0 uses
  %.pr = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.mp = icmp ugt i32 %.pr, 3
  br i1 %i.mp, label %bb.ex, label %.thread653

bb.ex:                                            ; preds = %bb.ew
  %i.mq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mq, ptr noundef nonnull @.str.52, i64 noundef 200809) #23 ; 0 uses
  %.pr649 = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.ms = icmp ugt i32 %.pr649, 3
  br i1 %i.ms, label %.thread651, label %.thread653

.thread651:                                       ; preds = %bb.ex
  %i.mt = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mt, ptr noundef nonnull @.str.53, i64 noundef 200809) #23 ; 0 uses
  %.pr652.pr = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.mv = icmp ugt i32 %.pr652.pr, 3
  br i1 %i.mv, label %bb.ey, label %.thread653

bb.ey:                                            ; preds = %.thread651
  %i.mw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.mx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mw, ptr noundef nonnull @.str.54, i64 noundef 200809) #23 ; 0 uses
  %.pre1485 = load i32, ptr @displayLevel, align 4
  br label %.thread653

.thread653:                                       ; preds = %bb.ew, %._crit_edge, %bb.ex, %bb.ey, %.thread651
  %i.my = phi i32 [ %.pr, %bb.ew ], [ %i.mk, %._crit_edge ], [ %.pr649, %bb.ex ], [ %.pre1485, %bb.ey ], [ %.pr652.pr, %.thread651 ] ; 2 uses
  %i.mz = icmp ugt i32 %.0305.lcssa, 1
  %i.na = icmp ugt i32 %i.my, 1
  %or.cond20 = select i1 %i.mz, i1 %i.na, i1 false
  br i1 %or.cond20, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.thread653
  %i.nb = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.55, i64 57, i64 1, ptr %i.nb) #26 ; 0 uses
  %.pre1486 = load i32, ptr @displayLevel, align 4
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.thread653
  %i.nc = phi i32 [ %.pre1486, %bb.ez ], [ %i.my, %.thread653 ]
  %i.nd = icmp ugt i32 %i.nc, 3
  %or.cond22 = select i1 %.2297.lcssa, i1 %i.nd, i1 false
  br i1 %or.cond22, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ne = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.nf = lshr i64 %.0261.lcssa, 10
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ne, ptr noundef nonnull @.str.56, i32 noundef %i.ng) #23 ; 0 uses
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.ni = icmp ne i32 %.1319.lcssa, 0             ; 4 uses
  br i1 %i.ni, label %bb.fd, label %bb.fr

bb.fd:                                            ; preds = %bb.fc
  %i.nj = load ptr, ptr %i.am, align 8, !tbaa !17 ; 3 uses
  br i1 %.0256.lcssa, label %bb.fr, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.nk = tail call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #28 ; 4 uses
  store ptr %i.nk, ptr %i.b, align 8, !tbaa !17
  %.not.i540 = icmp eq ptr %i.nk, null
  br i1 %.not.i540, label %UTIL_createFileList.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i64 0, ptr %i.a, align 8, !tbaa !19
  br i1 %.0268.lcssa, label %UTIL_createFileList.exit.thread.sink.split, label %.lr.ph.i541

.lr.ph.i541:                                      ; preds = %bb.ff
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fl, %.lr.ph.i541
  %i.nm = phi ptr [ %i.nk, %.lr.ph.i541 ], [ %i.ol, %bb.fl ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i541 ], [ %indvars.iv.next.i, %bb.fl ] ; 2 uses
  %.04170.i = phi i64 [ 8192, %.lr.ph.i541 ], [ %.5.i, %bb.fl ] ; 4 uses
  %.04369.i = phi i32 [ 0, %.lr.ph.i541 ], [ %.245.i, %bb.fl ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i ; 4 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.np = call i32 @stat(ptr noundef readonly %i.no, ptr noundef nonnull %2) #22
  %.not.i.i = icmp ne i32 %i.np, 0
  %i.nq = load i32, ptr %i.nl, align 8
  %i.nr = and i32 %i.nq, 61440
  %i.ns = icmp ne i32 %i.nr, 16384
  %narrow.i.not.i = select i1 %.not.i.i, i1 true, i1 %i.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %narrow.i.not.i, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.nt = load ptr, ptr %i.nn, align 8, !tbaa !17 ; 2 uses
  %i.nu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nt) #25
  %i.nv = add i64 %i.nu, 1                        ; 2 uses
  %i.nw = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.nx = add i64 %i.nw, %i.nv                    ; 3 uses
  %.not57.i = icmp ult i64 %i.nx, %.04170.i
  br i1 %.not57.i, label %bb.fj, label %.preheader.i

.preheader.i:                                     ; preds = %bb.fh, %.preheader.i
  %.142.i = phi i64 [ %i.ny, %.preheader.i ], [ %.04170.i, %bb.fh ] ; 4 uses
  %.not58.i = icmp ult i64 %i.nx, %.142.i
  %i.ny = add i64 %.142.i, 8192
  br i1 %.not58.i, label %bb.fi, label %.preheader.i, !llvm.loop !22

bb.fi:                                            ; preds = %.preheader.i
  %i.nz = tail call ptr @realloc(ptr noundef %i.nm, i64 noundef %.142.i) #29 ; 3 uses
  %.not.not.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.not.i.i, label %UTIL_createFileList.exit.thread.sink.split, label %UTIL_realloc.exit.i

UTIL_realloc.exit.i:                              ; preds = %bb.fi
  store ptr %i.nz, ptr %i.b, align 8, !tbaa !17
  %.pre.i543 = load ptr, ptr %i.nn, align 8, !tbaa !17
  br label %bb.fj

bb.fj:                                            ; preds = %UTIL_realloc.exit.i, %bb.fh
  %i.oa = phi ptr [ %.pre.i543, %UTIL_realloc.exit.i ], [ %i.nt, %bb.fh ]
  %i.ob = phi ptr [ %i.nz, %UTIL_realloc.exit.i ], [ %i.nm, %bb.fh ] ; 2 uses
  %.2.i544 = phi i64 [ %.142.i, %UTIL_realloc.exit.i ], [ %.04170.i, %bb.fh ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oc, ptr align 1 %i.oa, i64 %i.nv, i1 false)
  store i64 %i.nx, ptr %i.a, align 8, !tbaa !19
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.od = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.04170.i
  store ptr %i.od, ptr %i.c, align 8, !tbaa !17
  %i.oe = load ptr, ptr %i.nn, align 8, !tbaa !17
  %i.of = call fastcc i32 @UTIL_prepareFileList(ptr noundef %i.oe, ptr noundef %i.b, ptr noundef %i.a, ptr noundef %i.c)
  %i.og = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %.not60.i = icmp eq ptr %i.og, null
  %i.oh = load ptr, ptr %i.c, align 8
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = ptrtoint ptr %i.og to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br i1 %.not60.i, label %UTIL_createFileList.exit.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.ol = phi ptr [ %i.og, %bb.fk ], [ %i.ob, %bb.fj ] ; 6 uses
  %.pn.i = phi i32 [ %i.of, %bb.fk ], [ 1, %bb.fj ]
  %.5.i = phi i64 [ %i.ok, %bb.fk ], [ %.2.i544, %bb.fj ] ; 2 uses
  %.245.i = add i32 %.pn.i, %.04369.i             ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.fg, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.fl
  %i.om = icmp eq i32 %.245.i, 0
  %12 = zext i32 %.245.i to i64                   ; 3 uses
  br i1 %i.om, label %UTIL_createFileList.exit.thread.sink.split, label %bb.fm

bb.fm:                                            ; preds = %._crit_edge.i
  %i.on = shl nuw nsw i64 %12, 3
  %i.oo = add nuw nsw i64 %i.on, 8
  %i.op = tail call noalias ptr @malloc(i64 noundef %i.oo) #28 ; 5 uses
  %.not55.i = icmp eq ptr %i.op, null
  br i1 %.not55.i, label %UTIL_createFileList.exit.thread.sink.split, label %.preheader738

.preheader738:                                    ; preds = %bb.fm, %.preheader738
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.preheader738 ], [ 0, %bb.fm ] ; 2 uses
  %i.oq = phi i64 [ %i.ov, %.preheader738 ], [ 0, %bb.fm ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.oq ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv77.i
  store ptr %i.or, ptr %i.os, align 8, !tbaa !17
  %i.ot = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.or) #25
  %i.ou = add i64 %i.oq, 1
  %i.ov = add i64 %i.ou, %i.ot                    ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %12
  br i1 %exitcond81.not.i, label %bb.fn, label %.preheader738, !llvm.loop !24

bb.fn:                                            ; preds = %.preheader738
  %i.ow = icmp ugt i64 %i.ov, %.5.i
  br i1 %i.ow, label %bb.fo, label %UTIL_createFileList.exit

bb.fo:                                            ; preds = %bb.fn
  tail call void @free(ptr noundef nonnull %i.ol) #22
  br label %UTIL_createFileList.exit.thread.sink.split

UTIL_createFileList.exit.thread.sink.split:       ; preds = %bb.fi, %bb.fm, %bb.ff, %._crit_edge.i, %bb.fo
  %.lcssa1554.sink = phi ptr [ %i.nk, %bb.ff ], [ %i.ol, %bb.fm ], [ %i.op, %bb.fo ], [ %i.ol, %._crit_edge.i ], [ %i.nm, %bb.fi ]
  tail call void @free(ptr noundef %.lcssa1554.sink) #22
  br label %UTIL_createFileList.exit.thread

UTIL_createFileList.exit.thread:                  ; preds = %bb.fk, %UTIL_createFileList.exit.thread.sink.split, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.fr

UTIL_createFileList.exit:                         ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ox = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  %i.oy = icmp ugt i32 %i.ox, 3
  br i1 %i.oy, label %UTIL_createFileList.exit.split, label %.split.us

UTIL_createFileList.exit.split:                   ; preds = %UTIL_createFileList.exit, %bb.fq
  %i.oz = phi i32 [ %i.pg, %bb.fq ], [ %i.ox, %UTIL_createFileList.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.fq ], [ 0, %UTIL_createFileList.exit ] ; 3 uses
  %i.pa = icmp ugt i32 %i.oz, 3
  br i1 %i.pa, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %UTIL_createFileList.exit.split
  %i.pb = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !17
  %i.pe = trunc nuw i64 %indvars.iv to i32
  %i.pf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pb, ptr noundef nonnull @.str.57, i32 noundef %i.pe, ptr noundef %i.pd) #23 ; 0 uses
  %.pre1487 = load i32, ptr @displayLevel, align 4, !tbaa !12
  br label %bb.fq

bb.fq:                                            ; preds = %UTIL_createFileList.exit.split, %bb.fp
  %i.pg = phi i32 [ %i.oz, %UTIL_createFileList.exit.split ], [ %.pre1487, %bb.fp ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %12
  br i1 %exitcond.not, label %.split.us, label %UTIL_createFileList.exit.split, !llvm.loop !25

.split.us:                                        ; preds = %bb.fq, %UTIL_createFileList.exit
  tail call void @free(ptr noundef %i.am) #22
  br label %bb.fr

bb.fr:                                            ; preds = %UTIL_createFileList.exit.thread, %.split.us, %bb.fd, %bb.fc
  %.0549 = phi ptr [ null, %bb.fd ], [ null, %UTIL_createFileList.exit.thread ], [ %i.ol, %.split.us ], [ null, %bb.fc ] ; 8 uses
  %.3294 = phi ptr [ %i.nj, %bb.fd ], [ %i.nj, %UTIL_createFileList.exit.thread ], [ %i.nj, %.split.us ], [ %.0291.lcssa, %bb.fc ] ; 2 uses
  %.1274 = phi ptr [ %i.am, %bb.fd ], [ %i.am, %UTIL_createFileList.exit.thread ], [ %i.op, %.split.us ], [ %i.am, %bb.fc ] ; 14 uses
  %.3271 = phi i32 [ %.0268.lcssa.a, %bb.fd ], [ %.0268.lcssa.a, %UTIL_createFileList.exit.thread ], [ %.245.i, %.split.us ], [ %.0268.lcssa.a, %bb.fc ] ; 8 uses
  br i1 %.0279.lcssa, label %bb.fy, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ph = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0279.lcssa.a, ptr noundef nonnull dereferenceable(6) @.str.1) #25
  %.not369 = icmp eq i32 %i.ph, 0
  br i1 %.not369, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.pi = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.pj = tail call i32 @fileno(ptr noundef %i.pi) #22
  %i.pk = tail call i32 @isatty(i32 noundef %i.pj) #22
  %.not370 = icmp eq i32 %i.pk, 0
  br i1 %.not370, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.pl = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not371 = icmp eq i32 %i.pl, 0
  br i1 %.not371, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite372 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 32, i64 1, ptr %i.pm) #26 ; 0 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.fx:                                            ; preds = %bb.ft, %bb.fs
  %i.pn = tail call i32 @LZ4IO_setDictionaryFilename(ptr noundef %i.an, ptr noundef nonnull %.0279.lcssa.a) #22 ; 0 uses
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fr
  br i1 %10, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.po = load i32, ptr @displayLevel, align 4, !tbaa !12
  tail call void @BMK_setNotificationLevel(i32 noundef %i.po) #22
  %i.pp = tail call i32 @BMK_benchFiles(ptr noundef nonnull %.1274, i32 noundef %.3271, i32 noundef %.0240.lcssa, i32 noundef %.0248.lcssa, ptr noundef %.0279.lcssa.a) #22
  br label %bb.hs

bb.ga:                                            ; preds = %bb.fy
  br i1 %11, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.pq = tail call i32 @LZ4IO_setTestMode(ptr noundef %i.an, i32 noundef 1) #22 ; 0 uses
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.6301 = phi i32 [ 2, %bb.gb ], [ %.2297.lcssa.a, %bb.ga ] ; 3 uses
  %.6290 = phi ptr [ @.str.48, %bb.gb ], [ %.1285.lcssa, %bb.ga ] ; 4 uses
  %.not373 = icmp eq ptr %.3294, null
  %spec.store.select5 = select i1 %.not373, ptr @.str.1, ptr %.3294 ; 15 uses
  %i.pr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select5, ptr noundef nonnull dereferenceable(6) @.str.1) #25
  %.not374 = icmp eq i32 %i.pr, 0
  br i1 %.not374, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  %i.ps = load ptr, ptr @stdin, align 8, !tbaa !15
  %i.pt = tail call i32 @fileno(ptr noundef %i.ps) #22
  %i.pu = tail call i32 @isatty(i32 noundef %i.pt) #22
  %.not375 = icmp eq i32 %i.pu, 0
  br i1 %.not375, label %bb.gh, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.pv = load i32, ptr @displayLevel, align 4, !tbaa !12
  %.not376 = icmp eq i32 %i.pv, 0
  br i1 %.not376, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.pw = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite377 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 32, i64 1, ptr %i.pw) #26 ; 0 uses
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.gh:                                            ; preds = %bb.gd, %bb.gc
  %i.px = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select5, ptr noundef nonnull dereferenceable(6) @.str.1) #25
  %.not378 = icmp eq i32 %i.px, 0
  br i1 %.not378, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %.not379 = icmp eq ptr %.6290, null
  %spec.store.select6 = select i1 %.not379, ptr @.str.3, ptr %.6290 ; 2 uses
  %i.py = load i32, ptr @displayLevel, align 4
  %i.pz = icmp ugt i32 %i.py, 1
  %or.cond24 = select i1 %.0310.lcssa, i1 %i.pz, i1 false
  br i1 %or.cond24, label %bb.gj, label %.thread659

bb.gj:                                            ; preds = %bb.gi
  %i.qa = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite380 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 68, i64 1, ptr %i.qa) #26 ; 0 uses
  br label %.thread659

bb.gk:                                            ; preds = %bb.gh
  %i.qb = icmp ne ptr %.6290, null
  %or.cond8.not = or i1 %i.qb, %i.ni
  br i1 %or.cond8.not, label %.thread659, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  switch i32 %.6301, label %.thread659 [
    i32 0, label %bb.gm
    i32 1, label %.thread662
    i32 2, label %.thread672
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.qc = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select5) #25
  %i.qd = tail call i64 @llvm.usub.sat.i64(i64 %i.qc, i64 4)
  %i.qe = getelementptr inbounds nuw i8, ptr %spec.store.select5, i64 %i.qd
  %i.qf = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.qe, ptr noundef nonnull dereferenceable(5) @.str.60) #25
  %.not.i545 = icmp eq i32 %i.qf, 0
  br i1 %.not.i545, label %.thread672, label %.thread662

.thread662:                                       ; preds = %bb.gl, %bb.gm
  %i.qg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select5) #25
  %i.qh = add i64 %i.qg, 5
  %i.qi = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.qh) #24 ; 9 uses
  %i.qj = icmp eq ptr %i.qi, null
  br i1 %i.qj, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %.thread662
  tail call void @perror(ptr noundef nonnull %.1.i472) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.go:                                            ; preds = %.thread662
  %i.qk = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.qi, ptr noundef nonnull dereferenceable(1) %spec.store.select5) #22 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.qi)
  %endptr = getelementptr inbounds i8, ptr %i.qi, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str.60, i64 5, i1 false)
  %i.ql = load i32, ptr @displayLevel, align 4, !tbaa !12
  %i.qm = icmp ugt i32 %i.ql, 1
  br i1 %i.qm, label %bb.gp, label %.thread678

bb.gp:                                            ; preds = %bb.go
  %i.qn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.qo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qn, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.qi) #23 ; 0 uses
  br label %.thread678

.thread672:                                       ; preds = %bb.gl, %bb.gm
  %i.qp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select5) #25 ; 6 uses
  %i.qq = add i64 %i.qp, 1
  %i.qr = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.qq) #24 ; 8 uses
  %i.qs = icmp eq ptr %i.qr, null
  br i1 %i.qs, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.thread672
  tail call void @perror(ptr noundef nonnull %.1.i472) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.gr:                                            ; preds = %.thread672
  %i.qt = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.qr, ptr noundef nonnull dereferenceable(1) %spec.store.select5) #22 ; 0 uses
  %i.qu = icmp ugt i64 %i.qp, 4
  br i1 %i.qu, label %.lr.ph1275.preheader, label %..critedge.thread_crit_edge

..critedge.thread_crit_edge:                      ; preds = %bb.gr
  %.pre1489 = load i32, ptr @displayLevel, align 4, !tbaa !12
  br label %.critedge.thread

.lr.ph1275.preheader:                             ; preds = %bb.gr
  %i.qv = add i64 %i.qp, -4
  br label %.lr.ph1275

.lr.ph1275:                                       ; preds = %.lr.ph1275.preheader, %bb.gs
  %.02451274 = phi i64 [ %i.rd, %bb.gs ], [ %i.qp, %.lr.ph1275.preheader ] ; 5 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %spec.store.select5, i64 %.02451274
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !10
  %i.qy = sub i64 %.02451274, %i.qp
  %i.qz = getelementptr i8, ptr @.str.60, i64 %i.qy
  %i.ra = getelementptr i8, ptr %i.qz, i64 4
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !10
  %i.rc = icmp eq i8 %i.qx, %i.rb
  br i1 %i.rc, label %bb.gs, label %.critedge

bb.gs:                                            ; preds = %.lr.ph1275
  %i.rd = add i64 %.02451274, -1                  ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qr, i64 %.02451274
  store i8 0, ptr %i.re, align 1, !tbaa !10
  %.not381 = icmp ult i64 %i.rd, %i.qv
  br i1 %.not381, label %.critedge, label %.lr.ph1275, !llvm.loop !26

.critedge:                                        ; preds = %bb.gs, %.lr.ph1275
  %.0245.lcssa.ph = phi i64 [ %i.rd, %bb.gs ], [ %.02451274, %.lr.ph1275 ]
  %i.rf = add i64 %i.qp, -5
  %.not382 = icmp eq i64 %.0245.lcssa.ph, %i.rf
  %.pre1490 = load i32, ptr @displayLevel, align 4, !tbaa !12 ; 2 uses
  br i1 %.not382, label %bb.gv, label %.critedge.thread

.critedge.thread:                                 ; preds = %..critedge.thread_crit_edge, %.critedge
  %i.rg = phi i32 [ %.pre1489, %..critedge.thread_crit_edge ], [ %.pre1490, %.critedge ]
  %.not383 = icmp eq i32 %i.rg, 0
  br i1 %.not383, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %.critedge.thread
  %i.rh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite384 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 37, i64 1, ptr %i.rh) #26 ; 0 uses
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %.critedge.thread
  tail call fastcc void @badusage(ptr noundef nonnull %.1.i472)
  unreachable

bb.gv:                                            ; preds = %.critedge
  %i.ri = icmp ugt i32 %.pre1490, 1
  br i1 %i.ri, label %bb.gw, label %.thread678

bb.gw:                                            ; preds = %bb.gv
  %i.rj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.rk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rj, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.qr) #23 ; 0 uses
  br label %.thread678

.thread659:                                       ; preds = %bb.gl, %bb.gi, %bb.gj, %bb.gk
  %.9 = phi ptr [ %.6290, %bb.gk ], [ null, %bb.gl ], [ %spec.store.select6, %bb.gj ], [ %spec.store.select6, %bb.gi ] ; 2 uses
  %i.rl = icmp ne i32 %.6301, 5
  %brmerge = or i1 %i.ni, %i.rl
  br i1 %brmerge, label %.thread678, label %bb.gx

bb.gx:                                            ; preds = %.thread659
  %i.rm = add i32 %.3271, 1
  %i.rn = zext i32 %.3271 to i64
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %.1274, i64 %i.rn
  store ptr %spec.store.select5, ptr %i.ro, align 8, !tbaa !17
  br label %.thread678

.thread678:                                       ; preds = %bb.go, %bb.gp, %bb.gv, %bb.gw, %.thread659, %bb.gx
  %.1277686 = phi ptr [ null, %.thread659 ], [ null, %bb.gx ], [ %i.qr, %bb.gw ], [ %i.qr, %bb.gv ], [ %i.qi, %bb.gp ], [ %i.qi, %bb.go ] ; 7 uses
  %.9685 = phi ptr [ %.9, %.thread659 ], [ %.9, %bb.gx ], [ %i.qr, %bb.gw ], [ %i.qr, %bb.gv ], [ %i.qi, %bb.gp ], [ %i.qi, %bb.go ] ; 2 uses
  %.8303684 = phi i32 [ %.6301, %.thread659 ], [ 5, %bb.gx ], [ 2, %bb.gw ], [ 2, %bb.gv ], [ 1, %bb.gp ], [ 1, %bb.go ] ; 3 uses
  %.4272 = phi i32 [ %.3271, %.thread659 ], [ %i.rm, %bb.gx ], [ %.3271, %bb.gw ], [ %.3271, %bb.gv ], [ %.3271, %bb.gp ], [ %.3271, %bb.go ] ; 6 uses
  %.not385 = icmp eq ptr %.9685, null
  %spec.store.select9 = select i1 %.not385, ptr @.str.64, ptr %.9685 ; 9 uses
  %i.rp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select9, ptr noundef nonnull dereferenceable(7) @.str.3) #25
  %i.rq = icmp eq i32 %i.rp, 0
  %i.rr = icmp ne i32 %.8303684, 5
  %or.cond11 = and i1 %i.rr, %i.rq
  br i1 %or.cond11, label %bb.gy, label %.thread678._crit_edge

.thread678._crit_edge:                            ; preds = %.thread678
  %.pre1491 = load i32, ptr @displayLevel, align 4
end_hunk_0
